# Add testing instructions

In the top level directory, there should be a subdirectory called `testing`. In this folder, please add a file titled `Testing.md`.

The purpose of `Testing.md` is to help the prototpying lab conduct a functional test.


Here are some examples -

```
## Test 1
Power on the board using USB
- Success
  - LED turns green, or
  - LED turns red and then turns green
- Failure
  - LED keeps on blinking red

```

or for a 3D type of project, it could be something as simple as a fit test

```
## Test 1
Print the case, and ensure that a balenaFin (version 1/1.1/1.1.1) mounts correctly inside the case.

- Success
  - All holes are mounted correctly
- Failure
  - Any of the mounting holes are misalligned

```
