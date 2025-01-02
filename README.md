# autopac

autopac is a simple software installation and update script written for
POSIX compliant shells. It acts as an autonomous and portable script for
package managers on most popular operating systems.

## Operating systems and their supported package managers
-	Linux distros	apt, dnf, pacman, apk
-	FreeBSD		    pkg
-	OpenBSD		    pkg_add
-	Other		    flatpak, snap

## Configuration
Packages are read from the list stored at `.config/autopac/software.config`
in the specified user's home directory by default. Just write each package name
you want to install and seperate them by whitespace.

After you are done, run `autopac -i <USER>` as root, where `<USER>` is the user
who's software list you want to use. All the specified packages will be
automatically installed with the detected package manager.

The system is updated whether `-i` or `-u` is chosen.
