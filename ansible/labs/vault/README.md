
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
$ ansible-vault encrypt_string 'Test123!' --name 'my_password' --vault-id my_password@prompt
```

Password is: test2
```console
$ ansible-vault encrypt_string '123!Test' --name 'my_password1' --vault-id my_password1@prompt
```

```console
$ ansible-playbook \
    --ask-vault-pass \
    --vault-id my_password@prompt \
    --vault-id my_password1@prompt \
    playbook.yaml
```