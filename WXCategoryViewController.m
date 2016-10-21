//
//  WXCategoryViewController.m
//  linkageMenu
//
//  Created by 王旭 on 2016/10/20.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import "WXCategoryViewController.h"
#import "WXCategory.h"

@interface WXCategoryViewController ()

/** data */
@property (nonatomic, strong) NSArray *category;

@end

@implementation WXCategoryViewController

- (NSArray *)category{
    if(_category == nil){
        
        NSArray *tempArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"categories" ofType:@"plist"]];
        
        NSMutableArray *useArray = [NSMutableArray array];
        
        for (NSDictionary *item in tempArray) {
            if(item != nil){
                [useArray addObject:[WXCategory categoryWithDict:item]];
            }
        }
        _category = useArray;
    }
    
    return _category;
}
NSString *categoryID = @"category";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:categoryID];
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.category.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:categoryID];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:categoryID];
    }
    
    WXCategory *item = self.category[indexPath.row];
    cell.textLabel.text = item.name;
    cell.imageView.image = [UIImage imageNamed:item.icon];
    cell.imageView.highlightedImage = [UIImage imageNamed:item.highlighted_icon];
    cell.textLabel.highlightedTextColor = [UIColor redColor];
    return cell;
}


#pragma mark - delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if([self.delegate respondsToSelector:@selector(categoryViewController:didSelectSubcategories:)]){
        WXCategory *item = self.category[indexPath.row];
        [self.delegate categoryViewController:self didSelectSubcategories:item.subcategories];
    }
}
@end
