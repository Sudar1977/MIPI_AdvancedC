#include<stdio.h>
#include<string.h>

struct String {
   int   len;
   char* str;
};

void encryptDecrypt(struct String* inpString,struct String* key) {
    for (size_t i = 0; i < inpString->len; i++) 
        inpString->str[i] = inpString->str[i] ^ key->str[i%key->len];
}

int main(void) {
    char sampleString[] = "Hello world";
    struct String s_sampleString = {strlen(sampleString),sampleString};
    char key[] = "HASSWORD";//HASSWORD
    struct String s_key = {strlen(key),key};
    printf("Encrypted String: ");
    encryptDecrypt(&s_sampleString, &s_key);//HASSWORD
    printf("%s\n", sampleString);
 
    printf("Decrypted String: ");
    encryptDecrypt(&s_sampleString, &s_key);//HASSWORD
    printf("%s\n", sampleString);
    return 0;
}
