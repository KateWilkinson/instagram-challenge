require 'rails_helper'
require 'helpers'

RSpec.configure do |c|
  c.include Helpers
end

feature 'comments' do

  before do
    sign_up_user
    upload_cake_image
  end

  scenario 'allows users to leave a comment using a form' do
    visit '/images'
    leave_comment
    expect(current_path).to eq '/images'
    expect(page).to have_content('yum')
  end

  scenario 'user can delete their comments' do
    leave_comment
    click_link 'Cake'
    click_link 'Delete comment'
    expect(page).to have_content 'You have succesfully deleted your comment'
  end

  scenario 'user cannot delete other peoples comments' do
    leave_comment
    click_link 'Log out'
    sign_up_second_user
    click_link 'Cake'
    click_link 'Delete comment'
    expect(page).to have_content 'You do not have permission to delete this comment'
  end

end
