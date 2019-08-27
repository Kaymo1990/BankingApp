require 'Statement'
describe Statement do
  describe 'returnStatement' do
    it 'should return a statement' do
      expect(subject.returnStatement).to include('date || credit || debit || balance')
    end

    it 'should return a balance' do
      expect(subject.balance).to eq(1000)
    end

  describe 'credit' do

    it 'should be able to credit money into the account' do
      subject.credit(500)
      expect(subject.balance).to eq(1500)
    end

    it 'should return a statement of recent transactions' do
      subject.credit(500)
      expect(subject.returnStatement).to include('08/27/2019 || 500 || || 1500')
    end
  end

  describe 'debit' do

      it 'should be able to deduct from the balance' do
        subject.debit(200)
        expect(subject.balance).to eq(800)
      end

      it 'should return a statement of a recent debit' do
        subject.debit(200)
        expect(subject.returnStatement).to include('08/27/2019 || || 200 || 800')
      end
    end
  end
end
