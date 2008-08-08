require 'test_helper'

class ImagemsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:imagems)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_imagem
    assert_difference('Imagem.count') do
      post :create, :imagem => { }
    end

    assert_redirected_to imagem_path(assigns(:imagem))
  end

  def test_should_show_imagem
    get :show, :id => imagems(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => imagems(:one).id
    assert_response :success
  end

  def test_should_update_imagem
    put :update, :id => imagems(:one).id, :imagem => { }
    assert_redirected_to imagem_path(assigns(:imagem))
  end

  def test_should_destroy_imagem
    assert_difference('Imagem.count', -1) do
      delete :destroy, :id => imagems(:one).id
    end

    assert_redirected_to imagems_path
  end
end
