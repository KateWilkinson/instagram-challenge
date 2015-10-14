module Helpers

  def sign_up_user
    visit '/'
    click_link('Sign up')
    fill_in('Username', with: 'Bob')
    fill_in('Email', with: 'test@email.com')
    fill_in('Password', with: '12345678')
    fill_in('Password confirmation', with: '12345678')
    click_button('Register')
  end

  def sign_up_second_user
    visit '/'
    click_link('Sign up')
    fill_in('Username', with: 'KateW')
    fill_in('Email', with: 'kate@email.com')
    fill_in('Password', with: '12345678')
    fill_in('Password confirmation', with: '12345678')
    click_button('Register')
  end

  def upload_cake_image
    visit '/'
    click_link('Upload an image')
    attach_file 'Picture', 'spec/images/cake.jpg'
    fill_in 'Name', with: 'Cake'
    click_button 'Add photo'
  end

  def upload_otter_image
    visit '/'
    click_link('Upload an image')
    attach_file 'Picture', 'spec/images/otter.jpg'
    fill_in 'Name', with: 'Otter'
    click_button 'Add photo'
  end

  def leave_comment
    click_link 'Comment'
    fill_in "Comment", with: "yum!"
    click_button 'Leave Comment'
  end

end
