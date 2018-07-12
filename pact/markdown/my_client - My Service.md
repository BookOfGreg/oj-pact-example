### A pact between my\_client and My Service

#### Requests from my\_client to My Service

* [An id](#an_id_given_there_is_request) given there is request

#### Interactions

<a name="an_id_given_there_is_request"></a>
Given **there is request**, upon receiving **an id** from my\_client, with
```json
{
  "method": "get",
  "path": "/anywhere",
  "query": "",
  "headers": {
    "Content-Type": "application/json",
    "Accept-Encoding": "gzip,deflate"
  },
  "body": null
}
```
My Service will respond with:
```json
{
  "status": 200,
  "headers": {
    "content-type": "application/json; charset=utf-8"
  },
  "body": {
    "object": {
      "json_class": "Pact::SomethingLike",
      "contents": "hi"
    }
  }
}
```
