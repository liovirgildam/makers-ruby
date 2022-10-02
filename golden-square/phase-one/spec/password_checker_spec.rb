require 'password_checker'

RSpec.describe PasswordChecker do
    context 'when password is less than 8 characters long' do
        it'fails' do
            checker = PasswordChecker.new()
            expect{ checker.check('Lili')}.to raise_error "Invalid password, must be 8+ characters."
        end
    end
    it 'returns true when passed a password with more than 8 characters' do
        checker = PasswordChecker.new()
        result = checker.check('liovirgilda')
        expect(result).to eq true
    end

end