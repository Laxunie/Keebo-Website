require "test_helper"

class BoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @board = boards(:one)
  end

  test "should get index" do
    get boards_url
    assert_response :success
  end

  test "should get new" do
    get new_board_url
    assert_response :success
  end

  test "should create board" do
    assert_difference("Board.count") do
      post boards_url, params: { board: { keycaps: @board.keycaps, kit: @board.kit, layout: @board.layout, layout_id: @board.layout_id, price: @board.price, stabilizers: @board.stabilizers, switches: @board.switches } }
    end

    assert_redirected_to board_url(Board.last)
  end

  test "should show board" do
    get board_url(@board)
    assert_response :success
  end

  test "should get edit" do
    get edit_board_url(@board)
    assert_response :success
  end

  test "should update board" do
    patch board_url(@board), params: { board: { keycaps: @board.keycaps, kit: @board.kit, layout: @board.layout, layout_id: @board.layout_id, price: @board.price, stabilizers: @board.stabilizers, switches: @board.switches } }
    assert_redirected_to board_url(@board)
  end

  test "should destroy board" do
    assert_difference("Board.count", -1) do
      delete board_url(@board)
    end

    assert_redirected_to boards_url
  end
end
