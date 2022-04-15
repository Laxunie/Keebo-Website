# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.delete_all
Board.delete_all
Layout.delete_all


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

layouts = ["TKL", "75%", "65%", "60%", "40%", "Alice", "Calculator"]
i = 0
while i < layouts.length() do
    Layout.create(name: layouts[i])
    i += 1
end


j = 0
board_layout  = ["Calculator", "TKL", "60%", "60%", "TKL", "40%", "60%", "65%", "Alice", "75%"]
kit = ["Tentaku Mechanical Calculator", "U80-A SEQ 1", "KBDFans 5°", "GS60", "Matrix Lab 2.0", "Littlefoot LX", "zekk.works Ogre", "Bauer 2", "BMEK", "E7-V2"]
switches = ["Unholy Pandas", "JWK Sakuras", "Tealios", "Gateron Black Inks", "Cherry MX Browns", "Lil Tyke Switches", "Gateron Black Inks", 
    "Corsas Switches", "Silent Alpacas", "Everglide Aqua Kings"]
stabilizers = ["", "Durock Stabilizers", "Durock Stabilizers", "Cherry Stabilizers", "Durock V2 Stabilizers", "Durock V2 Stabilizers", "TX Stabilizers", 
    "Durock V2 Stabilizers", "Durock Stabilizers", "Durock V2 Stabilizers"]
keycaps = ["MT3 Serika", "GMK Metropolis", "GMK Oblivion", "JTK Griseann", "GMK Beta JS", "Keyreative 'Mondrian' Cherry Keycaps", "GMK Demon Sword", 
    "XMI Blue Cyrillic", "GMK Minimal", "GMK Deku"]
price = [300, 800, 500, 200, 800, 300, 700, 1000, 600, 700]
image = ["calculator1", "tkl1", "601", "602", "tkl2", "401", "603", "651", "alice1", "751"]

while j < board_layout.length() do
    layout = Layout.where(name: "#{board_layout[j]}").first
    layout.boards.create(kit: kit[j], switches: switches[j], stabilizers: stabilizers[j], keycaps: keycaps[j], price: price[j], image_path: "./Images/#{image[j]}")
    j += 1
end
puts "Created #{Layout.count} Layouts"
puts "Created #{Board.count} Keyboards"


