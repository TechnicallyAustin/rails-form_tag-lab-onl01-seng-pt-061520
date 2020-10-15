class Student < ActiveRecord::Base
  def to_s
    p "#{self.first_name}" + " " + "#{self.last_name}"
  end
end