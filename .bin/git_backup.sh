#!/bin/bash
#
# Keep an up to date backup of all github repositories for a user.

GH_API=https://api.github.com/graphql
GH_USER=srvaroa
BACKUP_DIR=$1
# Expected from environment
#GH_TOKEN=

function clone_or_update() {
    REPO=$1
    REPO_DIR="$BACKUP_DIR/$REPO"
    if [ ! -d "$REPO_DIR" ]; then
        git clone -q https://$GH_TOKEN@github.com/$GH_USER/$REPO $REPO_DIR
        echo "Cloned $REPO_DIR"
    else
        pushd $REPO_DIR > /dev/null
        git fetch origin
        git reset --hard origin/master
        echo "Updated $REPO_DIR"
        popd > /dev/null
    fi
}

date
curl -s -H "Authorization: bearer $GH_TOKEN" -X POST -d " \
    { \
        \"query\": \"query { viewer { \
            name repositories(last: 100, affiliations:[OWNER]) { \
                nodes { \
                    name owner { login } \
                } \
            }} \
        }\" \
    } \
    " $GH_API \
    | jq -r '.data.viewer.repositories.nodes | map(.name) | join("\n")' \
| while read REPO ; do
    clone_or_update $REPO
done
