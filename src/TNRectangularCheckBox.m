//
//  TNSquareCheckBox.m
//  TNCheckBox
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNRectangularCheckBox.h"

@interface TNRectangularCheckBox()

@property (nonatomic, strong) CAShapeLayer *border;
@property (nonatomic, strong) CAShapeLayer *rectangle;

@end

@implementation TNRectangularCheckBox

#pragma mark - Initializers

- (instancetype)initWithData:(TNRectangularCheckBoxData *)data {
    
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
    self.checkBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.data.borderWidth, self.data.borderHeight)];
    
    UIBezierPath *borderPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, self.data.borderWidth, self.data.borderHeight)];
    
    UIBezierPath *rectangularPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, self.data.rectangleWidth, self.data.rectangleHeight)];
    
    self.border = [CAShapeLayer layer];
    self.border.path = borderPath.CGPath;
    self.border.frame = CGRectMake(0, 0, self.data.borderWidth, self.data.borderHeight);
    self.border.lineWidth = 2;
    self.border.strokeColor = self.data.borderColor.CGColor;
    self.border.fillColor = [UIColor clearColor].CGColor;
    
    [self.checkBox.layer addSublayer:self.border];
    
    self.rectangle = [CAShapeLayer layer];
    self.rectangle.path = rectangularPath.CGPath;
    self.rectangle.frame = CGRectMake((self.border.frame.size.width - self.data.rectangleWidth) / 2, (self.border.frame.size.height - self.data.rectangleHeight) / 2, self.data.rectangleWidth, self.data.rectangleHeight);
    self.rectangle.lineWidth = 0;
    self.rectangle.fillColor = self.data.rectangleColor.CGColor;
    
    [self.checkBox.layer addSublayer:self.rectangle];
    
    [self addSubview:self.checkBox];
    
}

#pragma mark - Animations
- (void)checkWithAnimation:(BOOL)animated {
    NSNumber *scaleValue = (self.data.checked) ? @1 : @0;
    
    if( animated ){
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        animation.toValue = scaleValue;
        animation.duration = 0.3f;
        
        [self.rectangle addAnimation:animation forKey:@"scale"];
    }
    self.rectangle.transform = CATransform3DMakeScale(scaleValue.floatValue, scaleValue.floatValue, 0);
}

@end
