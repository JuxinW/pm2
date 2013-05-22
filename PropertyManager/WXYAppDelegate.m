//
//  WXYAppDelegate.m
//  PropertyManager
//
//  Created by juxin on 13-5-22.
//  Copyright (c) 2013年 juxin. All rights reserved.
//

#import "WXYAppDelegate.h"
#import "CRTabBarController.h"

@implementation WXYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    [self setupTabBarController];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void)setupTabBarController
{
    CRTabBarController *tabBarController = [[CRTabBarController alloc] init];
    NSMutableArray* viewControllers = [[NSMutableArray alloc] init];
    
    UIViewController *crCategoriesslidingViewController = [[UIViewController alloc] init];
    UINavigationController *categoriesNavigationController = [[UINavigationController alloc] initWithRootViewController:crCategoriesslidingViewController];
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] init];
    [tabBarItem  setFinishedSelectedImage: [UIImage imageNamed: @"ICN_home_ON"]
              withFinishedUnselectedImage: [UIImage imageNamed: @"ICN_home"]];
    [categoriesNavigationController setTabBarItem: tabBarItem];
    [viewControllers addObject:categoriesNavigationController];
    
    UIViewController *crSavedProductsController = [[UIViewController alloc] init];
    UINavigationController *savedNavigationController = [[UINavigationController alloc] initWithRootViewController:crSavedProductsController];
    UITabBarItem* savedTabBarItem = [[UITabBarItem alloc] init];
    [savedTabBarItem  setFinishedSelectedImage: [UIImage imageNamed: @"ICN_saved_ON"]
                   withFinishedUnselectedImage: [UIImage imageNamed: @"ICN_saved"]];
    crSavedProductsController.view.backgroundColor = [UIColor purpleColor];
    [savedNavigationController setTabBarItem: savedTabBarItem];
    [viewControllers addObject:savedNavigationController];
    
    UIViewController *crSavedProductsController2 = [[UIViewController alloc] init];
    UINavigationController *savedNavigationController2 = [[UINavigationController alloc] initWithRootViewController:crSavedProductsController2];
    UITabBarItem* savedTabBarItem2 = [[UITabBarItem alloc] init];
    [savedNavigationController2.navigationBar setBackgroundImage:[UIImage imageNamed:@"BG_top"] forBarMetrics:UIBarMetricsDefault];
    [savedTabBarItem2  setFinishedSelectedImage: [UIImage imageNamed: @"ICN_saved_ON"]
                    withFinishedUnselectedImage: [UIImage imageNamed: @"ICN_saved"]];
    crSavedProductsController2.view.backgroundColor = [UIColor purpleColor];
    [savedNavigationController2 setTabBarItem: savedTabBarItem2];
    [viewControllers addObject:savedNavigationController2];
    
    UIViewController *crSearchController = [[UIViewController alloc] init ];
    UINavigationController *searchNavigationController = [[UINavigationController alloc] initWithRootViewController:crSearchController];
    UITabBarItem* searchTabBarItem = [[UITabBarItem alloc] init];
    [searchTabBarItem  setFinishedSelectedImage: [UIImage imageNamed: @"ICN_tab_search_ON"]
                    withFinishedUnselectedImage: [UIImage imageNamed: @"ICN_tab_search"]];
    crSearchController.view.backgroundColor = [UIColor brownColor];
    [searchNavigationController setTabBarItem: searchTabBarItem];
    [viewControllers addObject:searchNavigationController];
    
    UIViewController *crRecentProductsController = [[UIViewController alloc] init ];
    UINavigationController *recentNavigationProductsController = [[UINavigationController alloc] initWithRootViewController:crRecentProductsController];
    UITabBarItem* recentTabBarItem = [[UITabBarItem alloc] init];
    [recentTabBarItem  setFinishedSelectedImage: [UIImage imageNamed: @"ICN_recent_ON"]
                    withFinishedUnselectedImage: [UIImage imageNamed: @"ICN_recent"]];
    crRecentProductsController.view.backgroundColor = [UIColor redColor];
    [recentNavigationProductsController setTabBarItem: recentTabBarItem];
    [viewControllers addObject:recentNavigationProductsController];
    
    UIViewController *crAccountsController = [[UIViewController alloc] init ];
    UINavigationController *accountsNavigationController = [[UINavigationController alloc] initWithRootViewController:crAccountsController];
    UITabBarItem* accountTabBarItem = [[UITabBarItem alloc] init];
    [accountTabBarItem  setFinishedSelectedImage: [UIImage imageNamed: @"ICN_account_ON"]
                     withFinishedUnselectedImage: [UIImage imageNamed: @"ICN_account"]];
    crAccountsController.view.backgroundColor = [UIColor yellowColor];
    [accountsNavigationController setTabBarItem: accountTabBarItem];
    [viewControllers addObject:accountsNavigationController];
    
    UIViewController *crBrandsViewController = [[UIViewController alloc] init ];
    UINavigationController *brandsNavigationController = [[UINavigationController alloc] initWithRootViewController:crBrandsViewController];
    UITabBarItem *brandsTabBarItem = [[UITabBarItem alloc] init];
    [brandsTabBarItem  setFinishedSelectedImage: [UIImage imageNamed: @"ICN_brand_ON"]
                    withFinishedUnselectedImage: [UIImage imageNamed: @"ICN_brand"]];
    crBrandsViewController.view.backgroundColor = [UIColor whiteColor];
    [brandsNavigationController setTabBarItem: brandsTabBarItem];
    [viewControllers addObject:brandsNavigationController];
    
    
    UIViewController *crAboutController = [[UIViewController alloc] init ];
    UINavigationController *aboutNavigationController = [[UINavigationController alloc] initWithRootViewController:crAboutController];
    UITabBarItem* aboutTabBarItem = [[UITabBarItem alloc] init];
    [aboutTabBarItem  setFinishedSelectedImage: [UIImage imageNamed: @"ICN_tab_info_ON"]
                   withFinishedUnselectedImage: [UIImage imageNamed: @"ICN_tab_info"]];
    crAboutController.view.backgroundColor = [UIColor greenColor];
    [aboutNavigationController setTabBarItem: aboutTabBarItem];
    [viewControllers addObject:aboutNavigationController];
    
	tabBarController.delegate = self;
	tabBarController.viewControllers = viewControllers;
    
    [self.window addSubview:[tabBarController view]];
    self.window.rootViewController = tabBarController;
}

@end
