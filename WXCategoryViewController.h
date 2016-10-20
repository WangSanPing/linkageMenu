//
//  WXCategoryViewController.h
//  linkageMenu
//
//  Created by 王旭 on 2016/10/20.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WXCategoryViewController;

@protocol CategoryViewDelegate <NSObject>

@optional

- (void)categoryViewController:(WXCategoryViewController *)categoryViewController didSelectSubcategories:(NSArray *)subCategories;

@end

@interface WXCategoryViewController : UITableViewController

/** delegate */
@property (nonatomic, weak) id<CategoryViewDelegate> delegate ;

@end
