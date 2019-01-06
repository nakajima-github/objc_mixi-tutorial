//
//  MixiModalViewController.h
//  MixiViewControllerScene
//
//  Created by 中嶋淳 on 2019/01/05.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// プロトコルの宣言
@protocol MixiModalViewControllerDelegate <NSObject>
- (void) didPressCloseButton;
@end


@interface MixiModalViewController : UIViewController
// delegateオブジェクト
// MixiModalViewControllerDelegateを採用しているオブジェクトの代入することを条件づけたid型
// 今回はMixiViewControllerのオブジェクトが代入される
// MixiViewControllerはそれ自身でMixiModalViewControllerの参照を持つため、こちらではweakにしておかないと循環参照が起きる
@property (nonatomic, weak) id<MixiModalViewControllerDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
