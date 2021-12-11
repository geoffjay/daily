#!/usr/bin/env node

import { Command } from "commander";

import { getActivities } from "./lib/activities";

const program = new Command();

program
  .version("0.0.1")
  .option("-a, --activity <name>", "Activity to display")
  .parse(process.argv);

const options = program.opts();

console.log(options);
console.log(getActivities("test"));
