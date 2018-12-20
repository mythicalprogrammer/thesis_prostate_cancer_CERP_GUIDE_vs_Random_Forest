title <- "CERP-GUIDE Forest (unpruned) vs CERP-GUIDE Forest (pruned) vs Random Forest"
ggplot(data = confusion_matrices, aes(x = partition_number, y = accuracy, group = group)) +
  geom_line(aes(linetype=group,color=group)) +
  geom_point(aes(shape=group,color=group)) +
  xlab("Number of Trees") + ylab("Accuracy") +
  ggtitle(title)
