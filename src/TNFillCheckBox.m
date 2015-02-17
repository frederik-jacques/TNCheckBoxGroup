//
//  TNFillCheckBox.m
//  TNCheckBoxDemo
//
//  Created by olunx on 15/2/10.
//  Copyright (c) 2015年 Frederik Jacques. All rights reserved.
//

#import "TNFillCheckBox.h"

@implementation TNFillCheckBox

#pragma mark - Initializers

- (instancetype)initWithData:(TNFillCheckBoxData *)data {

    self = [super initWithData:data];

    if (self) {
        // Initialization code
        self.data = data;

        [self setup];
    }

    return self;
}

#pragma mark - Creation
- (void)setup{

    [self createCheckbox];

    [super setup];
}

#pragma mark - Animations
- (void)checkWithAnimation:(BOOL)animated {

    self.lblButton.backgroundColor = ( self.data.checked ) ? self.data.labelBgSelectedColor : self.data.labelBgNormalColor;

}

@end
