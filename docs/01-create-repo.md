# Create a repo

1. Create a repo using the template menu in GitHub. Select `balena-io-hardware/hardware-process-template` as seen in the screenshot below
![repo](https://user-images.githubusercontent.com/969376/128677921-126f5484-ecef-4037-9a7f-aecc225760e3.png)

2. In the `source/specification` folder, add contents to the `spec.json` file depending on your project. See the README in that folder for more information on the fields.

3. When you want to commit your changes,
  - create a new branch
  - add your design's source to the `source` folder (for example the KiCad project files)
  - add the output files to the `output` folder (for example the gerber, and pick and place files)
  - push your branch to GitHub after adding a commit
  - open a new Pull Request based on your branch
  - wait for reviews, and a reply from the hardware process in the checks for your Pull Request
