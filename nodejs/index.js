var morgan  = require('morgan');

const express = require('express')
const app = express()
const port = 3000

//app.use(morgan(
//  ':remote-addr - :remote-user [:date[clf]] ":method :url HTTP/:http-version" :status :res[content-length] ":referrer" ":user-agent" - ":response-time ms"')
//); 
//
app.use(morgan(function (tokens, req, res) {
  //console.log(req.headers);
  if ('x-forwarded-for' in req.headers) {
    var real_ip = req.headers['x-forwarded-for'];
  } else {
    var real_ip = req.connection.remoteAddress;
  }
  console.log(res.body);
  return `{"request_method": "${tokens.method(req, res)}","request_path": "${tokens.url(req, res)}","remote_addr": "${real_ip}", "response_status": "${tokens.status(req, res)}", "response_time": "${tokens['response-time'](req, res)}", "referer": "${tokens.referrer(req)}", "user_agent": ${tokens['user-agent'](req, res)}"}`


}));

app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
