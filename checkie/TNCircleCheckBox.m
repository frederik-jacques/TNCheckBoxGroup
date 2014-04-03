//
//  TNCircleCheckBox.m
//  Flirty
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCircleCheckBox.h"

@interface TNCircleCheckBox()

@property (nonatomic, strong) CAShapeLayer *outerCircle;
@property (nonatomic, strong) CAShapeLayer *innerCircle;

@end

@implementation TNCircleCheckBox

#pragma mark - Initializers
+ (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked outerRadius:(NSUInteger)outerRadius outerRadiusColor:(UIColor *)outerRadiusColor innerRadius:(NSUInteger)innerRadius innerRadiusColor:(UIColor *)innerRadiusColor {
    
    return [[self alloc] initWithLabel:label tag:tag checked:checked outerRadius:outerRadius outerRadiusColor:outerRadiusColor innerRadius:innerRadius innerRadiusColor:innerRadiusColor];
}

- (instancetype)initWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked outerRadius:(NSUInteger)outerRadius outerRadiusColor:(UIColor *)outerRadiusColor innerRadius:(NSUInteger)innerRadius innerRadiusColor:(UIColor *)innerRadiusColor {
    self.settings.outerRadius = outerRadius;
    self.settings.innerRadius = innerRadius;
    
    self.settings.outerColor = outerRadiusColor;
    self.settings.innerColor = innerRadiusColor;
    
    return [super initWithLabel:label tag:tag checked:checked];
}

#pragma mark - Setup
- (void)setup {
    [self createCheckbox];
    
    [super setup];
}

- (void)createCheckbox {
    self.checkBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.settings.outerRadius, self.settings.outerRadius)];
    
    UIBezierPath *outerPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.settings.outerRadius, self.settings.outerRadius)];
    
    UIBezierPath *innerPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.settings.innerRadius, self.settings.innerRadius)];
    
    self.outerCircle = [CAShapeLayer layer];
    self.outerCircle.path = outerPath.CGPath;
    self.outerCircle.frame = CGRectMake(0, 0, self.settings.outerRadius, self.settings.outerRadius);
    self.outerCircle.lineWidth = 2;
    self.outerCircle.strokeColor = self.settings.outerColor.CGColor;
    self.outerCircle.fillColor = [UIColor clearColor].CGColor;
    
    [self.checkBox.layer addSublayer:self.outerCircle];
    
    self.innerCircle = [CAShapeLayer layer];
    self.innerCircle.path = innerPath.CGPath;
    self.innerCircle.frame = CGRectMake((self.outerCircle.frame.size.width - self.settings.innerRadius) / 2, (self.outerCircle.frame.size.height - self.settings.innerRadius) / 2, self.settings.innerRadius, self.settings.innerRadius);
    self.innerCircle.lineWidth = 0;
    self.innerCircle.fillColor = self.settings.innerColor.CGColor;
    
    [self.checkBox.layer addSublayer:self.innerCircle];
    
    [self addSubview:self.checkBox];
}

#pragma mark - Animations
- (void)checkWithAnimation:(BOOL)animated {
    NSNumber *scaleValue = (self.checked) ? @1 : @0;
    
    if( animated ){
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        animation.toValue = scaleValue;
        animation.duration = 0.3f;
        
        [self.innerCircle addAnimation:animation forKey:@"scale"];
    }
    self.innerCircle.transform = CATransform3DMakeScale(scaleValue.floatValue, scaleValue.floatValue, 0);
    
}

@end
