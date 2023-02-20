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

-- {
--   "command": "build",
--   "targets": [
--     "all"
--   ],
-- }

local build_dir = "build"
local ALL_BUILD = {"all"}

M.get_task_opts = function(defn)
  local bin = "cmake"
  local build_cmd = "--" .. defn.command
  local target_cmd = "--target"
  local res = {bin, build_cmd, build_dir, target_cmd}

  for _, target in ipairs(defn.targets or ALL_BUILD) do
    table.insert(res, target)
  end
  -- local targets = defn.targets and table.concat(defn.targets, " ") or ALL_BUILD

  -- local cmd = c_tbl[defn.command]

  return {
    cmd = res,
    -- cmd = { "cmake", "--build", defn.command}
    -- cwd = nil,
    -- -- Optionally specify environment variables for the task
    -- env = nil,
    -- -- Can override the problem matcher in the task definition
    -- problem_matcher = nil,
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
