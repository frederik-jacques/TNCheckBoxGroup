//
//  TNSquareCheckBox.m
//  Flirty
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNSquareCheckBox.h"

@interface TNSquareCheckBox()

@property (nonatomic, strong) CAShapeLayer *outerSquare;
@property (nonatomic, strong) CAShapeLayer *innerSquare;

@end

@implementation TNSquareCheckBox

#pragma mark - Initializers
+ (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked outerSquareSize:(CGSize)outerSquareSize outerSquareColor:(UIColor *)outerSquareColor innerSquareSize:(CGSize)innerSquareSize innerSquareColor:(UIColor *)innerSquareColor {
    
    return [[self alloc] initWithLabel:label tag:tag checked:checked outerSquareSize:outerSquareSize outerSquareColor:outerSquareColor innerSquareSize:innerSquareSize innerSquareColor:innerSquareColor];
}

- (instancetype)initWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked outerSquareSize:(CGSize)outerSquareSize outerSquareColor:(UIColor *)outerSquareColor innerSquareSize:(CGSize)innerSquareSize innerSquareColor:(UIColor *)innerSquareColor {
    
    self.settings.outerSquareSize = outerSquareSize;
    self.settings.innerSquareSize = innerSquareSize;
    
    self.settings.outerColor = outerSquareColor;
    self.settings.innerColor = innerSquareColor;
    
    return [super initWithLabel:label tag:tag checked:checked];
}

#pragma mark - Setup
- (void)setup {
    [self createCheckbox];
    
    [super setup];
}

- (void)createCheckbox {
    self.checkBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.settings.outerSquareSize.width, self.settings.outerSquareSize.height)];
    
    UIBezierPath *outerPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, self.settings.outerSquareSize.width, self.settings.outerSquareSize.height)];
    
    UIBezierPath *innerPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, self.settings.innerSquareSize.width, self.settings.innerSquareSize.height)];
    
    self.outerSquare = [CAShapeLayer layer];
    self.outerSquare.path = outerPath.CGPath;
    self.outerSquare.frame = CGRectMake(0, 0, self.settings.outerSquareSize.width, self.settings.outerSquareSize.height);
    self.outerSquare.lineWidth = 2;
    self.outerSquare.strokeColor = self.settings.outerColor.CGColor;
    self.outerSquare.fillColor = [UIColor clearColor].CGColor;
    
    [self.checkBox.layer addSublayer:self.outerSquare];
    
    self.innerSquare = [CAShapeLayer layer];
    self.innerSquare.path = innerPath.CGPath;
    self.innerSquare.frame = CGRectMake((self.outerSquare.frame.size.width - self.settings.innerSquareSize.width) / 2, (self.outerSquare.frame.size.height - self.settings.innerSquareSize.height) / 2, self.settings.innerSquareSize.width, self.settings.innerSquareSize.height);
    self.innerSquare.lineWidth = 0;
    self.innerSquare.fillColor = self.settings.innerColor.CGColor;
    
    [self.checkBox.layer addSublayer:self.innerSquare];
    
    [self addSubview:self.checkBox];
}

#pragma mark - Animations
- (void)checkWithAnimation:(BOOL)animated {
    NSNumber *scaleValue = (self.checked) ? @1 : @0;
    
    if( animated ){
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        animation.toValue = scaleValue;
        animation.duration = 0.3f;
        
        [self.innerSquare addAnimation:animation forKey:@"scale"];
    }
    
    self.innerSquare.transform = CATransform3DMakeScale(scaleValue.floatValue, scaleValue.floatValue, 0);
}

@end
