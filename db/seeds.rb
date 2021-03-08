# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Roles
puts "Creating roles..."
Role.find_or_create_by(name: 'organizer')
admin_role = Role.find_or_create_by(name: 'admin')

# Users
puts "Creating users..."
admin_user = User.find_or_create_by(:name => "admin", :email => "admin@example.org")
admin_user.roles = [admin_role]

# Projects

# Updates
puts "Creating updates..."
