//
//  LineLabel.m
//  zwBorrow
//
//  Created by Arthur on 2018/6/12.
//  Copyright © 2018年 zhongwang. All rights reserved.
//

#import "LineLabel.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation LineLabel

- (instancetype)initWithFrame:(CGRect)frame {
    self =[super initWithFrame:frame];
    if (self) {
        self.backgroundColor = UIColorFromRGB(0xCCCCCC);
    }
    return self;
}

@end
