//
//  FirstVM.h
//  BehaviorProj
//
//  Created by chenjinhong on 15/4/15.
//  Copyright (c) 2015年 chenjinhong. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol FirstVMDelegate;
@interface FirstVM : NSObject

@property (nonatomic, weak) id<FirstVMDelegate> delegate;

@end

@protocol FirstVMDelegate <NSObject>



@end
