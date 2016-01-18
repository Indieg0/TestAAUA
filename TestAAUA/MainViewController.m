//
//  MainViewController.m
//  TestAAUA
//
//  Created by Kirill on 17.01.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

#import "MainViewController.h"
#import "AuthorizationViewController.h"
#import "RegistrationViewController.h"
@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.haveCard.layer.cornerRadius = 5;
    self.noCard.layer.cornerRadius = 5;
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                  forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.view.backgroundColor = [UIColor clearColor];
    self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)haveCardAction:(UIButton *)sender {
    AuthorizationViewController *vc = [[self storyboard] instantiateViewControllerWithIdentifier:@"Authorization"];

    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)noCardAction:(UIButton *)sender {
    RegistrationViewController *vc = [[self storyboard] instantiateViewControllerWithIdentifier:@"Registration"];
    
    
    [self.navigationController pushViewController:vc animated:YES];
}
@end
