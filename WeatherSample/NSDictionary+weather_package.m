//
//  NSDictionary+weather_package.m
//  WeatherChallenge
//
//  Created by Ryan on 1/13/16.
//  Copyright © 2016 Modern Mobile Technology. All rights reserved.
//

#import "NSDictionary+weather_package.h"

@implementation NSDictionary (weather_package)

- (NSDictionary *)currentCondition
{
    return self[@"currently"];
}

- (NSDictionary *)upcomingWeather
{
    NSDictionary *dict = self[@"daily"];
    return dict[@"data"];
}

@end