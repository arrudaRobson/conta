class Conta
  attr_accessor :numero, :nome, :saldo, :limite

  def initialize(args)
    @numero = args[:numero]
    @nome = args[:nome]
    @saldo = args[:saldo]
    @limite = args[:limite]
  end

  def sacar(valor)
    if @saldo >= valor
      @saldo -= valor
    elsif @limite
      @saldo -= valor
      no_limite()
    end
    false
  end

  def depositar(valor)
    @saldo += valor
  end

  def no_limite
    true
  end

  def transfere(conta, valor)
    if @saldo >= valor
      @saldo -= valor
      conta.saldo += valor
    end
    false
  end
end
