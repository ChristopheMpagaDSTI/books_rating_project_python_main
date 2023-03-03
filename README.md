# books_rating_project_modeling

# tasks:

### Preparing 4 dataframe for cross-examining each modeling performances.

df1:
 `'average_rating', 'num_pages', 'ratings_count', 'text_reviews_count'`

df2:
`'average_rating', 'num_pages', 'ratings_count', 'text_reviews_count'`
+`'languages', 'authors', 'publishers'`

df3:
`'average_rating', 'num_pages', 'ratings_count', 'text_reviews_count'`
+`'authors'`

df4:
 `'average_rating', 'num_pages', 'ratings_count', 'text_reviews_count'`
+`'authors', 'publishers'`

### models selection

"linear reg": reg_2

"ridge model":reg_ridge_2,

"lasso model ": reg_lasso_2,

"ridge CV":reg_ridge_CV_2,

"random forest":rf_2

### results

#### df1
 `'average_rating', 'num_pages', 'ratings_count', 'text_reviews_count'`

|               | r2        | RMSE     |
| ------------- | --------- | -------- |
| lasso model   | -1.370582 | 0.169660 |
| ridge model   | -2.066523 | 0.181517 |
| linear reg    | -2.066526 | 0.181517 |
| ridge CV      | -2.063746 | 0.181474 |
| random forest | -4.719662 | 0.183738 |



#### df2
`'average_rating', 'num_pages', 'ratings_count', 'text_reviews_count'`
+`'languages', 'authors', 'publishers'`

|               | r2            | RMSE         |
| ------------- | ------------- | ------------ |
| lasso model   | -1.370582     | 0.169660     |
| ridge model   | -1.794781     | 0.196864     |
| linear reg    | -1.795861     | 0.196901     |
| ~~ridge CV~~  | ~~-2.241187~~ | ~~0.198287~~ |
| random forest | -3.729992     | 0.175169     |

#### df3
`'average_rating', 'num_pages', 'ratings_count', 'text_reviews_count'`
+`'authors'`

|               | r2            | RMSE         |
| ------------- | ------------- | ------------ |
| lasso model   | -1.370582     | 0.169660     |
| ~~ridge CV~~  | ~~-2.063469~~ | ~~0.181470~~ |
| ridge model   | -2.066245     | 0.181513     |
| linear reg    | -2.066247     | 0.181513     |
| random forest | -3.794531     | 0.179746     |

#### df4
 `'average_rating', 'num_pages', 'ratings_count', 'text_reviews_count'`
+`'authors', 'publishers'`

|               | r2            | RMSE         |
| ------------- | ------------- | ------------ |
| lasso model   | -1.370582     | 0.169660     |
| ~~ridge CV~~  | ~~-2.063191~~ | ~~0.181465~~ |
| ridge model   | -2.065966     | 0.181509     |
| linear reg    | -2.065969     | 0.181509     |
| random forest | -4.252993     | 0.178676     |


#### df5
`'average_rating', 'num_pages', 'ratings_count', 'text_reviews_count'`
+ `'dist_authors', 'publishers'`

|               | r2            | RMSE         |
| ------------- | ------------- | ------------ |
| lasso model   | -1.370582     | 0.169660     |
| ~~ridge CV~~  | ~~-2.063191~~ | ~~0.181465~~ |
| ridge model   | -2.617985     | 0.188293     |
| linear reg    | -2.620670     | 0.188325     |
| random forest | -3.876890     | 0.177614     |





#### df6





#### df7





#### df8





