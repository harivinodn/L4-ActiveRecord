require './connect_db.rb'
require './todo.rb'
connect_db!

# # Display all lis using individual objects method
# displayable_list = Todo.all.map {|todo| todo.to_displayable_string }
# puts displayable_list
# puts "\n"
# # Define a class function to display all (o/p is same as above)
# puts Todo.to_displayable_list
# puts "\n"

##  Filter using ActiveRecord "chainable" property
# puts Todo.where(completed: true).to_displayable_list


Todo.show_list
