class Category < ApplicationRecord
  has_attached_file :c_img,
    styles: {
      thumb: {geometry: "500x500", format: :png, convert_options: " -background white -gravity center -extend 500x500"},
      medium: {geometry: "630x315", format: :png, convert_options: " -background white -gravity center -extend 630x615"},
      big: {geometry: "920x560", format: :png, convert_options: " -background '#C2FE34' white -gravity center -extend 920x560"},
    },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :c_img, content_type: /\Aimage\/.*\z/
end
