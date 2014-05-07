require 'spec_helper'

describe NilLendee do
  describe '#name' do
    it 'returns -' do
      expect(NilLendee.new.name).to eql '-'
    end
  end
end
