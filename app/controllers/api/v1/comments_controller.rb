module Api
  module V1
    class CommentsController < ApiController

      def create
        @comment = Comment.new(comment_params)
        @comment.post_id = params[:post_id]
        @comment.user = current_user

        if @comment.save
          'Salvou'
        else
          'Não salvou'
        end
      end

    end
  end
end