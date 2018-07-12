class Search
  def initialize uri:
    @uri = uri
  end

  def go
    HTTParty.get("#{@uri}/anywhere",
      headers: {
        'Content-Type' => 'application/json',
        'Accept-Encoding' => 'gzip,deflate'
      }
    )
  end
end