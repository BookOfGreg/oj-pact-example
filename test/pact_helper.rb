require 'pact/consumer/minitest'
require 'test_helper'

Pact.configure do | config |
  config.pact_dir = './pact/pacts'
  config.doc_dir = './pact'
  config.doc_generator = :markdown
end

Pact.service_consumer 'my_client' do
  has_pact_with 'My Service' do
    mock_service :my_service do
      port 1234
      pact_specification_version '2.0.0'
    end
  end
end
