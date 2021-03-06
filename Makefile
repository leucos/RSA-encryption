CC=gcc
LDFLAGS= -lgmp

all: encryptor decryptor message.txt

encryptor: rsa_chiffr.c
	$(CC) rsa_chiffr.c -o encryptor $(LDFLAGS)

decryptor: rsa_dechiffr.c
	$(CC) rsa_dechiffr.c -o decryptor $(LDFLAGS)

message.txt:
	echo lorem ipsum > message.txt

clean:
	rm -f encryptor decryptor crypted_file.txt private_key.txt

mr-proper:
	rm -f encryptor decryptor crypted_file.txt private_key.txt message.txt decrypted_file.txt