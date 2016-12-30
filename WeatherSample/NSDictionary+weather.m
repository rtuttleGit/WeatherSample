//
//  NSDictionary+weather.m
//  WeatherChallenge
//
//  Created by Ryan on 1/13/16.
//  Copyright © 2016 Modern Mobile Technology. All rights reserved.
//

#import "NSDictionary+weather.h"

@implementation NSDictionary (weather)


- (NSNumber *)time
{
    NSString *cc = self[@"time"];
    NSNumber *n = @([cc longLongValue]);
    return n;
}

-(NSString *)summary
{
    return self[@"summary"];
}

-(NSString *)icon
{
    return self[@"icon"];
}

- (NSNumber *)temperature
{
    NSString *cc = self[@"temperature"];
    NSNumber *n = @([cc integerValue]);
    return n;
}

- (NSNumber *)sunriseTime
{
    NSString *cc = self[@"sunriseTime"];
    NSNumber *n = @([cc longLongValue]);
    return n;
}

- (NSNumber *)sunsetTime
{
    NSString *cc = self[@"sunsetTime"];
    NSNumber *n = @([cc longLongValue]);
    return n;
}

- (NSNumber *)moonPhase
{
    NSString *cc = self[@"moonPhase"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)precipIntensity
{
    NSString *cc = self[@"precipIntensity"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)precipIntensityMax
{
    NSString *cc = self[@"precipIntensityMax"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)precipIntensityMaxTime
{
    NSString *cc = self[@"precipIntensityMaxTime"];
    NSNumber *n = @([cc longLongValue]);
    return n;
}

- (NSNumber *)precipProbability
{
    NSString *cc = self[@"precipProbability"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

-(NSString *)precipType
{
    return self[@"precipType"];
}

- (NSNumber *)temperatureMin
{
    NSString *cc = self[@"temperatureMin"];
    NSNumber *n = @([cc integerValue]);
    return n;
}

- (NSNumber *)temperatureMinTime
{
    NSString *cc = self[@"temperatureMinTime"];
    NSNumber *n = @([cc longLongValue]);
    return n;
}

- (NSNumber *)temperatureMax
{
    NSString *cc = self[@"temperatureMax"];
    NSNumber *n = @([cc integerValue]);
    return n;
}

- (NSNumber *)temperatureMaxTime
{
    NSString *cc = self[@"temperatureMaxTime"];
    NSNumber *n = @([cc longLongValue]);
    return n;
}

- (NSNumber *)apparentTemperatureMin
{
    NSString *cc = self[@"apparentTemperatureMin"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)apparentTemperatureMinTime
{
    NSString *cc = self[@"apparentTemperatureMinTime"];
    NSNumber *n = @([cc longLongValue]);
    return n;
}

- (NSNumber *)apparentTemperatureMax
{
    NSString *cc = self[@"apparentTemperatureMax"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)apparentTemperatureMaxTime
{
    NSString *cc = self[@"apparentTemperatureMaxTime"];
    NSNumber *n = @([cc longLongValue]);
    return n;
}

- (NSNumber *)apparentTemperature
{
    NSString *cc = self[@"apparentTemperature"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)dewPoint
{
    NSString *cc = self[@"dewPoint"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)humidity
{
    NSString *cc = self[@"humidity"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)windSpeed
{
    NSString *cc = self[@"windSpeed"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)windBearing
{
    NSString *cc = self[@"windBearing"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)visibility
{
    NSString *cc = self[@"visibility"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)cloudCover
{
    NSString *cc = self[@"cloudCover"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)pressure
{
    NSString *cc = self[@"pressure"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

- (NSNumber *)ozone
{
    NSString *cc = self[@"ozone"];
    NSNumber *n = @([cc doubleValue]);
    return n;
}

@end