# frozen_string_literal: true

require "rails_helper"

RSpec.describe AssignmentsHelper do
    describe "#deadline_year" do
      it "return's the assignment.deadline.strftime" do
        expect(assignment.deadline.strftime).to eq("%Y")
      end
    end
    describe "#deadline_month" do
      it "return's the assignment.deadline.strftime" do
          expect(assignment.deadline.strftime).to eq("%m")
      end
    end
    describe "#deadline_day" do
        it "return's the assignment.deadline.strftime" do
            expect(assignment.deadline.strftime).to eq("%-d")
        end
    end
    describe "#deadline_hour" do
        it "return's the assignment.deadline.strftime" do
            expect(assignment.deadline.strftime).to eq("%H")
        end
    end
    describe "#deadline_minute" do
        it "return's the assignment.deadline.strftime" do
            expect(assignment.deadline.strftime).to eq("%M")
        end
    end
      describe "#deadline_second" do
        it "return's the assignment.deadline.strftime" do
            expect(assignment.deadline.strftime).to eq("%S")
        end
    end
end

