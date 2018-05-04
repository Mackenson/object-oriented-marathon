class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_opening_date , season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    @employees = []
    cage_maker
  end

  def cage_maker
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(new_employee)
    @employees << new_employee
  end

  def open?(date)
    @season_opening_date <= date && @season_closing_date >= date
  end
  def add_animal(new_animal)
    @cages.each do |each_cage|
      if each_cage.empty?
        each_cage.animal = new_animal
        break
      end
    end
    "Your zoo is already at capacity!"
  end

  def visit
    "Howard Moon waved hello!\n Vince Noir waved hello!\n Vince Noir waved hello!\n Bollo got a bad feeling about this...\n Ring-ding-ding-ding-dingeringeding!\n Ring-ding-ding-ding-dingeringeding!\n"
  end

end
