# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  #Definicion de variables
  def setup
    @a = Fraccion.new(-3,6)
    @b = Fraccion.new(8,2)
    @c = Fraccion.new(1,6)
    @d = Fraccion.new(10,5)
  end

  #Comprobar funcionalidad
  def test_simple
    assert_equal("10/5", @d.to_s)

    assert_not_equal("20/6", @a.suma(@b).to_s) #Seria 21/6
    assert_equal("23/6", @b.resta(@c).to_s)
    assert_equal("10/30", @c.multiplicacion(@d).to_s)
    assert_equal("300/50", @d.division(@c).to_s)
  end
end