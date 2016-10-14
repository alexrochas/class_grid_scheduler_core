require 'spec_helper'

module Scheduler

    describe SchedulerController do
        set_engine_routes

        context 'scheduling classes' do
            describe '#schedule' do



                context 'when data is not passed' do
                    subject (:response_json) {
                        post :schedule
                        MultiJson.load(response.body)
                    }
                    it {expect(response_json['error']).to match(/Ops! An error occured during class scheduling. Check your data./im)}
                    it {expect(response_json['message']).to match(/no implicit conversion of nil into String/im)}
                end

                context 'when data is valid' do
                    it 'should return a grid with classes'

                    context 'when not have a possible solution' do
                        it 'should return error message'
                    end
                end

                context 'when two classes are passed to one day' do
                    subject (:given_response) {
                        file = File.open("#{Scheduler::Core::Engine.root}/spec/resources/request-data.json").read
                        post :schedule, data: file
                        MultiJson.load(response.body)
                    }
                    it {expect(given_response['grids'].count).to eq(6)}
                end
            end
        end
    end
end
