//
//  ViewController.m
//  Polygones
//
//  Created by Hugo Poissonnet on 27/12/2013.
//  Copyright (c) 2013 Hugo Poissonnet. All rights reserved.
//

#import "ViewController.h"
#import "Polygone.h"

@interface ViewController ()
@property(readwrite, strong, nonatomic) Polygone * polygone;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self updateUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)click:(id)sender {
    UIStepper * stepper = (UIStepper *) sender;
    self.polygone.numberOfSide = [stepper value];
    NSLog(@"Changed to %@",[self.polygone name]);
    [self updateUI];
}

- (void) updateUI{
    _titleLabel.text = [self.polygone name];
    _descriptionLabel.text = [NSString stringWithFormat:@"Ce polygone à %d cotés", self.polygone.numberOfSide];
}

- (Polygone *) polygone{
    if(!_polygone){
        _polygone = [[Polygone alloc] init];
    }
    return _polygone;
}

@end
