require 'rspec'
require_relative '../../power_set'

describe 'Program' do
    context 'given {}' do
        it 'should generate the valid power set' do
            result = power_set([])
            result.should =~ [[]]
        end
    end

    context 'given {1}' do
        it 'should generate the valid power set' do
            result = power_set([1])
            result.should =~ [[], [1]]
        end
    end

    context 'given {1, 2}' do
        it 'should generate the valid power set' do
            result = power_set([1, 2])
            result.should =~ [[], [1], [2], [1, 2]]
        end
    end

    context 'given {1, 2, 3}' do
        it 'should generate the valid power set' do
            result = power_set([1, 2, 3])
            result.should =~ [[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]
        end
    end

    context 'given {1, 2, 3, 4}' do
        it 'should generate the valid power set' do
            result = power_set([1, 2, 3, 4])
            result.should =~ [[], [1], [2], [3], [4], [1, 2], [1, 3], [2, 3], [1, 4], [2, 4], [3, 4], [1, 2, 3], [1, 2, 4], [1, 3, 4], [2, 3, 4], [1, 2, 3, 4]]
        end
    end

    context 'given {1, 2, 3, 4, 5}' do
        it 'should generate the valid power set' do
            result = power_set([1, 2, 3, 4, 5])
            result.should =~ [[], [1], [2], [3], [4], [5], [1, 2], [1, 3], [1, 4], [1, 5], [2, 3], [2, 4], [2, 5], [3, 4], [3, 5], [4, 5], [1, 2, 3], [1, 2, 4], [1, 2, 5], [1, 3, 4], [1, 3, 5], [1, 4, 5], [2, 3, 4], [2, 3, 5], [2, 4, 5], [3, 4, 5], [1, 2, 3, 4], [1, 2, 3, 5], [1, 2, 4, 5], [1, 3, 4, 5], [2, 3, 4, 5], [1, 2, 3, 4, 5]]
        end
    end
end