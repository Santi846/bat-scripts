import base64
from cryptography.hazmat.primitives.serialization import load_der_public_key

public_key = """-----BEGIN PUBLIC KEY-----
PUBLIC KEY
-----END PUBLIC KEY-----"""

# Remove the header and footer
public_key = public_key.replace("-----BEGIN PUBLIC KEY-----", "")
public_key = public_key.replace("-----END PUBLIC KEY-----", "")

# Remove white spaces and new lines
public_key = public_key.replace("\n", "")
public_key = public_key.replace(" ", "")

# Decode the base64 encoded key
decoded_key = base64.b64decode(public_key)

# Convert the decoded key to hexadecimal
hex_key = decoded_key.hex()

# Load the public key from the DER format
public_key = load_der_public_key(decoded_key)

# Get the public exponent
public_exponent = public_key.public_numbers().e

print("Hex Public Key:", hex_key)
print("Public Exponent:", public_exponent)
