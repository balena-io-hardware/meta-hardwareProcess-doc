const core = require("@actions/core");

async function run() {
  core.setOutput("mail", "Mail task run complete");
}

run();
