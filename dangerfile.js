const {message, danger} = require("danger")

const modifiedMD = danger.git.modified_files.join("- ")
console.log("Changed Files in this PR: \n - " + modifiedMD);
message("Changed Files in this PR: \n - " + modifiedMD)

