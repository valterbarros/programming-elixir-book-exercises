content = "now is the time"

lp = with {:ok, file}   = File.open("/etc/passwd"),
          content       = IO.read(file, :all),
          :ok           = File.close(file),
          [_, uid, gid] <- Regex.run(~r/_apt:.*?:(\d+):(\d+)/, content)
    do
      "group: #{gid}, user: #{uid}"
    end

IO.puts lp
IO.puts content