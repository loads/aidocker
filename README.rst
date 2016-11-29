========
aidocker
========

Generic Docker Image to run ailoads-based tests for Loads.

To create a smoke test / load test that can be run in Loads you need to:

1. create a test using ailoads: https://github.com/loads/ailoads
2. create a JSON file for Loads at the root of your repo, called **loads.json**
   that contains a **ailoads** key with the list of your ailoads tests.


Configuration
=============

**loads.json** is a configuration file that contains a list of tests.
Each test is defined by a name and the options that will be passed in
the command line to **ailoads**.

In the following example, two tests are defined, **test** and **test-heavy**::

  {
    "ailoads": {
      "requirements": "requirements.txt",
      "tests": {
        "test": {"duration": 30,
                 "verbose": true
        },
        "test-heavy": {"duration": 300,
                       "users": 30
        }
      }
    }
  }


Once you have that file on the top of you repository you can directly run
it using **ailoads**, with the **aislave** command.

Example::

    $ aislave https://github.com/tarekziade/shavar-loadtests test
