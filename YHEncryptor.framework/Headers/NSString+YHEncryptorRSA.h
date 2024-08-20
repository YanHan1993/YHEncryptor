//
//  NSString+YHEncryptorRSA.h
//  YHEncryptor
//
//  Created by 闫寒 on 2023/3/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (YHEncryptorRSA)

/// RSA加密
/// - Parameter publicKey: 加密公钥
- (NSString *)RSAEncryptWithPublicKey:(NSString *)publicKey;

/// RSA解密
/// - Parameter privateKey: 解密私钥
- (NSString *)RSADecryptWithPrivateKey:(NSString *)privateKey;

/// RSA私钥文件加密
/// - Parameter path: '.der'格式的公钥文件路径
- (NSString *)RSAEncryptWithPublicKeyOfFile:(NSString *)path;

/// RSA私钥文件解密
/// - Parameters:
///   - path: '.p12'格式的私钥文件路径
///   - password: 私钥文件密码
- (NSString *)RSADecryptWithPublicKeyOfFile:(NSString *)path password:(NSString *)password;


@end

NS_ASSUME_NONNULL_END
