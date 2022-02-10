DELETE from
    games
WHERE
    id NOT IN (
        select
            game_id
        from
            games_categories
    )
    AND release_date IS NULL