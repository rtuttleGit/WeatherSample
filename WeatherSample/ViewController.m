//
//  ViewController.m
//  WeatherChallenge
//
//  Created by Ryan on 1/13/16.
//  Copyright © 2016 Modern Mobile Technology. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+weather.h"
#import "NSDictionary+weather_package.h"
#import "UIImageView+AFNetworking.h"
#import "AFNetworking.h"


static NSString * const weatherURLString = @"https://api.forecast.io/forecast/203bf0976335ed98863b556ed9f61f79/37.8044,-122.2708";


@interface ViewController ()

//@property(strong) NSDictionary *weather;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [NSURL URLWithString:weatherURLString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSDictionary *weather = (NSDictionary *)responseObject;
        self.title = @"JSON Retrieved";
        
        
        [self populateUI:weather];
        
        
        NSLog(@"test");
        //[self.tableView reloadData];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        UIAlertController * alert = [UIAlertController
                                      alertControllerWithTitle:@"Error Retrieving Weather"
                                      message:[error localizedDescription]
                                      preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* okButton = [UIAlertAction
                                   actionWithTitle:@"OK"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction * action)
                                   {
                                       [alert dismissViewControllerAnimated:YES completion:nil];
                                       
                                   }];

        [alert addAction:okButton];
        [self presentViewController:alert animated:YES completion:nil];
        
    }];
    
    [operation start];

}

-(void)populateUI:(NSDictionary *)weatherDictionary{
    
    NSDictionary *currentWeather = [weatherDictionary currentCondition];
    NSArray *upcomingWeather = [weatherDictionary upcomingWeather];
    
    self.summaryTypeLabel.text = [currentWeather summary];
    self.temperatureLabel.text = [NSString stringWithFormat:@"%@°", [currentWeather temperature]];
    
    
    NSArray *daysOfWeek = [[NSArray alloc]initWithObjects:@"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", nil];
    NSDateFormatter* day = [[NSDateFormatter alloc] init];
    [day setDateFormat: @"EEEE"];
    NSUInteger dayIndex = [daysOfWeek indexOfObject: [day stringFromDate:[NSDate date]]];
    NSUInteger counter = dayIndex;
   
    if(counter+1 >= daysOfWeek.count ){ counter = 0; } else { counter +=1; } self.dayOfWeek1.text = daysOfWeek[counter];
    if(counter+1 >= daysOfWeek.count ){ counter = 0; } else { counter +=1; } self.dayOfWeek2.text = daysOfWeek[counter];
    if(counter+1 >= daysOfWeek.count ){ counter = 0; } else { counter +=1; } self.dayOfWeek3.text = daysOfWeek[counter];
    if(counter+1 >= daysOfWeek.count ){ counter = 0; } else { counter +=1; } self.dayOfWeek4.text = daysOfWeek[counter];
    if(counter+1 >= daysOfWeek.count ){ counter = 0; } else { counter +=1; } self.dayOfWeek5.text = daysOfWeek[counter];
    
    int const tomorrowIndex = 1;
    self.dayOfWeek1High.text = [NSString stringWithFormat:@"%@", [upcomingWeather[0+tomorrowIndex] temperatureMax]];
    self.dayOfWeek2High.text = [NSString stringWithFormat:@"%@", [upcomingWeather[1+tomorrowIndex] temperatureMax]];
    self.dayOfWeek3High.text = [NSString stringWithFormat:@"%@", [upcomingWeather[2+tomorrowIndex] temperatureMax]];
    self.dayOfWeek4High.text = [NSString stringWithFormat:@"%@", [upcomingWeather[3+tomorrowIndex] temperatureMax]];
    self.dayOfWeek5High.text = [NSString stringWithFormat:@"%@", [upcomingWeather[4+tomorrowIndex] temperatureMax]];
    
    self.dayOfWeek1Low.text = [NSString stringWithFormat:@"%@", [upcomingWeather[0+tomorrowIndex] temperatureMin]];
    self.dayOfWeek2Low.text = [NSString stringWithFormat:@"%@", [upcomingWeather[1+tomorrowIndex] temperatureMin]];
    self.dayOfWeek3Low.text = [NSString stringWithFormat:@"%@", [upcomingWeather[2+tomorrowIndex] temperatureMin]];
    self.dayOfWeek4Low.text = [NSString stringWithFormat:@"%@", [upcomingWeather[3+tomorrowIndex] temperatureMin]];
    self.dayOfWeek5Low.text = [NSString stringWithFormat:@"%@", [upcomingWeather[4+tomorrowIndex] temperatureMin]];
    
    
    NSString *iconString1 = [NSString stringWithFormat:@"%@", [upcomingWeather[0+tomorrowIndex] icon]];
    NSString *iconString2 = [NSString stringWithFormat:@"%@", [upcomingWeather[1+tomorrowIndex] icon]];
    NSString *iconString3 = [NSString stringWithFormat:@"%@", [upcomingWeather[2+tomorrowIndex] icon]];
    NSString *iconString4 = [NSString stringWithFormat:@"%@", [upcomingWeather[3+tomorrowIndex] icon]];
    NSString *iconString5 = [NSString stringWithFormat:@"%@", [upcomingWeather[4+tomorrowIndex] icon]];
    self.dayOfWeek1Image.image = [self selectWeatherIcon:iconString1];
    self.dayOfWeek2Image.image = [self selectWeatherIcon:iconString2];
    self.dayOfWeek3Image.image = [self selectWeatherIcon:iconString3];
    self.dayOfWeek4Image.image = [self selectWeatherIcon:iconString4];
    self.dayOfWeek5Image.image = [self selectWeatherIcon:iconString5];
    
    self.fiveDayOverviewValue.text = weatherDictionary[@"daily"][@"summary"];
    
    self.precipValue.text = [NSString stringWithFormat:@"%@", [currentWeather precipIntensity]];
    self.ozoneValue.text = [NSString stringWithFormat:@"%@", [currentWeather ozone]];
    self.apparentLabelValue.text = [NSString stringWithFormat:@"%@", [currentWeather apparentTemperature]];
    self.dewPointValue.text = [NSString stringWithFormat:@"%@", [currentWeather dewPoint]];
    self.humidityValue.text = [NSString stringWithFormat:@"%@", [currentWeather humidity]];
    self.windSpeedValue.text = [NSString stringWithFormat:@"%@", [currentWeather windSpeed]];
    self.windBearingValue.text = [NSString stringWithFormat:@"%@", [currentWeather windBearing]];
    self.visibilityValue.text = [NSString stringWithFormat:@"%@", [currentWeather visibility]];
    self.cloudCoverValue.text = [NSString stringWithFormat:@"%@", [currentWeather cloudCover]];
    self.pressureValue.text = [NSString stringWithFormat:@"%@", [currentWeather pressure]];
}

-(UIImage *)selectWeatherIcon:(NSString *)iconString{
    if([iconString isEqualToString:@"rain"])
        return [UIImage imageNamed:@"rain"];
    else if([iconString isEqualToString:@"partly-cloudy-night"])
        return [UIImage imageNamed:@"cloud"];
    else if([iconString isEqualToString:@"partly-cloudy-day"])
        return [UIImage imageNamed:@"cloud"];
    else if([iconString isEqualToString:@"clear-day"])
        return [UIImage imageNamed:@"sun"];
    else
        return [UIImage imageNamed:@"sun"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
