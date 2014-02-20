//
//  ViewController.m
//  Anton
//
//  Created by Master-Student on 31.10.13.
//  Copyright (c) 2013 Master-Student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize number1, number2;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)digitPressed:(UIButton *)sender {
    NSString *digit = [sender currentTitle];
    NSLog(@"Gedrückt: %@", digit);
    _Display.text = [_Display.text stringByAppendingString:digit];
    
}
- (IBAction)EnterTaste:(UIButton *)sender {
    if (number1 == 0) {
    number1 = [_Display.text intValue];
    //NSLog(@"Nummer 1: %d", number1);
    _Display.text = @"";
    }
    else {
    number2 = [_Display.text intValue];
    //NSLog(@"Nummer 2: %d", number2);
    _Display.text = @"";
    }
    
}
- (IBAction)result:(UIButton *)sender {
    NSString *operator = [sender currentTitle];
    
    if ([operator isEqual: @"+"]) {
    _Display.text = [NSString stringWithFormat:@"%d", (number1 + number2)];
    
    }
    if ([operator isEqual: @"-"]) {
    _Display.text = [NSString stringWithFormat:@"%d", (number1 - number2)];
    }
    if ([operator isEqual: @"/"]) {
    _Display.text = [NSString stringWithFormat:@"%d", (number1 / number2)];
    }
    if ([operator isEqual: @"*"]) {
    _Display.text = [NSString stringWithFormat:@"%d", (number1 *number2)];
    }
    
    number1 = [_Display.text intValue];
    //NSLog(@"Nummer 1: %d", number1);
    

}

@end
