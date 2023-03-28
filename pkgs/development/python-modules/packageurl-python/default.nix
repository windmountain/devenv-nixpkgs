{ lib
, buildPythonPackage
, fetchPypi
, pytestCheckHook
, pythonOlder
}:

buildPythonPackage rec {
  pname = "packageurl-python";
  version = "0.11.1";
  format = "setuptools";

  disabled = pythonOlder "3.6";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-u8xT0stZIMgVwWJsdZkvMZv8RQtziT+nvYqsWGmqSf4=";
  };

  nativeCheckInputs = [
    pytestCheckHook
  ];

  pythonImportsCheck = [
    "packageurl"
  ];

  meta = with lib; {
    description = "Python parser and builder for package URLs";
    homepage = "https://github.com/package-url/packageurl-python";
    license = licenses.mit;
    maintainers = with maintainers; [ armijnhemel ];
  };
}
