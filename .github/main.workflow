workflow "Launch the rescue mission" {
  on = "release"
  resolves = ["debug"]
}

action "debug" {
  uses = "actions/bin/debug@master"
}
