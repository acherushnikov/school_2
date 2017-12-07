//
//  ViewController.m
//  School_2
//
//  Created by Alexander Cherushnikov on 06.12.2017.
//  Copyright © 2017 none. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

<<<<<<< .merge_file_5xvAA8
<<<<<<< HEAD
@property (nonatomic, strong) NSArray *troubleList;
=======
@property(nonatomic, strong) NSArray *troubleList;
>>>>>>> 19082ac... добавила изменения во ViewController
=======
@property (nonatomic, strong) NSArray *troubleList;
>>>>>>> .merge_file_rvDJsC

@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
<<<<<<< .merge_file_5xvAA8
<<<<<<< HEAD
	self.view.backgroundColor = [UIColor greenColor];
	self.troubleList = @[@"trouble1", @"trouble2", @"trouble3"];
}

- (IBAction)boom:(id)sender
{
	NSLog(@"BOOM !");
}

=======
    self.view.backgroundColor = [UIColor greenColor];
    self.troubleList = @[@"trouble1", @"trouble2", @"trouble3"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)blahblah:(id)sender
{
    NSLog(@"Hello!");
=======
    self.view.backgroundColor = [UIColor greenColor];
    self.troubleList = @[@"trouble1", @"trouble2", @"trouble3"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)caramba:(id)sender
{
    NSLog(@"BOOM !");
>>>>>>> .merge_file_rvDJsC
}



>>>>>>> 19082ac... добавила изменения во ViewController
@end
