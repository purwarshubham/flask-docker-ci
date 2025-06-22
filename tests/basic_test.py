def test_status_true():
    assert True is True

def test_status_false():
    assert not False

def test_sum():
    assert sum([1, 2, 3]) == 3

def test_string_contains():
    greeting = "hello docker world"
    assert "docker" in greeting

def test_dict_lookup():
    user = {"id": 1, "name": "Shubham"}
    assert user["name"] == "Shubham"