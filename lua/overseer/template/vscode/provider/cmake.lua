local M = {}

-- --build  <dir>
-- --target <tgt>
-- --config <cfg>
-- --clean-first
-- --use-stderr

-- local CommandType = {
--     build = "--build",
--     configure = "--configure",
--     install = "--install",
--     test = "test",
--     clean = "clean",
--     cleanRebuild = "cleanRebuild"
-- }

local build_dir = "build"
local ALL_BUILD = {"all"}
local bin = "cmake"
local target_option = "--target"
local prefix_option = "--"

local function add_targets(cmd, targets)
  for _, target in ipairs(targets or ALL_BUILD) do
    table.insert(cmd, target)
  end
end

-- TODO: preset
M.get_task_opts = function(defn)
  local option_cmd = prefix_option .. defn.command
  local cmd = {bin, option_cmd, build_dir}

  if not defn.targets == nil then
    table.insert(cmd, target_option)
    add_targets(cmd, defn.targets)
  end

  return {
  -- cmd is required. It can be a string or list of strings.
    cmd = cmd,
    -- Optional working directory for task
    -- cwd = nil,
    -- -- Optionally specify environment variables for the task
    -- env = nil,
    -- -- Can override the problem matcher in the task definition
    -- problem_matcher = '$gcc',
  }
end

return M

-- {
--   "type": "cmake",
--   "label": "CMake: configure",
--   "command": "configure",
--   "targets": [
--     "all"
--   ],
--   "problemMatcher": [],
--   "detail": "CMake template configure task"
-- }
-- {
--   "type": "cmake",
--   "label": "CMake: configure",
--   "command": "configure",
--   "preset": "${command:cmake.activeConfigurePresetName}",
--   "detail": "CMake template configure task"
-- }
-- {
--   "type": "cmake",
--   "label": "CMake: build",
--   "command": "build",
--   "targets": [
--     "all"
--   ],
--   "group": "build",
--   "problemMatcher": [],
--   "detail": "CMake template build task"
-- }
-- {
--   "type": "cmake",
--   "label": "CMake: build",
--   "command": "build",
--   "preset": "${command:cmake.activeBuildPresetName}",
--   "detail": "CMake template build task"
-- }
-- {
--   "type": "cmake",
--   "label": "CMake: test",
--   "command": "test",
--   "detail": "CMake template test task"
-- }
-- {
--   "type": "cmake",
--   "label": "CMake: test",
--   "command": "test",
--   "preset": "${command:cmake.activeTestPresetName}",
--   "detail": "CMake template test task"
-- }
-- {
--   "type": "cmake",
--   "label": "CMake: install",
--   "command": "install",
--   "detail": "CMake template install task"
-- },
-- {
--   "type": "cmake",
--   "label": "CMake: clean",
--   "command": "clean",
--   "detail": "CMake template clean task"
-- },
-- {
--   "type": "cmake",
--   "label": "CMake: clean rebuild",
--   "command": "cleanRebuild",
--   "detail": "CMake template clean rebuild task"
-- }
-- {
--   "type": "cmake",
--   "label": "CMake: install",
--   "command": "install",
--   "preset": "${command:cmake.activeBuildPresetName}",
--   "detail": "CMake template install task"
-- },
-- {
--   "type": "cmake",
--   "label": "CMake: clean",
--   "command": "clean",
--   "preset": "${command:cmake.activeBuildPresetName}",
--   "detail": "CMake template clean task"
-- },
-- {
--   "type": "cmake",
--   "label": "CMake: clean rebuild",
--   "command": "cleanRebuild",
--   "preset": "${command:cmake.activeBuildPresetName}",
--   "detail": "CMake template clean rebuild task"
-- }
