# Update Windows Subsytem for Linux

## Inside the distribution

#### Ubuntu
```
sudo apt update
sudo apt upgrade
```

#### Debian
`sudo apt-get update && sudo apt-get upgrade` 

#### openSUSE
`sudo zypper refresh`
`sudo zypper update`

#### Fedora
`sudo dnf upgrade`

#### Arch

#### Alpine

#### deepin
'''
sudo apt update
sudo apt dist-upgrade
'''

#### AOSC

#### Kali Linux
``

## WSL Engine update

## Updating distro from v1 engine to v2
`wsl --set-version <Distro> <Version>`

## Updating distro package from Windows (Microsoft) Store


-----

```
winget upgrade Microsoft.WSL
winget upgrade Debian.Debian
winget upgrade Canonical.Ubuntu.1804
winget upgrade Canonical.Ubuntu.2004
winget upgrade Canonical.Ubuntu.2204
winget upgrade kalilinux.kalilinux
```
