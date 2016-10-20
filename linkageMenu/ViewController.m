//
//  ViewController.m
//  linkageMenu
//
//  Created by 王旭 on 2016/10/20.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import "ViewController.h"
#import "WXCategoryViewController.h"
#import "WXSubCategoryViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = self.view.frame.size.width * 0.5;
    CGFloat height = self.view.frame.size.height;

    WXSubCategoryViewController *subCategoryVC = [[WXSubCategoryViewController alloc] init];
    subCategoryVC.view.frame = CGRectMake(width, 0, width, height);
    [self.view addSubview:subCategoryVC.view];
    [self addChildViewController:subCategoryVC];
    
    WXCategoryViewController *categoryVC = [[WXCategoryViewController alloc] init];
    categoryVC.delegate = subCategoryVC;
    categoryVC.view.frame = CGRectMake(0, 0, width, height);
    [self.view addSubview:categoryVC.view];
    [self addChildViewController:categoryVC];
    

}


@end
