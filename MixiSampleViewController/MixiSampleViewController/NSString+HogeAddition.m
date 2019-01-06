//
//  NSString+HogeAddtion.m
//  MixiSampleViewController
//
//  Created by 中嶋淳 on 2019/01/05.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "NSString+HogeAddition.h"

@implementation NSString(HogeAddition)

- (NSString *)addHoge{

    return [NSString stringWithFormat:@"%@hoge", self];

}

@end
