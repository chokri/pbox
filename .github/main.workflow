workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Docker"]
}

action "Docker Tag" {
  uses = "actions/docker/tag@76ff57a"
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@76ff57a"
  needs = ["Docker Tag"]
}
