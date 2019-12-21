function mybranch
    git rev-parse --abbrev-ref HEAD | awk NF
end
