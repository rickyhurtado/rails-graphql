module Types
  class PostType < Types::BaseObject
    field :id, Integer, null: false
    field :title, String, null: false
    field :body, String, null: false
    field :user, Types::UserType, null: false
  end
end
