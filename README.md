# Universe Database 🌌

Welcome to the **Universe Database**, where we store information about galaxies, stars, planets, moons, and solar systems. Check out the key tables below:

---

### 1. **Galaxy Table** 🌌

| galaxy_id | name         | type       | description                               | diameter |
|-----------|--------------|------------|-------------------------------------------|----------|
| 1         | Milky Way    | Spiral     | Our home galaxy, where Earth is located.  | 100000   |
| 2         | Andromeda    | Spiral     | A neighboring galaxy on a collision course. | 220000   |
| 3         | Triangulum   | Spiral     | A small galaxy in the Local Group.        | 60000    |

---

### 2. **Planet Table** 🪐

| planet_id | name     | distance_from_earth | age_in_billion_of_years | has_life | star_id |
|-----------|----------|---------------------|-------------------------|----------|---------|
| 13        | Earth    | 0                   | 4.5                     | true     | 19      |
| 14        | Mars     | 225 million km      | 4.6                     | false    | 19      |
| 15        | Venus    | 42 million km       | 4.6                     | false    | 19      |

---

### 3. **Star Table** 🌟

| star_id | name       | size       | surface_temperature | luminosity | galaxy_id |
|---------|------------|------------|---------------------|------------|-----------|
| 19      | Sun        | Medium     | 5778                | 1          | 1         |
| 20      | Sirius     | Large      | 9940                | 25.4       | 1         |
| 21      | Betelgeuse | Supergiant | 3500                | 100000     | 7         |

---

### 4. **Moon Table** 🌙

| moon_id | name    | age_in_million_of_years | planet_id | is_habitable |
|---------|---------|-------------------------|-----------|--------------|
| 21      | Luna    | 4500                    | 13        | true         |
| 22      | Deimos  | 4500                    | 14        | false        |
| 23      | Phobos  | 4500                    | 14        | false        |

---

### 5. **Solar System Table** 🌞

| solar_system_id | name            | galaxy_id |
|-----------------|-----------------|-----------|
| 1               | Solar System    | 1         |
| 2               | Alpha Centauri  | 4         |
| 3               | Orion System    | 3         |

---

## Relationships

- **Galaxies** can have multiple **Stars** and **Solar Systems**.
- **Planets** orbit **Stars** and may have **Moons**.
- **Solar Systems** belong to a specific **Galaxy**.

---

### Enjoy exploring the universe! 🚀


