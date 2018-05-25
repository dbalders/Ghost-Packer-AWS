control 'Ghost' do
	impact 1.0
	title 'Test Ghost Running'
	desc 'Tests that Ghost is installed, running, and accessable'

	%w(node npm ghost).each do |cmd|
		describe bash("command -v #{cmd}") do
			its('exit_status') { should eq 0 }
		end
	end

	%w(ghost_127-0-0-1 nginx).each do |service|
		describe service("#{service}") do
			it { should be_installed }
			it { should be_enabled }
			it { should be_running }
		end
	end

	%w(80 2368).each do |port|
		describe port("#{port}") do
			it { should be_listening }
		end
	end

end
