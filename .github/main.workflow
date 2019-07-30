workflow "Launch the rescue mission" {
  on = "release"
  resolves = ["debug", "output", "extract"]
}

action "debug" {
  uses = "actions/bin/debug@master"
}

action "output" {
  uses = "actions/bin/sh@master"
  needs = "debug"
  args = ["echo $GITHUB_EVENT_PATH"]
}

action "extract" {
  uses = "./.github/actions/jq"
  needs = "output"
  args = ["jq --raw-output .release $GITHUB_EVENT_PATH"]
}
