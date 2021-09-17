# Creating a PR 

This document explains how a new change gets designed and incorporated in an existing hardware project.

All changes that are to be made to a hardware design, go through a PR (Pull Request). The latest manufacturable version of any hardware is in the `master` (or sometimes named `main`) branch of a GitHub repository.
A Pull Request (PR) will allow for new changes to be reviewed and tested before being "merged" into the main/master branch. It's the job of the Prototyping Lab to test a PR, and ensure that it matches our test procedures and standards for the hardware project in question. 

For example, a new version of the Fin PCB will be fit-tested with all our existing cases as part of the PR process.


## Opening a PR

When you want to commit your changes, you need to open a PR.

1. create a new branch
2. add your design's source to the `source` folder (for example the KiCad project files)
3. add the output files to the `output` folder (for example the gerber, and pick and place files)
4. push your branch to GitHub after adding a commit
5. open a new Pull Request based on your branch
6. wait for reviews, and a reply from the hardware process in the checks for your Pull Request

## Reviewing a PR
There are 2 types of reviews that will happen on your PR before it gets merged into master.

### Manual review
A fellow hardware designer should review your changes and give you an approving review on GitHub. 
If it's a small change, or if you can't wait for a review, you can merge the change by typing `@balena-ci I self-certify!` in the comments on the PR.

### Prototyping Lab review
- The Prototyping Lab review is visible as part of the GitHub checks on your PR. This is a list of tests that any PR has to pass before being allowed to merge. The 3 possible states are `Waiting` (yellow dot), `Failed` (red cross), `Pass` (green tick).
- When you create a new PR, the files required for manufacturing are packaged and emailed to the prototyping lab. You can find the front inbox `Manufacturing Lab` and see all the current work being done by the lab.
- When the lab finishes manufacturing and testing the new change, it will send an email back - which will get reflected in the GitHub checks with the additional logs and details provided by the Prototyping Lab.
