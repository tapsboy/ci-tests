# workflow "Master CI Workflow" {
#   on = "push"
#   resolves = ["Shell"]
# }

# action "Shell" {
#   uses = "actions/bin/sh@master"
#   args = ["echo hello-world"]
# }

workflow "Launch the rescue mission" {
  on = "release"
  resolves = ["debug", "Ignition sequence"]
}

action "debug" {
  uses = "actions/bin/debug"
}
