workflow "Launch the rescue mission" {
  on = "release"
  resolves = ["debug", "Ignition sequence"]
}

action "debug" {
  uses = "actions/bin/debug"
}
