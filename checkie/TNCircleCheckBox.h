//
//  TNCircleCheckBox.h
//  Flirty
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCheckBox.h"

@interface TNCircleCheckBox : TNCheckBox

+ (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked outerRadius:(NSUInteger)outerRadius outerRadiusColor:(UIColor *)outerRadiusColor innerRadius:(NSUInteger)innerRadius innerRadiusColor:(UIColor *)innerRadiusColor;

- (instancetype)initWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked outerRadius:(NSUInteger)outerRadius outerRadiusColor:(UIColor *)outerRadiusColor innerRadius:(NSUInteger)innerRadius innerRadiusColor:(UIColor *)innerRadiusColor;
@end
