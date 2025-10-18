Caesar Cipher & Decoder in Ruby
Overview

This project is a simple Caesar cipher encryptor and decryptor written in Ruby. It allows the user to:

Encode a message by shifting letters by a key value.

Decode a message by reversing the shift using the same key.

Both uppercase and lowercase letters are supported. Non-alphabetic characters (like spaces, punctuation, or numbers) remain unchanged.

Features

Encrypt messages: Enter a message and a key to produce a coded message.

Decrypt messages: Enter the coded message and the same key to recover the original text.

Handles uppercase and lowercase letters separately.

Preserves punctuation, numbers, and spaces.

How It Works

Each letter is converted to its ASCII code using ord.

For uppercase letters: (ascii - 65 ± shift) % 26 + 65

For lowercase letters: (ascii - 97 ± shift) % 26 + 97

Non-letter characters are left unchanged.

The shifted codes are converted back to characters with chr.

All characters are joined together to form the final string.
