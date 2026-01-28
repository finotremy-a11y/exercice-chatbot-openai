 Introduction
This project was created as part of the THP curriculum.
The goal is to learn how to interact with the OpenAI API using Ruby, manage API keys securely with Dotenv, and progressively build a functional chatbot.
The project contains three Ruby programs, each demonstrating a different level of interaction with an AI model.

1.  — 5 Ice Cream Flavors
This first script sends a simple request to the OpenAI API to generate five ice cream flavors.
Learning objectives
• 	Use the  gem to send a POST request
• 	Load API keys with 
• 	Understand , , and 
Model limitations
This script uses the babbage‑002 model, which is intentionally very limited.
As a result, the output is often:
• 	inconsistent
• 	repetitive
• 	off-topic
• 	poorly formatted
This is expected and part of the exercise: it shows how difficult it is to communicate with a weak model.

2.  — Random Recipe
The second script generates a simple cooking recipe in a few steps.
   Learning objectives
• 	Work with a longer prompt
• 	Adjust creativity using 
• 	Observe how the model handles structured instructions
Same issue as before
Because it still uses babbage‑002, the results are often:
• 	vague
• 	repetitive
• 	unrelated to the prompt
This reinforces the idea that the model’s capabilities directly affect the quality of the output.

3.  — Interactive Chatbot with Memory
The third script is a real interactive chatbot:
• 	it waits for user input
• 	it keeps a conversation history
• 	it responds until the user types 
Major improvement
This time, the script uses gpt‑3.5‑turbo‑instruct, a far more advanced model.
Results
The difference is immediately noticeable:
• 	responses are coherent
• 	the model follows instructions
• 	the conversation flows naturally
• 	the chatbot remembers context
This demonstrates how dramatically the choice of model impacts the user experience.

Conclusion
This project highlights a key lesson:

• 	With babbage‑002, even simple prompts can produce strange or unusable results.
• 	With gpt‑3.5‑turbo‑instruct, the chatbot becomes much more reliable and conversational.
Through these three scripts, you learn how to:
• 	call the OpenAI API from Ruby
• 	structure requests
• 	manage conversation history
• 	and understand the importance of choosing the right model.