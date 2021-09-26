require 'active_record'

class Todo < ActiveRecord::Base
  def due_today?
    due_date == Date.today
  end

  def overdue?
    @due_date < Date.today
  end

  def due_later?
    @due_date > Date.today
  end

  def to_displayable_string
    display_id = id
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_today? ? nil : due_date
    "#{display_id}. #{display_status} #{todo_text} #{display_date}"
  end

  def self.to_displayable_list
    all.map {|todo| todo.to_displayable_string }
  end

  def self.show_list
    all.map {|todo| puts todo.to_displayable_string }
    # Modify code here
  end

  def self.add_task
    #Add code here
    due_date = Date.today + due_in_days
  end

  def self.mark_as_complete(todo_id) # Hopefully it is self method?
    all completed = true
  end

end
