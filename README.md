### BIOC3301-Project

1)	Copy the folder containing the sequencing data files to the Cirrus home directory.

2)	Verify the mapping file containing sample metadata with validate_mapping_file.py.

3)	Join the paired-end reads with SeqPrep using the join_paired_ends.py script to generate the new read and an index Fastq file containing updated barcode sequences for downstream analysis.

4)	Demultiplex and quality filter the newly generated read and unique barcode sequences with phred quality score 19 using the split_libraries_fastq.py script.

5)	Pick OTUs using the pick_closed_reference_otus.py script against Greengenes closed reference database. This generates the BIOM table and assigns sequences to OTUs.

6)	Perform core diversity analysis using core_diversity_analysis.py to generate taxa summaries and rarefaction curves for alpha diversity and 3D UniFrac PCoA plots for beta diversity.

7)	Convert the 3D PCoA plots from 3D to 2D using make_2d_plots script to visualise beta diversity. 

8)	Compare alpha diversity using a non-parametric two-sample t-test, with compare_alpha_diversity.py. 

9)	Compare categories with compare_categories.py to analyse statistical significance of variables on microbial diversity.

10)	Compare weighted and un-weighted UniFrac distance matrices using a partial mantel test, with compare_distance_matrices.py.
