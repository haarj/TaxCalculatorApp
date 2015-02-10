//
//  ViewController.m
//  Tax Calculator App
//
//  Created by Jamie Haar on 2/10/15.
//  Copyright (c) 2015 Justin Haar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = 0.075;
    self.chiTax = 0.0925;
    self.nyTax = 0.045;
}
- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *enteredText = self.priceTextField.text;
    double enteredValue = enteredText.intValue;

    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        double result = enteredValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else
    {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
