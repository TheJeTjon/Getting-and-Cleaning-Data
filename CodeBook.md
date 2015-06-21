#CodeBook

###Introduction 
This codebook will describe the following 

1. the data set and the variables used for the Getting and Cleaning Data source project. 

2. Information about the experimental study design used.

3. The summary choices made.

###1. the data set and the variables used for the Getting and Cleaning Data source project. 
The data is part of the "Human Activity Recognition Using Smartphones Data Set"  
Experiments were carried out with 30 volunteers, where a variety of six activities  was tracked using sensor data captured provided by smartphones (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The smartphone used in the experiment was a Samsung Galaxy SII. 

####Summary of the data set
> summary(tidy_data_set)
               Activity     Subject     TimeDomain.BodyAccelleration.Mean.X TimeDomain.BodyAccelleration.Mean.Y
 LAYING            :30   Min.   : 1.0   Min.   :0.2216                      Min.   :-0.040514                  
 SITTING           :30   1st Qu.: 8.0   1st Qu.:0.2712                      1st Qu.:-0.020022                  
 STANDING          :30   Median :15.5   Median :0.2770                      Median :-0.017262                  
 WALKING           :30   Mean   :15.5   Mean   :0.2743                      Mean   :-0.017876                  
 WALKING_DOWNSTAIRS:30   3rd Qu.:23.0   3rd Qu.:0.2800                      3rd Qu.:-0.014936                  
 WALKING_UPSTAIRS  :30   Max.   :30.0   Max.   :0.3015                      Max.   :-0.001308                  
 TimeDomain.BodyAccelleration.Mean.Z TimeDomain.BodyAccelleration.StandardDeviation.X TimeDomain.BodyAccelleration.StandardDeviation.Y
 Min.   :-0.15251                    Min.   :-0.9961                                  Min.   :-0.99024                                
 1st Qu.:-0.11207                    1st Qu.:-0.9799                                  1st Qu.:-0.94205                                
 Median :-0.10819                    Median :-0.7526                                  Median :-0.50897                                
 Mean   :-0.10916                    Mean   :-0.5577                                  Mean   :-0.46046                                
 3rd Qu.:-0.10443                    3rd Qu.:-0.1984                                  3rd Qu.:-0.03077                                
 Max.   :-0.07538                    Max.   : 0.6269                                  Max.   : 0.61694                                
 TimeDomain.BodyAccelleration.StandardDeviation.Z TimeDomain.GravityAccelleration.Mean.X TimeDomain.GravityAccelleration.Mean.Y
 Min.   :-0.9877                                  Min.   :-0.6800                        Min.   :-0.47989                      
 1st Qu.:-0.9498                                  1st Qu.: 0.8376                        1st Qu.:-0.23319                      
 Median :-0.6518                                  Median : 0.9208                        Median :-0.12782                      
 Mean   :-0.5756                                  Mean   : 0.6975                        Mean   :-0.01621                      
 3rd Qu.:-0.2306                                  3rd Qu.: 0.9425                        3rd Qu.: 0.08773                      
 Max.   : 0.6090                                  Max.   : 0.9745                        Max.   : 0.95659                      
 TimeDomain.GravityAccelleration.Mean.Z TimeDomain.GravityAccelleration.StandardDeviation.X TimeDomain.GravityAccelleration.StandardDeviation.Y
 Min.   :-0.49509                       Min.   :-0.9968                                     Min.   :-0.9942                                    
 1st Qu.:-0.11726                       1st Qu.:-0.9825                                     1st Qu.:-0.9711                                    
 Median : 0.02384                       Median :-0.9695                                     Median :-0.9590                                    
 Mean   : 0.07413                       Mean   :-0.9638                                     Mean   :-0.9524                                    
 3rd Qu.: 0.14946                       3rd Qu.:-0.9509                                     3rd Qu.:-0.9370                                    
 Max.   : 0.95787                       Max.   :-0.8296                                     Max.   :-0.6436                                    
 TimeDomain.GravityAccelleration.StandardDeviation.Z TimeDomain.BodyAngular.Mean.X TimeDomain.BodyAngular.Mean.Y TimeDomain.BodyAngular.Mean.Z
 Min.   :-0.9910                                     Min.   :-0.20578              Min.   :-0.20421              Min.   :-0.07245             
 1st Qu.:-0.9605                                     1st Qu.:-0.04712              1st Qu.:-0.08955              1st Qu.: 0.07475             
 Median :-0.9450                                     Median :-0.02871              Median :-0.07318              Median : 0.08512             
 Mean   :-0.9364                                     Mean   :-0.03244              Mean   :-0.07426              Mean   : 0.08744             
 3rd Qu.:-0.9180                                     3rd Qu.:-0.01676              3rd Qu.:-0.06113              3rd Qu.: 0.10177             
 Max.   :-0.6102                                     Max.   : 0.19270              Max.   : 0.02747              Max.   : 0.17910             
 TimeDomain.BodyAngular.StandardDeviation.X TimeDomain.BodyAngular.StandardDeviation.Y TimeDomain.BodyAngular.StandardDeviation.Z
 Min.   :-0.9943                            Min.   :-0.9942                            Min.   :-0.9855                           
 1st Qu.:-0.9735                            1st Qu.:-0.9629                            1st Qu.:-0.9609                           
 Median :-0.7890                            Median :-0.8017                            Median :-0.8010                           
 Mean   :-0.6916                            Mean   :-0.6533                            Mean   :-0.6164                           
 3rd Qu.:-0.4414                            3rd Qu.:-0.4196                            3rd Qu.:-0.3106                           
 Max.   : 0.2677                            Max.   : 0.4765                            Max.   : 0.5649                           
 FrequencyDomain.BodyAccelleration.Mean.X FrequencyDomain.BodyAccelleration.Mean.Y FrequencyDomain.BodyAccelleration.Mean.Z
 Min.   :-0.9952                          Min.   :-0.98903                         Min.   :-0.9895                         
 1st Qu.:-0.9787                          1st Qu.:-0.95361                         1st Qu.:-0.9619                         
 Median :-0.7691                          Median :-0.59498                         Median :-0.7236                         
 Mean   :-0.5758                          Mean   :-0.48873                         Mean   :-0.6297                         
 3rd Qu.:-0.2174                          3rd Qu.:-0.06341                         3rd Qu.:-0.3183                         
 Max.   : 0.5370                          Max.   : 0.52419                         Max.   : 0.2807                         
 FrequencyDomain.BodyAccelleration.StandardDeviation.X FrequencyDomain.BodyAccelleration.StandardDeviation.Y
 Min.   :-0.9966                                       Min.   :-0.99068                                     
 1st Qu.:-0.9820                                       1st Qu.:-0.94042                                     
 Median :-0.7470                                       Median :-0.51338                                     
 Mean   :-0.5522                                       Mean   :-0.48148                                     
 3rd Qu.:-0.1966                                       3rd Qu.:-0.07913                                     
 Max.   : 0.6585                                       Max.   : 0.56019                                     
 FrequencyDomain.BodyAccelleration.StandardDeviation.Z FrequencyDomain.BodyLinearAcceleration.Mean.X
 Min.   :-0.9872                                       Min.   :-0.9946                              
 1st Qu.:-0.9459                                       1st Qu.:-0.9828                              
 Median :-0.6441                                       Median :-0.8126                              
 Mean   :-0.5824                                       Mean   :-0.6139                              
 3rd Qu.:-0.2655                                       3rd Qu.:-0.2820                              
 Max.   : 0.6871                                       Max.   : 0.4743                              
 FrequencyDomain.BodyLinearAcceleration.Mean.Y FrequencyDomain.BodyLinearAcceleration.Mean.Z
 Min.   :-0.9894                               Min.   :-0.9920                              
 1st Qu.:-0.9725                               1st Qu.:-0.9796                              
 Median :-0.7817                               Median :-0.8707                              
 Mean   :-0.5882                               Mean   :-0.7144                              
 3rd Qu.:-0.1963                               3rd Qu.:-0.4697                              
 Max.   : 0.2767                               Max.   : 0.1578                              
 FrequencyDomain.BodyLinearAcceleration.StandardDeviation.X FrequencyDomain.BodyLinearAcceleration.StandardDeviation.Y
 Min.   :-0.9951                                            Min.   :-0.9905                                           
 1st Qu.:-0.9847                                            1st Qu.:-0.9737                                           
 Median :-0.8254                                            Median :-0.7852                                           
 Mean   :-0.6121                                            Mean   :-0.5707                                           
 3rd Qu.:-0.2475                                            3rd Qu.:-0.1685                                           
 Max.   : 0.4768                                            Max.   : 0.3498                                           
 FrequencyDomain.BodyLinearAcceleration.StandardDeviation.Z FrequencyDomain.BodyAngular.Mean.X FrequencyDomain.BodyAngular.Mean.Y
 Min.   :-0.993108                                          Min.   :-0.9931                    Min.   :-0.9940                   
 1st Qu.:-0.983747                                          1st Qu.:-0.9697                    1st Qu.:-0.9700                   
 Median :-0.895121                                          Median :-0.7300                    Median :-0.8141                   
 Mean   :-0.756489                                          Mean   :-0.6367                    Mean   :-0.6767                   
 3rd Qu.:-0.543787                                          3rd Qu.:-0.3387                    3rd Qu.:-0.4458                   
 Max.   :-0.006236                                          Max.   : 0.4750                    Max.   : 0.3288                   
 FrequencyDomain.BodyAngular.Mean.Z FrequencyDomain.BodyAngular.StandardDeviation.X FrequencyDomain.BodyAngular.StandardDeviation.Y
 Min.   :-0.9860                    Min.   :-0.9947                                 Min.   :-0.9944                                
 1st Qu.:-0.9624                    1st Qu.:-0.9750                                 1st Qu.:-0.9602                                
 Median :-0.7909                    Median :-0.8086                                 Median :-0.7964                                
 Mean   :-0.6044                    Mean   :-0.7110                                 Mean   :-0.6454                                
 3rd Qu.:-0.2635                    3rd Qu.:-0.4813                                 3rd Qu.:-0.4154                                
 Max.   : 0.4924                    Max.   : 0.1966                                 Max.   : 0.6462                                
 FrequencyDomain.BodyAngular.StandardDeviation.Z FrequencyDomain.BodyAccellerationMagnitude.Mean
 Min.   :-0.9867                                 Min.   :-0.9868                                
 1st Qu.:-0.9643                                 1st Qu.:-0.9560                                
 Median :-0.8224                                 Median :-0.6703                                
 Mean   :-0.6577                                 Mean   :-0.5365                                
 3rd Qu.:-0.3916                                 3rd Qu.:-0.1622                                
 Max.   : 0.5225                                 Max.   : 0.5866                                
 FrequencyDomain.BodyAccellerationMagnitude.StandardDeviation FrequencyDomain.BodyBodyLinearAccelerationMagnitude.Mean
 Min.   :-0.9876                                              Min.   :-0.9940                                         
 1st Qu.:-0.9452                                              1st Qu.:-0.9770                                         
 Median :-0.6513                                              Median :-0.7940                                         
 Mean   :-0.6210                                              Mean   :-0.5756                                         
 3rd Qu.:-0.3654                                              3rd Qu.:-0.1872                                         
 Max.   : 0.1787                                              Max.   : 0.5384                                         
 FrequencyDomain.BodyBodyLinearAccelerationMagnitude.StandardDeviation FrequencyDomain.BodyBodyAngularMagnitude.Mean
 Min.   :-0.9944                                                       Min.   :-0.9865                              
 1st Qu.:-0.9752                                                       1st Qu.:-0.9616                              
 Median :-0.8126                                                       Median :-0.7657                              
 Mean   :-0.5992                                                       Mean   :-0.6671                              
 3rd Qu.:-0.2668                                                       3rd Qu.:-0.4087                              
 Max.   : 0.3163                                                       Max.   : 0.2040                              
 FrequencyDomain.BodyBodyAngularMagnitude.StandardDeviation FrequencyDomain.BodyBodyAngularVelocityMagnitude.Mean
 Min.   :-0.9815                                            Min.   :-0.9976                                      
 1st Qu.:-0.9488                                            1st Qu.:-0.9813                                      
 Median :-0.7727                                            Median :-0.8779                                      
 Mean   :-0.6723                                            Mean   :-0.7564                                      
 3rd Qu.:-0.4277                                            3rd Qu.:-0.5831                                      
 Max.   : 0.2367                                            Max.   : 0.1466                                      
 FrequencyDomain.BodyBodyAngularVelocityMagnitude.StandardDeviation
 Min.   :-0.9976                                                   
 1st Qu.:-0.9802                                                   
 Median :-0.8941                                                   
 Mean   :-0.7715                                                   
 3rd Qu.:-0.6081                                                   
 Max.   : 0.2878   
 
####Variables of the Tidy Data set
The variables Activity describe the activity that has been performed, while [Subject] describes the subject who performed the monitored Activity.  The other variables are the recorded sensor data. 

>	[1] "Activity"                                                             
>	 [2] "Subject"                                                              
>	 [3] "TimeDomain.BodyAccelleration.Mean.X"                                  
>	 [4] "TimeDomain.BodyAccelleration.Mean.Y"                                  
>	 [5] "TimeDomain.BodyAccelleration.Mean.Z"                                  
>	 [6] "TimeDomain.BodyAccelleration.StandardDeviation.X"                     
>	 [7] "TimeDomain.BodyAccelleration.StandardDeviation.Y"                     
>	 [8] "TimeDomain.BodyAccelleration.StandardDeviation.Z"                     
>	 [9] "TimeDomain.GravityAccelleration.Mean.X"                               
>	[10] "TimeDomain.GravityAccelleration.Mean.Y"                               
>	[11] "TimeDomain.GravityAccelleration.Mean.Z"                               
>	[12] "TimeDomain.GravityAccelleration.StandardDeviation.X"                  
>	[13] "TimeDomain.GravityAccelleration.StandardDeviation.Y"                  
>	[14] "TimeDomain.GravityAccelleration.StandardDeviation.Z"                  
>	[15] "TimeDomain.BodyAngular.Mean.X"                                        
>	[16] "TimeDomain.BodyAngular.Mean.Y"                                        
>	[17] "TimeDomain.BodyAngular.Mean.Z"                                        
>	[18] "TimeDomain.BodyAngular.StandardDeviation.X"                           
>	[19] "TimeDomain.BodyAngular.StandardDeviation.Y"                           
>	[20] "TimeDomain.BodyAngular.StandardDeviation.Z"                           
>	[21] "FrequencyDomain.BodyAccelleration.Mean.X"                             
>	[22] "FrequencyDomain.BodyAccelleration.Mean.Y"                             
>	[23] "FrequencyDomain.BodyAccelleration.Mean.Z"                             
>	[24] "FrequencyDomain.BodyAccelleration.StandardDeviation.X"                
>	[25] "FrequencyDomain.BodyAccelleration.StandardDeviation.Y"                
>	[26] "FrequencyDomain.BodyAccelleration.StandardDeviation.Z"                
>	[27] "FrequencyDomain.BodyLinearAcceleration.Mean.X"                        
>	[28] "FrequencyDomain.BodyLinearAcceleration.Mean.Y"                        
>	[29] "FrequencyDomain.BodyLinearAcceleration.Mean.Z"                        
>	[30] "FrequencyDomain.BodyLinearAcceleration.StandardDeviation.X"           
>	[31] "FrequencyDomain.BodyLinearAcceleration.StandardDeviation.Y"           
>	[32] "FrequencyDomain.BodyLinearAcceleration.StandardDeviation.Z"           
>	[33] "FrequencyDomain.BodyAngular.Mean.X"                                   
>	[34] "FrequencyDomain.BodyAngular.Mean.Y"                                   
>	[35] "FrequencyDomain.BodyAngular.Mean.Z"                                   
>	[36] "FrequencyDomain.BodyAngular.StandardDeviation.X"                      
>	[37] "FrequencyDomain.BodyAngular.StandardDeviation.Y"                      
>	[38] "FrequencyDomain.BodyAngular.StandardDeviation.Z"                      
>	[39] "FrequencyDomain.BodyAccellerationMagnitude.Mean"                      
>	[40] "FrequencyDomain.BodyAccellerationMagnitude.StandardDeviation"         
>	[41] "FrequencyDomain.BodyBodyLinearAccelerationMagnitude.Mean"             
>	[42] "FrequencyDomain.BodyBodyLinearAccelerationMagnitude.StandardDeviation"

>	[43] "FrequencyDomain.BodyBodyAngularMagnitude.Mean"                        
>	[44] "FrequencyDomain.BodyBodyAngularMagnitude.StandardDeviation"           
>	[45] "FrequencyDomain.BodyBodyAngularVelocityMagnitude.Mean"                
>	[46] "FrequencyDomain.BodyBodyAngularVelocityMagnitude.StandardDeviation" 


###2. Information about the experimental study design used. 
A full description of the dataset and the variables will not be replicated here but can be found at, url: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"


###3. The summary choices
The Summary choices made were: 
a. Renaming Variables for clarity.

b. Removing Variables because they were derived / calculated from other variables.

####a. Renaming Variables 
For this assignment the variables have been renamed for clarity.
Below are the original names next as well as the new transformed names.  

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

####b. Variables Removed: 
The following variables were removed because they were derived / calculated from other variables. 
Hence their removal from the Tidy dataset. 
>	 tBodyAccJerk.mean.X,
>	tBodyAccJerk.mean.Y,
>	tBodyAccJerk.mean.Z,
>	tBodyAccJerk.std.X,
>	tBodyAccJerk.std.Y,
>	tBodyAccJerk.std.Z,
>	tBodyGyroJerk.mean.X,
>	tBodyGyroJerk.mean.Y,
>	tBodyGyroJerk.mean.Z,
>	tBodyGyroJerk.std.X,
>	tBodyGyroJerk.std.Y,
>	tBodyGyroJerk.std.Z,
>	tBodyAccMag.mean,
>	tBodyAccMag.std,
>	tGravityAccMag.mean,
>	tGravityAccMag.std,
>	tBodyAccJerkMag.mean,
>	tBodyAccJerkMag.std,
>	tBodyGyroMag.mean,
>	tBodyGyroMag.std,
>	tBodyGyroJerkMag.mean,
>	tBodyGyroJerkMag.std
