class Player

    attr_accessor :name, :value_player
    attr_writer :win
    
    def initialize (name, value_player, win = false)
  
      @name = name
      @value_player = value_player
      @win = win
    end
  
  end