# Contributing

Hardware Process depends on GitHub Actions primarily - along with Landr for the documentation site. 
Along with this, you will need some familiarity with git and GitHub.

## Source code

The GitHub actions code resides in `.github/actions`.
The way this code is configured and called can be found in `.github/workflows`.
We use TypeScript for the actions, and yaml is the only option for any configuration files.

### Setup

After you `cd` to the particular action you want to make changes to -

1. `npm i` to install all the dependencies
2. `npm run package` to package to compile a minified version of the source code
3. `git add .` to add all the compiled files as well as the source files are included in your commit. 
Ensure that you don't accidentally add any of your `node_modules` to the project.
4. Commit your changes to a branch and open a pull request


## Documentation

The documentation resides in the `docs` folder. 
Use prefixes like `01-` to set the order in which the navigation is organized for the documentation.
All the images should reside in `docs/images` folder.

## Commit guidelines

The guidelines in our [balenaSound](https://sound.balenalabs.io/contributing/) documentation site are well written - and we follow the same here.
