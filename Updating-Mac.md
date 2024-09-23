## Downloading MacOS Installers via Terminal

Mac users can download the latest macOS installer available from the Terminal by using the following command string:
`softwareupdate --fetch-full-installer`

You can also download specific installer versions by using the following syntax, replacing the asterisks with version number:
`softwareupdate --fetch-full-installer --full-installer-version **.**.*`

For example, to get macOS 11.2.1 the syntax would be as follows:
`softwareupdate --fetch-full-installer --full-installer-version 11.2.1`
