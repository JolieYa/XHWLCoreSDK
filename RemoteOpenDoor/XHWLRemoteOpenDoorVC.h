//
//  XHWLRemoteOpenDoorVC.h
//  XHWLCoreSDK
//
//  Created by gongairong on 2017/12/18.
//  Copyright © 2017年 王赛华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XHWLRemoteOpenDoorVC : UIViewController
/**
 * 远程开门
 *
 * @param telePhone 用户手机号
 * @param projectCode 项目编号
 * @param userName 用户名
 */
-(void) remoteOpenDoor:(NSString *)telePhone projectCode:(NSString *)projectCode userName:(NSString *)userName;

@end
