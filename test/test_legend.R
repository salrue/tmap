data(World)
data(rivers)
data(metro)
data(land)
data(NLD_prov)
data(NLD_muni)
metro$growth <- (metro$X2020 - metro$X2010) / (metro$X2010 * 10) * 100

## one double legend item
tm_shape(World) +
	tm_fill("income_grp") +
	tm_bubbles(size="pop_est") +
tm_shape(rivers) +
	tm_lines(col = "type", lwd="scalerank", scale=3) +
tm_shape(metro) +
	tm_bubbles(size = "X2010", col="growth") +
tm_shape(land) +
	tm_raster("trees", alpha=.25)


tm_shape(World) +
	tm_fill(c("income_grp", "economy"), title = c("Income", "Economy")) +
	tm_bubbles(size="pop_est") +
	tm_shape(rivers) +
	tm_lines(col = "type", lwd="scalerank", scale=3) +
	tm_shape(metro) +
	tm_bubbles(size = "X2010", col="growth") +
	tm_shape(land) +
	tm_raster("trees", alpha=.25) +
	tm_layout(title="")

tm_shape(World) +
	tm_fill("income_grp", title="Test") +
	tm_layout(title="Test")

tm_shape(metro) +
	tm_bubbles(size = "X2010", col="growth", title.size = "Test", title.col="Test") 

tm_shape(metro) +
	tm_bubbles(size = "X2010", col="growth", title.size = "Test", title.col="Test") +
	tm_layout("Abcdefg", legend.position=c("left", "top"), title.position=c("left", "bottom"))


tm_shape(World) +
	tm_fill() +
	tm_facets("continent") + tm_layout()



qtm(World, fill = "economy", text="iso_a3", text.size = "AREA", bubble.size = "pop_est",
	fill.palette="-Blues", theme = "World", title="Economy", fill.title="Test")


tm_shape(World) +
	tm_fill("economy") +
	tm_layout("Test")


tm_shape(NLD_muni) +
	tm_fill(col="population", convert2density=TRUE, 
			style="kmeans", title="Population (per km2)", legend.hist=TRUE) +
	tm_borders("grey25", alpha=.5) +
 	tm_shape(NLD_prov) +
 	tm_borders("grey40", lwd=2) +
 	tm_layout_NLD2(bg.color="white", draw.frame = FALSE, legend.width=.4, legend.hist.width=.3, legend.bg.color="grey80")

