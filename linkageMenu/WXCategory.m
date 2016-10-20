//
//  WXCategory.m
//  linkageMenu
//
//  Created by 王旭 on 2016/10/20.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import "WXCategory.h"

@implementation WXCategory

+ (instancetype)categoryWithDict:(NSDictionary *)dict{
    
    WXCategory *c = [[self alloc] init];
    
    [c setValuesForKeysWithDictionary:dict];
    //    NSLog(@"%@",dict);
    return c;
}

@end
