const request = require('supertest');
const app = require('../src/index');

describe('GET /', function() {
  it('responds with hello world', function(done) {
    request(app)
      .get('/')
      .expect('Hello World!', done);
  });
});
