require_relative "../slot_machine"
require "r"

SLOT_MACHINE_RULES = {
  "Joker"  => 50,
  "Star"   => 40,
  "Bell"   => 30,
  "Seven"  => 20,
  "Cherry" => 10
}


# Joker  3x -> 50  2x + anything -> 25
# Star   3x -> 40  2x + joker -> 20
# Bell   3x -> 30  2x + joker -> 15
# Seven  3x -> 20  2x + joker -> 10
# Cherry 3x -> 10  2x + joker -> 5

describe SlotMachine do
  describe '#score' do
    SLOT_MACHINE_RULES.each do |key, value|
      next if key == "Joker"

      it "returns #{value} if we have 3 #{key}" do
        slot_machine = SlotMachine.new
        reels = [key, key, key]

        expect(slot_machine.score(reels)).to eq(value)
      end

      it "returns #{value / 2} if we have 2 #{key} and a joker" do
        slot_machine = SlotMachine.new
        reels = [key, key, "Joker"]

        expect(slot_machine.score(reels)).to eq(value / 2)
      end
    end

    it "returns 50 if we have 3 Jokers" do
      slot_machine = SlotMachine.new
      reels = ["Joker", "Joker", "Joker"]

      expect(slot_machine.score(reels)).to eq(50)
    end

    it "returns 25 if we have 2 Jokers and anything else" do
      slot_machine = SlotMachine.new
      reels = ["Joker", "Joker", "Bell"]

      expect(slot_machine.score(reels)).to eq(25)
    end
  end
end
