//
//  SecondViewController.h
//  WebViewTest
//
//  Created by Vijayant Palaiya on 8/20/13.
//  Copyright (c) 2013 HCSN, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, strong) IBOutlet UIWebView	*myWebView;

@end
