#CodeBook

####Introduction 
This codebook will describe the data set and the variables used for the Getting and Cleaning Data source project. 

####Dataset and variables
The data is part of the "Human Activity Recognition Using Smartphones Data Set"  
Experiments were carried out with 30 volunteers, where a variety of six activities  was tracked using sensor data captured provided by smartphones (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The smartphone used in the experiment was a Samsung Galaxy SII. 

A full description of the dataset and the variables will not be replicated here but can be found at, url: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

####Variables
For this assignment the variables have been renamed from the original data.
Below are the names next as well as the new transformed names.  

####Original Name 
1	tBodyAcc-mean()-X

2	tBodyAcc-mean()-Y

3	tBodyAcc-mean()-Z

4	tBodyAcc-std()-X

5	tBodyAcc-std()-Y

6	tBodyAcc-std()-Z

7	tGravityAcc-mean()-X

8	tGravityAcc-mean()-Y

9	tGravityAcc-mean()-Z

10	tGravityAcc-std()-X

11	tGravityAcc-std()-Y

12	tGravityAcc-std()-Z

13	tBodyAccJerk-mean()-X

14	tBodyAccJerk-mean()-Y

15	tBodyAccJerk-mean()-Z

16	tBodyAccJerk-std()-X

17	tBodyAccJerk-std()-Y

18	tBodyAccJerk-std()-Z

19	tBodyGyro-mean()-X

20	tBodyGyro-mean()-Y

21	tBodyGyro-mean()-Z

22	tBodyGyro-std()-X

23	tBodyGyro-std()-Y

24	tBodyGyro-std()-Z

25	tBodyGyroJerk-mean()-X

26	tBodyGyroJerk-mean()-Y

27	tBodyGyroJerk-mean()-Z

28	tBodyGyroJerk-std()-X

29	tBodyGyroJerk-std()-Y

30	tBodyGyroJerk-std()-Z

31	tBodyAccMag-mean()

32	tBodyAccMag-std()

33	tGravityAccMag-mean()

34	tGravityAccMag-std()

35	tBodyAccJerkMag-mean()

36	tBodyAccJerkMag-std()

37	tBodyGyroMag-mean()

38	tBodyGyroMag-std()

39	tBodyGyroJerkMag-mean()

40	tBodyGyroJerkMag-std()

41	fBodyAcc-mean()-X

42	fBodyAcc-mean()-Y

43	fBodyAcc-mean()-Z

44	fBodyAcc-std()-X

45	fBodyAcc-std()-Y

46	fBodyAcc-std()-Z

47	fBodyAccJerk-mean()-X

48	fBodyAccJerk-mean()-Y

49	fBodyAccJerk-mean()-Z

50	fBodyAccJerk-std()-X

51	fBodyAccJerk-std()-Y

52	fBodyAccJerk-std()-Z

53	fBodyGyro-mean()-X

54	fBodyGyro-mean()-Y

55	fBodyGyro-mean()-Z

56	fBodyGyro-std()-X

57	fBodyGyro-std()-Y

58	fBodyGyro-std()-Z

59	fBodyAccMag-mean()

60	fBodyAccMag-std()

61	fBodyBodyAccJerkMag-mean()

62	fBodyBodyAccJerkMag-std()

63	fBodyBodyGyroMag-mean()

64	fBodyBodyGyroMag-std()

65	fBodyBodyGyroJerkMag-mean()

66	fBodyBodyGyroJerkMag-std()




####New Variable Names 
1	TimeDomain.BodyAccelleration.Mean.X

2	TimeDomain.BodyAccelleration.Mean.Y

3	TimeDomain.BodyAccelleration.Mean.Z

4	TimeDomain.BodyAccelleration.StandardDeviation.X

5	TimeDomain.BodyAccelleration.StandardDeviation.Y

6	TimeDomain.BodyAccelleration.StandardDeviation.Z

7	TimeDomain.GravityAccelleration.Mean.X

8	TimeDomain.GravityAccelleration.Mean.Y

9	TimeDomain.GravityAccelleration.Mean.Z

10	TimeDomain.GravityAccelleration.StandardDeviation.X

11	TimeDomain.GravityAccelleration.StandardDeviation.Y

12	TimeDomain.GravityAccelleration.StandardDeviation.Z

13	TimeDomain.BodyLinearAcceleration.Mean.X

14	TimeDomain.BodyLinearAcceleration.Mean.Y

15	TimeDomain.BodyLinearAcceleration.Mean.Z

16	TimeDomain.BodyLinearAcceleration.StandardDeviation.X

17	TimeDomain.BodyLinearAcceleration.StandardDeviation.Y

18	TimeDomain.BodyLinearAcceleration.StandardDeviation.Z

19	TimeDomain.BodyAngular.Mean.X

20	TimeDomain.BodyAngular.Mean.Y

21	TimeDomain.BodyAngular.Mean.Z

22	TimeDomain.BodyAngular.StandardDeviation.X

23	TimeDomain.BodyAngular.StandardDeviation.Y

24	TimeDomain.BodyAngular.StandardDeviation.Z

25	TimeDomain.BodyAngularVelocity.Mean.X

26	TimeDomain.BodyAngularVelocity.Mean.Y

27	TimeDomain.BodyAngularVelocity.Mean.Z

28	TimeDomain.BodyAngularVelocity.StandardDeviation.X

29	TimeDomain.BodyAngularVelocity.StandardDeviation.Y

30	TimeDomain.BodyAngularVelocity.StandardDeviation.Z

31	TimeDomain.BodyAccellerationMagnitude.Mean

32	TimeDomain.BodyAccellerationMagnitude.StandardDeviation

33	TimeDomain.GravityAccellerationMagnitude.Mean

34	TimeDomain.GravityAccellerationMagnitude.StandardDeviation

35	TimeDomain.BodyLinearAccelerationMagnitude.Mean

36	TimeDomain.BodyLinearAccelerationMagnitude.StandardDeviation

37	TimeDomain.BodyAngularMagnitude.Mean

38	TimeDomain.BodyAngularMagnitude.StandardDeviation

39	TimeDomain.BodyAngularVelocityMagnitude.Mean

40	TimeDomain.BodyAngularVelocityMagnitude.StandardDeviation

41	FrequencyDomain.BodyAccelleration.Mean.X

42	FrequencyDomain.BodyAccelleration.Mean.Y

43	FrequencyDomain.BodyAccelleration.Mean.Z

44	FrequencyDomain.BodyAccelleration.StandardDeviation.X

45	FrequencyDomain.BodyAccelleration.StandardDeviation.Y

46	FrequencyDomain.BodyAccelleration.StandardDeviation.Z

47	FrequencyDomain.BodyLinearAcceleration.Mean.X

48	FrequencyDomain.BodyLinearAcceleration.Mean.Y

49	FrequencyDomain.BodyLinearAcceleration.Mean.Z

50	FrequencyDomain.BodyLinearAcceleration.StandardDeviation.X

51	FrequencyDomain.BodyLinearAcceleration.StandardDeviation.Y

52	FrequencyDomain.BodyLinearAcceleration.StandardDeviation.Z

53	FrequencyDomain.BodyAngular.Mean.X

54	FrequencyDomain.BodyAngular.Mean.Y

55	FrequencyDomain.BodyAngular.Mean.Z

56	FrequencyDomain.BodyAngular.StandardDeviation.X

57	FrequencyDomain.BodyAngular.StandardDeviation.Y

58	FrequencyDomain.BodyAngular.StandardDeviation.Z

59	FrequencyDomain.BodyAccellerationMagnitude.Mean

60	FrequencyDomain.BodyAccellerationMagnitude.StandardDeviation

61	FrequencyDomain.BodyBodyLinearAccelerationMagnitude.Mean

62	FrequencyDomain.BodyBodyLinearAccelerationMagnitude.StandardDeviation

63	FrequencyDomain.BodyBodyAngularMagnitude.Mean

64	FrequencyDomain.BodyBodyAngularMagnitude.StandardDeviation

65	FrequencyDomain.BodyBodyAngularVelocityMagnitude.Mean

66	FrequencyDomain.BodyBodyAngularVelocityMagnitude.StandardDeviation


