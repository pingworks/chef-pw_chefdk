require_relative '../spec_helper'

describe command('eval $(chef shell-init bash) && chef --version') do
  its(:stdout) { should match /Chef Development Kit Version: 0.7.0/ }
end

describe command('eval $(chef shell-init bash) && kitchen --version') do
  its(:stdout) { should match /Test Kitchen version 1.4.2/ }
end

describe command('eval $(chef shell-init bash) && berks --version') do
  its(:stdout) { should match /3.2.4/ }
end
