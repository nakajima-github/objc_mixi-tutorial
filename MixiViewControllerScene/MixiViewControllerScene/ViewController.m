//
//  ViewController.m
//  MixiViewControllerScene
//
//  Created by 中嶋淳 on 2019/01/05.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pressPresentModalButton:(id)sender {
    MixiModalViewController *modalVC = [self.storyboard instantiateViewControllerWithIdentifier:@"MixiModalViewController"];
    
    // delegate先として自身を代入
    modalVC.delegate = self;
    [self presentViewController:modalVC animated:YES completion:nil];
}

#pragma mark - MixiModaiViewControllerDelegate methods
- (void) didPressCloseButton {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    NSLog(@"MixiViewControler viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    NSLog(@"MixiViewControler viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear: animated];
    NSLog(@"MixiViewControler viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear: animated];
    NSLog(@"MixiViewControler viewDidDisappear");
}

- (void)dealloc {
    NSLog(@"MixiViewControler dealloc");
}

@end
