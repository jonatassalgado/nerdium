require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest

	test "a url /registrar abre a pagina sign up" do 
		get '/registrar'
		assert_response :success
	end

	test "a url /entrar abre a pagina log in" do 
		get '/entrar'
		assert_response :success
	end

	test "a url /sair abre a pagina de log out" do 
		get '/sair'
		assert_response :redirect
		assert_redirected_to '/'
	end

	test "a pagina de perfil funciona" do
		get '/jonataseduardo'
		assert_response :success
	end

end
