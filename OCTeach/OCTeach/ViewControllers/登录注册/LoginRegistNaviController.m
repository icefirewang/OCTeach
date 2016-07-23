//
//  LoginRegistNaviController.m
//  OCTeach
//
//  Created by wangjian on 16/7/23.
//  Copyright © 2016年 wangjian. All rights reserved.
//

#import "LoginRegistNaviController.h"
#import "LoginViewController.h"
#import "RegistViewController.h"

@interface LoginRegistNaviController ()

@end

@implementation LoginRegistNaviController



-(instancetype)init
{
    LoginViewController *root = [[LoginViewController alloc] init];
    self = [super initWithRootViewController:root];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
