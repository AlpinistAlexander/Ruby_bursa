require './developer.rb'
require 'byebug'
class JuniorDeveloper < Developer

MAX_TASKS = 5

def initialize(name)
  @name = name
  @tasks_of = []
end

def work!
  puts "@name: пытаюсь делать задачу #{@tasks_of[0]}.Осталось задач:#{length - 1}"
end

def add_task (task)
  if task.size > 20
    puts "Слишком сложно!"
  else
    super 
  end    
end  
end 

asa = JuniorDeveloper.new('Vasa') 
byebug
asa.add_task('Polit kaktys')
