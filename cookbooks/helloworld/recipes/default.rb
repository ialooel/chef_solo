file "/tmp/helloworld.txt" do
	owner "leo"
	group "leo"
	mode 00544
	action :create
	content "Hello, Implementor!"
end
