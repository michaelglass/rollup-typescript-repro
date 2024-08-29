# getting rollup working with rollup.config.ts

In this repo, I'd expect

`npx rollup -c` to work, or if not that, than `npx rollup -c --configPlugin typescript`

but neither do.

however, `npx tsc && npx rollup -c rollup.config.js` does work.

What am I doing wrong?

I have some scripts of exactly what I've run:

`npm run tsc` creates a valid rollup.config.js (see `npm run rollup`)
but `npm run rollup-ts` does not work.
