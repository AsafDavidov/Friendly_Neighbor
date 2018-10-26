require "rails_helper"

DatabaseCleaner.strategy = :truncation
# then, whenever you need to clean the DB
DatabaseCleaner.clean
describe Item do

  user = User.create(name: "Asaf", email: "Asaf@email.com", address: "123 Ford Ave", password: 'password', password_confirmation: 'password')

  let(:valid_attrs) do
    {
      name: "Hammer",
      description: "Very Trustyworthy",
      price: "1"
    }
  end

  let(:valid_item) { user.items.build(valid_attrs) }
  let(:missing_name) { user.items.build(valid_attrs.except(:name)) }
  let(:missing_description) { user.items.build(valid_attrs.except(:description)) }

  let(:missing_price) { user.items.build(valid_attrs.except(:price)) }

  let(:too_low) { Item.new(valid_attrs.merge(price: 0)) }


  it 'is valid' do
    
    expect(valid_item).to be_valid
  end

  it "is invalid with no name" do
    expect(missing_name).to be_invalid
  end

  it "is invalid with no description" do
    expect(missing_description).to be_invalid
  end

  it "is invalid with no price" do
    expect(missing_price).to be_invalid
  end

  it "is invalid with price that is 0 or lower" do
    expect(too_low).to be_invalid
  end

end
