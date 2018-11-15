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
    select '15', from: 'day'
    select 'November', from: 'month'
    click_button 'Go!'
    expect(page).to have_content 'Happy birthday, Aga!'
  end
end

  feature 'Counts days until birthday' do
    scenario 'when given a name and date' do
      visit('/')
      fill_in :name, with: 'Aga'
      select '17', from: 'day'
      select 'November', from: 'month'
      click_button 'Go!'
      expect(page).to have_content 'Your birthday will be in 2 days, Aga!'
    end
  end
