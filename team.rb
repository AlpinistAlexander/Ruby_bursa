require './developer.rb'
require './juniordeveloper.rb'
require './seniordeveloper.rb'
# require 'byebug'
# require 'pp'

class Team 
  attr_reader :team_all

  def initialize(&block)
    @team_all = {}
    @priority = []
    instance_eval &block
  end 

  def make_all_developers(group,skill, *names)
     @team_all[group] = names.map{ |name| skill.new(name)}
  end 

  def have_seniors
    @team_all[:seniors].map{|i| "#{i.name}"}
  end 
  
  def have_developers
     @team_all[:developers].map{|i| "#{i.name}"}
  end

  def  have_juniors 
     @team_all[:juniors].map{|i| "#{i.name}"}  
  end 

  def seniors
    @team_all[:seniors]
  end
  
  def developers
    @team_all[:developers]  
  end
  
  def juniors
    @team_all[:juniors]  
  end  

  def all
    @team_all.values_at(:seniors, :developers, :juniors).flatten
  end  

  def priority(*list)
     *@priority = list
  end

  def search_worker
     @team_all.values_at(*@pr).flatten.sort_by{|i| i.tasks_of.size}
  end

  def add_task(task, **options)
    case
    when options[:complexity]
      worker = select_worker.select{|r| r.type.eql? options[:complexity]}.first
    when options[:name]
      worker = select_worker.select{|n| n.name.eql? options[:name]}.first
    else
      worker = select_worker.first
    end
     worker.add_task(task)
     @team_all[worker.type].call(worker, task)
   end
 end

 def report
   all.each do |i|
     puts "%s (%s): %s" %
      [i.name, i.type, i.tasks_of.join(", ")]
   end
 end
end

#   t = Team.new{
#     make_all_developers(:seniors,SeniorDeveloper,"Олег", "Оксана")
#     make_all_developers(:developers,Developer,"Олеся", "Василий", "Игорь-Богдан")
#     make_all_developers(:juniors,JuniorDeveloper,"Владислава", "Аркадий", "Рамеш")
#   }
# # byebug   
# # dbvdfv 

