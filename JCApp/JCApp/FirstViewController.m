//
//  FirstViewController.m
//  BehaviorProj
//
//  Created by chenjinhong on 15/4/15.
//  Copyright (c) 2015年 chenjinhong. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstVM.h"
#import "FirstBehavior.h"
#import "TheMTLModel.h"


#define kModelKey                       @"MTLModel"


@interface FirstViewController ()
<
    FirstVMDelegate
>

@property (nonatomic, weak) IBOutlet FirstVM *viewModel;
@property (nonatomic, weak) IBOutlet FirstBehavior *firstBehavior;



@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.viewModel.delegate = self;
    
}

- (IBAction)checkBehaviorBtn:(id)sender {
    if (self.firstBehavior) {
        NSLog(@" --- %@", [self.firstBehavior whatIsYourName]);
    } else {}
    
}

- (IBAction)saveObjBtn:(id)sender {
    TheMTLModel *model = [[TheMTLModel alloc] init];
    model.name = @"save it";
    model.subItem.subItemName = @"save sub item";
    NSData *modelData = [NSKeyedArchiver archivedDataWithRootObject:model];
    [[NSUserDefaults standardUserDefaults] setObject:modelData forKey:kModelKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    NSLog(@" --- Save completed.");
}

- (IBAction)getObjBtn:(id)sender {
    NSData *modelData = [[NSUserDefaults standardUserDefaults] objectForKey:kModelKey];
    TheMTLModel *model = [NSKeyedUnarchiver unarchiveObjectWithData:modelData];
    
    NSLog(@"\n\n============\n%@\n%@\n\n", model, model.subItem);
}




























@end
