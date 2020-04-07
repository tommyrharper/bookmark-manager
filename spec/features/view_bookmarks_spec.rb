feature 'You can view bookmarks' do
  scenario 'the bookmark page is loaded' do
    visit '/bookmarks'
    expect(page).to have_content 'Bookmarks'
  end

  scenario 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

    visit('./bookmarks')

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
  end

  
end
