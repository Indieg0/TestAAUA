//
//  PersonalViewController.m
//  TestAAUA
//
//  Created by Kirill on 18.01.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

#import "PersonalViewController.h"
#import "PasswordViewController.h"

@implementation PersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.nextButton.layer.cornerRadius = 5;
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *backButton = [[UIButton alloc] init];
    UIImage *backImage = [UIImage imageNamed:@"arrow_back"];
    [backButton setBackgroundImage:backImage  forState:UIControlStateNormal];
    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(popBack) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    self.navigationItem.leftBarButtonItem = backButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextButtonAction:(UIButton *)sender {
    PasswordViewController *vc = [[self storyboard] instantiateViewControllerWithIdentifier:@"Password"];
    
    
    [self.navigationController pushViewController:vc animated:YES];
}

-(void) popBack {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if ([textField isEqual:self.nameField]) {
        [self.lastNameField becomeFirstResponder];
        
    }
    
    else if ([textField isEqual:self.lastNameField]) {
        [self.markField becomeFirstResponder];
        
    }
    
    else if ([textField isEqual:self.markField]) {
        [self.modelField becomeFirstResponder];
        
    }
    
    else if ([textField isEqual:self.modelField]) {
        [self.yearField becomeFirstResponder];
        
    }
    
    else if ([textField isEqual:self.yearField]) {
        [self.numberField becomeFirstResponder];
        
    }
    else {
        [textField resignFirstResponder];
    }
    return YES;
}



@end
