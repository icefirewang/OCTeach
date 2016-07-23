//
//  RootViewController.m
//  OCTeach
//
//  Created by wangjian on 16/7/21.
//  Copyright © 2016年 wangjian. All rights reserved.
//

#import "RootViewController.h"
#import "LoginRegistNaviController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
   
    
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    [self autoLogin];
 
}


/**
 *  @author 王健, 16-07-23 07:07:02
 *
 *  自动登录，根据历史 用户名密码，进行自动登录
 */
-(void)autoLogin
{
    // 自动登录
    
    // 失败，弹出 登录页
    LoginRegistNaviController *navi = [[LoginRegistNaviController  alloc] init];
    [self presentViewController:navi animated:YES completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



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
