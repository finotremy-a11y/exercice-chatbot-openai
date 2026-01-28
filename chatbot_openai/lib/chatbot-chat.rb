# ligne très importante qui appelle les gems.
require 'http'
require 'json'
require 'dotenv'
Dotenv.load

# création de la clé d'api et indication de l'url utilisée.
api_key = ENV["OPENAI_API_KEY"]
url = "https://api.openai.com/v1/completions"

# un peu de json pour faire la demande d'autorisation d'utilisation à l'api OpenAI
headers = {
  "Content-Type" => "application/json",
  "Authorization" => "Bearer #{api_key}"
}

# un peu de json pour envoyer des informations directement à l'API
data = {
  "prompt" => "",
  "max_tokens" => 150,
  "n" => 1,
  "temperature" => 0,
  "model" => "gpt-3.5-turbo-instruct"
}


puts "Conversation (quit pour quitter)"

conversation_history = []

loop do
  print "Vous : "
  user_input = gets.chomp

  break if user_input == "quit"
  conversation_history << "User: #{user_input}"
  data["prompt"] = conversation_history.join("\n")

  response = HTTP.post(url, headers: headers, body: data.to_json)
  response_body = JSON.parse(response.body.to_s)
  response_string = response_body['choices'][0]['text'].strip
  conversation_history << "Bot: #{response_string}"
  conversation_history = conversation_history.last(10)
  puts response_string
end
