//
//  XHWLRemoteOpenDoorVC.m
//  XHWLCoreSDK
//
//  Created by gongairong on 2017/12/18.
//  Copyright © 2017年 王赛华. All rights reserved.
//

#import "XHWLRemoteOpenDoorVC.h"
#import "NSDate+Extension.h"
#import "NSString+Extension.h"
#import "ZJToast.h"
#define loadURL @"http://10.51.39.117:3001/openDoor/"

@interface XHWLRemoteOpenDoorVC ()
@property (nonatomic, strong) UIWebView *webView;
@end

@implementation XHWLRemoteOpenDoorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    //        UIImage(named:"XHWLCoreSDK/RemoteOpenDoor/RemoteOpenDoor.bundle/scan_back")
    
    //        let bundle = Bundle(identifier: "com.xhwl.XHWLCoreSDK") // framework的bundle ID
    //        let image = UIImage(named: "scan_back", in: bundle, compatibleWith: nil)
    
    UIImage *image = [UIImage imageNamed:@"XHWLCoreSDK.framework/images.bundle/scan_back"];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(onBack)];
    self.title = @"远程开门";
}

- (UIWebView *)webView {
    if (_webView == nil) {
        _webView = [[UIWebView alloc] init];
        _webView.frame = (CGRect){ 0, 0, self.view.bounds.size.width, self.view.bounds.size.height};
        _webView.opaque = NO;
        _webView.scalesPageToFit = true;
        _webView.backgroundColor = [UIColor clearColor];
        [self.view addSubview:_webView];
    }
    return _webView;
}


/*
 返回上一个页面
 */
- (void)onBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/**
 * 远程开门
 *
 * @param telePhone 用户手机号
 * @param projectCode 项目编号
 * @param userName 用户名
 */
-(void) remoteOpenDoor:(NSString *)telePhone projectCode:(NSString *)projectCode userName:(NSString *)userName {
    
    if (!telePhone || [telePhone isEqualToString:@""]) {
        ZJTOAST_SHOW_BOTTOM(@"手机号为空")
        return;
    }
    
    if (!projectCode || [projectCode isEqualToString:@""])  {
        ZJTOAST_SHOW_BOTTOM(@"项目编号为空")
        return;
    }
    
    if (!userName || [userName isEqualToString:@""])  {
        ZJTOAST_SHOW_BOTTOM(@"用户名为空")
        return;
    }
    
    // 加密参数
    NSString *webToken = [NSString stringWithFormat:@"%@adminXH", [NSDate currentDate:@"yyyy-MM-dd-HH"]];
    NSString * md5 = [webToken convertMD5];
    
    // 请求的URL
    NSString * url = [NSString stringWithFormat:@"%@%@/%@/%@/%@", loadURL, telePhone , projectCode, md5 ,userName]; //
    NSString * utf8URL = [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSLog(@"webToken = %@ \n utf8URL = %@", webToken, utf8URL);
    
    // 发起请求
    NSURL *requestURL = [NSURL URLWithString:utf8URL];
    NSURLRequest *request = [NSURLRequest requestWithURL:requestURL];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
