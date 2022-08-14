# NOTES

- Database `configuration` table is of type `json`

```
    id	    config_name	        configuration
    1	    WEBSITE_CONFIGS	    {"allow": true, "version": 7, "language": "fr"}
    2	    WEBSITE_CONFIGS	    {"name": "fadil xcoder", "unit": 786, "language": "php", "nato_phonetic": "Foxtrot Alfa Delta India …
```

**Quering within JSON in table data**

```sql
SELECT `configuration`->>'$.nato_phonetic' AS phonetic_code
FROM `json_configs`
WHERE `configuration`->>'$.unit' = 786
```

**Response**

```json
{
    HTTP: 200,
    allow: true,
    version: true,
    language: "fr",
    Code: "Foxtrot Alfa Delta India Lima"
}
```