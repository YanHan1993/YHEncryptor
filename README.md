# YHEncryptor

[![CI Status](https://img.shields.io/travis/闫寒/YHEncryptor.svg?style=flat)](https://travis-ci.org/闫寒/YHEncryptor)
[![Version](https://img.shields.io/cocoapods/v/YHEncryptor.svg?style=flat)](https://cocoapods.org/pods/YHEncryptor)
[![License](https://img.shields.io/cocoapods/l/YHEncryptor.svg?style=flat)](https://cocoapods.org/pods/YHEncryptor)
[![Platform](https://img.shields.io/cocoapods/p/YHEncryptor.svg?style=flat)](https://cocoapods.org/pods/YHEncryptor)

## 作用

+ 便捷的加密工具

## 示例

Demo使用pod集成**YHEncryptor**

打开 `Example` 工程，运行`pod install`

## 安装

**YHEncryptor**通过[CocoaPods](https://cocoapods.org)快速集成. 便捷的安装和使用，请将以下代码加入你的Podfile文件中 ：

```ruby
source 'https://github.com/CocoaPods/Specs.git'

pod 'YHEncryptor'
```

如无法正常pod 请先执行 ：
```ruby
pod search YHEncryptor
```

如搜索不到**YHEncryptor**，请执行以下代码 :
```ruby
pod update
```

## 使用
+导入头文件
```
    import <YHEncryptor/YHEncryptor.h>
```

1.SM4加解密
```Object-C
  /**
 *  使用密钥和初始化向量生成CBC模式的SM4加解密对象
 *
 *  @param secretKey 密钥
 *  @param iv        初始化向量
 *
 *  @return SM4加密字符串
 */
- (nullable NSString *)SM4EncryptWithKey:(nonnull NSString *)secretKey iv:(nonnull NSString *)iv;

/**
 在CBC模式下，利用给定的密钥，初始化向量，对字符串解密

 @param secretKey 密钥
 @param iv 初始化向量
 @return SM4解密字符串
 */
- (nullable NSString *)SM4DecryptWithKey:(nonnull NSString *)secretKey iv:(nonnull NSString *)iv;
/**
 *  使用密钥生成ECB模式的SM4加解密对象
 *
 *  @param secretKey 密钥
 *
 *  @return SM4加解密对象
 */
- (nullable NSString *)SM4EncryptWithKey:(nonnull NSString *)secretKey;

/**
 *  在ECB模式下，利用给定的密钥，对字符串解密
 *
 *  @param secretKey 密钥
 *
 *  @return SM4解密字符串
 */
- (nullable NSString *)SM4DecryptWithKey:(nonnull NSString *)secretKey;
```
2.RSA加解密
```object-c

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
```

3.AES加解密
```object-c

- (NSString *)AESEncryptWithPassword:(NSString *)password;
- (NSString *)AESDecryptWithPassword:(NSString *)password;

- (NSString *)AESEncryptWithPassword:(NSString *)password iv:(NSString *)iv;
- (NSString *)AESDecryptWithPassword:(NSString *)password iv:(NSString *)iv;

- (NSString *)AESEncryptHexWithPassword:(NSString *)password iv:(NSString *)iv;
```

4.MD5加密
```object-c
/// MD5 32位小写
- (NSString *)MD5EncryptForLower32;
/// MD5 32位大写
- (NSString *)MD5EncryptForUpper32;
/// MD5 16位小写
- (NSString *)MD5EncryptForLower16;
/// MD5 16位大写
- (NSString *)MD5EncryptForUpper16;
```

## 作者

闫寒, 617584527@qq.com

## License

YHEncryptor is available under the MIT license. See the LICENSE file for more info.
