class PrintImagesController < ApplicationController
  def create_image
    require "htmlcsstoimage"
    require "httparty"

    # Retrieve your user id and api key from https://htmlcsstoimage.com/dashboard
    # client = HTMLCSSToImage.new(user_id: "54075fe6-aeee-4976-8995-e7c99744c274", api_key: "fd1c27da-c164-4679-9025-1c0a78989830")
    
      # Retrieve your user id and api key from the Dashboard
      # auth = { username: ENV["HCTI_USER_ID"], password: ENV["HCTI_API_KEY"] }
      auth = { username: "54075fe6-aeee-4976-8995-e7c99744c274", password: "fd1c27da-c164-4679-9025-1c0a78989830" }
      
      url = "https://www.google.com"
      # html = "<div class='ping'>Test2 ❌🥹</div>"
      # css = ".ping { padding: 20px; font-family: 'sans-serif'; }"
      
      @image = HTTParty.post("https://hcti.io/v1/image",
      # #                       # body: { html: html, css: css },
                            body: { url: url, full_screen: true },
                            basic_auth: auth)

      # response = HTTParty.get("https://hcti.io/v1/image/4a6a465a-921b-4d30-aee7-084ccc7fd655.jpg")
  end  
end
