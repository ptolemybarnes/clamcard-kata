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
    zone_b?(start, finish) ? 300 : 250
  end

  def cap_checker(start, finish, card)
    card.increase_cap if zone_b?(start, finish)
  end

  def charge_to(start, finish, card)
    fare = calculate_fare(start, finish)
    card.charge(fare)
  end

  private

  def zone_b?(start, finish)
    @stations[start.to_sym]=="B" || @stations[finish.to_sym]=="B"
  end
end
