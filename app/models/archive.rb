class Archive < ActiveRecord::Base
  belongs_to :directory
 
  has_attached_file :data,
  :styles => {
    :thumb => "50x50#",
    :large => "640x480#"
  }
 
  validates_attachment_presence :data
  validates_attachment_content_type :data, 
  :content_type => ['image/jpeg', 'image/pjpeg', 
                                   'image/jpg', 'image/png']

  def self.destroy_archives(directory, archives)
    Archive.find(archives, :conditions => {:directory_id => directory}).each(&:destroy)
  end

end
