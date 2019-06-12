
class Card
  attr_accessor :rank, :suit
 
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
 
  def output_card
    puts "The #{@rank} of #{@suit}"
  end
end
 
class Deck
  def initialize
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
    @suits = ['♣', '♥', '♠', '♦']
    @cards = []
 
    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  
  @cards.shuffle!
  end
 
  def deal (number)
    dealingCards = []
    number.times {dealingCards << @cards.shift}
    return dealingCards
  end
end
 



class Player 
attr_accessor :name, :hand
    def initialize(name)
        @hand = []
        @name = name
        puts "Ready to Play!\n\n"

    end
end

class Dealer < Player
    def initialize(name)
        super
        @deck = Deck.new()
        puts "#{@name} is ready to deal\n\n"
    def deal(player)
        puts "#{@name} is dealing to #{player.name}\n\n"
        player.hand = @deck.deal(2)
    end
  end   
end     

joe = Dealer.new("Joe")
puts "Enter Name: "
p1 = Player.new(gets)
puts "Enter Name: "
p2 = Player.new(gets)
puts "Enter Name: "
p3 = Player.new(gets)


joe.deal(p1)
joe.deal(joe)
joe.deal(p2)
joe.deal(p3)


puts "\n\n#{p1.name} Hand: "
p1.hand.each do |card|
    puts card.rank, card.suit
end

puts "\n\n#{p2.name} Hand: "
p2.hand.each do |card|
    puts card.rank, card.suit
end

puts "\n\n#{p3.name} Hand: "
p3.hand.each do |card|
    puts card.rank, card.suit
end

puts "Dealers Hand: "
joe.hand.each do |card|
    puts card.rank, card.suit
end


