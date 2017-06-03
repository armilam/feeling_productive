class GoogleAssistantController < ApplicationController
  skip_before_action :verify_authenticity_token

  def conversation
    assistant_response = GoogleAssistant.respond_to(params, response) do |assistant|
      assistant.intent.main do
        assistant.tell("<speak>Hello, world! I am the assistant you call when you're feeling productive and need something productive to do. Soon, you will be able to tell me what productive things you can do and ask me for recommendations as to what you could be doing. I am excited to help you out!</speak>")
      end
    end

    puts "RESPONSE:"
    puts assistant_response

    render json: assistant_response
  end
end
