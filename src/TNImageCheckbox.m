//
//  TNImageCheckbox.m
//  TNCheckBox
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

- (instancetype)initWithData:(TNImageCheckBoxData *)data {
    
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
    self.checkBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.data.uncheckedImage.size.width, self.data.uncheckedImage.size.height)];
    
    self.imageView = [[UIImageView alloc] initWithImage:self.data.uncheckedImage];
    [self.checkBox addSubview:self.imageView];
    
    [self addSubview:self.checkBox];
    
}

#pragma mark - Animations
- (void)checkWithAnimation:(BOOL)animated {
    
    self.imageView.image = ( self.data.checked ) ? self.data.checkedImage : self.data.uncheckedImage;
    
}

@end
