require 'test_helper'

class ProjectdetailsControllerTest < ActionController::TestCase
  setup do
    @projectdetail = projectdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projectdetail" do
    assert_difference('Projectdetail.count') do
      post :create, projectdetail: { biling_type: @projectdetail.biling_type, dead_line_date: @projectdetail.dead_line_date, end_date: @projectdetail.end_date, github_url: @projectdetail.github_url, proj_code: @projectdetail.proj_code, proj_desc: @projectdetail.proj_desc, proj_name: @projectdetail.proj_name, start_date: @projectdetail.start_date, status: @projectdetail.status }
    end

    assert_redirected_to projectdetail_path(assigns(:projectdetail))
  end

  test "should show projectdetail" do
    get :show, id: @projectdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projectdetail
    assert_response :success
  end

  test "should update projectdetail" do
    patch :update, id: @projectdetail, projectdetail: { biling_type: @projectdetail.biling_type, dead_line_date: @projectdetail.dead_line_date, end_date: @projectdetail.end_date, github_url: @projectdetail.github_url, proj_code: @projectdetail.proj_code, proj_desc: @projectdetail.proj_desc, proj_name: @projectdetail.proj_name, start_date: @projectdetail.start_date, status: @projectdetail.status }
    assert_redirected_to projectdetail_path(assigns(:projectdetail))
  end

  test "should destroy projectdetail" do
    assert_difference('Projectdetail.count', -1) do
      delete :destroy, id: @projectdetail
    end

    assert_redirected_to projectdetails_path
  end
end
