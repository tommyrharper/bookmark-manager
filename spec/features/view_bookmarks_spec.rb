feature 'You can view bookmarks' do
  scenario 'the bookmark page is loaded' do
    visit '/bookmarks'
    expect(page).to have_content 'Bookmarks'
  end

  scenario 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create(url: "http://www.makersacademy.com")
    Bookmark.create(url: "http://www.google.com")
    
    visit('./bookmarks')

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
  end

  
end
