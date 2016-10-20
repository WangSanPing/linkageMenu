//
//  WXCategoryModel.m
//  linkageMenu
//
//  Created by 王旭 on 2016/10/20.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import "WXCategoryModel.h"

@implementation WXCategoryModel


+ (instancetype)categoryWithDict:(NSDictionary *)dict{
    
    WXCategoryModel *model = [[self alloc] init];
    
    [model setValuesForKeysWithDictionary:dict];
//    NSLog(@"%@",dict);
    return model;
}

- (void)setValuesForKeysWithDictionary:(NSDictionary<NSString *, id> *)keyedValues{
    //    NSLog(@"%@",keyedValues);
    [super setValuesForKeysWithDictionary:keyedValues];
}

- (void)setValue:(id)value forKey:(NSString *)key{
        NSLog(@"%@",key);
    [super setValue:value forKey:key];
}

@end
