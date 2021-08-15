require "test_helper"

class HasStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @has_store = has_stores(:one)
  end

  test "should get index" do
    get has_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_has_store_url
    assert_response :success
  end

  test "should create has_store" do
    assert_difference('HasStore.count') do
      post has_stores_url, params: { has_store: { Product: @has_store.Product, Store: @has_store.Store } }
    end

    assert_redirected_to has_store_url(HasStore.last)
  end

  test "should show has_store" do
    get has_store_url(@has_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_has_store_url(@has_store)
    assert_response :success
  end

  test "should update has_store" do
    patch has_store_url(@has_store), params: { has_store: { Product: @has_store.Product, Store: @has_store.Store } }
    assert_redirected_to has_store_url(@has_store)
  end

  test "should destroy has_store" do
    assert_difference('HasStore.count', -1) do
      delete has_store_url(@has_store)
    end

    assert_redirected_to has_stores_url
  end
end
