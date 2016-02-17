require './developer.rb'
require 'byebug'
class SeniorDeveloper < Developer

MAX_TASKS = 15

def initialize(name)
  @name = name
  @tasks_of = []
end

def work!
 # if @tasks_of.count >= 2 
 can_work?
 number = rand(2)
   if number == 0
    puts "Что-то лень"
   elsif number == 1
    puts "@name: выполнены задачи #{@tasks_of.slice!(0,2)}
          Осталось задач: #{@tasks_of.count}"
   end 
 # elsif @tasks_of.count == 1 
   # super
 # else
 #   puts "Нечего делать!"
  end  
# end     
end 

asa = SeniorDeveloper.new('Vova') 
byebug
asa.add_task('Polit kaktys') 
