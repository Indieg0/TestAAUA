//
//  PasswordViewController.m
//  TestAAUA
//
//  Created by Kirill on 18.01.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

#import "PasswordViewController.h"

@implementation PasswordViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.doneButton.layer.cornerRadius = 5;
    UIButton *backButton = [[UIButton alloc] init];
    UIImage *backImage = [UIImage imageNamed:@"arrow_back"];
    [backButton setBackgroundImage:backImage  forState:UIControlStateNormal];
    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(popBack) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    self.navigationItem.leftBarButtonItem = backButtonItem;
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) popBack {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if ([textField isEqual:self.passwordField]) {
        [self.repasswordField becomeFirstResponder];
        
    }
    else {
        [textField resignFirstResponder];
    }
    return YES;
}
@end
