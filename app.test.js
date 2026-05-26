const test = require('node:test');
const assert = require('node:assert');
const fs = require('fs');
const path = require('path');

test('Kiem tra tep tin app.js co ton tai', () => {
    const appPath = path.join(__dirname, 'app.js');
    assert.strictEqual(fs.existsSync(appPath), true, 'Phai co tep app.js trong thu muc goc');
});

test('Kiem tra package.json co dung ten', () => {
    const packageJson = require('./package.json');
    assert.strictEqual(packageJson.name, 'express-hello-world', 'Ten ung dung phai la express-hello-world');
});
