CREATE FUNCTION ufn_is_word_comprised(set_of_letters varchar(50), word varchar(50)) RETURNS BIT RETURN word REGEXP (concat('^[', set_of_letters, ']+$'));

SELECT
    ufn_is_word_comprised('oistmiahf', 'Sofia');

SELECT
    ufn_is_word_comprised('oistmiahf', 'halves');

SELECT
    ufn_is_word_comprised('bobr', 'Rob');

SELECT
    ufn_is_word_comprised('pppp', 'Guy');