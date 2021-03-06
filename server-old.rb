#!/usr/bin/env ruby

require "webrick"
require "cachy"
require "fetchProducts"
require "ProductGroupList"
require "SearchProduct"
require "rubygems"
require "faraday"
require "json"

class MyServlet < WEBrick::HTTPServlet::AbstractServlet
    def do_GET (request, response)

      response.status = 200
      response.content_type = "text/json"
      result = nil
            
      case request.path
        when "/getPrices"
          if !request.query['id'] or request.query['id'] === '' then
             raise 'groupId id is missing!';
          end
          productContainer = FetchProducts.new();
          productData = productContainer.get(request.query['id']);
          result = productData.to_json;

        when "/groupList"
          productGroup = ProductGroupList.new();
          result = productGroup.get().to_json;

        else
          result = "No such method"
        end
            
        response.body = "{ \"value\": " + result.to_s + " }"
    end
end

server = WEBrick::HTTPServer.new(:Port => 1235)

server.mount "/", MyServlet

trap("INT") {
    server.shutdown
}

server.start
