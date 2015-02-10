//
//  MainView.m
//  TNCheckBoxDemo
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "MainView.h"

@implementation MainView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        

        self.background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background"]];
        [self addSubview:self.background];
        
        [self createFruitsGroup];
        [self createSportsGroup];
        [self createLoveGroup];
        [self createNoGroup];
    }
    
    return self;
}

- (void)createFruitsGroup {
    TNCircularCheckBoxData *bananaData = [[TNCircularCheckBoxData alloc] init];
    bananaData.identifier = @"banana";
    bananaData.labelText = @"Banana";
    bananaData.checked = YES;
    bananaData.borderColor = [UIColor blackColor];
    bananaData.circleColor = [UIColor blackColor];
    bananaData.borderRadius = 20;
    bananaData.circleRadius = 15;
    
    TNCircularCheckBoxData *strawberryData = [[TNCircularCheckBoxData alloc] init];
    strawberryData.identifier = @"apple";
    strawberryData.checked = YES;
    strawberryData.labelText = @"Apple";
    strawberryData.borderColor = [UIColor blackColor];
    strawberryData.circleColor = [UIColor blackColor];
    strawberryData.borderRadius = 20;
    strawberryData.circleRadius = 15;
    
    TNCircularCheckBoxData *cherryData = [[TNCircularCheckBoxData alloc] init];
    cherryData.identifier = @"cherry";
    cherryData.labelText = @"Cherry";
    cherryData.borderColor = [UIColor blackColor];
    cherryData.circleColor = [UIColor blackColor];
    cherryData.borderRadius = 20;
    cherryData.circleRadius = 15;

    TNCircularCheckBoxData *orangeData = [[TNCircularCheckBoxData alloc] init];
    orangeData.identifier = @"orange";
    orangeData.labelText = @"Orange";
    orangeData.borderColor = [UIColor blackColor];
    orangeData.circleColor = [UIColor blackColor];
    orangeData.borderRadius = 20;
    orangeData.circleRadius = 15;
    
    self.fruitGroup = [[TNCheckBoxGroup alloc] initWithCheckBoxData:@[bananaData, strawberryData, cherryData, orangeData] style:TNCheckBoxLayoutHorizontal];
    self.fruitGroup.rowItemCount = 2;
    [self.fruitGroup create];
    self.fruitGroup.position = CGPointMake(25, 170);
    
    [self addSubview:self.fruitGroup];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fruitGroupChanged:) name:GROUP_CHANGED object:self.fruitGroup];
}

- (void)createSportsGroup {
    
    TNRectangularCheckBoxData *tennisData = [[TNRectangularCheckBoxData alloc] init];
    tennisData.identifier = @"tennis";
    tennisData.labelText = @"Tennis";
    tennisData.borderColor = [UIColor grayColor];
    tennisData.rectangleColor = [UIColor grayColor];
    tennisData.borderWidth = tennisData.borderHeight = 20;
    tennisData.rectangleWidth = tennisData.rectangleHeight = 15;
    
    TNRectangularCheckBoxData *soccerData = [[TNRectangularCheckBoxData alloc] init];
    soccerData.identifier = @"soccer";
    soccerData.labelText = @"Soccer";
    soccerData.checked = YES;
    soccerData.borderColor = [UIColor grayColor];
    soccerData.rectangleColor = [UIColor grayColor];
    soccerData.borderWidth = soccerData.borderHeight = 20;
    soccerData.rectangleWidth = soccerData.rectangleHeight = 15;
    
    self.sportsGroup = [[TNCheckBoxGroup alloc] initWithCheckBoxData:@[tennisData, soccerData] style:TNCheckBoxLayoutHorizontal];
    [self.sportsGroup create];
    self.sportsGroup.position = CGPointMake(25, 300);

    [self addSubview:self.sportsGroup];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sportsGroupChanged:) name:GROUP_CHANGED object:self.sportsGroup];
    
}

