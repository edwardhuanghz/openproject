
class TaskboardCardConfiguration < ActiveRecord::Base
  #Note: rows is YAML text which we'll parse into a hash
  attr_accessible :identifier, :name, :rows, :per_page, :page_size, :orientation

  def landscape?
    !portrait?
  end

  def portrait?
    orientation == "portrait"
  end

  def rows_hash
    YAML::load(rows)
  end
end