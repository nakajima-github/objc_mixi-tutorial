//
//  MixiSampleClass.m
//  MIxiSample
//
//  Created by 中嶋淳 on 2019/01/04.
//

#import "MixiSampleClass.h"

// クラス定数
static NSString *const constString = @"const";
// クラス変数
static NSString *staticString = @"static";

// 無名カテゴリ
@interface MixiSampleClass()

@property (nonatomic, assign) BOOL isEnabled;
@property (nonatomic, assign) SampleType sampleType;

@end

@implementation MixiSampleClass

-(id) initWithName: (NSString *)name sampleType:(SampleType)sampleType{
    self = [super init];
    if (self) {
        // access iVar
        _name = name;
        _sampleType = sampleType;
    }
    return self;
}

+ (NSString *)getStaticString {
    return staticString;
}

@end
