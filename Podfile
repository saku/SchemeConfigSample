target 'SchemeConfigSample' do
    pod 'AFNetworking'

    target 'SchemeConfigSampleTests' do
        pod 'OCMock'
    end
end

## for develop environment, ignore Development.xcconfig change.
# if you want commit change Development.xcconfig, then exec below command.
# git update-index --no-skip-worktree SchemeConfigSample/xcconfigs/Development.xcconfig
`git update-index --skip-worktree SchemeConfigSample/xcconfigs/Development.xcconfig`
