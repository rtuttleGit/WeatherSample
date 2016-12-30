//
//  ViewController.h
//  WeatherChallenge
//
//  Created by Ryan on 1/13/16.
//  Copyright © 2016 Modern Mobile Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *summaryTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek1;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek2;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek3;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek4;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek5;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek1High;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek2High;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek3High;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek4High;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek5High;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek1Low;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek2Low;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek3Low;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek4Low;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek5Low;
@property (weak, nonatomic) IBOutlet UILabel *apparentLabelValue;
@property (weak, nonatomic) IBOutlet UILabel *dewPointValue;
@property (weak, nonatomic) IBOutlet UILabel *humidityValue;
@property (weak, nonatomic) IBOutlet UILabel *windSpeedValue;
@property (weak, nonatomic) IBOutlet UILabel *windBearingValue;
@property (weak, nonatomic) IBOutlet UILabel *visibilityValue;
@property (weak, nonatomic) IBOutlet UILabel *cloudCoverValue;
@property (weak, nonatomic) IBOutlet UILabel *pressureValue;
@property (weak, nonatomic) IBOutlet UILabel *precipValue;
@property (weak, nonatomic) IBOutlet UILabel *ozoneValue;
@property (weak, nonatomic) IBOutlet UIImageView *dayOfWeek1Image;
@property (weak, nonatomic) IBOutlet UIImageView *dayOfWeek2Image;
@property (weak, nonatomic) IBOutlet UIImageView *dayOfWeek3Image;
@property (weak, nonatomic) IBOutlet UIImageView *dayOfWeek4Image;
@property (weak, nonatomic) IBOutlet UIImageView *dayOfWeek5Image;
@property (weak, nonatomic) IBOutlet UITextView *fiveDayOverviewValue;

@end

