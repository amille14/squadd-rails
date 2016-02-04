json.(post, :id, :room_id, :edited_at, :created_at, :title, :content, :link, :score, :is_nsfw, :is_private)
json.creator_id post.user_id

if @current_user.present?
  post_user = @user.for_post(post.id)
  json.post_user do
    json.(post_user, :id, :read_at, :score, :is_muted)
  end
end