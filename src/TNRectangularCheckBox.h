//
//  TNSquareCheckBox.h
//  TNCheckBox
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCheckBox.h"

@interface TNRectangularCheckBox : TNCheckBox

@property (nonatomic, strong) TNRectangularCheckBoxData *data;

- (instancetype)initWithData:(TNRectangularCheckBoxData *)data;

@end
