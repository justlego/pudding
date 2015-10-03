//
//  DIECenterViewController.m
//  puddings
//
//  Created by apple on 15/10/2.
//  Copyright © 2015年 divein. All rights reserved.
//

#import "DIECenterViewController.h"
#import "UIImage+Additions.h"

#import "UIViewController+MMDrawerController.h"

@interface DIECenterViewController ()

@end

@implementation DIECenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
    
    
    [self addLeftDrawerButton];
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
