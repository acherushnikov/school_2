//
//  ViewController.m
//  School_2
//
//  Created by Alexander Cherushnikov on 06.12.2017.
//  Copyright © 2017 none. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray * troubleList;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
    self.view.backgroundColor =  [UIColor greenColor];
    self.troubleList = @[@"trouble1",@"trouble2", @"trouble3"];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}
- (IBAction)boom:(id)sender {
    NSLog(@"BOOM !");
}


@end
