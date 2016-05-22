//
//  ViewController.m
//  Tax Calc 2
//
//  Created by MIke Nancett on 5/22/16.
//  Copyright © 2016 MIke Nancett. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)onCalculateButtonTapped:(id)sender;
@property double sfTax;
@property double chiTax;
@property double nycTax;
@property double total;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sfTax = 0.0875;
    self.chiTax= 0.1025;
    self.nycTax = 0.08875;
    
}



- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *priceFromUser = self.priceTextField.text;
    int enteredValue = priceFromUser.intValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0){
        double result = enteredValue * self.sfTax;
        double total = result + enteredValue;
        
        self.resultLabel.text = [NSString stringWithFormat: @"The tax on $%d would come to $%.2f. The total for the item would be $%.2f in San Francisco.", enteredValue, result, total];
    }else if (self.segmentedControl.selectedSegmentIndex == 1){
        double result = enteredValue * self.chiTax;
        double total = result + enteredValue;
        
        self.resultLabel.text = [NSString stringWithFormat: @"The tax on $%d would come to $%.2f. The total for the item would be $%.2f in Chicago.", enteredValue, result, total];

    }else {
        double result = enteredValue * self.nycTax;
        double total = result + enteredValue;
        
        self.resultLabel.text = [NSString stringWithFormat: @"The tax on $%d would come to $%.2f. The total for the item would be $%.2f in New York.", enteredValue, result, total];
    }
}
@end
