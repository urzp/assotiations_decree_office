class DecreeReader < ActiveRecord::Base
  belongs_to :reader_decree, :foreign_key => "decree_id", :class_name => "Decree"
  belongs_to :degree_reader, :foreign_key => "unit_id", :class_name => "Unit"
end
