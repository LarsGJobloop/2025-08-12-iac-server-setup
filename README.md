## Commands

- Print the present working directory

  ```sh
  pwd
  ````

- Generate SSH key

  ```sh
  ssh-keygen -t ed25519 -b 4096 -C "" -P "" -f ssh-identity
  ```

- Login using the SSH client

  ```sh
  ssh -i <path-to-identity-file> <username>@<server-ip-address>
  ````

  Example:
  
  ```sh
  ssh -i ssh-identity root@95.217.17.114
  ```

- Initialize terraform

  ```sh
  terraform init
  ```

- Apply configuration

  ```sh
  terraform apply
  ```

- Destroy resources

  ```sh
  terraform destroy
  ```

## Reference

- [Cloud Config Documentation](https://cloudinit.readthedocs.io/en/latest/reference/examples.html)
- [Debian-12 .NET Install Instructions](https://learn.microsoft.com/nb-no/dotnet/core/install/linux-debian?tabs=dotnet9#debian-12)
