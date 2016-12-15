//
//  UIAHttps.h
//  UIADemo
//
//  Created by zhangchao on 16/12/13.
//  Copyright © 2016年 王龙. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface UIAHttps : NSObject

+ (UIAHttps *)shared;

- (void)POST:(NSString *)urlString
  Dictionary:(NSDictionary *)dic
    progress:(nullable void (^)(NSProgress *uploadProgress))uploadProgress
     success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
     failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *error))failure;
@end

NS_ASSUME_NONNULL_END
