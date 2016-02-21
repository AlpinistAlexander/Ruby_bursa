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
    @tasks_of.map.with_index{|i, x| "#{x + 1}. #{i}\n"}.join("")
end 

def work!
  unless can_work?
    raise "Нечего делать"  
  else
    puts %Q{#{@name}: выполнена задача "#{@tasks_of.slice!(0)}.
          Осталось задач: #{@tasks_of.count}}
  end        
end 

def status
  case 
  when @tasks_of.empty?
    "Свободен"
  when can_add_task? 
    "Работаю"
  when @tasks_of.size >= self.class::MAX_TASKS
     "Занят"   
  end
end 

def can_add_task?
  @tasks_of.size  < self.class::MAX_TASKS
end

def can_work?
  unless @tasks_of.empty?
    return true
  end  
end 
end  
# 

# dev = Developer.new('Sasha')

# dev.add_task('Написать сайт1')
# dev.add_task('Написать сайт2')
# dev.add_task('Написать сайт3')
# dev.add_task('Написать сайт4')
# dev.tasks
# byebug
# dev.status
