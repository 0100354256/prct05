# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  attr_reader :a, :b

  def initialize (a, b)
    @a, @b = a, b
  end

  #Calculos racionales
  def mcm (a, b)
    a*b/gcd(a, b)
  end

  #String
  def to_s
    "#@a/#@b"
  end
  
  #Suma
  def suma(other)
    n = mcm(b, other.b)
    @a = (@a*n/@b) + (other.a*n/other.b)
    @b = n

    self.to_s #Devuelve el resultado como cadena
  end

  #Resta
  def resta(other)
    n = mcm(b, other.b)
    @a = (@a*n/@b) - (other.a*n/other.b)
    @b = n

    self.to_s #Devuelve el resultado como cadena
  end

  #Multiplicación
  def multiplicacion(other)
    @a = other.a*@a
    @b = other.b*@b

    self.to_s #Devuelve el resultado como cadena
  end

  #División
  def division(other)
    @a = other.b*@a
    @b = other.a*@b

    self.to_s #Devuelve el resultado como cadena
  end
end