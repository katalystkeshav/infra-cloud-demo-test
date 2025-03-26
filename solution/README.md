
Part 1
- Make the gencsv.sh file executable -
`chmod +x gencsv.sh`
- Run the shell script -
`./gencsv.sh`
- Run the docker command present in "part-1-logs" to start the container.
- You can check whether the container is running or not using command -
`docker ps`
- Check the web page in your brower by opening the link -
`http://localhost:9393`
- Run the following command to get the output in a file -
`wget -O ./part-1-output http://localhost:9393/raw`
- Run the following command to get the container logs -
`docker logs [container_id] >& part-1-logs`

---
Part 2
- To run the container with docker compose use the command -
`docker compose up`
