class Post < ActiveRecord::Base
		has_attached_file :poster, :styles => { :medium => "554x>",:thumb => "100x100>" }
	
	validates_attachment 	:poster,
				:presence => true,
				:content_type => { :content_type => /\Aimage\/.*\Z/ },
				:size => { :less_than => 3.megabyte }
	belongs_to :user
end
