require './developer.rb'
require 'byebug'
class SeniorDeveloper < Developer
MAX_TASKS = 15

def work!
 can_work?
 number = rand(2)
   if number == 0
    puts "Что-то лень"
   elsif number == 1
    puts "#{@name}: выполнены задачи: #{@tasks_of.slice!(0,2).join("\n")}
         Осталось задач: #{@tasks_of.count}"
   end 
end      
end 

# asa = SeniorDeveloper.new('Vova') 
# asa.add_task('Polit kaktys')
# asa.add_task('Polit kaktys')
# asa.add_task('Polit kaktys')
# asa.add_task('Polit kaktys')
# asa.add_task('Polit kaktys')
# byebug
# asa.add_task('Polit kaktys') 
