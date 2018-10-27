class Cliente
  attr_accessor :nome

  def initialize(args)
    @nome = args[:nome]
  end
end
