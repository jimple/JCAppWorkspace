//
//  TheMTLModel.h
//  BehaviorProj
//
//  Created by chenjinhong on 15/4/16.
//  Copyright (c) 2015年 chenjinhong. All rights reserved.
//

#import "MTLModel.h"


@interface ModelSubInfo : MTLModel

@property (nonatomic, copy) NSString *subItemName;
@property (nonatomic, strong) NSNumber *subNum;

@end


@interface TheMTLModel : MTLModel


@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber *num;
@property (nonatomic, strong) NSArray *arr;
@property (nonatomic, strong) NSDictionary *dic;

@property (nonatomic, strong) ModelSubInfo *subItem;


@end
