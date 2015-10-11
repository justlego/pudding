//
//  DIERadioWaveViewController.m
//  puddings
//
//  Created by apple on 15/10/10.
//  Copyright © 2015年 divein. All rights reserved.
//

#import "DIERadioWaveViewController.h"

@interface DIERadioWaveViewController ()

@end

@implementation DIERadioWaveViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addTitleAndTabBar];
}

- (void)addTitleAndTabBar
{
    self.navigationItem.title = @"异次元";
    
    UIImage *img = [[UIImage imageNamed:@"Stat_Normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *imgSelected = [[UIImage imageNamed:@"Stat"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"电波" image:img selectedImage:imgSelected];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:1.f green:1.f blue:1.f alpha:1.0]];
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName,nil]];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
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
