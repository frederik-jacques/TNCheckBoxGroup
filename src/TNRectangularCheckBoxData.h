//
//  TNRectangularCheckBoxData.h
//  TNCheckBoxDemo
//
//  Created by Frederik Jacques on 24/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCheckBoxData.h"

@interface TNRectangularCheckBoxData : TNCheckBoxData

@property (nonatomic, strong) UIColor *borderColor;
@property (nonatomic, strong) UIColor *rectangleColor;

@property (nonatomic) NSInteger borderWidth;
@property (nonatomic) NSInteger borderHeight;
@property (nonatomic) NSInteger rectangleWidth;
@property (nonatomic) NSInteger rectangleHeight;

@end
