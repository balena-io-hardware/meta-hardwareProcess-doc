# Add testing instructions

In the top level directory, there should be a subdirectory called `testing`. In this folder, please add your testing instructions - preferably in markdown format.

If you have no files in this folder, or if the folder is missing - you will not be able to merge your changes.

Here are some examples of how you can write down tests -

```markdown
## Test 1
Power on the board using USB
- Success
  - LED turns green, or
  - LED turns red and then turns green
- Failure
  - LED keeps on blinking red
```

or for a 3D type of project, it could be something as simple as a fit test

```markdown
## Test 1
Print the case, and ensure that a balenaFin (version 1/1.1/1.1.1) mounts correctly inside the case.

- Success
  - All holes are mounted correctly
- Failure
  - Any of the mounting holes are misalligned
```
