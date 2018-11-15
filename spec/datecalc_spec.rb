require 'datecalc'

describe Datecalc do
  let(:birthday) { described_class.new(5, 1, today)}
  let(:today) { Date.new(2018,01,01) }

  let(:birthday2) { described_class.new(5, 1, today_after_birthday)}
  let(:today_after_birthday) { Date.new(2018,01,06) }

  let(:birthday3) { described_class.new(5, 1, today_birthday)}
  let(:today_birthday) { Date.new(2018,01,05) }

  context "#day_of_the_year" do
    it 'returns the day of the year' do
      expect(birthday.day_of_the_year).to eq(5)
    end
  end

  context "#days_until_birthday" do
    context "when birthday is this year" do
      it 'calculates numer of days until birthday' do
        birthday.day_of_the_year
        expect(birthday.days_until_birthday).to eq(4)
      end
    end

    context "when birthday is next year" do
      it 'calculates number of days until birthday' do
        birthday2.day_of_the_year
        expect(birthday2.days_until_birthday).to eq(364)
      end
    end
  end

  context "#birthday_today?" do
    it 'check if birthday is today' do
      birthday3.day_of_the_year
      expect(birthday3.birthday_today?).to eq(true)
    end
  end
end
