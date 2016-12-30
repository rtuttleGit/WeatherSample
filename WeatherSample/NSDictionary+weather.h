//
//  NSDictionary+weather.h
//  WeatherChallenge
//
//  Created by Ryan on 1/13/16.
//  Copyright © 2016 Modern Mobile Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (weather)

- (NSNumber *)time;
- (NSString *)summary;
- (NSString *)icon;
- (NSString *)temperature;
- (NSNumber *)sunriseTime;
- (NSNumber *)sunsetTime;
- (NSNumber *)moonPhase;
- (NSNumber *)precipIntensity;
- (NSNumber *)precipIntensityMax;
- (NSNumber *)precipIntensityMaxTime;
- (NSNumber *)precipProbability;
- (NSString *)precipType;
- (NSNumber *)temperatureMin;
- (NSNumber *)temperatureMinTime;
- (NSNumber *)temperatureMax;
- (NSNumber *)temperatureMaxTime;
- (NSNumber *)apparentTemperatureMin;
- (NSNumber *)apparentTemperatureMinTime;
- (NSNumber *)apparentTemperatureMax;
- (NSNumber *)apparentTemperatureMaxTime;
- (NSNumber *)apparentTemperature;
- (NSNumber *)dewPoint;
- (NSNumber *)humidity;
- (NSNumber *)windSpeed;
- (NSNumber *)windBearing;
- (NSNumber *)visibility;
- (NSNumber *)cloudCover;
- (NSNumber *)pressure;
- (NSNumber *)ozone;

@end