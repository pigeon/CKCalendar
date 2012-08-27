//
//  DGCalendarRangePicker.h
//  Calendar
//
//  Created by Dmytro Golub on 27/08/2012.
//
//

#import <UIKit/UIKit.h>

@protocol DGCalendarRangePickerDelegate;


@interface  DGCalendarRangePicker : UIView

@property (nonatomic,assign) id<DGCalendarRangePickerDelegate> delegate;
@property (nonatomic,retain) NSDate* startDate;
@property (nonatomic,retain) NSDate* endDate;

@end


@protocol DGCalendarRangePickerDelegate <NSObject>

-(void) calendarRangePicker:(DGCalendarRangePicker*) calendarRangePicker
                  startDate:(NSDate*) startDate
                    endDate:(NSDate*) endDate;

@end