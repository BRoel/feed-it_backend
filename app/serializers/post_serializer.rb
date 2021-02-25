class PostSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :body
end