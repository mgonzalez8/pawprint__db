require('dotenv').config();

const config = {
    dev: process.env.NODE_ENV !== 'production',
    port: process.env.PORT || 3000,
    cors: process.env.CORS,
    dbUser: 'root',
    dbPassword: 'andycr19',
    dbHost: 'localhost',
    dbName: 'pawprints'
};

module.exports = { config };