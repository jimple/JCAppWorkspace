//
//  BaseControlBehavior.m
//  BehaviorProj
//
//  Created by chenjinhong on 15/4/15.
//  Copyright (c) 2015年 chenjinhong. All rights reserved.
//

#import "BaseControlBehavior.h"
#import <objc/runtime.h>

@interface BaseControlBehavior ()


@end


@implementation BaseControlBehavior

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setOwner:(id)owner
{
    if (_owner != owner) {
        [self releaseLifetimeFromObject:_owner];
        _owner = owner;
        [self bindLifetimeToObject:_owner];
    }
}

- (void)bindLifetimeToObject:(id)object
{
    objc_setAssociatedObject(object, (__bridge void *)self, self, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)releaseLifetimeFromObject:(id)object
{
    objc_setAssociatedObject(object, (__bridge void *)self, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


@end
