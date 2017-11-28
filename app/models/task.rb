class Task < ApplicationRecord
  validates :name, presence: true

  def status(task)
    task.completed ? 'completed' : 'uncompleted'
  end

  def self.uncompleted_tasks
    self.where(completed: false)
  end
end
