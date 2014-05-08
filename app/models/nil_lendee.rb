class NilLendee < Lendee
  include Singleton
  def name
    '-'
  end
end