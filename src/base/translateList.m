function list = translateList(list, trList1, trList2)
% Translate a list of identifiers (either numerical or cell array) using a dictionary
%
% USAGE:
%
%     list = translateList(list, trList1, trList2)
%
% INPUTS:
%    list:       original list
%    trList1:    list of elemets to be changed
%    trList2:    list of elements to be changed into
%
% OUTPUTS:
%    list:       list after changes
%
% EXAMPLE:
%
%    % Define original list
%    list = {'a', 'b', 'c'}
%
%    % Define dictionary
%    trList1 = {'b', 'c'}
%    trList2 = {'B', 'C'}
%
%    newList = translateList(list, trList1, trList2);
%
%    % returns
%    newList = {'a', 'B', 'C'};


[isInList, listInd] = ismember(list, trList1);

list(isInList) = trList2(listInd(listInd ~= 0));
