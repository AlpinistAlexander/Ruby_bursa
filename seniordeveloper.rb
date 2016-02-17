require './developer.rb'
require 'byebug'
class SeniorDeveloper < Developer
MAX_TASKS = 15

super

def work!
 can_work?
 number = rand(2)
   if number == 0
    puts "Что-то лень"
   elsif number == 1
    puts "#{@name}: выполнены задачи #{@tasks_of.slice!(0,2)}
          Осталось задач: #{@tasks_of.count}"
   end 
end      
end 

asa = SeniorDeveloper.new('Vova') 
byebug
asa.add_task('Polit kaktys') 
