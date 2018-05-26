require_relative 'vehicle'
class Car < Vehicle
  @@cont_instancias = 0
  def initialize
    @@cont_instancias += 1
  end

  def self.cant_instancia
    @@cont_instancias
  end

  def engine_start
    @start = true
    puts 'El motor se ha encendido'
  end
end

1..10.times do
  Car.new
end

puts Car.new.engine_start

puts Car.cant_instancia
