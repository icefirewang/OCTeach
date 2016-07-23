//
//  HttpManager.h
//  OCTeach
//
//  Created by wangjian on 16/7/23.
//  Copyright © 2016年 wangjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpError.h"

/**
 *  Http 结束回调
 *
 *  @param suc  YES 成功  NO 失败
 *  @param code 成功 0   失败 其它
 *  @param data 数据  失败为 nil
 *
 *  @return 保留
 */
typedef NSInteger(^HttpEnd)(BOOL suc, MyHttpErrorCode code, NSDictionary* data);


@interface HttpManager : NSObject


+(id)postURL:(NSString*)url data:(NSDictionary*)data endBlock:(HttpEnd)endBlock;




@end
