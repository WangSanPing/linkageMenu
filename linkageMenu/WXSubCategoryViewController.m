//
//  WXSubCategoryViewController.m
//  linkageMenu
//
//  Created by 王旭 on 2016/10/20.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import "WXSubCategoryViewController.h"

@interface WXSubCategoryViewController ()

/** 子类别数据 */
@property (nonatomic, strong) NSArray *subcategories;

@end

@implementation WXSubCategoryViewController


NSString *subCategoryID = @"subCategory";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:subCategoryID];
    
}

#pragma mark - delegate

- (void)categoryViewController:(WXCategoryViewController *)categoryViewController didSelectSubcategories:(NSArray *)subCategories{
    
    self.subcategories = subCategories;
    
    [self.tableView reloadData];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.subcategories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:subCategoryID];
    
    cell.textLabel.text = self.subcategories[indexPath.row];
    
    return cell;
}


@end
