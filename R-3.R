


subset(fish2021, skalldyr > 30)
fish2021 <- rename(fish2021, "skalldyr" = 10 ) 

(subset(fish2021[-11], skalldyr > 30)) %>% 
  pivot_longer(
    cols = !land,
    names_to = "fish",
    values_to = "amount"
  ) %>% 
  ggplot(., aes(x = land,y=amount, fill = fish)) + 
  geom_bar(stat = "identity") +
  labs(x="Country", y="Total amount of sales in mill.nok")

 head(fish2021[-11]) %>% 
   pivot_longer(
     cols = !land,
     names_to = "fish",
     values_to = "amount"
   ) %>% 
   ggplot(., aes(x = land,y=amount, fill = fish)) + 
   geom_bar(stat = "identity") +
   labs(x="Country", y="Total amount of sales in mill.nok") 
  
 
 
 
 ggplot(testyRocket, aes(x = land,y=amount, fill = fish)) + 
   geom_bar(stat = "identity")
 

 fish2021 <- fish2021["Storbritannia" %in% c(land),]
 
 
 fish2021 %>%  filter(!land=='Storbritannia')

