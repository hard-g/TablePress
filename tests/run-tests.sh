# Helper script called by Travis CI

# Run single-site unit tests:
export WP_MULTISITE=0
$HOME/.composer/vendor/phpunit --exclude-group=ms-required

# Run Multisite unit tests:
export WP_MULTISITE=1
$HOME/.composer/vendor/phpunit --exclude-group=ms-excluded
