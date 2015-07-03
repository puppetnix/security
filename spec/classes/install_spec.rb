require 'spec_helper'
describe 'security::install' do
it { should create_class("security::install") }
it { should contain_package("rkhunter")
		.with_ensure("installed") }
it { should contain_package("chkrootkit")
		.with_ensure("installed") }
end
