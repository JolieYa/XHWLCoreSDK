//
//  NSDate+Extension.m
//  XHWLCoreSDK
//
//  Created by gongairong on 2017/12/18.
//  Copyright © 2017年 王赛华. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)

//var ext_HHmmss: String {
//    let format = DateFormatter()
//    format.dateFormat = "HH:mm:ss"
//    return format.string(from: self)
//}

/**
 * 获取当前时间
 *
 * @param dateFormat 格式，例如：“yyyy-MM-dd HH:mm:ss”
 * @return 返回格式化后的时间字符串
 */
+ (NSString *)currentDate:(NSString *)dateFormat {
    NSDate *date = [NSDate date];
    NSDateFormatter *dformatter = [[NSDateFormatter alloc]  init];
    dformatter.dateFormat = dateFormat;
    NSString *currentDateString = [dformatter stringFromDate:date];
    
    return currentDateString;
}


@end
