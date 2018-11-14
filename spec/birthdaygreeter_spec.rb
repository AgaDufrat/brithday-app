require 'person'

describe Person do
  let(:person) { described_class.new("Aga")}

  context "#name" do
    it 'shows the name of the person' do
      expect(person.name).to eq("Aga")
    end
  end
end
