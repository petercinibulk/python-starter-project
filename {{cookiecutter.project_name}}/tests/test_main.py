from {{cookiecutter.package_dir}}.main import main


def test_version():
    assert main() == True
