clear
clc
States = ['α' 'β'];
Observations = ['A','G','T','C'];
Initial_state_matrix = [0.5 ; 0.5];
Transition_matrix = log2([0.9 0.1; 0.1 0.9]);
Emission_matrix = log2([0.4 0.4 0.1 0.1; 0.2 0.2 0.3 0.3]);
SequenceLetters = ['G','G','C','T'];
Sequence = [2, 2, 4, 3];
p = viterbi(States, Observations, Initial_state_matrix, Transition_matrix, Emission_matrix, Sequence);
disp("Η πιο πιθανή ακολουθία καταστάσεων για την ακολουθία παρατηρήσεων 'GGCT' είναι: " + p);