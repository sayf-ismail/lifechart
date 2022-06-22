require "htmlcsstoimage"

# Retrieve your user id and api key from https://htmlcsstoimage.com/dashboard
# client = HTMLCSSToImage.new(user_id: "54075fe6-aeee-4976-8995-e7c99744c274", api_key: "fd1c27da-c164-4679-9025-1c0a78989830")

# image = client.create_image("<div>Hello, world</div>",
#   css: "div { background-color: red; font-family: Roboto; }",
#   google_fonts: "Roboto")

  require "httparty"
  # Retrieve your user id and api key from the Dashboard
  auth = { username: '54075fe6-aeee-4976-8995-e7c99744c274', password: 'fd1c27da-c164-4679-9025-1c0a78989830' }
  
  html = "<div class='ping'>Pong ✅</div>"
  css = ".ping { padding: 20px; font-family: 'sans-serif'; }"
  
  image = HTTParty.post("https://hcti.io/v1/image",
                        body: { html: html, css: css },
                        basic_auth: auth)
  

  