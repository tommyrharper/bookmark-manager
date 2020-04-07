feature 'You can view bookmarks' do
  scenario 'the bookmark page is loaded' do
    visit '/bookmarks'
    expect(page).to have_content 'Bookmarks'
  end

  scenario 'the page shows the first bookmark name' do
    visit '/bookmarks'
    expect(page).to have_content 'Google'
  end

end
