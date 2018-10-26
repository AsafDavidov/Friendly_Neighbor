require "rails_helper"
DatabaseCleaner.strategy = :truncation
# then, whenever you need to clean the DB
DatabaseCleaner.clean
describe User do

  let(:valid_attrs) do
    {
      name: "Asaf",
      email: "Asaf@email.com",
      address: "123 Ford Ave",
      password: 'password',
      password_confirmation: 'password'
    }
  end
  let(:valid_user) { User.new(valid_attrs) }
  let(:missing_name) { User.new(valid_attrs.except(:name)) }
  let(:missing_email) { User.new(valid_attrs.except(:email)) }
  let(:missing_address) { User.new(valid_attrs.except(:address)) }
  let(:missing_password) { User.new(valid_attrs.except(:password)) }
  let(:missing_password_confirmation) { User.new(valid_attrs.except(:password_confirmation)) }
  let(:mis_match) { User.new(valid_attrs.merge(password: "different_password")) }


  it 'is valid' do
    expect(valid_user).to be_valid
  end

  it "is invalid with no name" do
    expect(missing_name).to be_invalid
  end

  it "is invalid with no email" do
    expect(missing_email).to be_invalid
  end
  it "is invalid with no address" do
    expect(missing_address).to be_invalid
  end

  it "is invalid with no password" do
    expect(missing_address).to be_invalid
  end

  it "is invalid with no password confirmation" do
    expect(missing_address).to be_invalid
  end

  it "is invalid with non-matching password and password confirmation" do
    expect(mis_match).to be_invalid
  end

end
