require 'rails_helper'

RSpec.describe Supplier, type: :model do

  it 'is valid with minimum attributes' do
    supplier = Supplier.new(name: 'Supplier Name')
    expect(supplier).to be_valid
  end

  it 'is invalid without a name' do
    supplier = Supplier.new(address_1: '100 Main St', city: 'Washington', state: 'DC')
    supplier.valid?
    aggregate_failures do
      expect(supplier).to_not be_valid
      expect(supplier.errors.count).to eq(1)
      expect(supplier.errors.full_messages.first).to eq("Name can't be blank")
    end
  end
end
