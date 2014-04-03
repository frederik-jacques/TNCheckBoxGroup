//
//  TNImageCheckbox.h
//  TNCheckBox
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCheckBox.h"

@interface TNImageCheckbox : TNCheckBox

@property (nonatomic, strong) TNImageCheckBoxData *data;

- (instancetype)initWithData:(TNImageCheckBoxData *)data;

@end
