
const express = require('express');
const app = express();

app.get("/", function(req, res){ res.write("hello word"); res.end();});

app.listen(8080);


