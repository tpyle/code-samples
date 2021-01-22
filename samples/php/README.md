# PHP

[Reference](https://www.php.net/docs.php)

## Usage

Php is run using `php`, via the `php-cli` package. That package may throw errors about missing libraries, which are installed via `php-<library>`;

## Notes

There seems to be a `variables_order` item of the php.ini config file (`/etc/php/<version>/cli/php.ini`), which indicates whether certain things are included. Ensuring `E` is in this value is necessary of `$_ENV` to be populated.