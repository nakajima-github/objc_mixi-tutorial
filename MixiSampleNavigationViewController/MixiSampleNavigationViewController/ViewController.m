//
//  ViewController.m
//  MixiSampleNavigationViewController
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
    
    // 3. 現在NavigationControllerが管理しているViewControllerの数を変数に保存
    NSInteger viewControllerCount = [self.navigationController.viewControllers count];
    
    // 4. 3で取得した数をタイトルに表示
    self.navigationItem.title = [NSString stringWithFormat:@"%d", viewControllerCount];
    
    // 5. UIBarButtonItemクラスのインスタンスを生成
    /* 引数
     title: ボタン上に表示する文字列
     style: ボタンのスタイル
     target: ボタンが押された時にどのオブジェクトにメッセージを送信するかを指定する
     action: 実際にメソッドを指定する。SEL型のオブジェクトを指定する（メソッド名をオブジェクトとして用いるクラス）必要があり、@selector(methodName)とすることでオブジェクトを生成できる
     */
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStylePlain target:self action:@selector(push)];
    
    self.navigationItem.rightBarButtonItem = rightButton;
    
}

- (IBAction)pressPushButton:(id)sender {
    // 1. storyboard上のMixiViewControllerというIDが割り振られたViewControllerを呼び出す
    ViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MixiViewController"];
    
    // 2. 自分自身を管理しているNavigationControllerに対して、pushViewControllerというメッセージを呼び出してプッシュする
    //    引数はUIViewControllerとアニメーションを行うか否かのBOOL値
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)push{
    ViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MixiViewController"];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
