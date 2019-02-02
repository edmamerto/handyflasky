import pytest

import app as my

@pytest.fixture
def client():
    client = my.app.test_client()
    yield client

def test_index(client):
    response = client.get('/')
    assert b'Kamusta' in response.data