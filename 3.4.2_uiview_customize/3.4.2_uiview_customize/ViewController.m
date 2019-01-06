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
    
    // アニメーションメソッドを追加
    [UIView animateWithDuration:5.0f // アニメーションの時間を設定
                     animations:^{      // アニメーションさせたい処理群
        CGRect movedFrame ={{0, 250}, {250,250}};
        [customView setFrame:movedFrame];
    }
                     completion:^(BOOL finished) {  // アニメーション完了時の処理
        [customView removeFromSuperview];
    }];
    
    
}


@end
