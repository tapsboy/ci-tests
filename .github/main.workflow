workflow "Master CI Workflow" {
  on = "push"
  resolves = ["Shell"]
}

action "Shell" {
  uses = "actions/bin/sh@master"
  args = ["echo hello-world"]
}
