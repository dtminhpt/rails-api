it "routes to #index" do
    expect(get: "/comments").to route_to("comments#index")
end