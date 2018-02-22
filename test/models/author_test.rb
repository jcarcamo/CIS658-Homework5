require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  def setup
    @author = authors(:one)
  end
  # Empty lastname
  test 'last name must not be empty' do
    @author.lname = ''
    assert_not @author.valid?
  end
  # Empty firstname
  test 'first name must not be empty' do
    @author.fname = ''
    assert_not @author.valid?
  end
  # Empty email
  test 'email must not be empty' do
    @author.email = ''
    assert_not @author.valid?
  end

  # Malformed email
  test 'email must have a valid format' do
    @author.email = 'some-bad-email'
    assert_not @author.valid?
  end
  # Duplicate email
  test 'email must not be duplicate' do
    author = Author.new(fname: 'Robert', lname: 'Roberts', email: @author.email)
    assert_not author.valid?
  end

  # Empty thumbnail
  test 'Thumbnail can be empty' do
    @author.thumbnail = ''
    assert @author.valid?
  end

  # Wrong thumbnail format
  test 'Thumbnail must not have an extension different than gif, jpeg or png' do
    @author.thumbnail = 'somefile.php'
    assert_not @author.valid?
  end

  test 'Valid data' do
    author = Author.new(
      fname: 'Robert', lname: 'Roberts', email: 'bob@roberts.com', thumbnail:'a.jpg')

    assert author.valid?

    author.thumbnail = 'some-file.jpg'
    assert author.valid?
    author.thumbnail = 'some-file.png'
    assert author.valid?
    author.thumbnail = 'some-file.gif'
    assert author.valid?
  end

end
