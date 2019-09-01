class User < Jennifer::Model::Base
  with_timestamps
  mapping(
    id: Primary32, # is an alias for Int32? primary key
    username: String
    email: String,
    created_at: Time?,
    updated_at: Time?
  )
  
  has_many :posts
end