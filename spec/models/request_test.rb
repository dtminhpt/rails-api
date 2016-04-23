it "won't work without authentication" do
    get comments_path
    expect(response.status).to be(401)
end
 
it "will work with authentication" do
    get comments_path, {}, valid_session
    expect(response.status).to be(200)
end