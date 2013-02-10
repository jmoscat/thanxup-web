class Wazzup < ActiveRecord::Base
	  validates :name, :email, :who, :body, :presence => true
  	validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
end
