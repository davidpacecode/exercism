module Port
   Port::IDENTIFIER = :PALE

  def self.get_identifier(city)
    :"#{city[0..3].upcase}"
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier[0..2] == "OIL" || ship_identifier[0..2] == "GAS"
      :A
    else
      :B
    end
  end
end

puts Port::IDENTIFIER

puts Port.get_identifier("Hamburg")

puts Port.get_terminal(:OIL123)
