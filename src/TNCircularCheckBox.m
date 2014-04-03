//
//  TNCircleCheckBox.m
//  TNCheckBox
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCircularCheckBox.h"

@interface TNCircularCheckBox()

@property (nonatomic, strong) CAShapeLayer *border;
@property (nonatomic, strong) CAShapeLayer *circle;

@end

@implementation TNCircularCheckBox


#pragma mark - Initializers

- (instancetype)initWithData:(TNCircularCheckBoxData *)data {
    
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

- (void)createCheckbox {
    self.checkBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.data.borderRadius, self.data.borderRadius)];
    
    UIBezierPath *borderPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.data.borderRadius, self.data.borderRadius)];
    
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.data.circleRadius, self.data.circleRadius)];
    
    self.border = [CAShapeLayer layer];
    self.border.path = borderPath.CGPath;
    self.border.frame = CGRectMake(0, 0, self.data.borderRadius, self.data.borderRadius);
    self.border.lineWidth = 2;
    self.border.strokeColor = self.data.borderColor.CGColor;
    self.border.fillColor = [UIColor clearColor].CGColor;
    
    [self.checkBox.layer addSublayer:self.border];
    
    self.circle = [CAShapeLayer layer];
    self.circle.path = circlePath.CGPath;
    self.circle.frame = CGRectMake((self.border.frame.size.width - self.data.circleRadius) / 2, (self.border.frame.size.height - self.data.circleRadius) / 2, self.data.circleRadius, self.data.circleRadius);
    self.circle.lineWidth = 0;
    self.circle.fillColor = self.data.circleColor.CGColor;
    
    [self.checkBox.layer addSublayer:self.circle];
    
    [self addSubview:self.checkBox];
    
}

#pragma mark - Animations
- (void)checkWithAnimation:(BOOL)animated {
    NSNumber *scaleValue = (self.data.checked) ? @1 : @0;
    
    if( animated ){
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        animation.toValue = scaleValue;
        animation.duration = 0.3f;
        
        [self.circle addAnimation:animation forKey:@"scale"];
    }
    self.circle.transform = CATransform3DMakeScale(scaleValue.floatValue, scaleValue.floatValue, 0);
}

@end
