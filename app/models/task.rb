class Task < ActiveRecord::Base 
  belongs to :car 
  belongs to :motorcycle 
end