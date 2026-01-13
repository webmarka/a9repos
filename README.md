# _a9repos.sh_

Basic initial *AlmaLinux* 9 setup script.

Installs common/base *AlmaLinux* 9 repositories/programs (___x86_64___)

### WHAT

_a9repos.sh_ attempts to install/create the following repository configurations

##### ___EPEL___ - ___REMI___ - ___NGINX___ - ___NODEJS___ - ___EL-REPO___ - ___MARIADB___ - ___DOCKER___ - ___YARN___ - ___MIDNIGHT COMMANDER___

and some suggested extra packages for a clean, practical, and usable base server system. _a9repos.sh_ also performs system tweaks like optional SELinux disabling, hostname setting, and SSH key generation.

Some repositories have options that can be enabled directly in the repo files themselves (located in /etc/yum.repos.d/). _REMI_, for example, contains all _PHP_ versions easily enableable from the repository files. For example, _EL-REPO_'s latest kernel packages _kernel-ml_ are also just a digit away from being enabled. [_DNF_](https://dnf.readthedocs.io) can also be run with the extra switch `--enablerepo=repo.name`, essentially doing the same. A lot more [_DNF_](https://dnf.readthedocs.io) stuff can be read in the manual or by visiting [_DNF_'s official webpage](https://dnf.readthedocs.io).

### WHERE

_a9repos.sh_ code repository is hosted on [_GitHub_](https://github.com/webmarka/a9repos).

The installable script is accessible via the traditional [_GitHub_'s raw URL](https://raw.githubusercontent.com/webmarka/a9repos/refactor-a9/a9repos.sh).

### HOWTO

Preferably from a ___FRESHLY INSTALLED___ *AlmaLinux* 9 server, _a9repos.sh_ can be called as superuser (_root_) using one of the following methods

#### Method #1

- Executing, as root, from GitHub raw URL.

    Examples:

    root@host ~ # bash <(curl -4sLk https://raw.githubusercontent.com/webmarka/a9repos/refactor-a9/a9repos.sh)

#### Method #2

- Piping _curl_'s output to _bash_'s input.

    Examples:

    root@host ~ # curl -4sLk https://raw.githubusercontent.com/webmarka/a9repos/refactor-a9/a9repos.sh | bash -
    user@host ~ $ curl -4sLk https://raw.githubusercontent.com/webmarka/a9repos/refactor-a9/a9repos.sh | sudo bash -

#### Method #3

- Downloading/saving it to a location on the machine and executing with _bash_.

    Examples:

    root@host ~ # wget https://raw.githubusercontent.com/webmarka/a9repos/refactor-a9/a9repos.sh -O /tmp/a9repos.sh
    root@host ~ # bash /tmp/a9repos.sh

### HOWTO/INSTALL NOTE

You **MUST** be superuser (_root_) in order to run _a9repos.sh_ (_sudo_ works as well).

### HISTORY

Originally coded as _c7repos.sh_ for *CentOS* 7, adapted from an earlier version for *CentOS* 6 by _Peggy_ following a request for a simple server configuration script. It has since evolved into a more modern and practical tool for *AlmaLinux* 9. (_Peggy_ is a fictitious character)

### CHANGELOG

Key changes from _c7repos.sh_:
- Updated from *CentOS* 7 to *AlmaLinux* 9.
- Replaced _yum_ with _dnf_.
- SELinux disabling is now optional (previously required).
- Updated repository versions: _NodeJS_ 20, _MariaDB_ 10.11, _PHP_ 8.1 by default.
- Removed _IUS_, _Golang_ source install, and _Perlbrew_; simplified overall structure.

### TESTING

To test in a Docker container (without _systemd_ support):

    docker build -t a9repos-test .
    docker run --rm -it --privileged a9repos-test

*Note*: Service-related features (e.g., starting _NGINX_ or _MariaDB_) require a _systemd_-enabled environment, not fully supported in Docker yet. For complete testing, use a VM (e.g., VirtualBox with *AlmaLinux* 9).

### CONTRIBUTING

By all means and please, do not hesitate to send comments, ideas, and/or pull requests.
