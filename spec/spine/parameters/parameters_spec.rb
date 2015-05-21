require 'ostruct'
require 'date'
require 'spine/parameters'

module Spine
  module Parameters
    describe Parameters do
      subject { Parameters::Collection.new(parameters) }
      let(:parameters){
        {
          "selected_account_id"=>"1",
          "some_timestamp" => "2015-01-12T10:42:36+02:00",
          "google_login" => "true"
        }
      }

      it "symbolizes keys" do
        expect(subject[:selected_account_id]).to be
        expect(subject[:some_timestamp]).to be
      end

      context "when parsing integer" do
        it "returns valid integer" do
          subject.integer(:selected_account_id)
          expect(subject[:selected_account_id]).to eq(1)
        end

        it "has errors if integer not parsed" do
          subject.integer(:some_timestamp)
          expect(subject.errors?).to be
        end
      end

      context "when parsing timestamp" do
        it "parses timestamp" do
          subject.timestamp(:some_timestamp)
          expect(subject[:some_timestamp].is_a?(DateTime)).to be
          expect(subject.errors?).not_to be
        end

        it "has errors if timestamp not parsed" do
          subject.timestamp(:selected_account_id)
          expect(subject.errors?).to be
        end
      end

      context "when parsing boolean" do
        it "returns valid boolean value" do
          subject.boolean(:google_login)
          expect(subject[:google_login]).to eq(true)
        end

        it "has errors if not parsed" do
          subject.boolean(:some_timestamp)
          expect(subject.errors?).to be
        end
      end

      it "initializes value if block present" do
        date = Date.today.prev_month(6)
        subject.timestamp(:since) { date }
        expect(subject[:since]).to eq(date)
      end

      it "doesn't add key to values, if it's not present in raw data" do
        subject.integer(:beginning_of_week)
        expect(subject.values).to eq({})
      end

      context "with required constraint" do
        it "has an error, if key is missing" do 
          subject.required(:beginning_of_week)
          expect(subject.errors?).to be
        end

        it "has no errors if key exists" do 
          subject.required(:some_timestamp)
          expect(subject.errors?).not_to be
        end
      end
    end
  end
end
