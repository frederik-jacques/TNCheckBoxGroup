//
//  TNImageCheckbox.m
//  Flirty
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNImageCheckbox.h"

@interface TNImageCheckbox()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation TNImageCheckbox

#pragma mark - Initializers
+ (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked uncheckedImage:(UIImage *)uncheckedImage checkedImage:(UIImage *)checkedImage {
    
    return [[self alloc] initWithLabel:label tag:tag checked:checked uncheckedImage:uncheckedImage checkedImage:checkedImage];
}

- (instancetype)initWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked uncheckedImage:(UIImage *)uncheckedImage checkedImage:(UIImage *)checkedImage {
    
    self.settings.uncheckedImage = uncheckedImage;
    self.settings.checkedImage = checkedImage;
    
    return [super initWithLabel:label tag:tag checked:checked];
}

#pragma mark - Setup
- (void)setup {
    [self createCheckbox];
    
    [super setup];
}

- (void)createCheckbox {
    
    self.checkBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.settings.uncheckedImage.size.width, self.settings.uncheckedImage.size.height)];
    
    self.imageView = [[UIImageView alloc] initWithImage:self.settings.uncheckedImage];
    [self.checkBox addSubview:self.imageView];
    
    [self addSubview:self.checkBox];
}

#pragma mark - Animations
- (void)checkWithAnimation:(BOOL)animated {
    
    self.imageView.image = ( self.checked ) ? self.settings.checkedImage : self.settings.uncheckedImage;
    
}

@end
