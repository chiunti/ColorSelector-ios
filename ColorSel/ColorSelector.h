//
//  ViewController.h
//  ColorSel
//
//  Created by Chiunti on 19/01/15.
//  Copyright (c) 2015 Chiunti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorSelector : UIViewController

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblColor;

//Sliders
@property (strong, nonatomic) IBOutlet UISlider *sldRed;
@property (strong, nonatomic) IBOutlet UISlider *sldGreen;
@property (strong, nonatomic) IBOutlet UISlider *sldBlue;
@property (strong, nonatomic) IBOutlet UISlider *sldBlink;

//text
@property (strong, nonatomic) IBOutlet UITextField *txtRed;
@property (strong, nonatomic) IBOutlet UITextField *txtGreen;
@property (strong, nonatomic) IBOutlet UITextField *txtBlue;
@property (strong, nonatomic) IBOutlet UITextField *txtBlink;


- (IBAction)sldRedChanged:(id)sender;
- (IBAction)sldGreenChanged:(id)sender;
- (IBAction)sldBlueChanged:(id)sender;
- (IBAction)sldBlinkChanged:(id)sender;


@end

