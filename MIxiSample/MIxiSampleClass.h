//
//  MIxiSampleClass.h
//  MIxiSample
//
//  Created by 中嶋淳 on 2019/01/04.
//

#ifndef MIxiSampleClass_h
#define MIxiSampleClass_h

#import <Foundation/Foundation.h>

// 列挙型
typedef NS_ENUM(NSInteger, SampleType){
    SampleTypeHoge = 0,
    SampleTypeFuga,
    SampleTypePiyo
};

@interface MixiSampleClass : NSObject

// Property
@property (nonatomic, strong) NSString *name;

// instance method
- (id)initWithName: (NSString *)name sampleType:(SampleType)sampleType;
// class method
+ (NSString *) getStaticString;

@end

#endif /* MIxiSampleClass_h */
