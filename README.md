Checkbox for Objective-C
=========================

U can use the TNCheckBox class to use some pre-built checkboxes, or you can extend it really easy to suit your own design.
Every checkbox has a checked animation.  When the text is longer then the available space, it will automatically wrap the text over multiple lines.

The current version supports 3 different checkboxes:

1. Circle checkbox

2. Square checkbox

3. Custom image checkbox

![Screenshot](http://cl.ly/Un9I/Screen%20Shot%202014-04-03%20at%2011.04.17.png)

Installation
=============

* Just drag the files in the checkie folder to your project.
* Import the checkbox class you want to use

How to use
==========

Import one of the checkbox classes
* ``` TNCircleCheckBox ``` 
* ``` TNSquareCheckBox ```
* ``` TNImageCheckbox ```

Initialize the class with its initializer and fill in all the arguments or use a config dictionary.

Set the delegate ``` TNCheckBoxDelegate ``` if you want to be notified when the checkbox is or will be selected.

Add it to the view. You can use the ``` position ``` property to easily position the view.

Done!

## TNCircleCheckBox
![Circle check box](http://cl.ly/image/2L1P092b0D1L/circle.png)

### Initializers

    + (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag settings:(NSDictionary *)settings;
    
### Arguments

Arguments  | What does it do
 ------------- | ------------- 
 label    | Set the text of the label
 tag    | Set the tag to identify the checkbox
 settings    | Set the color for the label

The dictionary can have the following keys.

Dictionary key constants  | What does it do
 ------------- | ------------- 
 kCheckBoxLabelFontSize    | Set the font size of the label    
 kCheckBoxLabelFont    | Set the font for the label
 kCheckBoxLabelColor    | Set the color for the label
 kCheckBoxInnerColor    | Set the color of the inner circle
 kCheckBoxOuterColor    | Set the color of the outer circle
 kCheckBoxInnerRadius    | Set the radius of the inner circle
 kCheckBoxOuterRadius    | Set the radius of the outer circle
  kCheckBoxMarginBetweenCheckBoxAndLabel    | Set the distance between the checkbox and the label
kCheckBoxMaximumWidthOfLabel    | Set the distance between the maximum width of the label
 
Or you can use the following static method.

    + (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked outerRadius:(NSUInteger)outerRadius outerRadiusColor:(UIColor *)outerRadiusColor innerRadius:(NSUInteger)innerRadius innerRadiusColor:(UIColor *)innerRadiusColor

### Arguments

Argument  | What does it do
 ------------- | ------------- 
 label    | Set the text label    
 tag    | Identify the checkbox
 checked    | State of the checkbox at creation
 outerRadius    | The radius of the outer circle
 outerRadiusColor    | The color of the outer circle
 innerRadius    | The radius of the inner circle
 innerRadiusColor    | The color of the inner circle
 
Or you can use a settings dictionary to initialize the class.

## TNSquareCheckBox
![Square check box](http://cl.ly/image/0M063l1A1N1e/square.png)

### Initializers

    + (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag settings:(NSDictionary *)settings;
    
### Arguments

Arguments  | What does it do
 ------------- | ------------- 
 label    | Set the text of the label
 tag    | Set the tag to identify the checkbox
 settings    | Set the color for the label

The dictionary can have the following keys.

Dictionary key constants  | What does it do
 ------------- | ------------- 
 kCheckBoxLabelFontSize    | Set the font size of the label    
 kCheckBoxLabelFont    | Set the font for the label
 kCheckBoxLabelColor    | Set the color for the label
 kCheckBoxInnerColor    | Set the color of the inner square
 kCheckBoxOuterColor    | Set the color of the outer square
 kCheckBoxInnerSquareSize    | Set the size of the inner square
 kCheckBoxOuterSquareSize    | Set the size of the outer square
  kCheckBoxMarginBetweenCheckBoxAndLabel    | Set the distance between the checkbox and the label
kCheckBoxMaximumWidthOfLabel    | Set the distance between the maximum width of the label
 
Or you can use the following static method.

    + (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked outerSquareSize:(CGSize)outerSquareSize outerSquareColor:(UIColor *)outerSquareColor innerSquareSize:(CGSize)innerSquareSize innerSquareColor:(UIColor *)innerSquareColor

### Arguments

Argument  | What does it do
 ------------- | ------------- 
 label    | Set the text label    
 tag    | Identify the checkbox
 checked    | State of the checkbox at creation
 outerSquareSize    | The size of the outer square
 outerSquareColor    | The color of the outer square
 innerSquareSize    | The size of the inner square
 innerSquareColor    | The color of the inner square
 
Or you can use a settings dictionary to initialize the class.

## TNImageCheckbox
![Custom image check box](http://cl.ly/image/0V1K0N363A0n/custom_image.png)
### Initializers

    + (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag settings:(NSDictionary *)settings;
    
### Arguments

Arguments  | What does it do
 ------------- | ------------- 
 label    | Set the text of the label
 tag    | Set the tag to identify the checkbox
 settings    | Set the color for the label

The dictionary can have the following keys.

Dictionary key constants  | What does it do
 ------------- | ------------- 
 kCheckBoxLabelFontSize    | Set the font size of the label    
 kCheckBoxLabelFont    | Set the font for the label
 kCheckBoxLabelColor    | Set the color for the label
 kCheckBoxUncheckedImage    | Set the image for the unselected state
 kCheckBoxCheckedImage    | Set the image for the selected state
  kCheckBoxMarginBetweenCheckBoxAndLabel    | Set the distance between the checkbox and the label
kCheckBoxMaximumWidthOfLabel    | Set the distance between the maximum width of the label
 
Or you can use the following static method.

    + (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag checked:(BOOL)checked uncheckedImage:(UIImage *)uncheckedImage checkedImage:(UIImage *)checkedImage

### Arguments

Argument  | What does it do
 ------------- | ------------- 
 label    | Set the text label    
 tag    | Identify the checkbox
 checked    | State of the checkbox at creation
 uncheckedImage    | The image for the unselected state
 checkedImage    | The image for the selected state
 
## TNCheckBoxDelegate
There are two delegate methods you can implement to be notified when the state of the checkbox has been changed.  Using the tag property, you can identify which checkbox has been changed.

1. ``` - (void)checkBox:(TNCheckBox *)checkBox willBeChecked:(BOOL)checked ```

2. ``` - (void)checkBox:(TNCheckBox *)checkBox didCheck:(BOOL)checked ```

Rolling out a custom checkbox
=============================

Rolling out a custom checkbox is really simple. 

1. Create a new class and inherit from the TNCheckBox class.

2. Create your custom initializer.

3. Implement the ``` setup ``` method defined in TNCheckBoxProtocol.

4. Implement the ``` createCheckbox ``` method defined in TNCheckBoxProtocol.  Call this method in the ``` setup ``` method.  In this method you draw your custom checkbox.

5. At the end of the ``` setup ``` method call the ``` setup ``` method of the super class.

6. Implement the ``` checkWithAnimation:(BOOL)animated ``` method defined in TNCheckBoxProtocol.  In this method you define your custom animation to be executed when the checkbox is tapped

# Demo
There is a demo project added to this repository, so you can see how it works.

# License
TNCheckBox published under the MIT license:

Copyright (C) 2014, Frederik Jacques

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 