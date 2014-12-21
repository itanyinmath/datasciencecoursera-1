# CodeBook

Here I explain the variables included in both merged_data_set.txt and tidy_aggregated_data_set.txt. Both files contain the same number of columns,
and corresponds and each column correspond to the same variables. The only difference between them, is that the first included the original number
of records, while the second is just a mean aggregation grouped by subject and classified activity. With that in mind the included variables
in both files are (where names are self explanatory:

 * Column  1   Name: subject
 * Column  2   Name: activity_name
 * Column  3   Name: tbodyacc_mean_x
 * Column  4   Name: tbodyacc_mean_y
 * Column  5   Name: tbodyacc_mean_z
 * Column  6   Name: tgravityacc_mean_x
 * Column  7   Name: tgravityacc_mean_y
 * Column  8   Name: tgravityacc_mean_z
 * Column  9   Name: tbodyaccjerk_mean_x
 * Column 10   Name: tbodyaccjerk_mean_y
 * Column 11   Name: tbodyaccjerk_mean_z
 * Column 12   Name: tbodygyro_mean_x
 * Column 13   Name: tbodygyro_mean_y
 * Column 14   Name: tbodygyro_mean_z
 * Column 15   Name: tbodygyrojerk_mean_x
 * Column 16   Name: tbodygyrojerk_mean_y
 * Column 17   Name: tbodygyrojerk_mean_z
 * Column 18   Name: tbodyaccmag_mean
 * Column 19   Name: tgravityaccmag_mean
 * Column 20   Name: tbodyaccjerkmag_mean
 * Column 21   Name: tbodygyromag_mean
 * Column 22   Name: tbodygyrojerkmag_mean
 * Column 23   Name: fbodyacc_mean_x
 * Column 24   Name: fbodyacc_mean_y
 * Column 25   Name: fbodyacc_mean_z
 * Column 26   Name: fbodyaccjerk_mean_x
 * Column 27   Name: fbodyaccjerk_mean_y
 * Column 28   Name: fbodyaccjerk_mean_z
 * Column 29   Name: fbodygyro_mean_x
 * Column 30   Name: fbodygyro_mean_y
 * Column 31   Name: fbodygyro_mean_z
 * Column 32   Name: fbodyaccmag_mean
 * Column 33   Name: fbodybodyaccjerkmag_mean
 * Column 34   Name: fbodybodygyromag_mean
 * Column 35   Name: fbodybodygyrojerkmag_mean
 * Column 36   Name: tbodyacc_std_x
 * Column 37   Name: tbodyacc_std_y
 * Column 38   Name: tbodyacc_std_z
 * Column 39   Name: tgravityacc_std_x
 * Column 40   Name: tgravityacc_std_y
 * Column 41   Name: tgravityacc_std_z
 * Column 42   Name: tbodyaccjerk_std_x
 * Column 43   Name: tbodyaccjerk_std_y
 * Column 44   Name: tbodyaccjerk_std_z
 * Column 45   Name: tbodygyro_std_x
 * Column 46   Name: tbodygyro_std_y
 * Column 47   Name: tbodygyro_std_z
 * Column 48   Name: tbodygyrojerk_std_x
 * Column 49   Name: tbodygyrojerk_std_y
 * Column 50   Name: tbodygyrojerk_std_z
 * Column 51   Name: tbodyaccmag_std
 * Column 52   Name: tgravityaccmag_std
 * Column 53   Name: tbodyaccjerkmag_std
 * Column 54   Name: tbodygyromag_std
 * Column 55   Name: tbodygyrojerkmag_std
 * Column 56   Name: fbodyacc_std_x
 * Column 57   Name: fbodyacc_std_y
 * Column 58   Name: fbodyacc_std_z
 * Column 59   Name: fbodyaccjerk_std_x
 * Column 60   Name: fbodyaccjerk_std_y
 * Column 61   Name: fbodyaccjerk_std_z
 * Column 62   Name: fbodygyro_std_x
 * Column 63   Name: fbodygyro_std_y
 * Column 64   Name: fbodygyro_std_z
 * Column 65   Name: fbodyaccmag_std
 * Column 66   Name: fbodybodyaccjerkmag_std
 * Column 67   Name: fbodybodygyromag_std
 * Column 68   Name: fbodybodygyrojerkmag_std

As it is possible to see, the first and second column (subject and activity) are the most useful ones because they give us information about
the subject identity and the classified activity that the rest of the features belongs to.