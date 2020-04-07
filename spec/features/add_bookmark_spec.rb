feature 'Adding a new bookmark' do
  scenario 'A user can add a new bookmark' do
    vistis('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end