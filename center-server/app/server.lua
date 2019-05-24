local lor = require("lor.index")
local router = require("app.router")

local app = lor()

router(app)

app:erroruse(function(err, req, res, next)
  ngx.log(ngx.ERR, err)
end)


return app