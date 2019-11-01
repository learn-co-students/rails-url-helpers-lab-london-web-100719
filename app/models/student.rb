class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate_student_path
    self.active = !self.active
  end

  def activate_or_deactivate?
    self.active ? "Deactivate Student" : "Activate Student"
  end
end