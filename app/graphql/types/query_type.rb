module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :posts, [Types::PostType], null: false do
      argument :limit, Integer, required: false
    end

    def posts(limit: 5)
      Post.all.limit(limit)
    end

    field :post, Types::PostType, null: false do
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    end

    field :posts_count, Integer, null: false

    def posts_count
      Post.count
    end
  end
end
