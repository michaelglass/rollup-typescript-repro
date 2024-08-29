# getting rollup working with rollup.config.ts

In this repo, I'd expect

`npx rollup -c` to work, or if not that, than `npx rollup -c --configPlugin typescript`

but neither do.

however, `npx tsc && npx rollup -c rollup.config.js` does work.

What am I doing wrong?
