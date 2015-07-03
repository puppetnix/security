require 'spec_helper'
describe 'security' do
let(:params) { { :chkrootkit => 'true'  } }
let(:params) { {:rkhunter => 'true' } }
describe 'security::cron' do
it { should contain_cron("chkrootkit").with_hour("3") }
it { should contain_cron("rkhunter").with_hour("3") }
end
end

