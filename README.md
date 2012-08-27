DGCalendarRangePicker
==========

DGCalendarRangePicker is a calendar control for iPad which allows to select a date range. The control uses [CKCalendar control](https://github.com/jaykz52/CKCalendar)
  
![CKCalendar screenshot](https://img.skitch.com/20120827-ryyft5dttrujtjf5m8mb9r2qx1.jpg)


## Interacting with DGCalendarRangePicker
CKCalendar provides delegate callbacks to interact with the calendar in the way you would expect:

``` objc
DGCalendarRangePicker* rangePicker = [[DGCalendarRangePicker alloc] initWithFrame:CGRectMake(20, 0, 630, 340)];
rangePicker.delegate = self;
[self.view addSubview:rangePicker];

// snip...

-(void) calendarRangePicker:(DGCalendarRangePicker*) calendarRangePicker
                  startDate:(NSDate*) startDate
                    endDate:(NSDate*) endDate
{
    NSLog(@"%@ - %@",[self.dateFormatter stringFromDate:startDate],[self.dateFormatter stringFromDate:endDate]);
    self.dateLabel.text = [NSString stringWithFormat:@"%@ - %@",[self.dateFormatter stringFromDate:startDate],[self.dateFormatter stringFromDate:endDate]];
}

```


## License (MIT)
Copyright (c) 2012 Jason Kozemczak

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.