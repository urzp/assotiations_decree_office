class DecreeUnit < ActiveRecord::Base
  belongs_to :unit_decree, :foreign_key => "decree_id", :class_name => "Decree"
  belongs_to :degree_unit, :foreign_key => "unit_id", :class_name => "Unit"
end
