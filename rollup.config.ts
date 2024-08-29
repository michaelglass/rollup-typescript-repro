import typescript from "@rollup/plugin-typescript";
import pkg from "./package.json" with { type: "json" };

console.log("import from package.json works, main entry point is:", pkg.main);

export default {
  input: "src/index.ts",
  output: {
    dir: "output",
    format: "cjs",
  },
  plugins: [typescript()],
};
