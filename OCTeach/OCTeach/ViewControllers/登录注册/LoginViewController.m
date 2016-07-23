//
//  LoginViewController.m
//  OCTeach
//
//  Created by wangjian on 16/7/23.
//  Copyright © 2016年 wangjian. All rights reserved.
//

#import "LoginViewController.h"
#import "RegistViewController.h"
#import "HttpManager.h"

@interface LoginViewController ()

@property (nonatomic,strong) UITextField *tf_password;
@property (nonatomic,strong) UITextField *tf_account;
@property (nonatomic,strong) UIButton *btn_login;
@property (nonatomic,strong) UIButton *btn_regist;



@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UI

/**
 *  @author 王健, 16-07-23 08:07:26
 *
 *  布局UI
 */
-(void)setupUI
{
    
    self.title = @"登录";
    
    [self test];
    
    [self.view addSubview:self.tf_password];
    [self.view addSubview:self.tf_account];
    [self.view addSubview:self.btn_regist];
    [self.view addSubview:self.btn_login];
    
    
    [self.tf_account setFrame:CGRectMake(40, 100, 200, 40)];
    [self.tf_password setFrame:CGRectMake(40, 150, 200, 40)];
    
    [self.btn_login setFrame:CGRectMake(40, 200, 40, 40)];
    [self.btn_regist setFrame:CGRectMake(40, 250, 40, 40)];
    
}

-(UITextField*)tf_account
{
    if (_tf_account == nil) {
        _tf_account = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
        [_tf_account setKeyboardType:UIKeyboardTypeASCIICapable];
        _tf_account.placeholder = @"账号";
    }
    return _tf_account;
}


-(UITextField*)tf_password
{
    if (_tf_password == nil) {
        _tf_password = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
        [_tf_password setKeyboardType:UIKeyboardTypeASCIICapable];
        _tf_password.placeholder = @"账号";
    }
    return _tf_password;
}


-(UIButton*)btn_login
{
    if (_btn_login == nil) {
        _btn_login = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 30)];
        [_btn_login setTitle:@"登录" forState:UIControlStateNormal];
        [_btn_login setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_btn_login addTarget:self action:@selector(onLogin:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn_login;
}


-(UIButton*)btn_regist
{
    if (_btn_regist == nil) {
        _btn_regist = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 30)];
        [_btn_regist setTitle:@"注册" forState:UIControlStateNormal];
        [_btn_regist setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_btn_regist addTarget:self action:@selector(onRegist:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn_regist;
}



#pragma mark - ACTION


-(void)onLogin:(id)sender
{
    
}

-(void)onRegist:(id)sender
{
    RegistViewController *ctrler = [[RegistViewController alloc] init];
    [self.navigationController pushViewController:ctrler animated:YES];
}



-(void)test
{
    [HttpManager postURL:@"http://localhost:8080" data:@{} endBlock:^NSInteger(BOOL suc, MyHttpErrorCode code, NSDictionary *data) {
        return 0;
    }];
}

@end
