# Versioning

It is important to version your changes and we have a standard way of doing that across all your projects.


## Change type in commit messages

Whenever we open a new pull request on GitHub, we add one or more commits to it.
At least one of those commits should have one of the following strings below the commit message.

1. `Change-type: major`
2. `Change-type: minor`
3. `Change-type: patch`

A major change is one in which the hardware or software is no longer compatible with the older versions.
For example if we create a new version of the Fin which is not compatible with any of the Fin v1.x cases, then that would be a major change.

A minor change is one in which the hardware or software is still compatible with a previous version of the project.
So we are maintaining the major version of the project but are still creating some minor changes.
For example we could support everything on the Fin 1.1 and add some new features, in which case it would be called Fin 1.2.

A patch change is a bug fix.
That means you are changing something where all the features are the same, but you are fixing a bug.
For example if we find an issue with the Fin 1.1 USB circuitry, and we fix it in the future versions of the fin it would be called Fin 1.1.1

You can [read more](https://semver.org/) about this style of versioning - known as semantic versioning.
This is also what we use for all kinds of software at Balena.


## Version on silkscreens

When you create a new pull request or a project, especially a PCB one, you should put the version information on the silkscreen.
This will help the users of the particular PCB project identify what board they have - useful for reading documentation or getting support.
You should **NOT** add the version number directly to the silkscreen manually.
There might be more than one person working on a particular project, and they might have changes that get merged into the project before you.
That can create an inconsistency in the versioning - if done manually.

The right way to go about doing this is to add a variable to your Altium or KiCad project, and then place that on the PCB.
The hardware CI will generate the version number for your pull request and substitute that on the generated gerbers.

For prototype PCBS, there will be another variable along with the version variable mentioned above.
This will be the commit ID of your changes.
You should ensure that you have space on your PCB for this variable as well.

So in total, you will ensure that your silkscreen has 2 variables

1. Version variable - which will look like `v1.3.4`
2. Commit ID variable - which will look like `234e3e0`. It will always be a 7 digit alphanumeric string

When the changes get merged into the master branch and a final release is created, the commit ID variable won't be populated.

![Settings](./images/version.png)
![PCB](./images/version_pcb.png)
