class Journey

  def initialize
    @stations = {
      "Asterisk": "A",
      "Antelope": "A",
      "Aldgate": "A",
      "Angel": "A",
      "Aardvark": "A",
      "Bison": "B",
      "Bugel": "B",
      "Balham": "B",
      "Bullhead": "B",
      "Barbican": "B"
    }
  end

  def calculate_fare(start, finish)
    @stations[start.to_sym]=="B" || @stations[finish.to_sym]=="B" ? 300 : 250
  end

  def charge_to(start, finish, card)
    fare = calculate_fare(start, finish)
    card.charge(fare)
  end
end
