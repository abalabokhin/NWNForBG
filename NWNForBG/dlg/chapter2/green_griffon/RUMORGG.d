// Порт-Лласт Таверна Слухи

BEGIN ~RUMORGG~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)~ THEN BEGIN 0 // from:
  SAY ~На местном кладбище по ночам нежить бродит. Если хотите навестить могилу бабушки, захватите оружие, а иначе лучше не навещать. Все это началось после того, как там похоронили какого-то колдуна из Братства Таинств Лускана.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 1 // from:
  SAY ~В Лускане капитаны никак власть между собой поделить не могут, настоящую войну между собой устроили. Вот поэтому ворота и закрыли.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)~ THEN BEGIN 2 // from:
  SAY ~К югу от Зеленого Грифона по дороге в Порт-Лласт стало опасно ходить. После того как Лускан перестал патрулировать дорогу на путников стали нападать разные твари вроде орков и багбиров. Раньше они тихо в своих пещерах сидели, говорят, ими кто-то управляет.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)~ THEN BEGIN 3 // from:
  SAY ~Говорят, в Порт-Лласте оборотни появились, по ночам нападают на местных жителей и рвут на части. Теперь они и сюда добрались, недавно люди видели оборотня недалеко от таверны.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)~ THEN BEGIN 4 // from:
  SAY ~Тут у нас где-то поблизости какой-то зловредный культ обосновался. Говорят, сама леди Арибет приехала их ловить.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)~ THEN BEGIN 5 // from:
  SAY ~Из тюрьмы Уотердипа пятеро опасных преступников сбежали. Сомнительно, но все же возможно, что они отправились прямо сюда. Тут один минотавр поселился, закрылся в своей комнате и никуда не выходит, только еду и эль требует. Вот я и засомневался, не преступник ли он, уж больно он похож на бандита.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)~ THEN BEGIN 6 // from:
  SAY ~Из Чарвуда давно никаких вестей не было. Ходят слухи что там сейчас полно нежити, призраки какие-то объявились, просто жуть!~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)~ THEN BEGIN 7 // from:
  SAY ~В лес Невервинтер лучше не ходить. Говорят, там животные взбесились, даже олени и кролики нападают на всех подряд.~
  IF ~~ THEN EXIT
END

