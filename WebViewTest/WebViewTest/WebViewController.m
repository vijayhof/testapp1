//
//  SecondViewController.m
//  WebViewTest
//
//  Created by Vijayant Palaiya on 8/20/13.
//  Copyright (c) 2013 HCSN, Inc. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () 

@end

@implementation WebViewController 

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // change the back button to cancel and add an event handler
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"back"
                                                                   style:UIBarButtonItemStyleBordered
                                                                  target:self
                                                                  action:@selector(handleBack:)];
    
    self.navigationItem.rightBarButtonItem = backButton;
    
	// Do any additional setup after loading the view, typically from a nib.
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.apple.com/"]]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillDisappear:(BOOL)animated
{
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound)
    {
        // back button was pressed.  We know this is true because self is no longer
        // in the navigation stack.
        NSLog(@"WebViewController:vWD");
    }
    [super viewWillDisappear:animated];
}

- (void) handleBack:(id)sender
{
    // pop to root view controller
//    [self.navigationController popToRootViewControllerAnimated:YES];
    NSLog(@"WebViewController:handleBack");

    [self.myWebView goBack];
}


@end
