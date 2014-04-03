//
//  TNCheckBoxSettings.m
//  Flirty
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCheckBoxSettings.h"

@implementation TNCheckBoxSettings

NSString *const kCheckBoxChecked = @"checkBoxChecked";

NSString *const kCheckBoxLabelFontSize = @"checkBoxLabelFontSize";
NSString *const kCheckBoxLabelFont = @"checkBoxLabelFont";
NSString *const kCheckBoxLabelColor = @"checkBoxLabelColor";

NSString *const kCheckBoxInnerColor = @"checkBoxInnerColor";
NSString *const kCheckBoxOuterColor = @"checkBoxOuterColor";

NSString *const kCheckBoxInnerRadius = @"checkBoxInnerRadius";
NSString *const kCheckBoxOuterRadius = @"checkBoxOuterRadius";

NSString *const kCheckBoxInnerSquareSize = @"checkBoxInnerSquareSize";
NSString *const kCheckBoxOuterSquareSize = @"checkBoxOuterSquareSize";

NSString *const kCheckBoxUncheckedImage = @"checkBoxUncheckedImage";
NSString *const kCheckBoxCheckedImage = @"checkBoxCheckedImage";

NSString *const kCheckBoxMarginBetweenCheckBoxAndLabel = @"checkBoxMarginBetweenCheckBoxAndLabel";
NSString *const kCheckBoxMaximumWidthOfLabel = @"checkBoxMaximumWidthOfLabel";


+ (instancetype)settingsWithDictionary:(NSDictionary *)dictionary {
 
    return [[self alloc] initWithDictionary:dictionary];
    
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    
    if (self) {
        
        if ([dictionary objectForKey:kCheckBoxChecked]) {
            
            self.checked = [[dictionary objectForKey:kCheckBoxChecked] boolValue];
            NSLog(@"[TNCheckBoxSettings] Found check box check key - %hhd", self.checked);
        }else{
            self.checked = NO;
        }
        
        if ([dictionary objectForKey:kCheckBoxLabelFontSize]) {
            self.labelFontSize = [[dictionary objectForKey:kCheckBoxLabelFontSize] integerValue];
        }else{
            self.labelFontSize = 14;
        }
        
        if ([dictionary objectForKey:kCheckBoxLabelFont]) {
            self.labelFont = [dictionary objectForKey:kCheckBoxLabelFont];
        }else{
            self.labelFont = [UIFont systemFontOfSize:self.labelFontSize];
        }
        
        if ([dictionary objectForKey:kCheckBoxLabelColor]) {
            self.labelColor = [dictionary objectForKey:kCheckBoxLabelColor];
        }else{
            self.labelColor = [UIColor blackColor];
        }
        
        if ([dictionary objectForKey:kCheckBoxInnerColor]) {
            self.innerColor = [dictionary objectForKey:kCheckBoxInnerColor];
        }else{
            self.innerColor = [UIColor blackColor];
        }
        
        if ([dictionary objectForKey:kCheckBoxOuterColor]) {
            self.outerColor = [dictionary objectForKey:kCheckBoxOuterColor];
        }else{
            self.outerColor = [UIColor blackColor];
        }
        
        if ([dictionary objectForKey:kCheckBoxInnerRadius]) {
            self.innerRadius = [[dictionary objectForKey:kCheckBoxInnerRadius] integerValue];
        }else{
            self.innerRadius = 20;
        }
        
        if ([dictionary objectForKey:kCheckBoxOuterRadius]) {
            self.outerRadius = [[dictionary objectForKey:kCheckBoxOuterRadius] integerValue];
        }else{
            self.outerRadius = 10;
        }
        
        if ([dictionary objectForKey:kCheckBoxInnerSquareSize]) {
    
            NSValue *value = [dictionary objectForKey:kCheckBoxInnerSquareSize];
            self.innerSquareSize =  [value CGSizeValue];
            
        }else{
            self.innerSquareSize = CGSizeMake(20, 20);
        }
        
        if ([dictionary objectForKey:kCheckBoxOuterSquareSize]) {
            NSValue *value = [dictionary objectForKey:kCheckBoxOuterSquareSize];
            self.outerSquareSize =  [value CGSizeValue];
        }else{
            self.outerSquareSize = CGSizeMake(10, 10);
        }
        
        if ([dictionary objectForKey:kCheckBoxMarginBetweenCheckBoxAndLabel]) {
            self.marginBetweenCheckBoxAndLabel = [[dictionary objectForKey:kCheckBoxMarginBetweenCheckBoxAndLabel] integerValue];
        }else{
            self.marginBetweenCheckBoxAndLabel = 15;
        }
        
        if ([dictionary objectForKey:kCheckBoxUncheckedImage]) {
            self.uncheckedImage = [dictionary objectForKey:kCheckBoxUncheckedImage];
        }else{
            self.uncheckedImage = nil;
        }
        
        if ([dictionary objectForKey:kCheckBoxCheckedImage]) {
            self.checkedImage = [dictionary objectForKey:kCheckBoxCheckedImage];
        }else{
            self.checkedImage = nil;
        }
        
        if ([dictionary objectForKey:kCheckBoxMaximumWidthOfLabel]) {
            self.maximumWidthOfLabel = [[dictionary objectForKey:kCheckBoxMaximumWidthOfLabel] integerValue];
        }else{
            self.maximumWidthOfLabel = 100;
        }
        
    }
    
    return self;
    
}

@end
