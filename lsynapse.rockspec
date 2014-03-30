package = "lsynapse"
version = "0.0.1-1"
source = {
   url = "https://github.com/seryl/lsynapse/archive/0.0.1-1.tar.gz",
   dir = "lsynapse-0.0.1-1"
}
description = {
   summary = "Lua extended port of Airbnb's Synapse",
   detailed = [[
              Service discovery and automated failover in the cloud.
   ]],
   homepage = "https://github.com/seryl/lsynapse",
   license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
   "lua >= 5.1",
   "luasocket",
   "luasec",
   "busted >= 1.10.0"
}

external_dependencies = {

}

build = {
   type = "builtin",
   modules = {
      lsynapse = "src/lsynapse.lua",
   }
}
