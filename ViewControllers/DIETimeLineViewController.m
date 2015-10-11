//
//  DIETimeLineViewController.m
//  puddings
//
//  Created by apple on 15/10/10.
//  Copyright © 2015年 divein. All rights reserved.
//

#import "DIETimeLineViewController.h"

@interface DIETimeLineViewController ()

@end

@implementation DIETimeLineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addTitleAndTabBar];
}

- (void)addTitleAndTabBar
{
    self.navigationItem.title = @"热门";
    
    UIImage *img = [[UIImage imageNamed:@"global_footer_btn_timeline_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *imgSelected = [[UIImage imageNamed:@"global_footer_btn_timeline_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:img selectedImage:imgSelected];
    
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
