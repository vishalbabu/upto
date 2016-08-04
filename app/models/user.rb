class User < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.find_active_user(id)
    find_by!(id: id, archived: false)
  end

  def archive
    self.archived = true
    self.save
  end
end
