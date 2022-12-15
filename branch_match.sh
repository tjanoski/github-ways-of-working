
string="chore/pss-1-example"
# regx='/\b(feat|bug|chore)\b\/\b(pss|ui)\b-\b[1-9][0-9]{0,4}\b.*'
branch_pattern_regx='refs\/heads\/(feat|bug|chore)\/(pss|ui)-[0-9]{0,4}.*'
stable_branch_pattern='refs\/heads\/(main|dev|test)'

if [[ $BRANCH_NAME =~ $regx ]]; then
        echo "Branch name matched!"
    elif [[ $BRANCH_NAME =~ $stable_branch_pattern ]]; then
        echo "Stable Branch detected!"
    else
        echo "Unmatched pattern! Failing out..."
        exit 1
    fi
