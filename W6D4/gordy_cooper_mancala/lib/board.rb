require "byebug"
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { [] }
    place_stones
  end

  def place_stones
    self.cups.each_index do |cup_idx|
      unless cup_idx == 6 || cup_idx == 13
        4.times { |_| self.cups[cup_idx] << :stone }
      end
    end
  end

  def valid_move?(start_pos)
    if start_pos > 13 || start_pos < 0
      raise "Invalid starting cup"
    elsif self.cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    # debugger
    in_hand, self.cups[start_pos] = self.cups[start_pos], []
    
    next_pos = start_pos

    until in_hand.empty?
      next_pos += 1
  
      if current_player_name == @name1 && next_pos == 13
        next_pos += 1
      elsif current_player_name == @name2 && next_pos == 6
        next_pos += 1
      end
      
      next_pos = 0 if next_pos > 13
      
      self.cups[next_pos] << in_hand.pop

    end

    
    render
    next_turn(next_pos)
  end

  def next_turn(ending_cup_idx)
    if self.cups[ending_cup_idx].length == 1 && ending_cup_idx != 6 && ending_cup_idx != 13
      :switch
    elsif ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..5).all? { |idx| self.cups[idx].empty? } || (7..12).all? { |idx| self.cups[idx].empty? }
  end

  def winner
    case self.cups[6] <=> self.cups[13]
    when -1
      @name2
    when 0 
      :draw
    when 1
      @name1
    end
  end
end
