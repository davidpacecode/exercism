class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.each do | item |
      puts item[:name]
    end
  end

  def cheap
    raise 'Implement the BoutiqueInventory#cheap method'
  end

  def out_of_stock
    raise 'Implement the BoutiqueInventory#out_of_stock method'
  end

  def stock_for_item(name)
    raise 'Implement the BoutiqueInventory#stock_for_item method'
  end

  def total_stock
    raise 'Implement the BoutiqueInventory#total_stock method'
  end

  private
  attr_reader :items
end

puts BoutiqueInventory.new([
  {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
  {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
  {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
  {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
]).item_names
