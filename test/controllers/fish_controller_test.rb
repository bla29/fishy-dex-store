require "test_helper"

class FishControllerTest < ActionDispatch::IntegrationTest
   test "should get index" do
    get fish_index_url
    assert_response :success
   end

   test "should post" do
    post fish_index_url, params: { species: Fish.first.species, weight: Fish.first.weight, date: Fish.first.date }, as: :json
    assert_response :success
   end

   test "should update" do
    patch fish_index_url(Fish.last), params: { species: "Brook Trout", weight: 1.5, date: "12/10/12" }, as: :json
    assert_response :success
   end

   test "should delete" do
    delete fish_index_url(Fish.last), as: :json
    assert_response :success
   end
end
