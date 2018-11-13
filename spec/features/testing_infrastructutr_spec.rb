feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit ('/')
    expect(page).to have_text(/Hello there!/)
  end
end

feature 'Wishes happy birthday' do
  scenario 'when given a name' do
    visit('/')
    fill_in :name, with: 'Aga'
    click_button 'Go!'
    expect(page).to have_content 'Happy birthday, Aga!'
  end
end
