class Board

    attr_accessor :board
  
    def initialize
      # 9 cases avec une valeur par défault étant un espace (sinon ça affiche nil)
      @case_1 = BoardCase.new(" ")
      @case_2 = BoardCase.new(" ")
      @case_3 = BoardCase.new(" ")
      @case_4 = BoardCase.new(" ")
      @case_5 = BoardCase.new(" ")
      @case_6 = BoardCase.new(" ")
      @case_7 = BoardCase.new(" ")
      @case_8 = BoardCase.new(" ")
      @case_9 = BoardCase.new(" ")
  
      # array des différentes positions
      @board = [@case_1, @case_2, @case_3, @case_4, @case_5, @case_6, @case_7, @case_8, @case_9]
    end
  
    def display_board
          
      puts 
      puts 
      puts "  #{@board[0].value} | #{@board[1].value} | #{@board[2].value} "
      puts "-------------"
      puts "  #{@board[3].value} | #{@board[4].value} | #{@board[5].value} "  
      puts "-------------"
      puts "  #{@board[6].value} | #{@board[7].value} | #{@board[8].value} "
      puts 
      puts
  
    end
  
    def play_turn(array)
      # array a cette forme : [x, x.value_player, choice], où value_player est son symbole
      k = array[2] # l'index 2 la place entre 1 et 9 que le joueur a indiqué.
        case
        when array[1] == "X" # on regarde quel est le pion du joueur, ca correspond à l'index 1 de array
          @board[(k-1)].value = "X" # l'index d'un array commence à 0, donc on soustrait 1 à k. Et on change la valeur du BoardCase.
        when array[1] == "O"
          @board[(k-1)].value = "O"
        else
        end
    end
  
    def case_empty?(choice)
      # tant que la valeur de la place indiquée n'est pas vide, on retourne false
      unless @board[(choice-1)].value == " "
        return false
      else
        return true
      end
    end
  
    def victory?
      # méthode appelée dans fichier game (pour afficher message de fin)
      
      # condition 1 = les 3 mêmes valeurs (X ou O), en horizontal, en vertical ou en diagonal
      # condition 2 = cases également non vides (valeurs au début de la partie)
  
  
      case
  
        # les 3 mêmes valeurs en horizontal
        when @case_1.value == @case_2.value && @case_1.value == @case_3.value && @case_1.value != " " && @case_2.value != " " && @case_3.value != " "
          return true
        when @case_4.value == @case_5.value && @case_4.value == @case_6.value && @case_4.value != " " && @case_5.value != " " && @case_6.value != " "
          return true
        when @case_7.value == @case_8.value && @case_7.value == @case_9.value && @case_7.value != " " && @case_8.value != " " && @case_9.value != " "
          return true
  
        # les 3 mêmes valeurs en vertical
        when @case_1.value == @case_4.value && @case_1.value == @case_7.value && @case_1.value != " " && @case_4.value != " " && @case_7.value != " "
          return true
        when @case_2.value == @case_5.value && @case_2.value == @case_8.value && @case_2.value != " " && @case_5.value != " " && @case_8.value != " "
          return true
        when @case_3.value == @case_6.value && @case_3.value == @case_9.value && @case_3.value != " " && @case_6.value != " " && @case_9.value != " "
          return true
  
        # les 3 mêmes valeurs en diagonal
        when @case_1.value == @case_5.value && @case_1.value == @case_9.value && @case_1.value != " " && @case_5.value != " " && @case_9.value != " "
          return true
        when @case_3.value == @case_5.value && @case_3.value == @case_7.value && @case_3.value != " " && @case_5.value != " " && @case_5.value != " "
          return true
  
        else
          return false
      end
  
    end
  
  end