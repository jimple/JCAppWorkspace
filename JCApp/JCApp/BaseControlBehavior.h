//
//  BaseControlBehavior.h
//  BehaviorProj
//
//  Created by chenjinhong on 15/4/15.
//  Copyright (c) 2015年 chenjinhong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseControlBehavior : UIControl


//! object that this controller life will be bound to
@property(nonatomic, weak) IBOutlet id owner;




@end
