package authz

default allow = false

allow if {
  user := input.user
  resource := input.resource
  user_tags := data.users[user].tags
  resource_tags := data.resources[resource].tags
  user_tag := user_tags[_]
  resource_tag := resource_tags[_]
  user_tag == resource_tag
}
