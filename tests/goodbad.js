var Promise = require("bluebird"),
    fs = require("fs"),
    path = require("path"),
    spawn = require("cross-spawn"),
    expect = require("chai").expect;

describe("Bad", function() {
    this.timeout(Infinity);

    var badFiles = fs.readdirSync(path.resolve("tests/bad/"));

    badFiles.forEach(badFile => {
        describe(badFile, () => {
            it("should fail to compile", () => runBadTest(badFile));
        });
    });
});

describe("Good", function() {
    this.timeout(Infinity);

    var goodFiles = fs.readdirSync(path.resolve("tests/good/"));

    goodFiles.forEach(goodFile => {
        describe(goodFile, () => {
            it("should succesfully compile", () => runGoodTest(goodFile));
        });
    });
});

var runBadTest = filePath =>
    new Promise((resolve, reject) => {
        var process = spawn(
            "elm-make",
            ["--output", "/dev/null", path.join("bad/", filePath)],
            { cwd: path.resolve("tests/"), stdio: "ignore" }
        );

        process.on("exit", exitCode => {
            if (exitCode === 0) {
                reject(new Error("Expected compilation to fail"));
            } else {
                resolve("We're good!");
            }
        });
    });

var runGoodTest = filePath =>
    new Promise((resolve, reject) => {
        var process = spawn(
            "elm-make",
            ["--output", "/dev/null", path.join("good/", filePath)],
            { cwd: path.resolve("tests/"), stdio: "ignore" }
        );

        process.on("exit", exitCode => {
            if (exitCode !== 0) {
                reject(new Error("Expected compilation to succeed"));
            } else {
                resolve("We're good!");
            }
        });
    });
