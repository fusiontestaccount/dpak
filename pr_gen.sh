
#!/usr/bin/env sh

function create_pr () {
    slug="fusiontestaccount/dpak-bb-add-on"
    branch_name="test-branch-1"

    curl -u fusiontestaccount:r8vDpPNHfKjPLxVOdYxi -H "Content-Type: application/json" -X POST -d '{"title": "t", "source": { "branch": { "name": "$branch_name"}, "repository": {"full_name": "$slug"}}, "destination": {"branch": { "name": "master" }}, "reviewers": [{"username": "dmitry_pak"}], "close_source_branch": true}' https://api.bitbucket.org/2.0/repositories/$slug/pullrequests/
}

for i in {1..1}
do
    create_pr
done
