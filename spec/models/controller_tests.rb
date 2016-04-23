RSpec.describe CommentsController, type: :controller do
  describe "GET show" do
    it "assigns the requested comment as @comment" do
      comment = Comment.create! valid_attributes
      get :show, {id: comment.to_param}, valid_session
      expect(assigns(:comment)).to eq(comment)
    end
  end
 
  describe "POST create" do
    it "creates a new Comment" do
      expect {
        post :create, valid_attributes, valid_session
      }.to change(Comment, :count).by(1)
    end
  end
end