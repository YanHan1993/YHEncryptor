//
//  NSString+YHEncryptorSM4.m
//  YHEncryptor
//
//  Created by 闫寒 on 2023/3/20.
//

#import "NSString+YHEncryptorSM4.h"
#import <YHEncryptor/NSString+KYSM4.h>

@implementation NSString (YHEncryptorSM4)
/**
 *  使用密钥和初始化向量生成CBC模式的SM4加解密对象
 *
 *  @param secretKey 密钥
 *  @param iv        初始化向量
 *
 *  @return SM4加密字符串
 */
- (nullable NSString *)SM4EncryptWithKey:(nonnull NSString *)secretKey iv:(nonnull NSString *)iv
{
    return [self encryptionWithSM4Key:secretKey iv:iv];
}

/**
 在CBC模式下，利用给定的密钥，初始化向量，对字符串解密

 @param secretKey 密钥
 @param iv 初始化向量
 @return SM4解密字符串
 */
- (nullable NSString *)SM4DecryptWithKey:(nonnull NSString *)secretKey iv:(nonnull NSString *)iv
{
    return [self decryptionWithSM4Key:secretKey iv:iv];
}
/**
 *  使用密钥生成ECB模式的SM4加解密对象
 *
 *  @param secretKey 密钥
 *
 *  @return SM4加解密对象
 */
- (nullable NSString *)SM4EncryptWithKey:(nonnull NSString *)secretKey
{
    return [self encryptionWithSM4Key:secretKey];
}

/**
 *  在ECB模式下，利用给定的密钥，对字符串解密
 *
 *  @param secretKey 密钥
 *
 *  @return SM4解密字符串
 */
- (nullable NSString *)SM4DecryptWithKey:(nonnull NSString *)secretKey
{
    return [self decryptionWithSM4Key:secretKey];
}
@end
