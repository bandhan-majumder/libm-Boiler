### Local Setup
```
git clone https://github.com/bandhan-majumder/libm-Boiler
cd libm-Boiler
npm i
```
### DB config
**Run postgres using Docker**
```
docker run --name my-postgres -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
psql -h localhost -d postgres -U postgres
```
**Url string will be**
```
postgresql://postgres:mysecretpassword@localhost/postgres
```
### Import dummy data
#### For postgres
```
\i <your_path_to_file>/libm/database/postgres/sampleData.sql;
```
after successful import, do `\dt` to check all the data tables
![successful data import](image.png)
### For mysql
```
npm run dev
```
### Access at
[http://localhost:5173/](http://localhost:5173/)


