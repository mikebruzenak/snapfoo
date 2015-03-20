describe User do

  before(:each) { @user = User.new(email: 'user@example.com', phone: '5555555555') }

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:phone) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  it "#phone returns a string" do
    expect(@user.phone).to match '5555555555'
  end
end
