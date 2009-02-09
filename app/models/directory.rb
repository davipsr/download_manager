class Directory < ActiveRecord::Base
  has_many :archives
  validates_presence_of :name

def archive_attributes=(archive_attributes)
  archive_attributes.each do |attributes|
    archives.build(attributes)
  end
end

end
