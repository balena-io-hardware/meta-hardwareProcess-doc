# Hardware process

**The hardware process at Balena allows you to prototype faster and use modern software practices while developing hardware**

## Highlights

- **Rapid prototyping**: Create PCBs and 3D designs in hours, instead of days
- **Build incrementally**: Faster iterations allows less time spent debugging issues
- **More design, less email**: No more long communication cycles with manufacturers

## Setup and configuration

Each GitHub repo under Balena has a `repo.yml` file in the top level directory. This tells the various CI (Continuos Integration) tools how to build and test the source code in the repository.

For hardware repos, we should always have the following contents in the `repo.yml` file

```yaml
type: hardware
release: github

```


## Documentation

Depending on what kind of project you have (it could be a PCB or a 3D design like a case), you can customize the instructions that are sent to the prototyping lab from your repo. For example, if you want to ensure that the case is printed in ABS instead of the default PLA, you can specify this in the `spec.json` file. Read more about this in our [docs]().

## Getting Help

If you're having any problem, please [raise an issue](https://github.com/balena-io-hardware/hardware-process/issues/new) on GitHub and we will be happy to help.
