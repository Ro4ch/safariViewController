//
//  SFSafariViewController.m
//  SFSafariViewController
//
//  Created by Scott Rocha on 16/06/16.
//  Copyright © 2016 Scott Rocha. All rights reserved.
//

#import "ExampleSFSafariViewController.h"


//Add the delegate
@interface ExampleSFSafariViewController () <SFSafariViewControllerDelegate>

@end

@implementation ExampleSFSafariViewController


//Button to website
- (IBAction)displayWebSite:(id)sender {
    
    
    //SFSafariViewController with an if statement to determine what iOS version you have.
    
    NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.apple.com"]];
    
    //if iOS 9 or later
    if ([SFSafariViewController class] != nil) {
        SFSafariViewController *sfvc = [[SFSafariViewController alloc] initWithURL:URL];
        sfvc.delegate = self;
        [self presentViewController:sfvc animated:YES completion:nil];
        //else iOS 8 or below
    } else {
        [[UIApplication sharedApplication] openURL:URL];
    }
    
    
    
}


- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    
    
    //your code here
    
    [self dismissViewControllerAnimated:true completion:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
