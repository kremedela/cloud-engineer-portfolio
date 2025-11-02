from flask import Flask, request, jsonify

app = Flask(__name__)
users = {}

@app.route('/scim/v2/Users', methods=['POST'])
def create_user():
    data = request.json
    user_id = data.get('userName')
    if not user_id:
        return jsonify({'error':'Missing userName'}), 400
    users[user_id] = data
    return jsonify(data), 201

@app.route('/scim/v2/Users/<user_id>', methods=['DELETE'])
def delete_user(user_id):
    if user_id in users:
        del users[user_id]
        return '', 204
    return jsonify({'error':'User not found'}), 404

@app.route('/scim/v2/Users', methods=['GET'])
def list_users():
    return jsonify({'Resources': list(users.values())}), 200

if __name__ == '__main__':
    app.run(debug=True, port=5001)
