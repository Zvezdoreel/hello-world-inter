python -m pytest -v --junitxml="unit.xml" /proj/Test/*
python -m black /proj
python -m pylint --output-format=pylint_junit.JUnitReporter /proj >> ./lint.xml