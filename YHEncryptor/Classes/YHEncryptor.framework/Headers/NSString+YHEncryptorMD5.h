//
//  NSString+YHEncryptorMD5.h
//  YHEncryptor
//
//  Created by 闫寒 on 2023/3/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (YHEncryptorMD5)

/// MD5 32位小写
- (NSString *)MD5EncryptForLower32;
/// MD5 32位大写
- (NSString *)MD5EncryptForUpper32;
/// MD5 16位小写
- (NSString *)MD5EncryptForLower16;
/// MD5 16位大写
- (NSString *)MD5EncryptForUpper16;
@end

NS_ASSUME_NONNULL_END
