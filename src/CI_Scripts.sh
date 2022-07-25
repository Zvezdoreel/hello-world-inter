python -m pytest -v --junitxml="/tmp/test/unit.xml" /proj/Test/*
python -m black /proj
python -m pylint --output-format=pylint_junit.JUnitReporter /proj >> /tmp/test/lint.xml