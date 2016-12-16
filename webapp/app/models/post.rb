class Post < ApplicationRecord

  attr_accessor :image

  after_save :save_post_image, if: :image
  def save_post_image
    filename = "post.png"
    folder = "public/post_images/#{id}"

    FileUtils::mkdir_p folder

    f = File.open File.join(folder, filename), 'wb'
    f.write image.read()
    f.close

    self.image = nil
    # update filename: filename
  end
end
