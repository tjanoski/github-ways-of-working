
string="chore/pss-1-example"
# regx='/\b(feat|bug|chore)\b\/\b(pss|ui)\b-\b[1-9][0-9]{0,4}\b.*'
regx='(feat|bug|chore)\/(pss|ui)-[0-9]{0,4}.*'

if [[ ${{steps.extract_branch.outputs.branch}} =~ $regx ]]; then
        echo "Branch name matched!"
        else
        exit 1
    fi