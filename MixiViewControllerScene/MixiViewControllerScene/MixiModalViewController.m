//
//  MixiModalViewController.m
//  MixiViewControllerScene
//
//  Created by 中嶋淳 on 2019/01/05.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "MixiModalViewController.h"

@interface MixiModalViewController ()

@end

@implementation MixiModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)pressCloseModalButton:(id)sender {
    // delegateオブジェクトにメッセージを送信
    // respondsToSelectorでdelegate先にdelegate methodが実装されているかを確認する
    // （ここではMixiViewControllerでdidPressCloseButonが実装されているかを確認）
    if ([_delegate respondsToSelector:@selector(didPressCloseButton)]){
        [_delegate didPressCloseButton];
    }
//    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    NSLog(@"MixiModalViewController viewWillAppear");
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    NSLog(@"MixiModalViewController viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear: animated];
    NSLog(@"MixiModalViewController viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear: animated];
    NSLog(@"MixiModalViewController viewDidDisappear");
}

- (void)dealloc {
    NSLog(@"MixiModalViewController dealloc");
}

@end
