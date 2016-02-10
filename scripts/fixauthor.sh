#!/bin/sh

git filter-branch -f --env-filter '
OLD_EMAIL="pilardi@68f32d55-edf0-144f-a607-5c5f177388a3"
CORRECT_NAME="pilardi"
CORRECT_EMAIL="CodePi@users.noreply.github.com"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags

echo 
echo "To push to origin:"
echo "git push --force"
echo 
echo "To update other clones:"
echo "git pull --rebase origin"
