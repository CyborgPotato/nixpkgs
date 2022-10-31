{ buildPythonPackage
, python
, fetchFromGitHub
}:
buildPythonPackage rec {
  pname = "hoc2swc";
  version = "f902079c7bf58917799ed6af884e5494ccfbc644";
  buildInputs = (with python.pkgs; [
    pytest
  ]);
  src = fetchFromGitHub {
    owner = "JustasB";
    repo = "${pname}";
    rev = version;
    sha256 = "ytMSnmRAc3BkvPSoxyCQ7qsnDvatXy/Nt3D9nIrwdbA=";
  };
}
