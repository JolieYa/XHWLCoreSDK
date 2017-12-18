//
//  ViewController.m
//  XHWLCoreSDK
//
//  Created by gongairong on 2017/12/18.
//  Copyright © 2017年 xinghaiwulian. All rights reserved.
//

#import "ViewController.h"
#import "XHWLRemoteOpenDoorVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"开始");
    [self remoteOpenDoorWithSuperVC:self withtelephone:@"18320480001" withProjectCode:@"123" withUserName:@"测试1"];
}
- (void) remoteOpenDoorWithSuperVC:(UIViewController *)superVC withtelephone:(NSString *)phone withProjectCode:(NSString *)code withUserName:(NSString *)username {
    
    XHWLRemoteOpenDoorVC *opendoorVC = [[XHWLRemoteOpenDoorVC alloc] init];
    [opendoorVC remoteOpenDoor:phone projectCode:code userName:username];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:opendoorVC];
    [superVC presentViewController:nav animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
