package authz

default allow = false

allow {
  input.user == user
  resource := input.resource
  user_tags := data.users[user].tags
  resource_tags := data.resources[resource].tags
  some tag
  tag == user_tags[_]
  tag == resource_tags[_]
}
