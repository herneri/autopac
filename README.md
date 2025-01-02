# autopac

autopac is a simple software installation and update script written for
POSIX compliant shells. It acts as an autonomous and portable script for
package managers on most popular operating systems.

## Supported Software

| Operating System | Package Manager(s)|
|------------------|-------------------|
| Linux distros    | apt, dnf, pacman, apk|
|	FreeBSD		   |    pkg               |
|	OpenBSD		   | pkg\_add             |
|	Other		   | flatpak, snap        |

## Setup
Packages are read from the list stored at `.config/autopac/software.config`
in the specified user's home directory by default. Just write the name of each
package you want to install and seperate them with whitespace.

After you are done, run `autopac -i <USER>` as root, where `<USER>` is the user
whose software list you want to use. All the listed packages will be
automatically installed with the detected package manager.

To choose a specific list, run `autopac -c <PATH>` as root instead.

The system is ***always*** updated, regardless of whether `-i`, `-c`, or `-u` is chosen.