- (void)createLoveGroup {
    
    TNImageCheckBoxData *manData = [[TNImageCheckBoxData alloc] init];
    manData.identifier = @"man";
    manData.labelText = @"Man";
    manData.checkedImage = [UIImage imageNamed:@"checked"];
    manData.uncheckedImage = [UIImage imageNamed:@"unchecked"];
    
    TNImageCheckBoxData *womanData = [[TNImageCheckBoxData alloc] init];
    womanData.identifier = @"woman";
    womanData.labelText = @"Woman";
    womanData.checked = YES;
    womanData.checkedImage = [UIImage imageNamed:@"checked"];
    womanData.uncheckedImage = [UIImage imageNamed:@"unchecked"];
    
    self.loveGroup = [[TNCheckBoxGroup alloc] initWithCheckBoxData:@[manData, womanData] style:TNCheckBoxLayoutVertical];
    [self.loveGroup create];
    self.loveGroup.position = CGPointMake(25, 410);
    
    [self addSubview:self.loveGroup];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loveGroupChanged:) name:GROUP_CHANGED object:self.loveGroup];
}

- (void)createNoGroup {
    TNFillCheckBoxData *firstData = [TNFillCheckBoxData new];
    firstData.labelText = @"First";
    firstData.identifier = @"First";
    firstData.checked = NO;
    firstData.labelBgNormalColor = [UIColor grayColor];
    firstData.labelBgSelectedColor = [UIColor redColor];
    firstData.labelMarginLeft = -1;
    firstData.labelWidth = 60.0f;
    firstData.labelHeight = 30.0f;
    firstData.labelBorderWidth = 1.0;
    firstData.labelBorderColor = [UIColor brownColor].CGColor;
    firstData.labelBorderCornerRadius = 5.0;

    TNFillCheckBoxData *secondData = [TNFillCheckBoxData new];
    secondData.labelText = @"Second";
    secondData.identifier = @"Second";
    secondData.checked = NO;
    secondData.labelBgNormalColor = [UIColor grayColor];
    secondData.labelBgSelectedColor = [UIColor redColor];
    secondData.labelMarginLeft = -1;
    secondData.labelWidth = 60.0f;
    secondData.labelHeight = 30.0f;


    self.noGroup = [[TNCheckBoxGroup alloc] initWithCheckBoxData:@[firstData, secondData] style:TNCheckBoxLayoutHorizontal];
    self.noGroup.identifier = @"No Group";
    [self.noGroup create];
    self.noGroup.position = CGPointMake(0, 500);

    [self addSubview:self.noGroup];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noGroupChanged:) name:GROUP_CHANGED object:self.noGroup];
}

- (void)fruitGroupChanged:(NSNotification *)notification {
    
    NSLog(@"Checked checkboxes %@", self.fruitGroup.checkedCheckBoxes);
    NSLog(@"Unchecked checkboxes %@", self.fruitGroup.uncheckedCheckBoxes);
    
}

- (void)sportsGroupChanged:(NSNotification *)notification {
    
    NSLog(@"Checked checkboxes %@", self.sportsGroup.checkedCheckBoxes);
    NSLog(@"Unchecked checkboxes %@", self.sportsGroup.uncheckedCheckBoxes);
    
}

- (void)loveGroupChanged:(NSNotification *)notification {
    
    NSLog(@"Checked checkboxes %@", self.loveGroup.checkedCheckBoxes);
    NSLog(@"Unchecked checkboxes %@", self.loveGroup.uncheckedCheckBoxes);
    
}

- (void)noGroupChanged:(NSNotification *)notification {

    NSLog(@"Checked checkboxes %@", self.noGroup.checkedCheckBoxes);
    NSLog(@"Unchecked checkboxes %@", self.noGroup.uncheckedCheckBoxes);

}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:GROUP_CHANGED object:self.fruitGroup];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:GROUP_CHANGED object:self.sportsGroup];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:GROUP_CHANGED object:self.loveGroup];

    [[NSNotificationCenter defaultCenter] removeObserver:self name:GROUP_CHANGED object:self.noGroup];
}

@end
