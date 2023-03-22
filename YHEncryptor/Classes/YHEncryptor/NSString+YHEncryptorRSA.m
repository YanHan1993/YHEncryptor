//
//  NSString+YHEncryptorRSA.m
//  YHEncryptor
//
//  Created by 闫寒 on 2023/3/20.
//

#import "NSString+YHEncryptorRSA.h"
#import <YHEncryptor/RSAEncryptor.h>

@implementation NSString (YHEncryptorRSA)
/// RSA加密
/// - Parameter publicKey: 加密公钥
- (NSString *)RSAEncryptWithPublicKey:(NSString *)publicKey
{
    return [RSAEncryptor encryptString:self publicKey:publicKey];
}

/// RSA解密
/// - Parameter privateKey: 解密私钥
- (NSString *)RSADecryptWithPrivateKey:(NSString *)privateKey
{
    return [RSAEncryptor decryptString:self privateKey:privateKey];
}

/// RSA私钥文件加密
/// - Parameter path: '.der'格式的公钥文件路径
- (NSString *)RSAEncryptWithPublicKeyOfFile:(NSString *)path
{
    return [RSAEncryptor encryptString:self publicKeyWithContentsOfFile:path];
}

/// RSA私钥文件解密
/// - Parameters:
///   - path: '.p12'格式的私钥文件路径
///   - password: 私钥文件密码
- (NSString *)RSADecryptWithPublicKeyOfFile:(NSString *)path password:(NSString *)password
{
    return [RSAEncryptor decryptString:self privateKeyWithContentsOfFile:path password:password];
}
@end
