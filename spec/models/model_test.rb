it "should have errors if created with no user or post id" do
    comment = Comment.create
    expect(comment.save).to eq(false)
    expect(comment.errors.messages).to have_key(:user)
    expect(comment.errors.messages).to have_key(:post)
end