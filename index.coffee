Fs   = require 'fs'
Path = require 'path'

module.exports = (robot) ->
  path = Path.resolve __dirname, 'src'
  Fs.exists path, (exists) ->
    if exists
      for file in Fs.readdirSync(path)
        robot.loadFile path, file