require_relative '../pact_helper'

class SearchTest < ActiveSupport::TestCase
  include Pact::Consumer::Minitest

  def setup
    @searcher = Search.new(uri: my_service.mock_service_base_url)
  end

  def test_retreive_a_credit_search_that_is_not_complete
    my_service.given('there is request')
      .upon_receiving('an id')
      .with(
        method: :get,
        path: '/anywhere',
        query: '',
        headers: {
          'Content-Type': 'application/json',
          'Accept-Encoding': 'gzip,deflate'
        },
        body: nil
      )
      .will_respond_with(
        status: 200,
        headers: { 'content-type': 'application/json; charset=utf-8' },
        body: { object: Pact.like('hi') }
      )

    assert_equal({ 'object' => 'hi' }, JSON.parse(@searcher.go.body))
  end
end