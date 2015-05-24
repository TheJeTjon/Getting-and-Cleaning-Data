#CodeBook

####Introduction 
This codebook will describe the data set and the variables used for the Getting and Cleaning Data source project. 

####Dataset and variables
The data is part of the "Human Activity Recognition Using Smartphones Data Set"  
Experiments were carried out with 30 volunteers, where a variety of six activities  was tracked using sensor data captured provided by smartphones (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The smartphone used in the experiment was a Samsung Galaxy SII. 

A full description of the dataset and the variables will not be replicated here but can be found at, url: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

####Variables
For this assignment the variables have been renamed from the original data.
Below are the names next to thenew transformed names.  

	Original name		      New Name 
1	tBodyAcc-mean()-X	: 	  TimeDomain.BodyAccelleration.Mean.X
2	tBodyAcc-mean()-Y	: 	  TimeDomain.BodyAccelleration.Mean.Y
3	tBodyAcc-mean()-Z	: 	  TimeDomain.BodyAccelleration.Mean.Z
4	tBodyAcc-std()-X	: 	  TimeDomain.BodyAccelleration.StandardDeviation.X
5	tBodyAcc-std()-Y	: 	  TimeDomain.BodyAccelleration.StandardDeviation.Y
6	tBodyAcc-std()-Z	: 	  TimeDomain.BodyAccelleration.StandardDeviation.Z
7	tGravityAcc-mean()-X	: 	TimeDomain.GravityAccelleration.Mean.X
8	tGravityAcc-mean()-Y	: 	TimeDomain.GravityAccelleration.Mean.Y
9	tGravityAcc-mean()-Z	: 	TimeDomain.GravityAccelleration.Mean.Z
10	tGravityAcc-std()-X	: 	TimeDomain.GravityAccelleration.StandardDeviation.X
11	tGravityAcc-std()-Y	: 	TimeDomain.GravityAccelleration.StandardDeviation.Y
12	tGravityAcc-std()-Z	: 	TimeDomain.GravityAccelleration.StandardDeviation.Z
13	tBodyAccJerk-mean()-X	: 	TimeDomain.BodyLinearAcceleration.Mean.X
14	tBodyAccJerk-mean()-Y	: 	TimeDomain.BodyLinearAcceleration.Mean.Y
15	tBodyAccJerk-mean()-Z	: 	TimeDomain.BodyLinearAcceleration.Mean.Z
16	tBodyAccJerk-std()-X	: 	TimeDomain.BodyLinearAcceleration.StandardDeviation.X
17	tBodyAccJerk-std()-Y	: 	TimeDomain.BodyLinearAcceleration.StandardDeviation.Y
18	tBodyAccJerk-std()-Z	: 	TimeDomain.BodyLinearAcceleration.StandardDeviation.Z
19	tBodyGyro-mean()-X	: 	TimeDomain.BodyAngular.Mean.X
20	tBodyGyro-mean()-Y	: 	TimeDomain.BodyAngular.Mean.Y
21	tBodyGyro-mean()-Z	: 	TimeDomain.BodyAngular.Mean.Z
22	tBodyGyro-std()-X	: 	TimeDomain.BodyAngular.StandardDeviation.X
23	tBodyGyro-std()-Y	: 	TimeDomain.BodyAngular.StandardDeviation.Y
24	tBodyGyro-std()-Z	: 	TimeDomain.BodyAngular.StandardDeviation.Z
25	tBodyGyroJerk-mean()-X	: 	TimeDomain.BodyAngularVelocity.Mean.X
26	tBodyGyroJerk-mean()-Y	: 	TimeDomain.BodyAngularVelocity.Mean.Y
27	tBodyGyroJerk-mean()-Z	: 	TimeDomain.BodyAngularVelocity.Mean.Z
28	tBodyGyroJerk-std()-X	: 	TimeDomain.BodyAngularVelocity.StandardDeviation.X
29	tBodyGyroJerk-std()-Y	: 	TimeDomain.BodyAngularVelocity.StandardDeviation.Y
30	tBodyGyroJerk-std()-Z	: 	TimeDomain.BodyAngularVelocity.StandardDeviation.Z
31	tBodyAccMag-mean()	: 	TimeDomain.BodyAccellerationMagnitude.Mean
32	tBodyAccMag-std()	: 	TimeDomain.BodyAccellerationMagnitude.StandardDeviation
33	tGravityAccMag-mean()	: 	TimeDomain.GravityAccellerationMagnitude.Mean
34	tGravityAccMag-std()	: 	TimeDomain.GravityAccellerationMagnitude.StandardDeviation
35	tBodyAccJerkMag-mean()	: 	TimeDomain.BodyLinearAccelerationMagnitude.Mean
36	tBodyAccJerkMag-std()	: 	TimeDomain.BodyLinearAccelerationMagnitude.StandardDeviation
37	tBodyGyroMag-mean()	: 	TimeDomain.BodyAngularMagnitude.Mean
38	tBodyGyroMag-std()	: 	TimeDomain.BodyAngularMagnitude.StandardDeviation
39	tBodyGyroJerkMag-mean()	: 	TimeDomain.BodyAngularVelocityMagnitude.Mean
40	tBodyGyroJerkMag-std()	: 	TimeDomain.BodyAngularVelocityMagnitude.StandardDeviation
41	fBodyAcc-mean()-X	: 	FrequencyDomain.BodyAccelleration.Mean.X
42	fBodyAcc-mean()-Y	: 	FrequencyDomain.BodyAccelleration.Mean.Y
43	fBodyAcc-mean()-Z	: 	FrequencyDomain.BodyAccelleration.Mean.Z
44	fBodyAcc-std()-X	: 	FrequencyDomain.BodyAccelleration.StandardDeviation.X
45	fBodyAcc-std()-Y	: 	FrequencyDomain.BodyAccelleration.StandardDeviation.Y
46	fBodyAcc-std()-Z	: 	FrequencyDomain.BodyAccelleration.StandardDeviation.Z
47	fBodyAccJerk-mean()-X	: 	FrequencyDomain.BodyLinearAcceleration.Mean.X
48	fBodyAccJerk-mean()-Y	: 	FrequencyDomain.BodyLinearAcceleration.Mean.Y
49	fBodyAccJerk-mean()-Z	: 	FrequencyDomain.BodyLinearAcceleration.Mean.Z
50	fBodyAccJerk-std()-X	: 	FrequencyDomain.BodyLinearAcceleration.StandardDeviation.X
51	fBodyAccJerk-std()-Y	: 	FrequencyDomain.BodyLinearAcceleration.StandardDeviation.Y
52	fBodyAccJerk-std()-Z	: 	FrequencyDomain.BodyLinearAcceleration.StandardDeviation.Z
53	fBodyGyro-mean()-X	: 	FrequencyDomain.BodyAngular.Mean.X
54	fBodyGyro-mean()-Y	: 	FrequencyDomain.BodyAngular.Mean.Y
55	fBodyGyro-mean()-Z	: 	FrequencyDomain.BodyAngular.Mean.Z
56	fBodyGyro-std()-X	: 	FrequencyDomain.BodyAngular.StandardDeviation.X
57	fBodyGyro-std()-Y	: 	FrequencyDomain.BodyAngular.StandardDeviation.Y
58	fBodyGyro-std()-Z	: 	FrequencyDomain.BodyAngular.StandardDeviation.Z
59	fBodyAccMag-mean()	: 	FrequencyDomain.BodyAccellerationMagnitude.Mean
60	fBodyAccMag-std()	: 	FrequencyDomain.BodyAccellerationMagnitude.StandardDeviation
61	fBodyBodyAccJerkMag-mean()	: 	FrequencyDomain.BodyBodyLinearAccelerationMagnitude.Mean
62	fBodyBodyAccJerkMag-std()	: 	FrequencyDomain.BodyBodyLinearAccelerationMagnitude.StandardDeviation
63	fBodyBodyGyroMag-mean()	: 	FrequencyDomain.BodyBodyAngularMagnitude.Mean
64	fBodyBodyGyroMag-std()	: 	FrequencyDomain.BodyBodyAngularMagnitude.StandardDeviation
65	fBodyBodyGyroJerkMag-mean()	: 	FrequencyDomain.BodyBodyAngularVelocityMagnitude.Mean
66	fBodyBodyGyroJerkMag-std()	: 	FrequencyDomain.BodyBodyAngularVelocityMagnitude.StandardDeviation
