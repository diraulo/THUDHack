require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.create :user }

  describe 'Fixtures' do
    it 'should have valid Fixture Factory' do
      expect(FactoryGirl.create(:user)).to be_valid
    end
  end

  describe 'Association' do
  end

  describe 'Database Schema' do
    it { is_expected.to have_db_column :first_name }
    it { is_expected.to have_db_column :last_name }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :city }
    it { is_expected.to have_db_column :member_type }
  end

  describe 'Validation' do
    subject { FactoryGirl.create(:user) }
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
    it { is_expected.to validate_presence_of :email }
    # it { is_expected.to validate_presence_of :city }
    # it { is_expected.to validate_presence_of :member_type }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to allow_value('a@a.com', 'a@1b.net').for(:email) }
    it { is_expected.to_not allow_value('a@a', 'a@1b,net', '!d@e.se', 'd@a!.s0').for(:email) }
    it { is_expected.to validate_acceptance_of :t_and_cs }
  end
end
