class Professor < ActiveRecord::Base
validates :first_name, :presence => true, :uniqueness => true


has_many :reviews

end
