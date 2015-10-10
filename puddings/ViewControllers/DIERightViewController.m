//
//  DIERightViewController.m
//  puddings
//
//  Created by apple on 15/10/6.
//  Copyright © 2015年 divein. All rights reserved.
//

#import "DIERightViewController.h"


@interface DIERightViewController ()<UISearchBarDelegate>

@end

@implementation DIERightViewController
{
    CGSize size;
    UIButton *_searchButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.9];
    size = self.view.bounds.size;

    [self createHeadLabel];
    [self addUISearchBar];
    [self searchButton];
}


#pragma mark 设计搜索框
- (void)addUISearchBar
{
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(20, 20, size.width-80, 40)];
    searchBar.barTintColor = [UIColor whiteColor];
    searchBar.layer.borderWidth = 1.f;
    searchBar.layer.borderColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.9].CGColor;
    searchBar.layer.cornerRadius = 20.0f;
    searchBar.layer.masksToBounds = YES;
    searchBar.placeholder = @"请输入要搜索的词";
    searchBar.showsCancelButton = NO;
    [self.view addSubview:searchBar];
    searchBar.delegate = self;
}


#pragma mark 设计搜索和取消的button
- (void)searchButton
{
    _searchButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _searchButton.frame = CGRectMake(size.width-40, 20, 40, 40);
    [_searchButton setTitleColor:[UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.9] forState:UIControlStateNormal];
    [_searchButton setTitle:@"取消" forState:UIControlStateNormal];
    [_searchButton addTarget:self action:@selector(didBackButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_searchButton];
    
}

- (void)didSearchButtonClicked
{
    
}

- (void)didBackButtonClicked
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark 增加一个headLabel
- (void)createHeadLabel
{
    UILabel *headLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, size.width, 64)];
    headLabel.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:headLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark 根据状态不同选择不同的button标题和方法
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    if (searchBar.text.length == 0) {
        [_searchButton setTitle:@"取消" forState:UIControlStateNormal];
        [_searchButton removeTarget:nil action:NULL forControlEvents:UIControlEventAllEvents];
        [_searchButton addTarget:self action:@selector(didBackButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    else {
        [_searchButton setTitle:@"搜索" forState:UIControlStateNormal];
        [_searchButton removeTarget:nil action:NULL forControlEvents:UIControlEventAllEvents];
        [_searchButton addTarget:self action:@selector(didSearchButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    }
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
