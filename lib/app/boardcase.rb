


class BoardCase
    #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
    attr_accessor :value,:case_number
    
    def initialize(case_number)
      @value = ""
      @case_number = case_number
    end
    
    def to_s
      #TO DO : doit renvoyer la valeur au format string
      self.value = @value 
    end
  
  end