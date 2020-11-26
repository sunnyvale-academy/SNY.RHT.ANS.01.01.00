```console
$ ansible-playbook \
    -vvv \
    -e github_token=XXXX \
    -e username=myuser \
    -e repo_name=myrepo \
    github_repo_playbook.yml
```