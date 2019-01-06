//
//  MixiSampleClass.h
//  MixiSampleViewController
//
//  Created by 中嶋淳 on 2019/01/04.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#ifndef MixiSampleClass_h
#define MixiSampleClass_h

#import <Foundation/Foundation.h>
#import "NSString+HogeAddition.h"

// 列挙型
typedef NS_ENUM(NSInteger, SampleType){
    SampleTypeHoge = 0,
    SampleTypeFuga,
    SampleTypePiyo
};


@interface MixiSampleClass : NSObject

// Property
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) SampleType sampleType;

// instance method
- (id)initWithName: (NSString *)name sampleType:(SampleType)sampleType;
// class method
+ (NSString *) getStaticString;

@end

#endif /* MixiSampleClass_h */
