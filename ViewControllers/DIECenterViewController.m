//
//  DIECenterViewController.m
//  puddings
//
//  Created by apple on 15/10/2.
//  Copyright © 2015年 divein. All rights reserved.
//

#import "DIECenterViewController.h"
#import "DIERightViewController.h"
#import "UIImage+Additions.h"

#import "UIViewController+MMDrawerController.h"

@interface DIECenterViewController ()

@end

@implementation DIECenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addTitleAndTabBar];
    [self addLeftDrawerButton];
    [self addRightSearchButton];
}

- (void)addTitleAndTabBar
{
    self.navigationItem.title = @"布丁";
    
    UIImage *img = [[UIImage imageNamed:@"global_footer_btn_new_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *imgSelected = [[UIImage imageNamed:@"global_footer_btn_new_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:img selectedImage:imgSelected];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:1.f green:1.f blue:1.f alpha:1.0]];
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName,nil]];
    
    self.view.backgroundColor = [UIColor whiteColor];

}

- (void)addLeftDrawerButton
{
    UIImage *leftItemImage;
    leftItemImage = [UIImage imageWithCGImage:[UIImage imageNamed:@"default_avatar"].CGImage scale:4 orientation:UIImageOrientationUp];
    leftItemImage = [leftItemImage add_imageWithRoundedBounds];
    leftItemImage = [leftItemImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:leftItemImage style:UIBarButtonItemStylePlain target:self action:@selector(didLeftDrawerButtonClicked)];
    
}

- (void)didLeftDrawerButtonClicked
{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}

- (void)addRightSearchButton
{
    UIImage *rightItemImage;
    rightItemImage = [UIImage imageWithCGImage:[UIImage imageNamed:@"global_header_btn_search_normal"].CGImage scale:1 orientation:UIImageOrientationUp];
//    rightItemImage = [rightItemImage add_imageWithRoundedBounds];
    rightItemImage = [rightItemImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:rightItemImage style:UIBarButtonItemStylePlain target:self action:@selector(didSearchBurronClicked)];
}

- (void)didSearchBurronClicked
{
    DIERightViewController *rightVC = [[DIERightViewController alloc] init];
    [self presentViewController:rightVC animated:YES completion:nil];
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
