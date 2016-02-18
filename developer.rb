require 'byebug'
class Developer 
 MAX_TASKS = 10

def initialize (name)
  @name     = name
  @tasks_of = []
end  

def add_task (task)
  if can_add_task? 
    @tasks_of << task
    puts"#{@name}: добавлена задача #{task}. 
        Всего в списке задач:#{@tasks_of.size}"
  else 
    puts "Слишком много работы!"
  end  
end

def tasks
   tasks = []
   @tasks_of.each_with_index{|i,x|  tasks << "#{(x + 1)}.#{i}"}
   tasks.each{|i| i} 
end 

def work!
  if @tasks_of.count == 0
    raise ArgumentError, "Нечего делать"
  end  
  can_work? 
    puts "#{@name}: выполнена задача #{@tasks_of.slice!(0)}.
          Осталось задач: #{@tasks_of.count}"
end 

def status
  if @tasks_of.empty?
    "Свободен"
  elsif @tasks_of.size  < self.class::MAX_TASKS
    "Работаю"
  elsif @tasks_of.size >= self.class::MAX_TASKS
    "Занят"  
  end  
end 

def can_add_task?
  @tasks_of.size  < self.class::MAX_TASKS
end

def can_work?
  @tasks_of.size != 0
end 
end  
# 

dev = Developer.new('Sasha')

dev.add_task('Написать сайт1')
dev.add_task('Написать сайт2')
dev.add_task('Написать сайт3')
dev.add_task('Написать сайт4')
dev.tasks
byebug
dev.status
