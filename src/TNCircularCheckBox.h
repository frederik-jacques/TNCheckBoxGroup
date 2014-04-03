//
//  TNCircleCheckBox.h
//  TNCheckBox
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCheckBox.h"

@interface TNCircularCheckBox : TNCheckBox

@property (nonatomic, strong) TNCircularCheckBoxData *data;

- (instancetype)initWithData:(TNCircularCheckBoxData *)data;

@end
