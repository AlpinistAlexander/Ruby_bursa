require './developer.rb'
require 'byebug'
class JuniorDeveloper < Developer
MAX_TASKS = 5

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

# asa = JuniorDeveloper.new('Vasa') 
# asa.add_task('Polit kaktys')
# asa.add_task('Polit kaktys')
# asa.add_task('Polit kaktys')
# asa.add_task('Polit kaktys')
# byebug
# asa.add_task('Polit kaktys')
