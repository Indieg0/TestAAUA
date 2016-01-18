//
//  RegistrationViewController.m
//  TestAAUA
//
//  Created by Kirill on 18.01.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

#import "RegistrationViewController.h"
#import "PersonalViewController.h"

@implementation RegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *backButton = [[UIButton alloc] init];
    UIImage *backImage = [UIImage imageNamed:@"arrow_back"];
    [backButton setBackgroundImage:backImage  forState:UIControlStateNormal];
    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(popBack) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    self.navigationItem.leftBarButtonItem = backButtonItem;

    

    [self.checkBox1 setBackgroundImage:[UIImage imageNamed:@"chek_off"] forState:UIControlStateNormal];
    [self.checkBox1 setBackgroundImage:[UIImage imageNamed:@"chek_on"] forState:UIControlStateSelected];
    [self.checkBox1 addTarget:self action:@selector(checkboxSelected:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.checkBox2 setBackgroundImage:[UIImage imageNamed:@"chek_off"] forState:UIControlStateNormal];
    [self.checkBox2 setBackgroundImage:[UIImage imageNamed:@"chek_on"] forState:UIControlStateSelected];
    [self.checkBox2 addTarget:self action:@selector(checkboxSelected:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.checkBox3 setBackgroundImage:[UIImage imageNamed:@"chek_off"] forState:UIControlStateNormal];
    [self.checkBox3 setBackgroundImage:[UIImage imageNamed:@"chek_on"] forState:UIControlStateSelected];
    [self.checkBox3 addTarget:self action:@selector(checkboxSelected:) forControlEvents:UIControlEventTouchUpInside];
    
    self.phoneButton.layer.cornerRadius = 5;
    self.smsButton.layer.cornerRadius = 5;
    self.nextButton.layer.cornerRadius = 5;
    

    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) popBack {
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)checkboxSelected:(id)sender{
    
  
    if([sender isSelected]==YES)
    {
        [sender setSelected:NO];
    }
    else{
        [sender setSelected:YES];
    }
 
    
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if ([textField isEqual:self.numberField]) {
        [self.smsField becomeFirstResponder];
        
    }
    else {
        [textField resignFirstResponder];
    }
    return YES;
}

- (IBAction)nextButtonAction:(UIButton *)sender {
    
        PersonalViewController *vc = [[self storyboard] instantiateViewControllerWithIdentifier:@"Personal"];
        
        
        [self.navigationController pushViewController:vc animated:YES];
    
}
@end
