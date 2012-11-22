class Comment < ActiveRecord::Base
  attr_accessible :body, :lft, :parent_id, :rgt
  acts_as_nested_set
end
