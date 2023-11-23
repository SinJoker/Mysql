BEGIN record_update
UPDATE formula_main 
SET
    formula_name = 'xx', 
    format_latex = 'xx',
    format_excel = 'xx',
    description = 'xx',
    example_usage = 'xx',
WHERE 
    formula_id  = 1 ;



 COMMIT;