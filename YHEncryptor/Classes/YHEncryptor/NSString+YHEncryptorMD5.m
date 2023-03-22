//
//  NSString+YHEncryptorMD5.m
//  YHEncryptor
//
//  Created by 闫寒 on 2023/3/20.
//

#import "NSString+YHEncryptorMD5.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (YHEncryptorMD5)

/// MD5 32位小写
- (NSString *)MD5EncryptForLower32
{
    //要进行UTF8的转码
    const char* input = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input, (CC_LONG)strlen(input), result);
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02x", result[i]];
    }
    
    return digest;
}


/// MD5 32位大写
- (NSString *)MD5EncryptForUpper32
{
    
    //要进行UTF8的转码
    const char* input = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input, (CC_LONG)strlen(input), result);
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02X", result[i]];
    }
    
    return digest;
}

/// MD5 16位小写
- (NSString *)MD5EncryptForLower16
{
    
    NSString *md5Str = [self MD5EncryptForLower32];
    
    NSString  *string;
    for (int i=0; i<24; i++) {
        string=[md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    return string;
}

/// MD5 16位大写
- (NSString *)MD5EncryptForUpper16
{
    
    NSString *md5Str = [self MD5EncryptForUpper32];
    
    NSString  *string;
    for (int i=0; i<24; i++) {
        string=[md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    return string;
}
@end
