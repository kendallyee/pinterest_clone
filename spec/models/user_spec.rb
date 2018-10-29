require 'rails_helper'
RSpec.describe User, type: :model do
  context "validations" do

    it "should have name and email" do
      should have_db_column(:name).of_type(:string)
      should have_db_column(:email).of_type(:string)
    end
    describe "validates presence of attributes" do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_presence_of(:password) }
    end
    context "associations" do
      it { is_expected.to have_many(:posts).dependent(:destroy) }
      it { is_expected.to have_many(:authentications).dependent(:destroy) }
    end
  end
end
