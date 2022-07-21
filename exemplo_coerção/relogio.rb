class Intervalo 
    def initialize(minutos) 
        @minutos = minutos.to_i  #Para garantir que @minutos seja sempre do tipo Fixnum, basta forçar que o parâmetro minutos seja convertido para Fixnum
    end

    def horas 
        @minutos / 60 
    end
    
    def minutos 
        @minutos % 60 
    end 

    def to_s 
        sprintf("%.1i:%.2i", horas, minutos) 
    end 

    def +(outros_minutos)
        Intervalo.new(@minutos + outros_minutos) 
    end 




end 

intervalo = Intervalo.new(90) 
novo_intervalo = intervalo + 30 
puts novo_intervalo.to_s

#Um exemplo bacana de coerção em Ruby
#https://www.alura.com.br/artigos/um-exemplo-bacana-de-coercao-em-ruby

#Como estamos seguindo a conveção de definir um método chamado to_i, 
#não precisamos nos preocupar quando o parâmetro minutos do construtor é do tipo Fixnum,
#pois nesta classe o método to_i já está definido e retorna o próprio objeto em que foi chamado. Bonito, não?

#Referências: http://www.mutuallyhuman.com/blog/2011/01/25/class-coercion-in-ruby/ https://pragprog.com/book/ruby/programming-ruby