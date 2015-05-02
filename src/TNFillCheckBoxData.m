//
//  TNFillCheckBoxData.m
//  TNCheckBoxDemo
//
//  Created by olunx on 15/2/10.
//  Copyright (c) 2015年 Frederik Jacques. All rights reserved.
//

#import "TNFillCheckBoxData.h"

@implementation TNFillCheckBoxData

#pragma mark - Copying
- (id)copyWithZone:(NSZone *)zone
{
    TNFillCheckBoxData *copy = [super copyWithZone:zone];
    
    if (copy) {
        copy.labelBgNormalColor = self.labelBgNormalColor;
        copy.labelBgSelectedColor = self.labelBgSelectedColor;
    }
    
    return copy;
}

@end
