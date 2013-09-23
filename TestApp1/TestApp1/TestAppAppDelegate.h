//
//  TestAppAppDelegate.h
//  TestApp1
//
//  Created by Vijayant Palaiya on 12/16/12.
//  Copyright (c) 2012 HCSN, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestAppViewController;

@interface TestAppAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) TestAppViewController *viewController;

@end
