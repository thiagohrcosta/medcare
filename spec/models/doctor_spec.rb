require 'rails_helper'

RSpec.describe Doctor, type: :model do

  it "Doctor is valid with valid attributes"
  it "Is not valid without a name"
  it "Is not valid without a CRM"
  it "Is not valid without a CRM_UF"
  it "Is not valid with duplicate CRM / UF"
end
