require 'swagger_helper'

describe 'Insurances API' do
    
    path '/api/v1/insurances' do
        
        post 'Creates an insurances' do
            tags 'Insurances'
            consumes 'application/json', 'application/xml'
            parameter name: :insurance, in: :body, schema: {
                type: :object,
                properties: {
                    name: { type: :string },
                    photo_url: { type: :string },
                    status: { type: :string }
                },
                required: [ 'name', 'status' ]
            }
            
            response '201', 'Insurances created' do
                let(:insurance) { { name: 'Dodo', status: 'available' } }
                run_test!
            end
            
            response '422', 'invalid request' do
                let(:insurance) { { name: 'foo' } }
                run_test!
            end
        end
    end
    
    path '/api/v1/insurances/{id}' do
        
        get 'Retrieves a insurance' do
            tags 'Insurances'
            produces 'application/json', 'application/xml'
            parameter name: :id, :in => :path, :type => :string
            
            response '200', 'name found' do
                schema type: :object,
                       properties: {
                           id: { type: :integer, },
                           name: { type: :string },
                           photo_url: { type: :string },
                           status: { type: :string }
                       },
                       required: [ 'id', 'name', 'status' ]
                
                let(:id) { Insurance.create(name: 'foo', status: 'bar', photo_url: 'http://example.com/avatar.jpg').id }
                run_test!
            end
            
            response '404', 'insurance not found' do
                let(:id) { 'invalid' }
                run_test!
            end
        end
    end
end