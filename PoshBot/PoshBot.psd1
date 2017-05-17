#
# Module manifest for module 'PoshBot'
#
# Generated by: brand
#
# Generated on: 12/18/2016
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PoshBot.psm1'

# Version number of this module.
ModuleVersion = '0.3.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '7bfb126c-b432-4921-989a-9802f525693f'

# Author of this module
Author = 'Brandon Olin'

# Company or vendor of this module
CompanyName = 'Community'

# Copyright statement for this module
Copyright = '(c) 2017 Brandon Olin. All rights reserved.'

# Description of the functionality provided by this module
Description = 'A Powershell-based bot framework for ChatOps. PowerShell modules are loaded into PoshBot and instantly become available as bot commands. PoshBot currently supports connecting to Slack to provide you with awesome ChatOps goodness. Bot commands can optionally be secured via permissions, roles, and groups to control who can execute what.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @('Configuration', 'PSSlack')

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
ScriptsToProcess = @('PoshBotAttribute.ps1')

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    'Get-PoshBot'
    'Get-PoshBotConfiguration',
    'Get-PoshBotStatefulData',
    'New-PoshBotAce'
    'New-PoshBotBackend'
    'New-PoshBotConfiguration'
    'New-PoshBotFileUpload'
    'New-PoshBotInstance'
    'New-PoshBotScheduledTask'
    'New-PoshBotSlackBackend'
    'New-HelloPlugin'
    'New-PoshBotCardResponse'
    'New-PoshBotTextResponse'
    'Remove-PoshBotStatefulData'
    'Save-PoshBotConfiguration'
    'Set-PoshBotStatefulData'
    'Start-PoshBot'
    'Stop-Poshbot'
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('PoshBot', 'ChatOps', 'Bot')

        # A URL to the license for this module.
        LicenseUri = 'https://raw.githubusercontent.com/poshbotio/PoshBot/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/poshbotio/PoshBot'

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/poshbotio/PoshBot/master/Media/poshbot_logo_thumb_256.png'

        # ReleaseNotes of this module
        ReleaseNotes = @'
## [0.2.3] Unreleased
### Fixed
- Respect changes to [Admin] role that are saved to storage.

## [0.2.2] 2017-04-17
### Fixed
- Command tokenization issues on Nano Server.
- #24: Nano Server compatability

## [0.2.1] 2017-04-14
### Fixed
- #23: Issue with retrieving module command attribute type names on Nano server.

## [0.2.0] 2017-04-06
### Added
- Commands to create and assign adhoc permissions

## [0.1.3] Unreleased
### Added
- New builtin command [Find-Plugin] to find available plugins in the desired PowerShell repository

## [0.1.2] - 2017-03-24
### Fixed
- Bot command names are now set to the value of the CommandName property of [PoshBot.BotCommand()] if defined. Previously, this didn't work and the bot command names always used the function name
- Fixed a bug in the builtin command [Install-Plugin] where if specified, the specific version of a plugin to install produced an error

## [0.1.1] - 2017-03-23
### Fixed error in !install-plugin command when installing plugins that had a dependency on the PoshBot module.

## [0.1.0] - 2017-03-21
### Added
- Initial documentation for mkdocs
- New function to create scheduled task to run PoshBot
- New builtin command to get recent command execution history
- Commands to remove plugins/roles/groups
- Support for multiple plugin versions

### Changed
- Standadized builtin bot command parameter names
- Move demo commands (WolframAlpha, Giphy) into seperate plugin repos
- Move network plugin into seperate repo

### Fixed
- Fix StopUpstreamCommandsException exception from being thrown in Install-Plugin command

## [0.0.1] - 2016-12-18
### Added
- Initial commit
'@
    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
