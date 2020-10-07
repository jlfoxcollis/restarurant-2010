class Restaurant
  attr_accessor :opening_time, :name

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end



  def closing_time(add)
    "#{(@opening_time.to_i + add)}#{":"}#{00}#{00}"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    opening_time.delete(":00")
    if opening_time.to_i < 12
      false
    elsif opening_time.to_i > 12
      true
    end
  end

  def menu_dish_names
    @dishes
  end

  def announce_time(add)
    opening_time.delete(":00")
  end

  def announce_closing_time(time)
    if announce_time(time).to_i < 12

    "#{name} will be closing at #{closing_time(time)}AM"

  else
    "#{name} will be closing at #{closing_time(time).to_i - 12}#{":"}#{00}#{00}PM"
  end


  end


  def dishes
    @dishes
  end



end
