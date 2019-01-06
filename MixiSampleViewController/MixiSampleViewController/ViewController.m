//
//  ViewController.m
//  MixiSampleViewController
//
//  Created by 中嶋淳 on 2019/01/04.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MixiSampleClass *sampleInstance = [[MixiSampleClass alloc] initWithName:@"sample" sampleType:SampleTypePiyo];
    NSLog(@"name = %@", [sampleInstance.name addHoge]);
    
}


@end
