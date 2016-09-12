class Unit < ActiveRecord::Base
  has_many :create_decrees, :foreign_key => "autor_id", :class_name => "Decree"

  has_many :checks, :through => :decree_units_tables, :source => :unit_decree
  has_many :decree_units_tables, :foreign_key => :unit_id, :class_name => "DecreeUnit"

  has_many :reads, :through => :decree_readers_tables, :source => :reader_decree
  has_many :decree_readers_tables, :foreign_key => :unit_id, :class_name => "DecreeReader"
end
