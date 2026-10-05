# SQL Security Notes

SQL injection occurs when untrusted input changes the intended structure of a database query.

## Defensive Approach

Use parameterised queries or prepared statements.

```text
Unsafe:
"SELECT ... WHERE username = '" + user_input + "'"

Safer:
Prepared statement + parameter
```

Never store real credentials or personal data in this educational repository.
