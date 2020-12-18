```console
$ ansible-playbook playbook.yaml --tags "configure,run" --list-tasks
```

```console
$ ansible-playbook playbook.yaml --skip-tags "install" --list-tasks
```

```console
$ ansible-playbook playbook.yaml --list-tasks
```

 ```console
$ ansible-playbook playbook.yaml --tags untagged  --list-tasks
```