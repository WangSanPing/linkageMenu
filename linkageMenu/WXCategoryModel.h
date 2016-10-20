//
//  WXCategoryModel.h
//  linkageMenu
//
//  Created by 王旭 on 2016/10/20.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WXCategoryModel : NSObject

/** 子类别 */
@property (nonatomic, strong) NSArray *subcategories;
/** 姓名 */
@property (nonatomic, strong) NSString *name;
/** 图标 */
@property (nonatomic, strong) NSString *icon;
/** 高亮图标 */
@property (nonatomic, strong) NSString *highlighted_icon;

+ (instancetype)categoryWithDict:(NSDictionary *)dict;

@end
