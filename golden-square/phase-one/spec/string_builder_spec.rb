require 'string_builder'

RSpec.describe StringBuilder do
    it "creates the string 'Hello, there!'" do
        builder = StringBuilder.new()
        builder.add('Hello, ')
        builder.add('there!')
        result = builder.output()
        expect(result).to eq 'Hello, there!'
    end
end