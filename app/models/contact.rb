class Contact < ActiveRecord::Base
  # Remember to create a migration!

  def fullname
    "#{self.first_name} #{self.last_name}"
  end

end
