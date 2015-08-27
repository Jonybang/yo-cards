class Theme < Base
  #name:string

  has_many :pictures, class_name: 'Picture'
end