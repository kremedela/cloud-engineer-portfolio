import requests

BASE_URL = 'http://localhost:5001/scim/v2'

def test_user_creation():
    user = {'userName':'test_user','active':True}
    r = requests.post(f'{BASE_URL}/Users', json=user)
    assert r.status_code == 201

def test_user_listing():
    r = requests.get(f'{BASE_URL}/Users')
    assert r.status_code == 200
    assert 'Resources' in r.json()

def test_user_deletion():
    user_id = 'test_user'
    r = requests.delete(f'{BASE_URL}/Users/{user_id}')
    assert r.status_code == 204
