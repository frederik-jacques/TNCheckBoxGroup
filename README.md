Custom checkboxes for Objective-C
=========================

U can use the TNCheckBoxGroup class to use some pre-built checkboxes, or you can extend it really easy to suit your own design.
Every checkbox has a selected animation.  When the text is longer then the available space, it will automatically wrap the text over multiple lines.

The current version supports 3 different checkboxes:

1. Circle checkbox

2. Square checkbox

3. Custom image checkbox

![Screenshot](http://cl.ly/VB8f/tncheckboxgroup.png)

Installation
=============

##Manual
* Just drag the files in the src folder to your project.
* Import the checkbox class you want to use.

##Cocoapods
* Add ``` pod 'TNCheckBoxGroup' ``` to your Podfile.
* Done.

How to use
==========

Import the ```TNCheckBoxGroup.h``` file.

Create data objects for every option in your checkbox group.  You can use the following data objects: ```TNCircularCheckBoxData```, ```TNRectangularCheckBoxData```, ```TNImageCheckBoxData```.

Every data object extends ```TNCheckBoxData```, but has specific properties you can set.

You can set the following properties on every data object:

Property  | What does it do
 ------------- | ------------- 
 identifier    | Set a human readeble name for the checkbox
 labelText    | Set the text for the label
 checked    | Set the checked state
 labelFont    | Set the font for the label
 labelColor    | Set the color for the label

The different classes have the following extra properties:

### TNCircularCheckBoxData

Arguments  | What does it do
 ------------- | ------------- 
 borderColor    | Set the border color for the outer circle
 circleColor    | Set the color for the inner circle
 borderRadius    | Set the radius for the outer circle
 circleRadius    | Set the color for the inner circle

Example
 
    TNCircularCheckBoxData *bananaData = [[TNCircularCheckBoxData alloc] init];
    bananaData.identifier = @"banana";
    bananaData.labelText = @"Banana";
    bananaData.checked = YES;
    bananaData.borderColor = [UIColor blackColor];
    bananaData.circleColor = [UIColor blackColor];
    bananaData.borderRadius = 20;
    bananaData.circleRadius = 15;
 
### TNRectangularCheckBoxData

Arguments  | What does it do
 ------------- | ------------- 
 borderColor    | Set the border color for the outer rectangle
 rectangleColor    | Set the color for the inner rectangle
 borderWidth    | Set the width for the outer rectangle
 borderHeight    | Set the height for the outer rectangle
 rectangleWidth    | Set the width for the inner rectangle
 rectangleHeight    | Set the height for the inner rectangle
 
Example

    TNRectangularCheckBoxData *tennisData = [[TNRectangularCheckBoxData alloc] init];
    tennisData.identifier = @"tennis";
    tennisData.labelText = @"Tennis";
    tennisData.borderColor = [UIColor grayColor];
    tennisData.rectangleColor = [UIColor grayColor];
    tennisData.borderWidth = tennisData.borderHeight = 20;
    tennisData.rectangleWidth = tennisData.rectangleHeight = 15;

### TNImageCheckBoxData

Arguments  | What does it do
 ------------- | ------------- 
 selectedImage    | Set the image for the selected state
 unselectedImage    | Set the image for the unselected state
 
Example 

    TNImageCheckBoxData *manData = [[TNImageCheckBoxData alloc] init];
    manData.identifier = @"man";
    manData.labelText = @"Man";
    manData.checkedImage = [UIImage imageNamed:@"checked"];
    manData.uncheckedImage = [UIImage imageNamed:@"unchecked"];

When you have created the different data objects, you can create an instance of ```TNCheckBoxGroup``` and pass an array with the data objects and set the layout. The style can be horizontal or vertical.

You can also set the margin between each item via the ``` marginBetweenItems ``` property. By default it's set to 15 pixels.

If you want, you can also set the ``` identifier``` property to have a human readable name for the group.

Call the ```create``` method and set the ```position``` property to place the group at a specific point.  Don't worry about the frame, this will be automatically calculated.
And add the object to the view hierarchy.

    self.myGroup = [[TNCheckBoxGroup alloc] initWithCheckBoxData:@[manData, womanData] style:TNCheckBoxLayoutVertical];
    [self.myGroup create];
    self.myGroup.position = CGPointMake(25, 25);
    
    [self addSubview:self.myGroup];

Done!

## Getting change notifications
When the state of the checkbox group has changed, an _NSNotification_ is broadcasted.

You can listen to the ``` GROUP_CHANGED ``` message.

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(myGroupGotUpdated:) name:GROUP_CHANGED object:self.myGroup];
    
## Getting list of checked checkboxes
Every TNCheckBoxGroup instance has a property ``` checkedCheckBoxes ```, this will return an array with all checked checkboxes.

## Getting list of unchecked checkboxes
Every TNCheckBoxGroup instance has a property ``` uncheckedCheckBoxes ```, this will return an array with all unchecked checkboxes.

## Styling checkboxes
### Group-level
If you want to provide the same label font and color for all checkboxes in a specific group, you can set the ``` labelFont ``` and ```labelColor ``` properties.

### Checkbox-level
If you want to provide different label fonts and/or colors for specific checkboxes in a group, you can set the ``` labelFont ``` and ``` labelColor ``` properties on the TNCheckBox subclass.

Creating custom checkboxes
===========================
If you want it is really easy to add your own custom checkboxes.

1. Create a data model class in which you store the specific data for your checkbox. This class needs to extend ``` TNCheckBoxData ```.

2. Create a checkbox class which extends ``` TNCheckBox ```.

3. Override the ``` setup ``` method (don't forget to call the super method at the end).

4. Override the ``` createCheckbox ``` method, here you can draw your custom checkbox.

5. Override the ``` checkWithAnimation: ``` method to supply your own animations when the checkbox state changes.

6. There is no step 6.

Demo
====
There is a demo project added to this repository, so you can see how it works.

License
=======
TNCheckBoxGroup published under the MIT license:

Copyright (C) 2014, Frederik Jacques

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 