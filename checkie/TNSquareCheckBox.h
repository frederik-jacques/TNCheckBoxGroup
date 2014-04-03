//
//  TNSquareCheckBox.h
//  Flirty
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCheckBox.h"

@interface TNSquareCheckBox : TNCheckBox

+ (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked outerSquareSize:(CGSize)outerSquareSize outerSquareColor:(UIColor *)outerSquareColor innerSquareSize:(CGSize)innerSquareSize innerSquareColor:(UIColor *)innerSquareColor;

- (instancetype)initWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked outerSquareSize:(CGSize)outerSquareSize outerSquareColor:(UIColor *)outerSquareColor innerSquareSize:(CGSize)innerSquareSize innerSquareColor:(UIColor *)innerSquareColor;

@end
