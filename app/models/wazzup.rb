class Wazzup < ActiveRecord::Base
	  validates :name, :email, :body, :presence => true
  	validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true


end
