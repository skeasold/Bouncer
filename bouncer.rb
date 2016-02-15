class Bouncer

  def initializer
  end

  def start
    puts "====RUNNING BOUNCER===="
    puts "What is your age?"
    @age = gets.chomp
    @age = @age.to_i
    check_age
  end

  def check_age
    
  end
end

new_game = Bouncer.new
new_game.start
