feature 'You can view bookmarks' do
  scenario 'the bookmark page is loaded' do
    visit '/bookmarks'
    expect(page).to have_content 'Bookmarks'
  end

  scenario 'the page shows the first bookmark name' do
    visit '/bookmarks'
    expect(page).to have_content 'Google'
  end

  scenario 'the page shows the second bookmark name' do
    visit '/bookmarks'
    expect(page).to have_content 'BBC'
  end

  scenario 'the page shows the first bookmark url' do
    visit '/bookmarks'
    expect(page).to have_content 'www.google.com'
  end

  scenario 'the page shows the second bookmark url' do
    visit '/bookmarks'
    expect(page).to have_content 'www.bbc.co.uk'
  end
end
