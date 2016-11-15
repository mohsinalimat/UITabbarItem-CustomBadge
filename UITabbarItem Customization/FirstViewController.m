//
//  FirstViewController.m
//  UITabbar+CustomBadge
//
//  Created by Ratul Sharker on 5/31/16.
//

#import "FirstViewController.h"

@interface FirstViewController ()
{
    IBOutlet UILabel *mViewStepSizeLabel;
    IBOutlet UILabel *mViewStepNumberLabel;
    
    unsigned int stepSize;
    unsigned int steps;
}
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    stepSize = 1;
    steps = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark IBActions
-(IBAction)onStepSizeChanges:(UIStepper*)stepper
{
    stepSize = (unsigned int)stepper.value;
    mViewStepSizeLabel.text = [NSString stringWithFormat:@"%u", stepSize];
    
    
}

-(IBAction)onStepNumberChanges:(UIStepper*)stepper
{
    steps = (unsigned int)stepper.value;
    NSString *text = [NSString stringWithFormat:@"%u", stepSize * steps];
    
    mViewStepNumberLabel.text = text;
    self.tabBarController.tabBar.items[0].badgeValue = text;
}

-(IBAction)clearBadgeValue:(id)sender
{
    self.tabBarController.tabBar.items[0].badgeValue = nil;
}



@end