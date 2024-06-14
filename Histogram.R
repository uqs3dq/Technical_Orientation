
df <- read_excel("C:/Users/berek/Downloads/MSDS-Orientation-Computer-Survey.xlsx")

df <- df[-1,]

df <- df %>%
  mutate(`Operating System` = case_when(
    `Operating System` == "Windows (by professional necessity), MacOS (by personal choice)" ~ "Windows",
    `Operating System` == "Windows 10" ~ "Windows",
    TRUE ~ `Operating System`
  )) 

df <- df%>% 
  filter(`Operating System` != "All of the above", 
         `Operating System` != "I use Mac and Linux")


ggplot(df, aes(x=`CPU Number of Cores (int)`, fill=`Operating System`)) + 
  geom_histogram(position = 'dodge', binwidth = 5) +
  labs(x = "CPU Number of Cores", y = "Count", fill="Operating System") +
  scale_y_continuous(n.breaks = 10) + theme_stata() +ggtitle("CPU Number of Cores by Operating System")

