//
//  MyViewController.m
//  OCTeach
//
//  Created by wangjian on 16/7/23.
//  Copyright © 2016年 wangjian. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@property (nonatomic,strong) UILabel *lb_ctrlerName;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *className = NSStringFromClass([self class]);
    [self.lb_ctrlerName setText:className];
    [self.lb_ctrlerName setCenter:CGPointMake(200, 200)];
    [self.view addSubview:self.lb_ctrlerName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UILabel*)lb_ctrlerName
{
    if (_lb_ctrlerName == nil) {
        _lb_ctrlerName = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
    }
    return _lb_ctrlerName;
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
