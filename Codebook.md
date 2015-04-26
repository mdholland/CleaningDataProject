# Codebook
## Summarized Samsung Human Activity Recognition Dataset

The summarized Samsung Human Activity Recognition Dataset contains
means of 66 measurements for each combination of test subject and
activity.

## Column definitions
The first two columns identify the experimental subject and the activity being performed.

* subject_id: integer, unique identifer for each subject
* activity:   factor, activity being performed by subject
    - levels: laying, sitting, standing, walking, walkingDownstairs, walkingUpstairs

Each remaining column contains numerical values corresponding to the
mean of each signal retained from the source dataset. See below for a
mapping of the summarized dataset to the variable names from the
source data in the file "features.txt". Variable names can be
interpreted as follows:

* t*	    time-domain signals
* f*	    frequency-domain signals
* *Body*	    signals attributed to body motions
* *Gravity*   signals attributed to gravity
* *Acc*	    signals derived from accelerometer data
* *Gyro*	    signals derived from gyroscope data

Please consult the documentation of the source dataset for further details.

### Variable = mean(Source Variable)
* tBodyAccMeanX: 	          tBodyAcc-mean()-X
* tBodyAccMeanY: 	     	  tBodyAcc-mean()-Y
* tBodyAccMeanZ: 	     	  tBodyAcc-mean()-Z
* tBodyAccStdX: 	     	  tBodyAcc-std()-X
* tBodyAccStdY: 	     	  tBodyAcc-std()-Y
* tBodyAccStdZ: 	     	  tBodyAcc-std()-Z
* tGravityAccMeanX:    	  tGravityAcc-mean()-X
* tGravityAccMeanY:    	  tGravityAcc-mean()-Y
* tGravityAccMeanZ:    	  tGravityAcc-mean()-Z
* tGravityAccStdX:     	  tGravityAcc-std()-X
* tGravityAccStdY:     	  tGravityAcc-std()-Y
* tGravityAccStdZ:     	  tGravityAcc-std()-Z
* tBodyAccJerkMeanX:   	  tBodyAccJerk-mean()-X
* tBodyAccJerkMeanY:  	  tBodyAccJerk-mean()-Y
* tBodyAccJerkMeanZ:   	  tBodyAccJerk-mean()-Z
* tBodyAccJerkStdX:   	  tBodyAccJerk-std()-X
* tBodyAccJerkStdY:    	  tBodyAccJerk-std()-Y
* tBodyAccJerkStdZ:    	  tBodyAccJerk-std()-Z
* tBodyGyroMeanX:      	  tBodyGyro-mean()-X
* tBodyGyroMeanY:      	  tBodyGyro-mean()-Y
* tBodyGyroMeanZ:      	  tBodyGyro-mean()-Z
* tBodyGyroStdX: 	     	  tBodyGyro-std()-X
* tBodyGyroStdY: 	     	  tBodyGyro-std()-Y
* tBodyGyroStdZ: 	     	  tBodyGyro-std()-Z
* tBodyGyroJerkMeanX:  	  tBodyGyroJerk-mean()-X
* tBodyGyroJerkMeanY:  	  tBodyGyroJerk-mean()-Y
* tBodyGyroJerkMeanZ:  	  tBodyGyroJerk-mean()-Z
* tBodyGyroJerkStdX:   	  tBodyGyroJerk-std()-X
* tBodyGyroJerkStdY:   	  tBodyGyroJerk-std()-Y
* tBodyGyroJerkStdZ:   	  tBodyGyroJerk-std()-Z
* tBodyAccMagMean:     	  tBodyAccMag-mean()
* tBodyAccMagStd:      	  tBodyAccMag-std()
* tGravityAccMagMean:  	  tGravityAccMag-mean()
* tGravityAccMagStd:   	  tGravityAccMag-std()
* tBodyAccJerkMagMean: 	  tBodyAccJerkMag-mean()
* tBodyAccJerkMagStd:  	  tBodyAccJerkMag-std()
* tBodyGyroMagMean:    	  tBodyGyroMag-mean()
* tBodyGyroMagStd:     	  tBodyGyroMag-std()
* tBodyGyroJerkMagMean: 	  tBodyGyroJerkMag-mean()
* tBodyGyroJerkMagStd:  	  tBodyGyroJerkMag-std()
* fBodyAccMeanX: 	      	  fBodyAcc-mean()-X
* fBodyAccMeanY: 	      	  fBodyAcc-mean()-Y
* fBodyAccMeanZ: 	      	  fBodyAcc-mean()-Z
* fBodyAccStdX: 	      	  fBodyAcc-std()-X
* fBodyAccStdY: 	      	  fBodyAcc-std()-Y
* fBodyAccStdZ: 	      	  fBodyAcc-std()-Z
* fBodyAccJerkMeanX:    	  fBodyAccJerk-mean()-X
* fBodyAccJerkMeanY:    	  fBodyAccJerk-mean()-Y
* fBodyAccJerkMeanZ:    	  fBodyAccJerk-mean()-Z
* fBodyAccJerkStdX:     	  fBodyAccJerk-std()-X
* fBodyAccJerkStdY:     	  fBodyAccJerk-std()-Y
* fBodyAccJerkStdZ:     	  fBodyAccJerk-std()-Z
* fBodyGyroMeanX:       	  fBodyGyro-mean()-X
* fBodyGyroMeanY:       	  fBodyGyro-mean()-Y
* fBodyGyroMeanZ:       	  fBodyGyro-mean()-Z
* fBodyGyroStdX: 	      	  fBodyGyro-std()-X
* fBodyGyroStdY: 	      	  fBodyGyro-std()-Y
* fBodyGyroStdZ: 	      	  fBodyGyro-std()-Z
* fBodyAccMagMean:      	  fBodyAccMag-mean()
* fBodyAccMagStd:       	  fBodyAccMag-std()
* fBodyBodyAccJerkMagMean:  fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMagStd:   fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMagMean: 	  fBodyBodyGyroMag-mean()
* fBodyBodyGyroMagStd:	  fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMagMean: fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMagStd:  fBodyBodyGyroJerkMag-std()
