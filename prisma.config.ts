// This file moves the connection URL out of the schema for Prisma v7+.
// Read the DATABASE_URL from environment and export a simple configuration object.

const config = {
  datasources: {
    db: {
      url: process.env.DATABASE_URL,
      // adapter: undefined, // Optionally specify an adapter here if using a direct DB connection
    },
  },
};

export default config;
