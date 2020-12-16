
```console
$ echo "super_secret_token: 1234" > secrets.yaml
```

```console
$ echo "password: 4321" > passwords.yaml
```

Password is: password 
```console
$ ansible-vault encrypt secrets.yaml passwords.yaml
```

Password is: test 
```console
$ ansible-vault encrypt_string 'Test123!' --name 'my_password' --vault-id @prompt
```

```console
$ ansible-playbook \
    --ask-vault-pass \
    --vault-id @prompt \
    playbook.yaml
```