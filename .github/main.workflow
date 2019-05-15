workflow "Launch the rescue mission" {
  on = "release"
  resolves = ["actions/bin/sh@master"]
}

action "debug" {
  uses = "actions/bin/debug@master"
}

action "actions/bin/sh@master" {
  uses = "actions/bin/sh@master"
  needs = ["debug"]
  args = "args = [\"echo $GITHUB_EVENT_PATH\"]"
}
