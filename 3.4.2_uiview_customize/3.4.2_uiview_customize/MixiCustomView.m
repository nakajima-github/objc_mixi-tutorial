//
//  MixiCustomView.m
//  3.4.2_uiview_customize
//
//  Created by 中嶋淳 on 2019/01/06.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "MixiCustomView.h"

@implementation MixiCustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        // Initialization code
        // 1. xibからviewの呼び出し
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"MixiCustomView" owner:self options:nil];
        [self addSubview:views[0]];
    }
    return self;
}


- (IBAction)pressSwitch:(UISwitch *)sender {
    // 2. switchのON/OFFでLabelにテキストを表示
    if (sender.on) {
        _myLabel.text = @"ON!";
    }else{
        _myLabel.text = @"OFF!";
    }

}
@end
