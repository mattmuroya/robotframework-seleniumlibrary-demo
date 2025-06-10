# robotframework-seleniumlibrary-demo

Quick demo repo exploring Robot Framework with Selenium for web automation.

```sh
# 1. Create virtual environment
$ python -m venv .venv

# 2. Activate virtual environment
$ source .venv/bin/activate

# 3. Install dependencies
$ python -m pip install -r requirements.txt

# 4. Give execute permission to shell script
$ chmod +x run.sh

# 5. Execute tests (pass in Robot Framework command line options)
$ ./run.sh tests/

# ===== Command line options =====

# To run tests tagged "positive"
$ ./run.sh -i positive tests/

# To run tests tagged "negative"
$ ./run.sh -i negative tests/
```
