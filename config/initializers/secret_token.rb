# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

def secret_token
	token_file = Rails.root.join('.secert')
	if File.exist?(token_file)
		# Use the existing token
		File.read(token_file).chomp
	else
		# Generate a new token and store it in the token file
		token = SecureRandom.hex(64)
		File.write(token_file, token)
	end
end

SampleApp::Application.config.secret_token = '24f7c4b2c37c8fe12d155a38119b78eca043da6fc7b31aab3ad7e2d2f265aecd56931e79ccea227d598d181b588b6afa60cfc38bca079bee7035b4b750c102f7'
