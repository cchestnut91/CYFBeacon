//
//  CYFBeacon.m
//  CYFBeacon
//
//  Created by Yifei Chen on 12/30/14.
//

#import "CYFBeacon.h"

@implementation CYFBeacon


- (instancetype)initWithUUID:(NSUUID *)UUID major:(NSNumber *)major minor:(NSNumber *)minor accuracy:(double)accuracy
{
    self = [super init];
    if (self) {
        _proximityUUID = UUID;
        _major = major;
        _minor = minor;
        _accuracy = accuracy;
        _key = [NSString stringWithFormat:@"%@:%@:%@", UUID.UUIDString, major, minor];
    }
    return self;
}
@end
