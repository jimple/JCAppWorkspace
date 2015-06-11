//
//  TheMTLModel.m
//  BehaviorProj
//
//  Created by chenjinhong on 15/4/16.
//  Copyright (c) 2015年 chenjinhong. All rights reserved.
//

#import "TheMTLModel.h"


@implementation ModelSubInfo

- (instancetype)init {
    self = [super init];
    if (self) {
        [self commonInit];
    } else {}
    return self;
}

- (void)dealloc {
    
}

- (void)commonInit {
    self.subItemName = @"subName";
    self.subNum = @(10);
}


@end

#pragma mark -

@implementation TheMTLModel

- (instancetype)init {
    self = [super init];
    if (self) {
        [self commonInit];
    } else {}
    return self;
}

- (void)dealloc {
    
}

- (void)commonInit {
    self.name = @"dName";
    self.num = @(0);
    self.arr = @[@"1", @"2"];
    self.dic = @{@"str" : @"test", @"num" : @(0)};
    self.subItem = [[ModelSubInfo alloc] init];
}

































@end
