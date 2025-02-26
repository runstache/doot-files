# Doot Files

Dot File Configurations

## What's this?

These are my Dot Files I use for my different shell configurations. 

## Installing

Here's how to use them:

### Z-Shell

Add the following to the __.zshrc__

```bash

export GIT_HUB_HOME="Path to where you have cloned your github repos"

# Source our Doot File
source "$GIT_HUB_HOME/doot-files/zshell/.zshrc"

```

### Powershell

Add the following to __Microsoft.Prowershell_profile.ps1__

```powershell

. "$ENV:GIT_HUB_HOME\doot-files\powershell\Microsoft.Powershell_profile.ps1"

```
