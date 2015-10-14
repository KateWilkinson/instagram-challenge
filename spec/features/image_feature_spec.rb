require 'rails_helper'
require 'helpers'

RSpec.configure do |c|
  c.include Helpers
end

feature 'images' do

  context 'no images have been added' do
    scenario 'should display no images' do
      visit '/images'
      expect(page).to have_content 'No images yet'
    end
  end

  context 'posting images' do
    scenario 'user can see image upload link once logged in' do
      sign_up_user
      expect(page).to have_link 'Upload an image'
    end

    scenario 'adds the image to the homepage' do
      sign_up_user
      upload_cake_image
      expect(page).to have_content 'Cake'
    end
  end

  context 'viewing images' do
    scenario 'lets a user see all uploaded images' do
      sign_up_user
      upload_cake_image
      upload_otter_image
      visit '/images'
      expect(page).to have_content 'Cake'
      expect(page).to have_content 'Otter'
    end

    scenario 'lets user see who uploaded images' do
      sign_up_user
      upload_cake_image
      visit '/images'
      expect(page).to have_content ''
    end
  end

  context 'deleting images' do
    before do
      sign_up_user
      upload_cake_image
    end

    scenario 'removes an image when a user clicks a delete link' do
      click_link 'Delete'
      expect(page).not_to have_content 'Cake'
      expect(page).to have_content 'Image deleted successfully'
    end

    scenario 'user cannot delete an image they did not upload' do
      click_link 'Log out'
      sign_up_second_user
      expect(current_path).to eq '/'
      click_link 'Delete'
      expect(current_path).to eq images_path
      expect(page).to have_content 'You do not have permission to delete this image'
    end
  end

end
