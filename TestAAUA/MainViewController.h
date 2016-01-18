//
//  MainViewController.h
//  TestAAUA
//
//  Created by Kirill on 17.01.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

#import "ViewController.h"

@interface MainViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *haveCard;
@property (weak, nonatomic) IBOutlet UIButton *noCard;


- (IBAction)haveCardAction:(UIButton *)sender;
- (IBAction)noCardAction:(UIButton *)sender;

@end
