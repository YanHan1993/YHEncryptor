//
//  NSString+YHEncryptorAES.m
//  YHEncryptor
//
//  Created by 闫寒 on 2023/3/20.
//

#import "NSString+YHEncryptorAES.h"
#import <YHEncryptor/AESCrypt.h>

@implementation NSString (YHEncryptorAES)

- (NSString *)AESEncryptWithPassword:(NSString *)password
{
    return [AESCrypt encrypt:self password:password];
}
- (NSString *)AESDecryptWithPassword:(NSString *)password
{
    return [AESCrypt decrypt:self password:password];
}

- (NSString *)AESEncryptWithPassword:(NSString *)password iv:(NSString *)iv
{
    return [AESCrypt encrypt:self password:password iv:iv];
}
- (NSString *)AESDecryptWithPassword:(NSString *)password iv:(NSString *)iv
{
    return [AESCrypt decrypt:self password:password iv:iv];
}

- (NSString *)AESEncryptHexWithPassword:(NSString *)password iv:(NSString *)iv
{
    return [AESCrypt encryptHexBy:self password:password iv:iv];
}

@end
