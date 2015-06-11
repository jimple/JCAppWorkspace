//
//  Networking.m
//  JCSystemLayer
//
//  Created by chenjinhong on 15/4/29.
//  Copyright (c) 2015年 JimpleChen. All rights reserved.
//

#import "Networking.h"
#import "AFHTTPRequestOperation.h"
#import "AFURLRequestSerialization.h"


@implementation Networking

- (NSString *)testFMW {

    
    AFHTTPRequestSerializer <AFURLRequestSerialization> * requestSerializer = [AFHTTPRequestSerializer serializer];

    NSMutableDictionary *paramDic = [NSMutableDictionary dictionaryWithDictionary:@{}];
    
    NSString *urlPath = [NSString stringWithFormat:@"http://www.baidu.com"];
    NSMutableURLRequest *request = [requestSerializer requestWithMethod:@"GET" URLString:[[NSURL URLWithString:urlPath] absoluteString] parameters:paramDic error:nil];
  
    
    request = nil;
    
    return @"framework - Done  - 104";
}



@end
