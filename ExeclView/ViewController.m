//
//  ViewController.m
//  ExeclView
//
//  Created by Khada Jhin on 2018/8/10.
//  Copyright © 2018年 Khada Jhin. All rights reserved.
//

#import "ViewController.h"
#import "ExcelView.h"
#import "UIViewExt.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel *title1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 70, self.view.width, 30)];
    title1.text = @"等级对应身高(单位cm)(虚构)";
    title1.font = [UIFont systemFontOfSize:16];
    title1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:title1];
    ExcelView *excelV1 = [[ExcelView alloc] initWithFrame:CGRectMake(20, 100, self.view.width - 40, 60)];
    excelV1.row = @"2";
    excelV1.column = @"7";
    excelV1.titleColor = [UIColor groupTableViewBackgroundColor];
    excelV1.titleArray = @[@"排长",@"连长",@"营长",@"团长",@"旅长",@"师长",@"军长"];
    excelV1.contentArray = @[@"173",@"175",@"177",@"178",@"179",@"182",@"190"];
    [self.view addSubview:excelV1];
    
    
    UILabel *title2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 170, self.view.width, 30)];
    title2.text = @"小明英语答案";
    title2.font = [UIFont systemFontOfSize:16];
    title2.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:title2];
    ExcelView *excelV2 = [[ExcelView alloc] initWithFrame:CGRectMake(20, 200, self.view.width - 40, 60)];
    excelV2.row = @"2";
    excelV2.column = @"6";
    excelV2.titleArray = @[@"第1题",@"第2题",@"第3题",@"第4题",@"第5题",@"第6题"];
    excelV2.contentArray = @[@"√",@"√",@"×",@"√",@"√",@"×"];
    excelV2.contentColor = [UIColor yellowColor];
    excelV2.titleColor = [UIColor grayColor];
    
    [self.view addSubview:excelV2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
