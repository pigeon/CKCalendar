//
//  DGCalendarRangePicker.m
//  Calendar
//
//  Created by Dmytro Golub on 27/08/2012.
//
//

#import "DGCalendarRangePicker.h"
#import "CKCalendarView.h"

@interface DGCalendarRangePicker() <CKCalendarDelegate>

@property (nonatomic,retain) CKCalendarView *startDateCalendarView;
@property (nonatomic,retain) CKCalendarView *endDateCalendarView;


@end


@implementation DGCalendarRangePicker

@synthesize startDateCalendarView,endDateCalendarView;
@synthesize startDate, endDate;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor grayColor];
    self.layer.cornerRadius = 4;
    if (self) {
        
        self.userInteractionEnabled = YES;
        CKCalendarView *localStartDateCalendarView = [[CKCalendarView alloc] initWithStartDay:startMonday];
        localStartDateCalendarView.delegate = self;
        self.startDateCalendarView = localStartDateCalendarView;
        
        NSDate *currentDate = [NSDate date];
        NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:-7];
        NSDate *minDate = [gregorian dateByAddingComponents:comps toDate:currentDate  options:0];
        
        NSLog(@"%@\n",minDate);
        localStartDateCalendarView.minimumDate = minDate;
        localStartDateCalendarView.maximumDate = currentDate;
        
        localStartDateCalendarView.frame = CGRectMake(10, 10, 300, 320);
        
        CKCalendarView *localEndDateCalendarView = [[CKCalendarView alloc] initWithStartDay:startMonday];
        localEndDateCalendarView.delegate = self;
        
        localEndDateCalendarView.minimumDate = minDate;
        localEndDateCalendarView.maximumDate = currentDate;
        self.endDateCalendarView = localEndDateCalendarView;
        
        localEndDateCalendarView.frame = CGRectMake(320, 10, 300, 320);

        [self addSubview:localStartDateCalendarView];
        [self addSubview:localEndDateCalendarView];
        
        // Initialization code
    }
    return self;
}


#pragma mark -
#pragma mark - CKCalendarDelegate

- (void)calendar:(CKCalendarView *)calendar didSelectDate:(NSDate *)date {
    if (calendar == self.startDateCalendarView)
    {
        self.startDate = date;
    }
    else if (calendar == self.endDateCalendarView)
    {
        self.endDate = date;
    }

    if(self.endDate && self.startDate)
    {
        if([self.delegate respondsToSelector:@selector(calendarRangePicker:startDate:endDate:)])
        {
            [self.delegate calendarRangePicker:self startDate:startDate endDate:endDate];
        }
    }
}


@end
