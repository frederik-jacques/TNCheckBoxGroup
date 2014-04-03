//
//  TNCheckBoxData.m
//  TNCheckBoxDemo
//
//  Created by Frederik Jacques on 24/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCheckBoxData.h"

@implementation TNCheckBoxData

#pragma mark - Debug
- (NSString *)description {
    return [NSString stringWithFormat:@"[TNCheckBoxData] Identifier: %@ - Tag: %i - Checked: %d", self.identifier, self.tag, self.checked];
}

@end
