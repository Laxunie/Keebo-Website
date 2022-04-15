json.extract! board, :id, :kit, :switches, :stabilizers, :keycaps, :price, :layout, :layout_id, :created_at, :updated_at
json.url board_url(board, format: :json)
