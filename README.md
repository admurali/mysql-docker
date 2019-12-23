## MySQL 5.7 Docker Quickstart

### Using Docker Compose

1. Starting MySQL docker image
    * In root folder run `docker-compose up`
	* Brings up MySQL docker image specified under 
	   ``` ports: - "3306:3306"``` in `docker-compose.yml`
2. Shutting down MySQL docker image
    * In root folder run `docker-compose down`
    * Brings down MySQL docker instance
    * Data is persisted under docker volumes `sample_db`
3. To reset and bring up a new database
    * Option 1: Run `make init` under root directory
    * Option 2: Follow Makefile commands to remove docker volume where data is persisted (`sample_data`)


### Additional Scripts at Runtime
1. Under `mysql/scripts` folder you will find a template file
  * Any and all `.sql` scripts under the scripts folder will run upon bringing up a `new database`. Will only run when `make init` or similar commands are issued.

### Changing Volume Name
Note to change `sample_data` you must update `docker-compose.yml` and `Makefile` which contain references to docker volume

### Other tips
1. You can always detach from docker compose logs using the `-d` parameter
   * Example: `docker-compose up -d`

