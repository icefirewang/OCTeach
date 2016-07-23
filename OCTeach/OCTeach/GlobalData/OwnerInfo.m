//
//  OwnerInfo.m
//  OCTeach
//
//  Created by wangjian on 16/7/23.
//  Copyright © 2016年 wangjian. All rights reserved.
//

#import "OwnerInfo.h"

@implementation OwnerInfo


+(instancetype)instance
{
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}


@end
