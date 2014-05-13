//
//  ViewController.m
//  Multiply
//
//  Created by Thomas M. Mroz on 5/12/14.
//  Copyright (c) 2014 BGHS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myNumber;

@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)setMultiplier
{
    NSInteger newMult = self.mySlider.value;
    self.myMultiplier.text = [NSString stringWithFormat: @"%d", newMult];
}

-(void) updateFromSlider
{

        NSInteger number = [self.myNumber.text integerValue];
        NSInteger multiple = [self.myMultiplier.text integerValue];
        NSInteger result = number * multiple;


        if(result > 20)
        {
            self.view.backgroundColor = [UIColor yellowColor];
        }

        if ((result %3 == 0) && (result %5 == 0))
        {
            self.myAnswer.text = @"fizzbuzz";

        }
        else if (result %3 == 0)
        {
            self.myAnswer.text = @"fizz";
        }
        else if (result %5 == 0)
        {
            self.myAnswer.text = @"buzz";
        }
        else
            self.myAnswer.text = [NSString stringWithFormat:@"%d", result];


}

- (IBAction)onSliderMoved:(id)sender
{
    [self setMultiplier];
    [self updateFromSlider];

    if(self.mySlider.value < 10.0)
    {
        self.mySlider.tintColor = [UIColor redColor];
    }
    else
    {
        self.mySlider.tintColor = [UIColor blueColor];
    }
}

- (IBAction)onCalculateButtonPressed:(id)sender
{
    NSInteger number = [self.myNumber.text integerValue];
    NSInteger multiple = [self.myMultiplier.text integerValue];
    NSInteger result = number * multiple;


    if(result > 20)
    {
        self.view.backgroundColor = [UIColor greenColor];
    }

    if ((result %3 == 0) && (result %5 == 0))
    {
        self.myAnswer.text = @"fizzbuzz";

    }
    else if (result %3 == 0)
    {
        self.myAnswer.text = @"fizz";
    }
    else if (result %5 == 0)
    {
        self.myAnswer.text = @"buzz";
    }
    else
        self.myAnswer.text = [NSString stringWithFormat:@"%d", result];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
