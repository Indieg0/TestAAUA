//
//  PasswordViewController.h
//  TestAAUA
//
//  Created by Kirill on 18.01.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PasswordViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *repasswordField;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;

@end
