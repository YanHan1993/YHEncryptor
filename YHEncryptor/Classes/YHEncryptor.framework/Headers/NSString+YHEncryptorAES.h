//
//  NSString+YHEncryptorAES.h
//  YHEncryptor
//
//  Created by 闫寒 on 2023/3/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (YHEncryptorAES)

- (NSString *)AESEncryptWithPassword:(NSString *)password;
- (NSString *)AESDecryptWithPassword:(NSString *)password;

- (NSString *)AESEncryptWithPassword:(NSString *)password iv:(NSString *)iv;
- (NSString *)AESDecryptWithPassword:(NSString *)password iv:(NSString *)iv;

- (NSString *)AESEncryptHexWithPassword:(NSString *)password iv:(NSString *)iv;

@end

NS_ASSUME_NONNULL_END
