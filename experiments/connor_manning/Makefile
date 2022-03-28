
test:
	#mkdir ~/entwine
	docker run -it -v ~/entwine:/entwine connormanning/entwine build \
    -i https://data.entwine.io/red-rocks.laz \
    -o /entwine/red-rocks


viz:
	docker run -it -v ~/entwine:/var/www -p 8080:8080 connormanning/http-server


lakecity:
	docker run -it -v ~/entwine:/entwine connormanning/entwine build \
	-i s3://eccoe-lidar/ajit/HT404_1580305001_1264340300747572_1.las \
	-o /entwine/lakecity

yankton:
	docker run -it -v ~/entwine:/entwine connormanning/entwine build \
	-i https://s3-us-west-2.amazonaws.com/usgs-lidar-stac/ept/SD_Yankton_County_2012.json \
	-o /entwine/yankton1

drone:
	docker run -it -v ~/data/drone:/entwine connormanning/entwine build \
	-i entwine/2020_Drone_M.las \
	-o /entwine/drone



yankton_local:
	docker run -it -v ~/data:/entwine connormanning/entwine build \
	-i /entwine/SD_Yankton_County_2012_001401.laz \
	-o /entwine/yankton

ajit:
	docker run -it -v ~/data/ajit:/entwine connormanning/entwine build \
        -i /entwine/HT404_1580305001_1264340300747572_1.las \
        -o /entwine/lakecity



