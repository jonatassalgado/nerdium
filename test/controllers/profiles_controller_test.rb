require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: users(:jonatas).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end

  test "deve mostrar a pagina 404 se um perfil nao for encontrado" do
  	get :show, id: "doesn't exist"
  	assert_response :missing
  end

  test "deve ter as variaveis de usuario na exibicao show do profile" do
  	get :show, id: users(:jonatas).profile_name
  	assert assigns(:user)
  	assert_not_nil assigns(:posts)
  end

  test "mostrar somente os posts do usuario no perfil"  do
    get :show, id: users(:jonatas).profile_name
    assigns(:posts).each do |post|
      assert_equal users(:jonatas), post.user
    end
  end

end
