require 'spec_helper'
describe 'security::ssh' do
it { should create_class("security::ssh") }
it { should contain_package("openssh-server")
		.with_ensure('installed') }
it { should contain_augeas("config_ssh")
		.with_context("/files/etc/ssh/sshd_config")
		.that_requires('Package[openssh-server]')
 }
context "Debian based" do
	let(:facts) { { :osfamily => 'Debian' } }
	it { should contain_service("ssh")
		.with_ensure('running')
		.with_enable('true') } 
	it { should contain_augeas("config_ssh")
		.that_notifies('Service[ssh]') }
	
end
context "Redhat based" do
	let(:facts) { { :osfamily => 'Redhat' } }
	it { should contain_service("sshd")
		.with_ensure('running')
		.with_enable('true') }
	it { should contain_augeas("config_ssh")
		.that_notifies('Service[sshd]') }

end
end
