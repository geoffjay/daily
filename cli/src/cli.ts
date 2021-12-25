#!/usr/bin/env node

import { Command, Option } from "commander";

import { getActivities } from "./lib/activities";

const program = new Command("ded");

const setUp = () => {
  console.log("create supabase connection");
};

const getConfigPath = () => {
  const os = require("os");
  const path = require("path");
  return path.join(os.homedir(), ".config", "ded");
};

program
  .version("0.0.1")
  .addOption(new Option("-c, --config <path>", "set config path")
    .default(getConfigPath())
    .env("DED_CONFIG"));

program
  .command("activity [name]")
  .alias("a")
  .description("perform an activity operation");

program.parse(process.argv);

const options = program.opts();

console.log(options.activity);
console.log(getActivities("test"));
