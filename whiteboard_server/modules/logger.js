var winston = require("winston");
var fs = require("fs");
var path = require("path");
var logDir = path.join(__dirname, "../log"); // directory path you want to set
const { printf, combine, timestamp, label } = winston.format;
if (!fs.existsSync(logDir)) {
    // Create the directory if it does not exist
    fs.mkdirSync(logDir);
}


const myFormat = printf(info => {
    return `[${info.timestamp}] [${info.label}] ${info.level}: ${info.message}`;
});
winston.loggers.add("whiteboard", {
    format: combine(
        timestamp(),
        label({ label: "whiteboard" }),
        myFormat
    )
});

var hqLogger = winston.loggers.get("whiteboard");
hqLogger.add(new winston.transports.File({
    filename: path.join(logDir, "/whiteboard.txt")
}));

if (process.env.NODE_ENV !== "production") {
    hqLogger.add(new winston.transports.Console({
        colorize: true
    }));
}

module.exports = {
    get: function (name) {
        return winston.loggers.get(name);
    }
};