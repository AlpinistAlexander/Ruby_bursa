require './developer.rb'
require 'byebug'
class SeniorDeveloper < Developer
attr_accessor :name,
              :type,
              :tasks_of
  def initialize(name)
    super
    @type       = :senior
    @class_team = :seniors
  end

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

