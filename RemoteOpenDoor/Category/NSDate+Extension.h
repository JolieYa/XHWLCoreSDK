//
//  NSDate+Extension.h
//  XHWLCoreSDK
//
//  Created by gongairong on 2017/12/18.
//  Copyright © 2017年 王赛华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)
/**
 * 获取当前时间
 *
 * @param dateFormat 格式，例如：“yyyy-MM-dd HH:mm:ss”
 * @return 返回格式化后的时间字符串
 */
+ (NSString *)currentDate:(NSString *)dateFormat;


@end
