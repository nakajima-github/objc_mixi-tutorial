//
//  ViewController.m
//  3.4_uiviiew
//
//  Created by 中嶋淳 on 2019/01/06.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"subviews = %@", self.view.subviews);
    NSLog(@"tagNo.10 = %@", [self.view viewWithTag:10]);
}


@end
