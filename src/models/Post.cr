class Post < Jennifer::Model::Base
  with_timestamps
  mapping(
    id: Primary32, # is an alias for Int32? primary key
    title: String,
    content: String,
    created_at: Time?,
    updated_at: Time?
  )
  
  belongs_to :user, User
end
