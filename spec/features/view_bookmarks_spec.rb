feature 'You can view bookmarks' do
  scenario 'the bookmark page is loaded' do
    visit '/bookmarks'
    expect(page).to have_content 'Bookmarks'
  end

  scenario 'the page shows the first bookmark url' do
    visit '/bookmarks'
    expect(page).to have_content 'http://www.makersacademy.com'
  end

  scenario 'the page shows the second bookmark url' do
    visit '/bookmarks'
    expect(page).to have_content 'http://www.google.com'
  end
end
