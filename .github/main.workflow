workflow "test" {
  on = "push"
  resolves = ["GitHub Action for Slack"]
}

action "GitHub Action for Slack" {
  uses = "Ilshidur/action-slack@f37693b4e0589604815219454efd5cb9b404fb85"
}
