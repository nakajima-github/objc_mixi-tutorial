//
//  MixiCustomView.h
//  3.4.2_uiview_customize
//
//  Created by 中嶋淳 on 2019/01/06.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MixiCustomView : UIView
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)pressSwitch:(UISwitch *)sender;
@end

NS_ASSUME_NONNULL_END
