class Template < ActiveRecord::Base
  has_many :sections, :dependent => :destroy
  #belobgs_to :page
end
