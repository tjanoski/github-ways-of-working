
string="chore/pss-1-example"
branch_pattern_regx='refs\/heads\/(feat|bug|chore)\/(pss|ui)-[0-9]{0,4}.*'
stable_branch_pattern='refs\/heads\/(main|dev|test)'

if [[ $BRANCH_NAME =~ $branch_pattern_regx ]]; then
        echo "Branch name matched!"
    elif [[ $BRANCH_NAME =~ $stable_branch_pattern ]]; then
        echo "Stable Branch detected!"
    else
        exit 1
    fi