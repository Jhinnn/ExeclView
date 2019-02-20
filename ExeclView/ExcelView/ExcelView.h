//
//  ExcelView.h
//  ExeclView
//
//  Created by Khada Jhin on 2018/8/10.
//  Copyright © 2018年 Khada Jhin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExcelView : UIView

- (instancetype)initWithFrame:(CGRect)frame;


@property (nonatomic, copy) NSString *row; //行
@property (nonatomic, copy) NSString *column; //列

@property (nonatomic, strong) NSArray *titleArray;
@property (nonatomic, strong) NSArray *contentArray;


@property (nonatomic, strong) UIColor *titleColor;
@property (nonatomic, strong) UIColor *contentColor;

@end
