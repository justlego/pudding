//
//  DIERightViewController.m
//  puddings
//
//  Created by apple on 15/10/6.
//  Copyright © 2015年 divein. All rights reserved.
//

#import "DIERightViewController.h"

@interface DIERightViewController ()

@end

@implementation DIERightViewController
{
    CGSize size;
    UITextField *_textField;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.9];
    size = self.view.bounds.size;

    [self createHeadLabel];
    [self createTextField];
    [self backButton];
}

- (void)createHeadLabel
{
    UILabel *headLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, size.width, 64)];
    headLabel.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:headLabel];
}

- (void)createTextField
{
    _textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 25, size.width-70, 34)];
    _textField.layer.borderColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:0.9].CGColor;
    _textField.layer.borderWidth = 0.6f;
    _textField.layer.cornerRadius = 15.0f;
    _textField.placeholder = @"      输入搜素关键词";
    [self.view addSubview:_textField];
}

- (void)backButton
{
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeSystem];
    backButton.frame = CGRectMake(size.width-50, 29, 40, 24);
    [backButton setTitleColor:[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:0.6] forState:UIControlStateNormal];
    [backButton setTitle:@"取消" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(didBackButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
}

- (void)didBackButtonClicked
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
