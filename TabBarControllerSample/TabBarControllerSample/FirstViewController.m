//
//  FirstViewController.m
//  TabBarControllerSample
//
//  Created by 中嶋淳 on 2019/01/06.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 1. タイトルの変更
    self.tabBarItem.title = @"hoge";
    // 2. tab barに表示するバッチ数の変更
    self.tabBarItem.badgeValue = @"5";
    
}


@end
