//
//  ViewController.m
//  School_2
//
//  Created by Alexander Cherushnikov on 06.12.2017.
//  Copyright © 2017 none. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

<<<<<<< HEAD
@property (nonatomic, strong) NSArray * troubleList;
=======
@property (nonatomic, strong) NSArray *troubleList;
>>>>>>> 50e5023a8c03a53aa43b696c9271858ddd8fdeaa

@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
<<<<<<< HEAD
    self.view.backgroundColor =  [UIColor greenColor];
    self.troubleList = @[@"trouble1",@"trouble2", @"trouble3"];
	// Do any additional setup after loading the view, typically from a nib.
=======
	self.view.backgroundColor = [UIColor greenColor];
	self.troubleList = @[@"trouble1", @"trouble2", @"trouble3"];
>>>>>>> 50e5023a8c03a53aa43b696c9271858ddd8fdeaa
}

- (IBAction)boom:(id)sender
{
	NSLog(@"BOOM !");
}
- (IBAction)boom:(id)sender {
    NSLog(@"BOOM !");
}

@end
