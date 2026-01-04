Prisma v7 datasource config

This project was migrated to Prisma v7-style datasource configuration.

What changed

- The `url` property was removed from `prisma/schema.prisma`.
- A `prisma.config.ts` file was added at the project root which exports the datasource configuration and reads `DATABASE_URL` from the environment.

If Prisma CLI or your editor still shows diagnostics:

1. Restart your editor/TypeScript server so the new `prisma.config.ts` is picked up.
2. Run `npx prisma generate` to regenerate the client.

If your runtime code constructs `PrismaClient` with special adapters or accelerate options, pass them in the PrismaClient constructor as shown in the Prisma docs: https://pris.ly/d/prisma7-client-config
