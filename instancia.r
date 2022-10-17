facilities <- readline(prompt="Enter the number of facilities: ")
facilites_min <- readline(prompt="Enter the minimal value of x/y coordinates: ")
facilites_max <- readline(prompt="Enter the max value of x/y coordinates: ")

facilities <- as.numeric(facilities)
facilites_min <- as.numeric(facilites_min)
facilites_max <- as.numeric(facilites_max)
facilities_df <- data.frame(
    ID = rep(LETTERS[1:26],length=facilities),
    x = round(runif(facilities, min = facilites_min,
                    max = facilites_max),2),
    y = round(runif(facilities, min = facilites_min,
                    max = facilites_max),2)
);
facilities_df

cat("*****************\n\n")
demand_nodes <- readline(prompt="Enter the number of demand nodes: ")
demand_nodes_min <- readline(prompt="Enter the minimal value of x/y coordinates: ")
demand_nodes_max <-  readline(prompt="Enter the max value of x/y coordinates: ")
demand_nodes_z_min <- readline(prompt="Enter the min value for z: ")
demand_nodes_z_max  <- readline(prompt="Enter the max value for z: ")

demand_nodes <- as.numeric(demand_nodes)
demand_nodes_min <- as.numeric(demand_nodes_min)
demand_nodes_max <- as.numeric(demand_nodes_max)
demand_nodes_z_min <- as.numeric(demand_nodes_z_min)
demand_nodes_z_max <- as.numeric(demand_nodes_z_max)

demand_nodes_df <- data.frame(
    x = round(runif(demand_nodes, min = demand_nodes_min,
                    max = demand_nodes_max), 2),
    y = round(runif(demand_nodes, min = demand_nodes_min,
                    max = demand_nodes_max),2),
    z = round(runif(demand_nodes, min = demand_nodes_z_min,
                    max = demand_nodes_z_max),0)
)
demand_nodes_df
write.table(facilities_df, file = "facilites.txt", sep = "\t",
            col.names = TRUE, row.names =FALSE)

write.table(demand_nodes_df, file = "demand_nodes.txt", sep = "\t",
            col.names = TRUE, row.names =FALSE)
