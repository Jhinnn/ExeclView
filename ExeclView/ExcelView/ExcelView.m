//
//  ExcelView.m
//  ExeclView
//
//  Created by Khada Jhin on 2018/8/10.
//  Copyright © 2018年 Khada Jhin. All rights reserved.
//

#import "ExcelView.h"
#import "UIViewExt.h"
#import "LineLabel.h"

#define lineW 1
#define lineH 1

@implementation ExcelView


- (void)setRow:(NSString *)row {
    _row = row;
    
    CGFloat lb_height = (self.height - lineW * ([row intValue] + 1)) / [row intValue];
    for (int i = 0; i <= [row intValue]; i++) {
        LineLabel *rowLabel = [[LineLabel alloc] initWithFrame:CGRectMake(0, i * (lb_height + 1), self.width, lineH)];
        [self addSubview:rowLabel];
    }
}

- (void)setColumn:(NSString *)column {
    _column = column;
    CGFloat lb_width = (self.width - lineW * ([column intValue] + 1)) / [column intValue];
    CGFloat lb_height = (self.height - lineW * ([self.row intValue] + 1)) / [self.row intValue];
    
    for (int j = 0; j <= [column intValue]; j++) {
        LineLabel *columnLabel = [[LineLabel alloc] initWithFrame:CGRectMake(j * (lb_width + 1), 0, lineW, self.height)];
        if (j != [column intValue]) {
            UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(columnLabel.right, 1, lb_width, lb_height)];
            titleLabel.backgroundColor = [UIColor clearColor];
            titleLabel.font = [UIFont systemFontOfSize:14];
            titleLabel.textAlignment = NSTextAlignmentCenter;
            titleLabel.transform = CGAffineTransformMakeScale(0.8, 0.8);
            titleLabel.tag = j + 1000;
            [self addSubview:titleLabel];
            
            UILabel *bgLabel = [[UILabel alloc] initWithFrame:CGRectMake(columnLabel.right, 2 + lb_height, lb_width, lb_height)];
            bgLabel.backgroundColor = [UIColor whiteColor];
            bgLabel.tag = j + 100;
            [self addSubview:bgLabel];
            
            UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(columnLabel.right, 2 + lb_height, lb_width, lb_height)];
            contentLabel.backgroundColor = [UIColor clearColor];
            contentLabel.font = [UIFont systemFontOfSize:14];
            contentLabel.textAlignment = NSTextAlignmentCenter;
            contentLabel.transform = CGAffineTransformMakeScale(0.8, 0.8);
            contentLabel.tag = j + 2000;
            [self addSubview:contentLabel];
        }
        
        
        
        [self addSubview:columnLabel];
    }
}


- (void)setTitleArray:(NSArray *)titleArray {
    _titleArray = titleArray;
    if (_titleArray.count == [self.column integerValue]) {
        for (int j = 0; j < _titleArray.count; j++) {
            UILabel *lab = [self viewWithTag:j + 1000];
            lab.text = _titleArray[j];
        }
    }else {
        NSLog(@"数据数量不正确");
    }
}

- (void)setContentArray:(NSArray *)contentArray {
    _contentArray = contentArray;
    if (_contentArray.count == [self.column integerValue]) {
        for (int i = 0; i < _titleArray.count; i++) {
            UILabel *lab = [self viewWithTag:i + 2000];
            lab.text = _contentArray[i];
        }
    }else {
        NSLog(@"数据数量不正确");
    }
}

- (void)setTitleColor:(UIColor *)titleColor {
    _titleColor = titleColor;
    self.backgroundColor = _titleColor;
}

- (void)setContentColor:(UIColor *)contentColor {
    _contentColor = contentColor;
    for (int i = 0; i < [self.column integerValue]; i++) {
        UILabel *lab = [self viewWithTag:i + 100];
        lab.backgroundColor = _contentColor;
    }
}

@end
