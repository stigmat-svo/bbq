require 'rails_helper'

RSpec.describe EventPolicy, type: :policy do
  let(:user) { FactoryBot.create(:user, email: 'pupa@mail.ru') }

  subject { EventPolicy }


end
