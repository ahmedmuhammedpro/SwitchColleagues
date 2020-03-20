//
//  ViewController.h
//  SwitchColleagues
//
//  Created by ahmedpro on 3/20/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)next:(UIButton *)sender;
- (IBAction)previous:(UIButton *)sender;

@end

