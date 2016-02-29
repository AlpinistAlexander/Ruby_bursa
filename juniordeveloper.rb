require './developer.rb'
require 'byebug'
class JuniorDeveloper < Developer
attr_reader :name,
            :type,
            :tasks_of

MAX_TASKS = 5

  def initialize(name)
    super
    @type       = :junior
    @class_team = :juniors
  end
  

def work!
  puts %Q{#{@name}: пытаюсь делать задачу "#{@tasks_of[0]}".
       Осталось задач:#{@tasks_of.count}}
end

def add_task (task)
  if task.size > 20
    puts "Слишком сложно!"
  else
    super 
  end    
end  
end 

