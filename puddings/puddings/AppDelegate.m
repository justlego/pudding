//
//  AppDelegate.m
//  puddings
//
//  Created by apple on 15/9/30.
//  Copyright © 2015年 divein. All rights reserved.
//

#import "AppDelegate.h"
#import "DIECenterViewController.h"
#import "DIELeftViewController.h"

#import "MMDrawerController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    UITabBarController *_mainTabBarCtrl;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    
    [self createMainVC];
    
    [self createLeftDrawer];
    
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)createMainVC
{
    DIECenterViewController *centerVC = [[DIECenterViewController alloc] init];
    UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:centerVC];
    navCtrl.tabBarItem.image = [[UIImage imageNamed:@"global_footer_btn_new_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navCtrl.tabBarItem.selectedImage = [[UIImage imageNamed:@"global_footer_btn_new_selected"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    _mainTabBarCtrl = [[UITabBarController alloc] init];
    [[UITabBar appearance]setTintColor:[UIColor orangeColor]];
    _mainTabBarCtrl.viewControllers = @[navCtrl];
    
}

- (void)createLeftDrawer
{
    DIELeftViewController *leftVC = [[DIELeftViewController alloc] init];
    MMDrawerController *mmDrawerCtrl = [[MMDrawerController alloc] initWithCenterViewController:_mainTabBarCtrl leftDrawerViewController:leftVC];
    
    mmDrawerCtrl.openDrawerGestureModeMask = MMOpenDrawerGestureModeAll;
    mmDrawerCtrl.closeDrawerGestureModeMask = MMCloseDrawerGestureModeAll;
    
    self.window.rootViewController = mmDrawerCtrl;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
