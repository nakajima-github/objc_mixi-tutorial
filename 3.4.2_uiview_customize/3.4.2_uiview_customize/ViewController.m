//
//  ViewController.m
//  3.4.2_uiview_customize
//
//  Created by 中嶋淳 on 2019/01/06.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"
#import "MixiCustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 3. カスタムビューのframeを指定してカスタムビューを追加
    CGRect frame = {{0, 0}, {250, 250}};
    MixiCustomView *customView = [[MixiCustomView alloc] initWithFrame:frame];
    [self.view addSubview:customView];
    
}


@end
