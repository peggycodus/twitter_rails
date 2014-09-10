describe "the signin process", :type => :feature do
  before :each do
    User.create(:email => 'user@example.com', :password => 'codefaster')
  end

  it "signs me in" do
    visit '/sessions/new'
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'codefasters'
    click_button 'Log in'
  expect(page).to have_content "Logged in!"
  end
end