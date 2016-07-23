//
//  HttpManager.m
//  OCTeach
//
//  Created by wangjian on 16/7/23.
//  Copyright © 2016年 wangjian. All rights reserved.
//

#import "HttpManager.h"




@implementation HttpManager


+(id)postURL:(NSString*)strURL data:(NSDictionary*)data endBlock:(HttpEnd)endBlock
{
    NSAssert(strURL, @"");
    NSURL *url = [NSURL URLWithString:strURL];
    if(url == nil){
        NSAssert(FALSE, nil);
        return nil;
    }
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:url];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    NSSet *set = [NSSet setWithObjects:@"text/html", nil];
    [manager.responseSerializer setAcceptableContentTypes:set];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    NSURLSessionDataTask * dataTask =  [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        NSLog(@"response of URL %@",strURL);
        if (error) {
            NSLog(@"error : %@",error.description);
        }else{
            NSString *string = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            NSLog(@"response obj %@",string);
        }
        
    }];
    
   [dataTask resume];
    return dataTask;
    
}



@end
