json.data do
  json.post do
    json.partial! 'api/v1/posts/post', post: post
  end
end
