//
//  FirstViewController.m
//  JCApp
//
//  Created by chenjinhong on 15/4/29.
//  Copyright (c) 2015年 JimpleChen. All rights reserved.
//

#import "FirstViewController.h"
#import <JCSystemLayer/JCSystemLayer.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self commonInit];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)commonInit {
    
    Networking *nt = [[Networking alloc] init];
    NSLog(@"\n\n\n=========\n%@\n\n\n\n", [nt testFMW]);
    
}



























@end
