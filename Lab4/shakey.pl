%Felix Lindgren and Johnny Elm�r

act(go(X, Y),                                                                   %Action name
    [on(floor), at(shakey, X), connected(X, Y)],                                %Precondition
    [at(shakey, X)],                                                            %Delete
    [at(shakey, Y)]).                                                           %Add

act(push(B, X, Y),                                                              %Action name
    [on(floor), box(B), at(B, X), at(shakey, X), connected(X, Y), light_on(X)], %Precondition
    [at(B, X), at(shakey, X)],                                                  %Delete
    [at(B, Y), at(shakey, Y)]).                                                 %Add

act(climb_up(B),                                                                %Action name
    [box(B), at(shakey, X), at(B, X), on(floor)],                               %Precondition
    [on(floor)],                                                                %Delete
    [on(B)]).                                                                   %Add

act(climb_down(B),                                                              %Action name
    [box(B), on(B)],                                                            %Precondition
    [on(B)],                                                                    %Delete
    [on(floor)]).                                                               %Add

act(turn_on(S),                                                                   %Action name
    [on(B), box(B), at(B, S), connected(S, R), room(R), switch(S), light_off(R)], %Precondition
    [light_off(R), light_off(S)],                                                 %Delete
    [light_on(R), light_on(S)]).                                                  %Add

act(turn_off(S),                                                                 %Action name
   [on(B), box(B), at(B, S), connected(S, R), room(R), switch(S), light_on(R)],  %Precondition
   [light_on(R), light_on(S)],                                                   %Delete
   [light_off(R), light_off(S)]).                                                 %Add

% Goal state for Shakey
goal_state([
     %at(shakey, room_1)
%light_off(room_1)
    at(box_2, room_2)
]).

% Initial state for Shakey
initial_state([
    at(shakey, room_3),
    on(floor),

    light_on(room_1),
    light_on(switch_1),
    light_off(room_2),
    light_off(switch_2),
    light_off(room_3),
    light_off(switch_3),
    light_on(room_4),
    light_on(switch_4),
    light_on(corridor),

    at(box_1, room_1),
    at(box_2, room_1),
    at(box_3, room_1),
    at(box_4, room_1),

    box(box_1),
    box(box_2),
    box(box_3),
    box(box_4),

    room(room_1),
    room(room_2),
    room(room_3),
    room(room_4),

    switch(switch_1),
    switch(switch_2),
    switch(switch_3),
    switch(switch_4),

    connected(room_1, switch_1),
    connected(switch_1, room_1),
    connected(room_2, switch_2),
    connected(switch_2, room_2),
    connected(room_3, switch_3),
    connected(switch_3, room_3),
    connected(room_4, switch_4),
    connected(switch_4, room_4),

    connected(room_1, corridor),
    connected(switch_1, corridor),
    connected(room_2, corridor),
    connected(switch_2, corridor),
    connected(room_3, corridor),
    connected(switch_3, corridor),
    connected(room_4, corridor),
    connected(switch_4, corridor),

    connected(corridor, switch_1),
    connected(corridor, room_1),
    connected(corridor, switch_2),
    connected(corridor, room_2),
    connected(corridor, switch_3),
    connected(corridor, room_3),
    connected(corridor, switch_4),
    connected(corridor, room_4)
]).
