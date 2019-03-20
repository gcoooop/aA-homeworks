class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    # debugger
    until self.game_over
     take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    
    guesses = 0

    until guesses == self.sequence_length
      if require_sequence != self.seq[guesses]
        self.game_over = true
        break
      end
      guesses += 1
    end
    
    unless self.game_over
      self.sequence_length += 1
      round_success_message
    end

  end

  def show_sequence
    add_random_color
    self.seq.each { |color| puts color }
  end

  def require_sequence
    gets.chomp
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    puts "Nice work :)"
  end

  def game_over_message
    self.game_over = true
    puts "Game over :("
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
  
end