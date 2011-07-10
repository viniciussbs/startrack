Factory.sequence(:description) {|value| "Description #{value}"}
Factory.sequence(:name) {|value| "Startrack Member#{value}"}
Factory.sequence(:email) { "email@startrack.com" }
Factory.sequence(:password) { "PaSsWoRd" }
Factory.sequence(:integer) {  |integer| integer }

Factory.define :comment do |comment|
  comment.description Factory.next(:description)
end

Factory.define :project do |project|
  project.name Factory.next(:name)
  project.description Factory.next(:description)
end

Factory.define :task do |task|
  task.name Factory.next(:name)
  task.description Factory.next(:description)
  task.estimate Factory.next(:integer)
  task.association :status
  task.association :type
end

Factory.define :user do |user|
  user.id {1}
  user.name Factory.next(:name)
  user.email Factory.next(:email)
  user.password ("abc,123")
  user.password_confirmation ("abc,123")
end

Factory.define :status do |status|
  status.name Factory.next(:name)
end

Factory.define :type do |type|
  type.name Factory.next(:name)
end
