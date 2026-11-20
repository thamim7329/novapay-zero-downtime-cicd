const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const VERSION = process.env.APP_VERSION || 'v1.0-blue';

app.get('/health', (req, res) => {
  res.status(200).json({ status: 'UP', version: VERSION });
});

app.get('/api/account/balance', (req, res) => {
  res.status(200).json({
    bank: 'NovaPay Digital Bank',
    version: VERSION,
    balance: 50000,
    currency: 'INR'
  });
});

app.listen(PORT, () => {
  console.log(`NovaPay API (${VERSION}) running on port ${PORT}`);
});