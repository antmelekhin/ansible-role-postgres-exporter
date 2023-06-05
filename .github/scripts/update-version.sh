#!/bin/bash

# Git commiter
GIT_USER="${GITHUB_ACTOR}"
GIT_MAIL="${GITHUB_ACTOR}@users.noreply.github.com"

# Script output colors
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NO_COLOR='\e[0m'

# Get latest version
URL='https://api.github.com/repos/prometheus-community/postgres_exporter/releases/latest'
VERSION="$(curl --silent $URL | jq '.tag_name' | tr -d '"v')"

if grep "_version: '${VERSION}'" 'defaults/main.yml'; then
    echo -e "${GREEN}Newest version is used.${NO_COLOR}"
    exit 0
fi

# Update latest version
sed -i "s/_version:.*$/_version: '${VERSION}'/" 'defaults/main.yml'
sed -i -r "s/_version.*[0-9]+\.[0-9]+\.[0-9]+/_version\` | ${version}/" 'README.md'

# Repository variables
REPO_NAME=$(git config --get remote.origin.url | sed -e 's|^https://github.com/||')
UPDATE_VERSION_BRANCH="update-to-${VERSION}"
UPDATE_VERSION_COMMIT="patch: version updated to ${VERSION}"

# Create an update branch
REMOTE_BRANCH="$(curl --silent https://api.github.com/repos/${REPO_NAME}/branches/${UPDATE_VERSION_BRANCH} | jq -r .name)"

if [ "${REMOTE_BRANCH}" == null ] ; then
    git config user.name "${GIT_USER}"
    git config user.email "${GIT_MAIL}"
    git checkout -b "${UPDATE_VERSION_BRANCH}"

    # Push new version
    git add defaults/main.yml
    git commit --signoff -m "${UPDATE_VERSION_COMMIT}"
    
    echo -e "${GREEN}Pushing to ${UPDATE_VERSION_BRANCH} branch.${NO_COLOR}"
    if ! git push "https://${GITHUB_TOKEN}:@github.com/${REPO_NAME}" --set-upstream "${UPDATE_VERSION_BRANCH}"; then
        echo -e "${RED}Branch push failed.${NO_COLOR}"
        exit 1
    fi
else
    echo -e "${YELLOW}Branch is already on remote.${NO_COLOR}"
fi

# Create Pull Request
PR_MESSAGE="The upstream [postgres_exporter](https://github.com/prometheus-community/postgres_exporter/releases) released new software version - **${VERSION}**!\n\nThis automated PR updates code to bring new version into repository."
JSON="$(printf '{"title":"%s","body":"%s","head":"%s","base":"%s"}' "${UPDATE_VERSION_COMMIT}" "${PR_MESSAGE}" "${UPDATE_VERSION_BRANCH}" "main")"

curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${GITHUB_TOKEN}"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/${REPO_NAME}/pulls" \
  -d "${JSON}"