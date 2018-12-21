clean_pruned <-
  read.table("start_data/clean_pruned.csv",
             sep = ",",
             header = TRUE)
nr <- nrow(clean_pruned)
clean_pruned$group <- rep("pruned", nr)

clean_unpruned <-
  read.table("start_data/clean_unpruned.csv",
             sep = ",",
             header = TRUE)
nr <- nrow(clean_unpruned)
clean_unpruned$group <- rep("unpruned", nr)

rf_df <-
  read.table(
    "start_data/aggregated_random_forest_confusion_matrices.csv",
    sep = ",",
    header = TRUE
  )
rf_df <-
  rf_df[!(rf_df$partition_number %in% c(2001, 3001, 4001, 5001, 10001)), ]
nr <- nrow(rf_df)
rf_df$group <- rep("rf", nr)

confusion_matrices <- rbind(clean_unpruned, clean_pruned, rf_df)
