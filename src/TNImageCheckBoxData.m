//
//  TNImageCheckBoxData.m
//  TNCheckBoxDemo
//
//  Created by Frederik Jacques on 24/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNImageCheckBoxData.h"

@implementation TNImageCheckBoxData

#pragma mark - Copying
- (id)copyWithZone:(NSZone *)zone
{
    TNImageCheckBoxData *copy = [super copyWithZone:zone];
    
    if (copy) {
        copy.checkedImage = self.checkedImage;
        copy.uncheckedImage = self.uncheckedImage;
    }
    
    return copy;
}

@end
