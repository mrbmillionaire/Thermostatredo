//
//  ViewController.m
//  Thermostatredo
//
//  Created by Bryan  Miller on 6/22/16.
//  Copyright © 2016 TheIronYard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(IBAction)sliderValueChange:(id)sender {
    NSLog(@"sliderbeingcalled");
    
    float a = self.slider.value;
    NSLog (@"thisisthevalueofslider %f",a);
    
    
    self.ThermostatLabel.text= [NSString stringWithFormat:@"%.0f",a];
}

-(IBAction) segmentedControlIndexChanged
{
    switch (self.CandF.selectedSegmentIndex)
    {
        case 0:
            self.slider.value = ((self.slider.value -32)/1.8);
            break;
        case 1:
            self.slider.value = ((self.slider.value *1.8)+32);
            break;
        default:
            break;
            
    }
    
    NSLog(@"sliderbeingcalled");
    
    float a = self.slider.value;
    NSLog (@"thisisthevalueofslider %f",a);
    
    
    self.ThermostatLabel.text= [NSString stringWithFormat:@"%.0f",a];
}





@end
