## Overview
Repository for biking data analytics in London. Focus on clusterbased computation (Hadoop) as well as geocoding. The analyzed data are public available and provided by the Transport for London (TfL) service of the local government. The cycling data can be retrieved here [Bicycles](https://cycling.data.tfl.gov.uk/).

Note: the .json notebooks can only be displayed in [Zeppelin](https://zeppelin.apache.org/) as they usually include `sparkcontext` environment.

### Navigation
- [Hadoop Evaluation](../master/Hadoop_Distributions_Comparison.pdf)
- [Data Preparation](../master/Data_Munging/)
- [Data Profiling](../master/Data_Profiling/)
- [Cycling Routes](../master/Data_Profiling/routes_frequency.html)

### Under Construction

Build up the frame - feature engineering & research of TfL rental usage data.


### Structure of DataFrame

For data preparation and munging the linked notebooks have been used. After running them, a csv file with following schema has been created:

Attributes             | N records     | Datatype       | Comments
-----------------------|:-------------:|----------------|---------
StartStation Id        | 470190        | non-null int64 |
Start Date             | 470190        | non-null int64 | Date + timetamp of departure
EndStation Id          | 470190        | non-null int64 |
End Date               | 470190        | non-null int64 | Date + timestamp of arrival
Duration               | 470190        | non-null int64 | Rental time in seconds
StartStation Id Used   | 470190        | non-null int64 | How often the station has been used as startstation*
EndStation Id Used     | 470190        | non-null int64 | How often the station has been used as endstation*
Frequency              | 470190        | non-null int64 | How often a specific startstation and endstation has been used*
StartStation Address   | 470190        | non-null int64 |
StartStation latitude  | 470190        | non-null int64 |
StartStation longitude | 470190        | non-null int64 |
StartStation capacity  | 470190        | non-null int64 |
EndStation Address     | 470190        | non-null int64 |
EndStation latitude    | 470190        | non-null int64 |
EndStation longitude   | 470190        | non-null int64 |
EndStation capacity    | 470190        | non-null int64 |
distance (geodesic)    | 470190        | non-null int64 | air-line distance between startstation and endstation*
Daily Weather          | 470190        | non-null int64 | daily based weather summary info, e.g. raining or cloudy*
Hourly Weather         | 470190        | non-null int64 | contains full list of all weather information on a hourly basis*
Humidity               | 470190        | non-null int64 | describes air moisture in the environment on that day*
Windspeed              | 470190        | non-null int64 | describes the average windspeed at that day*
Apparent Temperature <br>(Avg)| 470190        | non-null int64 |


*those attributes were added by data frame operations or additional APIs and can not be obtained from public TfL repository.

The majority of data is based on the usage-stats/ folder from the TFL site. Additional to get the coordinates and other information (e.g. capacity) the [livefeed](https://cycling.data.tfl.gov.uk/) has been used.





