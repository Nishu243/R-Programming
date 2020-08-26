# R-Programming
# Normalized data
The word “normalization” is used informally in statistics, and so the term normalized data can have multiple meanings. In most cases, when you normalize data you eliminate the units of measurement for data, enabling you to more easily compare data from different places.
# Differential_expression_analysis
Differential expression analysis means taking the normalised read count data and performing statistical analysis to discover quantitative changes in expression levels between experimental groups.
# DEA includes several steps:https://www.youtube.com/watch?v=UFB993xufUU
1. LIbrary normalization
>DESeq2 does not use RPKM, FPKM, TPM, even edgeR
>There are two main problems in library normalization
i. Adjusting for differences in library sizes (for ex.one sample contain 635 reads of six genes in a genome, while another sample contains 1230 reads of those six genes)
ii. Adjusting for differences in library composition
RNA-Seq and other high throughput sequencing often used to compare one tissue type with another (ex. spleen vs. liver)
>It could be that there are a lot of genes transcribed in liver but not in spleen-This is an example of a "differences in library composition".
You can also imagine seeing differences in library composition" in the same tissue type if you knock out a transcription factor
>again sometimes two sample contains same number of reads but one gene transcribed in one sample, in another is not. So now assume expression of all genes is same in two samples with one exceptions.
>So now assume, only sample 1 transcribes gene A2M (563 reads).This means that the 563 reads is used up by A2M in sample 1 will be distributed to other genes in sample 2 (A2M=0 reads). 
>The read counts for everything except A2M are crazy high in sample 2. However, the only differentially expressed gene is A2M in both sample,cz in sample it gives 563 reads while in sample 2,it gives 0 reads.
DESeq2 and edgR made for all data sets, so it require the normalization will be handle by users-Differences in library size and library composition.
# Scaling in R programming

log simply takes the logarithm (base e, by default) of each element of the vector.
scale, with default settings, will calculate the mean and standard deviation of the entire vector, then "scale" each element by those values by subtracting the mean and dividing by the sd. (If you use scale(x, scale=FALSE), it will only subtract the mean but not divide by the std deviation.)

Note that this will give you the same values

   set.seed(1)
   x <- runif(7)

   # Manually scaling
   (x - mean(x)) / sd(x)

   scale(x)
   # Again process of data normalization
  # 1. Take the log of all the values (DESeq2 could use log10, log2, but loge the default R. R defines log(0) as minus infinity.
  # 2. Average each row (average of log values in rows).
   > One cool thing about the average of log values is that this average is not easily swayed by outliers (one read is much higher than other gene's read). Average calculated with logs are called geometric averages.
  # 3. Filter out gene with infinity. In general, this step filter out genes with zero read counts in one or more samples. if you are comparing liver and spleen, this will 
   remove all of the genes only transcribed in liver(or spleen). In theory, this helps focus the scaling factors on the house keeping genes (genes transcribed at similar levels regardless of tissue type).
  # 4. Substract the average log value from the log (count) (log count is log of all the values).[log(reads for gene X)-average log values of gene X] So,we are really checking out the ratio of the reads in each sample to the average across all samples.
  # 5. Calculate the median of the ratios for each sample. [log(reads for gene X/average for gene X)] Using the median is another way to avoid extreme genes from swaying the value too much in one direction. Genes with huge differences in expression have no more influence on the median than genes with minor differences. Since genes with huge differences will most likely to be rare, the effect is to give more influence to moderate differences and "house keeping genes".
 #  6. Coverts the medians to normal numbers to get the final scaling factors for each sample. Again these are log values, so they are exponents (in this case, exponents for e). Scaling factor for sample 1# e to the power (-0.9)=0.4, calculate for other samples as like this.
 # Now divide the original read counts by the scaling factors.
 
 # Summary of DESeq2
 .log eliminates all genes that are only transcribed in one sample type (liver/spleen). They also help smooth over outlier read counts (via the geometric mean).
 >The median further downplays the gene that soaks up a lot of reads, putting more emphasis on moderately expressed genes. 
   
   
   
 
