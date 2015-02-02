//
//  ViewController.m
//  ColorSel
//
//  Created by Chiunti on 19/01/15.
//  Copyright (c) 2015 Chiunti. All rights reserved.
//

#import "ColorSelector.h"

NSTimer *myTimer;

@interface ColorSelector ()

@end

@implementation ColorSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)UpdateColor{
    self.lblColor.backgroundColor = [UIColor colorWithRed:self.sldRed.value/255 green:self.sldGreen.value/255 blue:self.sldBlue.value/255 alpha:1];
}
- (void)Blink{
    self.lblColor.alpha = self.lblColor.alpha ? 0 : 1;
}

- (IBAction)sldRedChanged:(id)sender {
    self.txtRed.text = [NSString stringWithFormat:@"%.f", self.sldRed.value];
    [self UpdateColor];
}

- (IBAction)sldGreenChanged:(id)sender {
    self.txtGreen.text = [NSString stringWithFormat:@"%.f", self.sldGreen.value];
    [self UpdateColor];
}

- (IBAction)sldBlueChanged:(id)sender {
    self.txtBlue.text = [NSString stringWithFormat:@"%.f", self.sldBlue.value];
    [self UpdateColor];
}

- (IBAction)sldBlinkChanged:(id)sender {
    self.sldBlink.value = round(self.sldBlink.value);
    self.txtBlink.text = [NSString stringWithFormat:@"%.f", self.sldBlink.value];
    self.lblColor.alpha = 1;
    [myTimer invalidate];
    if (self.sldBlink.value){
        myTimer = [NSTimer scheduledTimerWithTimeInterval:/*(0.5/*/(self.sldBlink.value) target:self selector:@selector(Blink) userInfo:nil repeats:YES];
        
    }
        
}
@end
