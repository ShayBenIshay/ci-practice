from hello import greet


def test_default():
    assert greet() == "Hello, World!"


def test_name():
    assert greet("CI") == "Hello, CI!"
