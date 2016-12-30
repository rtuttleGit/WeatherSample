//
//  NSDictionary+weather_package.h
//  WeatherChallenge
//
//  Created by Ryan on 1/13/16.
//  Copyright © 2016 Modern Mobile Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (weather_package)

-(NSDictionary *)currentCondition;
-(NSArray *)upcomingWeather;

@end