# Install Java

## Check Java is working

Open a terminal and run the command

`java -version`

If Java is installed, you will see something like this in your terminal:

![Java version](/images/development-environment-java-check.png)


<!-- Operating System specific instructions -->
{% tabs first="Debian/Ubuntu", second="Homebrew", third="Chocolatey", forth="Manual" %}

<!-- Ubuntu install -->
{% content "first" %}

Open a terminal and run the following command (you will be prompted for your login password to complete the install)

```bash
sudo apt install openjdk-11-jdk
```

> #### Hint:: openjdk-11 not available or not the right version?
> If openjdk-11 is not available, add the [Ubuntu OpenJDK personal package archive](https://launchpad.net/~openjdk-r/+archive/ubuntu/ppa)
```bash
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
```
>
> Switching between Java versions
> If you have more than one version of Java installed, set the version by opening a terminal and using the following command
>
```bash
sudo update-alternatives --config java
```
> Available java versions will be listed.  Enter the list number for the version you wish to use.


<!-- Homebrew (MacOSX) install -->
{% content "second" %}

Using [Homebrew](https://brew.sh/), run the following command in a terminal to install Java 11:

```bash
brew cask install adoptopenjdk11
```

> #### Hint::Switching between Java versions
> You can run more than one version of Java on MacOS. Set the Java version by opening a terminal and using one of the following commands
>
> Show the Java versions installed
```bash
/usr/libexec/java_home -V
```
>
> Switch to Java version 11
```bash
export JAVA_HOME=$(/usr/libexec/java_home -v 11)
```


<!-- Choclatey (Windows) install -->
{% content "third" %}

[Chocolatey](https://chocolatey.org/) is a package manager for Windows (similar to Homebrew for MacOSX)

Install the [Java Runtime (JRE)](https://chocolatey.org/packages/javaruntime) using the following commands in a command window

```bash
choco install javaruntime
```

<!-- Manual Install -->
{% content "forth" %}

[Download OpenJDK 11 Hotspot](https://adoptopenjdk.net/)

[![Adopt OpenJDK webpage](/images/adoptopenjdk-install.png)](https://adoptopenjdk.net/)

Run the file once downloaded and follow the install instructions.


{% endtabs %}
<!-- End of Operating System specific instructions -->
