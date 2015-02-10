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

#pragma mark - Getters and setters
-(NSInteger)labelMarginLeft {

    if (_labelMarginLeft < 0) {
        _labelMarginLeft = 0;
    }else{
        _labelMarginLeft = 15;
    }

    return _labelMarginLeft;
}

-(UIFont *)labelFont {

    if (!_labelFont) {
        _labelFont = [UIFont systemFontOfSize:14.0f];
    }

    return _labelFont;
}

@end
