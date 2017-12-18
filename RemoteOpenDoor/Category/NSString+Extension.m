//
//  NSString+Extension.m
//  XHWLCoreSDK
//
//  Created by gongairong on 2017/12/18.
//  Copyright © 2017年 王赛华. All rights reserved.
//

#import "NSString+Extension.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (Extension)
/**
 * 加密成MD5
 *
 * @return 返回加密后的字符串
 */
- (NSString *)convertMD5 {
    const char *cStr = [self UTF8String];
    unsigned char digest[16];
    unsigned int x=(int)strlen(cStr) ;
    CC_MD5( cStr, x, digest );
    // This is the md5 call
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
    [output appendFormat:@"%02x", digest[i]];
    
    return  output;
}
@end

