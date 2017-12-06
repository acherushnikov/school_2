//
//  ViewController.m
//  School_2
//
//  Created by Alexander Cherushnikov on 06.12.2017.
//  Copyright © 2017 none. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *troubleList;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.troubleList = @[@"trouble 1, " @"trouble2", @"trouble3"];
}

- (IBAction)carambaAction:(id)sender {
    
}

@end
