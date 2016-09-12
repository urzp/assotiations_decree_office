class Decree < ActiveRecord::Base
  belongs_to :autor, :class_name => "Unit"

  has_many :controlls, :through => :units_decree_tables, :source => :degree_unit
  has_many :units_decree_tables, :foreign_key => :decree_id, :class_name => "DecreeUnit"

  has_many :readers, :through => :read_decree_tables, :source => :degree_reader
  has_many :read_decree_tables, :foreign_key => :decree_id, :class_name => "DecreeReader"
end
