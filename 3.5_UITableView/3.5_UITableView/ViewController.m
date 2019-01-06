//
//  ViewController.m
//  3.5_UITableView
//
//  Created by 中嶋淳 on 2019/01/06.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // UITableViewのdataSource, delegateを接続
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    // "Cell"という文字列をキーにしてセルのクラスUITableViewCellを再利用するよう登録する
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;  // 固定値で10を返す＝10行のTableViewが作成される
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 1. UITableViewのセルのキューシステムから取り出す
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    // UITableViewCellにはデフォルトでUILabelがついており、今回はそのラベルに何行目かを表示する
    cell.textLabel.text = [NSString stringWithFormat:@"%d", indexPath.row + 1];
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    // 選択を解除する
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // どのセルが表示されたかを表示する
    NSLog(@"%@", indexPath);
}


@end
