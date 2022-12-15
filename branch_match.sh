
string="chore/pss-1-example"
# regx='/\b(feat|bug|chore)\b\/\b(pss|ui)\b-\b[1-9][0-9]{0,4}\b.*'
branch_pattern_regx='(feat|bug|chore)\/(pss|ui)-[0-9]{0,4}.*'
stable_branch_pattern='(main|dev|test)'

if [[ ${{steps.extract_branch.outputs.branch}} =~ $regx ]]; then
        echo "Branch name matched!"
    elif [[ ${{steps.extract_branch.outputs.branch}} =~ $stable_branch_pattern ]]; then
        echo "Stable Branch detected!"
    else
        exit 1
    fi