//
//  RegistrationViewController.h
//  TestAAUA
//
//  Created by Kirill on 18.01.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistrationViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *checkBox1;
@property (weak, nonatomic) IBOutlet UIButton *checkBox2;
@property (weak, nonatomic) IBOutlet UIButton *checkBox3;

@property (weak, nonatomic) IBOutlet UITextField *numberField;

@property (weak, nonatomic) IBOutlet UITextField *smsField;
@property (weak, nonatomic) IBOutlet UIButton *phoneButton;
@property (weak, nonatomic) IBOutlet UIButton *smsButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;

- (IBAction)nextButtonAction:(UIButton *)sender;

@end
