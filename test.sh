
set -e

echo "Code Quality CI Start!"

poetry run black .
echo -e "black PASSED!"

poetry run mypy .
echo -e "mypy PASSED!"

poetry run pytest --continue-on-collection-errors

echo -e "pytest PASSED!"

echo -e "ALL Test PASSED!"
