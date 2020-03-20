//
//  ViewController.m
//  SwitchColleagues
//
//  Created by ahmedpro on 3/20/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSMutableArray *list;
    NSInteger currentIndex;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    list = [[NSMutableArray alloc] initWithCapacity: 10];
    [list addObject: @"Ahmed"];
    [list addObject: @"Mohamed"];
    [list addObject: @"Abd Elmoneam"];
    [list addObject: @"Mostafa"];
    [list addObject: @"Medhat"];
    [list addObject: @"Nasser"];
    [list addObject: @"Shaker"];
    [list addObject: @"Khaled"];
    [list addObject: @"Anwar"];
    [list addObject: @"Mahmoud"];
    
    _label.text = [list objectAtIndex: 0];
    currentIndex = 0;
}


- (IBAction)next:(UIButton *)sender {
    currentIndex++;
    if (currentIndex >= [list count])
        currentIndex = 0;
    
    _label.text = [list objectAtIndex: currentIndex];
}

- (IBAction)previous:(UIButton *)sender {
    currentIndex--;
    if (currentIndex < 0)
        currentIndex = [list count] - 1;
    
    _label.text = [list objectAtIndex: currentIndex];
}
@end
