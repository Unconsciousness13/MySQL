SELECT
    r.id,
    r.content,
    r.rating,
    r.picture_url,
    r.published_at
FROM
    reviews AS r
WHERE
    r.content LIKE 'My%'
    AND char_length(r.content) > 61
ORDER BY
    r.rating DESC;