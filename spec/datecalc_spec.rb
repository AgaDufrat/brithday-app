require 'datecalc'

describe Datecalc do
  let(:birthday) { described_class.new(5, 1)}
  let(:date_after_birthday) { described_class.new(10, 1)}
  let(:date_before_birthday) { described_class.new(1, 1)}
  let(:today) { Date.new(2018,01,01) }
  let(:today_birthday) { Date.new(2018,01,05) }

  context "#convert_to_date" do
    it 'converts given day and month to date format' do
      expect(birthday.convert_to_date).to eq(Date.new(2018,01,05))
    end
  end

  # context "#day_of_the_year" do
  #   it 'returns the day of the year' do
  #     expect(birthday.day_of_the_year).to eq(5)
  #   end
  # end

  # context "#days_till_birthday" do
  #   it 'calculates numer of days until birthday' do
  #     expect(date.days_till_birthday).to eq()
  #   end
  # end
  #
  # context "#birthday_today?" do
  #   it 'check if birthday is today' do
  #     expect(calc.birthday_today?).to eq(true)
  #   end
  # end
end
