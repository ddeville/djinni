// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from date.djinni

#import "DBMapDateRecord+Private.h"
#import "DJIDate.h"
#import <Foundation/Foundation.h>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@implementation DBMapDateRecord

- (id)initWithMapDateRecord:(DBMapDateRecord *)mapDateRecord
{
    if (self = [super init]) {
        NSMutableDictionary *_datesByIdTempDictionary = [NSMutableDictionary dictionaryWithCapacity:[mapDateRecord.datesById count]];
        for (id key_0 in mapDateRecord.datesById) {
            id copiedKey_0, copiedValue_0;
            copiedKey_0 = [key_0 copy];
            id value_0 = [mapDateRecord.datesById objectForKey:key_0];
            copiedValue_0 = [value_0 copy];
            [_datesByIdTempDictionary setObject:copiedValue_0 forKey:copiedKey_0];
        }
        _datesById = _datesByIdTempDictionary;
    }
    return self;
}

- (id)initWithDatesById:(NSDictionary *)datesById
{
    if (self = [super init]) {
        _datesById = datesById;
    }
    return self;
}

- (id)initWithCppMapDateRecord:(const MapDateRecord &)mapDateRecord
{
    if (self = [super init]) {
        NSMutableDictionary *_datesByIdTempDictionary = [NSMutableDictionary dictionaryWithCapacity:mapDateRecord.dates_by_id.size()];
        for (const auto & cppPair_0 : mapDateRecord.dates_by_id) {
            NSString *objcKey_0 = [[NSString alloc] initWithBytes:cppPair_0.first.data()
                    length:cppPair_0.first.length()
                    encoding:NSUTF8StringEncoding];
            NSDate *objcValue_0 = [NSDate dateWithTimeIntervalSince1970:
                    std::chrono::duration_cast<std::chrono::duration<double>>(cppPair_0.second.time_since_epoch()).count()];
            [_datesByIdTempDictionary setObject:objcValue_0 forKey:objcKey_0];
        }
        _datesById = _datesByIdTempDictionary;
    }
    return self;
}

- (MapDateRecord)cppMapDateRecord
{
    std::unordered_map<std::string, std::chrono::system_clock::time_point> datesById;
    for (id objcKey_0 in _datesById) {
        std::string cppKey_0([objcKey_0 UTF8String], [objcKey_0 lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
        std::chrono::system_clock::time_point cppValue_0 = ::djinni::convert_date([[_datesById objectForKey:objcKey_0] timeIntervalSince1970]);
        datesById.emplace(std::move(cppKey_0), std::move(cppValue_0));
    }
    return MapDateRecord(
            std::move(datesById));
}

@end