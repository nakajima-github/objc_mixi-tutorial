//
//  MixiViewController.m
//  MixiSampleViewController
//
//  Created by 中嶋淳 on 2019/01/04.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "MixiSampleClass.h"

// クラス定数
static NSString *const constString = @"const";
// クラス変数
static NSString *staticString = @"static";

// 無名カテゴリ
@interface MixiSampleClass()

@property (nonatomic, assign) BOOL isEnable;
//@property (nonatomic, assign) SampleType sampleType;

@end

@implementation MixiSampleClass

- (id)initWithName:(NSString *)name sampleType:(SampleType)sampleType{
    self = [super init];
    if (self){
        _name = [name addHoge];
        _sampleType = sampleType;
        _isEnable = YES;
    }
    return self;
}

+ (NSString *)getStaticString{
    return staticString;
}

@end
