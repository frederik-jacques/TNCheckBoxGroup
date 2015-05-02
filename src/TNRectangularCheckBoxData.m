//
//  TNRectangularCheckBoxData.m
//  TNCheckBoxDemo
//
//  Created by Frederik Jacques on 24/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNRectangularCheckBoxData.h"

@implementation TNRectangularCheckBoxData

#pragma mark - Copying
- (id)copyWithZone:(NSZone *)zone
{
    TNRectangularCheckBoxData *copy = [super copyWithZone:zone];
    
    if (copy) {
        copy.borderColor = self.borderColor;
        copy.rectangleColor = self.rectangleColor;
        
        copy.borderWidth = self.borderWidth;
        copy.borderHeight = self.borderHeight;
        copy.rectangleWidth = self.rectangleWidth;
        copy.rectangleHeight = self.rectangleHeight;
    }
    
    return copy;
}

#pragma mark - Getters and setters
- (UIColor *)borderColor {
    
    if( !_borderColor ){
        _borderColor = [UIColor blackColor];
    }
    
    return _borderColor;
}

- (UIColor *)rectangleColor {
    
    if( !_rectangleColor ){
        _rectangleColor = [UIColor blackColor];
    }
    
    return _rectangleColor;
}

- (NSInteger)borderWidth {
    
    if( !_borderWidth ){
        _borderWidth = 12;
    }
    
    return _borderWidth;
}

- (NSInteger)borderHeight {
    
    if( !_borderHeight ){
        _borderHeight = 12;
    }
    
    return _borderHeight;
}

- (NSInteger)rectangleWidth {
    
    if( !_rectangleWidth ){
        _rectangleWidth = 6;
    }
    
    return _rectangleWidth;
}

- (NSInteger)rectangleHeight {
    
    if( !_rectangleHeight ){
        _rectangleHeight = 6;
    }
    
    return _rectangleHeight;
}

@end
