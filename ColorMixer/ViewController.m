//
//  ViewController.m
//  ColorMixer
//
//  Created by Thomas on 2016-01-28.
//  Copyright © 2016 Thomas Månsson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISlider *redSlider;

@property (weak, nonatomic) IBOutlet UISlider *greenSlider;

@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

@property (weak, nonatomic) IBOutlet UIView *colorResult;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.colorResult.backgroundColor = [self mixedColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIColor*)mixedColor {
    return [UIColor colorWithRed:self.redSlider.value
                           green:self.greenSlider.value
                            blue:self.blueSlider.value
                           alpha:1.0F];
}

- (IBAction)sliderChanged:(UISlider *)sender {
   // NSLog(@"slider changed");
    self.colorResult.backgroundColor = [self mixedColor];
    
}
- (IBAction)resetColor:(UIButton *)sender {
    self.redSlider.value = 0.5;
    self.greenSlider.value = 0.5;
    self.blueSlider.value = 0.5;
    self.colorResult.backgroundColor = [self mixedColor];
}
- (IBAction)randomColor:(UIButton *)sender {
    self.redSlider.value = (float)arc4random()/0x100000000;
    self.greenSlider.value = (float)arc4random()/0x100000000;
    self.blueSlider.value = (float)arc4random()/0x100000000;
    self.colorResult.backgroundColor = [self mixedColor];
}

@end
