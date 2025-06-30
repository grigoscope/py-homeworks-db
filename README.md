# Music Database Schema

![](db_homework.png)

### Tables and Columns

**Genre**

* **genre\_id** – Primary Key
* **name** – Genre name

**Artist**

* **artist\_id** – Primary Key
* **name** – Artist name

**Artist\_Genre**

* **artist\_id** – PK, FK → Artist.artist\_id
* **genre\_id**    – PK, FK → Genre.genre\_id

**Album**

* **album\_id** – Primary Key
* **title**    – Album title
* **year**       – Release year

**Artist\_Album**

* **artist\_id** – PK, FK → Artist.artist\_id
* **album\_id**    – PK, FK → Album.album\_id

**Track**

* **track\_id** – Primary Key
* **title**    – Track title
* **duration** – Track length (INTERVAL)
* **album\_id** – FK → Album.album\_id

**Compilation**

* **compilation\_id** – Primary Key
* **name**         – Compilation title
* **year**          – Release year

**Compilation\_Track**

* **compilation\_id** – PK, FK → Compilation.compilation\_id
* **track\_id**      – PK, FK → Track.track\_id

---

### Relationships

* **Genre ↔ Artist**
  Many-to-many via **Artist\_Genre**
* **Artist ↔ Album**
  Many-to-many via **Artist\_Album**
* **Album → Track**
  One-to-many by **Track.album\_id**
* **Compilation ↔ Track**
  Many-to-many via **Compilation\_Track**
