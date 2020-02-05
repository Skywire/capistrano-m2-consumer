after 'deploy:published', 'magento:queue:consumers:kill' do
  on release_roles :all do
    within release_path do
      execute :pgrep, '-u "$(whoami)" -f "[q]ueue:consumers:start"',
        '| xargs -r kill'
    end
  end
end