class increment_likes

  def increment_likes
    bird = Bird.find(params[:id])
    if bird
      bird.update(likes: bird.likes + 1)
      render json: bird
    else
      render json: {error: "Bird not found"}, status: :not_found
    end
  end

end
