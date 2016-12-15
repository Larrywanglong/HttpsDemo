//
//  ViewController.m
//  HttpsDemo
//
//  Created by 王龙 on 16/12/15.
//  Copyright © 2016年 王龙. All rights reserved.
//

#import "ViewController.h"
#import "UIAHttps.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dic = @{
                          @"cardno":@"411321199311083311",
                          @"mobile":@"15726618328",
                          @"msgtype":@"0002",
                          @"name":@"小张",
                          @"password":@"FCE98C9B0907B94978AF97358F9FA442",
                      @"signature":@"B1E0507EA0C356719E0D5F900AAB9B0D85D3C62F2881C89777A0F7894C57DE5FB1C6B4D87E452D0053A9B0C69F87F4FA91B7B6ECE3ABAE816CF7EEADBBE5722C8F1BB01406C61073D9941E985CED39B01E95D141D3E81FBD285A410E52806601B9C0C8D470932FD71CA3C660CCEF14C57DCF089B877B7213B5DF2D7BA18488BA5B3743",
                          @"username":@"1001100112"
                          };
//此字典格式为我们公司 服务器需要的格式，只需按照自己的需求改动即可
    
    [[UIAHttps shared]POST:@"https://172.16.40.71:15025" Dictionary:dic progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"发送成功");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"发送失败");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
