//
//  TNFillCheckBox.h
//  TNCheckBoxDemo
//
//  Created by olunx on 15/2/10.
//  Copyright (c) 2015年 Frederik Jacques. All rights reserved.
//

#import "TNCheckBox.h"

@interface TNFillCheckBox : TNCheckBox

@property (nonatomic, strong) TNFillCheckBoxData *data;

- (instancetype)initWithData:(TNFillCheckBoxData *)data;

@end
