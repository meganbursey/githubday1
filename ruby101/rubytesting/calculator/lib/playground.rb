RSpec.describe "#hola" do
it 'greets a person with their name' do
	expect(hola('Meg')).to eql('Hello Meg')
	end
end

def hola(name)
	"Hello #{name}"
end