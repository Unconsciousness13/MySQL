DELIMITER $ $ CREATE FUNCTION ufn_calculate_future_value(
    initial_sum DECIMAL(19, 4),
    yearly_int_rate DECIMAL(19, 4),
    number_of_years INT
) RETURNS DECIMAL(19, 4) BEGIN RETURN initial_sum * POW((1 + yearly_int_rate), number_of_years);

END $ $ DELIMITER;