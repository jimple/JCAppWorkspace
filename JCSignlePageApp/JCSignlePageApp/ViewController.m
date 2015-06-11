//
//  ViewController.m
//  JCSignlePageApp
//
//  Created by chenjinhong on 15/4/29.
//  Copyright (c) 2015年 JimpleChen. All rights reserved.
//

#import "ViewController.h"
#import <JCSystemLayer/JCSystemLayer.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    Networking *nt = [[Networking alloc] init];
    NSLog(@"\n\n\n=== signle page\n%@\n\n\n\n", [nt testFMW]);
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
