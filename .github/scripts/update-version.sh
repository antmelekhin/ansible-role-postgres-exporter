#!/bin/bash
GREEN='\033[0;32m'

URL='https://api.github.com/repos/prometheus-community/postgres_exporter/releases/latest'

# Get latest version
VERSION="$(curl --silent $URL | jq '.tag_name' | tr -d '"v')"

if grep "_version: ${VERSION}" 'defaults/main.yml'; then
    echo -e "${GREEN}Newest version is used."
    exit 0
fi

sed -i '' "s/_version:.*$/_version: '${VERSION}'/" 'defaults/main.yml'

# Create update branch
UPDATE_VERSION_BRANCH="update-to-${VERSION}"
git checkout -b $UPDATE_VERSION_BRANCH

# Push new version
git config user.email "${GIT_MAIL}"
git config user.name "${GIT_USER}"
git add defaults/main.yml
git commit -m "patch: release updated to ${VERSION} version"

git push "https://${GITHUB_TOKEN}:@github.com/${GIT_REPO}" --set-upstream "${UPDATE_VERSION_BRANCH}"