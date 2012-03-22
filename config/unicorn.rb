APP_PATH = "/opt/services/cdn"
listen APP_PATH + "/tmp/unicorn.sck", backlog: 2048
working_directory APP_PATH

stderr_path APP_PATH + "/log/unicorn.stderr.log"
stdout_path APP_PATH + "/log/unicorn.stdout.log"

pid APP_PATH + "/tmp/unicorn.pid"

user "git", "git"
