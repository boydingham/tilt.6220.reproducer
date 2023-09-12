# tilt.6220.reproducer

## Steps to Reproduce
1. Download and extract this reproducer
2. In the project root, run: `docker compose up`
   * Observe in the Spring Boot application logs, three entities are successfully created:
   ```
   …
   tilt6220reproducer-app-1  | entity.Entitybus@be30
   tilt6220reproducer-app-1  | entity.Entitybus@c230
   tilt6220reproducer-app-1  | entity.Entitybus@c630
   …
   ```
3. Shut down both services with: `docker compose down`
4. Delete the Spring Boot app image with: `docker image rm […]`
5. Still in the project root, run: `tilt up`
   * Hit [`Space`] to launch the Tilt UI
   * Observe that the `db` service successfully starts
   * Observe that the `app` service fails to start