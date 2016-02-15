class Bouncer
  attr_reader :activities; :age

  def start
    puts "====RUNNING BOUNCER===="
    @activities = [
      {min_age: 17,
        activity: "nothing"},
      {min_age: 18,
        activity: "vote"},
      {min_age: 18,
        activity: "smoke"},
      {min_age: 21,
        activity: "drink"},
      {min_age: 25,
        activity: "rent a car"}
    ]
    age_input
  end

  def age_input
    puts "What is your age?"
    @age = gets.chomp
    if @age.to_i.to_s == @age
      @age = @age.to_i
      age_activities
    else
      puts "Please enter an integer"
      age_input
    end
  end

  def age_activities
    activities
      .select {|activity| activity[:min_age] <= @age}
      .map {|activity| activity[:activity]}
      .each {|activity| puts "You can do #{activity}"}
    play_again
  end

  def play_again
    puts "Would you like to play again? y/n"
    again = gets.chomp
    if again == n
      puts "Bouncer Ended."
    else
      puts "Restarting Bouncer..."
      age_input
    end
  end
end

new_game = Bouncer.new
new_game.start
