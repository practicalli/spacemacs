# Configure Magit Forge for hosted environments

If you are using GitHub enterprise or GitLab self-hosted service, then you need to specify the user and API Forge should used for the service ([HOST](https://magit.vc/manual/ghub/Setting-the-Username.html#Setting-the-Username))

For example, if the API is available at https://practical.li/api/v3

Set your username for the specific service in the `~/.gitconfig` file:
```shell
git config --global github.example.com/api/v3.user EMPLOYEE
```

Add the API location to the local configuration of every repository that will use that service
```shell
cd /path/to/repo
git config github.host example.com/api/v3
```
* [Using magit GitHub Enterprise](https://mrdias.com/2018/04/01/using-magit-with-github-enterprise.html) - Jorge Dias
