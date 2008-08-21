class Imagem < ActiveRecord::Base
 require 'paperclip' 
 has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "50x50>" }
 belongs_to :evento
 acts_as_rateable
end
