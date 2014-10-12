--
-- JBoss, Home of Professional Open Source
-- Copyright 2013, Red Hat, Inc. and/or its affiliates, and individual
-- contributors by the @authors tag. See the copyright.txt in the
-- distribution for a full listing of individual contributors.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- http://www.apache.org/licenses/LICENSE-2.0
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
drop table if exists Users;
drop table if exists Insult;
create table Users (id int(50) not null auto_increment primary key, username varchar(35) unique, firstName varchar(35), lastName varchar(35)); 
create table Insult (id int(50) not null auto_increment primary key, firstAdjective varchar(35), secondAdjective varchar(35), noun varchar(35));

insert into Users (id, username, firstName, lastName) values (-1, 'katie', 'Katie', 'Miller');
insert into Users (id, username, firstName, lastName) values (-2, 'joe', 'Joe', 'Bloggs');

insert into Insult (id, firstAdjective, secondAdjective, noun) values (-1, 'artless', 'base-court', 'apple-john');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-2, 'bawdy', 'bat-fowling', 'baggage');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-3, 'beslubbering', 'beef-witted', 'barnacle');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-4, 'bootless', 'beetle-headed', 'bladder');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-5, 'churlish', 'boil-brained', 'boar-pig');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-6, 'cockered', 'clapper-clawed', 'bugbear');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-7, 'clouted', 'clay-brained', 'bum-bailey');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-8, 'craven', 'common-kissing', 'canker-blossom');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-9, 'currish', 'crook-pated', 'clack-dish');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-10, 'dankish', 'dismal-dreaming', 'clotpole');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-11, 'dissembling', 'dizzy-eyed', 'coxcomb');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-12, 'droning', 'doghearted', 'codpiece');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-13, 'errant', 'dread-bolted', 'death-token');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-14, 'fawning', 'earth-vexing', 'dewberry');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-15, 'fobbing', 'elf-skinned', 'flap-dragon');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-16, 'froward', 'fat-kidneyed', 'flax-wench');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-17, 'frothy', 'fen-sucked', 'flirt-gill');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-18, 'gleeking', 'flap-mouthed', 'foot-licker');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-19, 'goatish', 'fly-bitten', 'fustilarian');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-20, 'gorbellied', 'folly-fallen', 'giglet');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-21, 'impertinent', 'fool-born', 'gudgeon');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-22, 'infectious', 'full-gorged', 'haggard');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-23, 'jarring', 'guts-griping', 'harpy');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-24, 'loggerheaded', 'half-faced', 'hedge-pig');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-25, 'lumpish', 'hasty-witted', 'horn-beast');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-26, 'mammering', 'hedge-born', 'hugger-mugger');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-27, 'mangled', 'hell-hated', 'joithead');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-28, 'mewling', 'idle-headed', 'lewdster');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-29, 'paunchy', 'ill-breeding', 'lout');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-30, 'pribbling', 'ill-nurtured', 'maggot-pie');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-31, 'puking', 'knotty-pated', 'malt-worm');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-32, 'puny', 'milk-livered', 'mammet');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-33, 'qualling', 'motley-minded', 'measle');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-34, 'rank', 'onion-eyed', 'minnow');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-35, 'reeky', 'plume-plucked', 'miscreant');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-36, 'roguish', 'pottle-deep', 'moldwarp');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-37, 'ruttish', 'pox-marked', 'mumble-news');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-38, 'saucy', 'reeling-ripe', 'nut-hook');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-39, 'spleeny', 'rough-hewn', 'pigeon-egg');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-40, 'spongy', 'rude-growing', 'pignut');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-41, 'surly', 'rump-fed', 'puttock');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-42, 'tottering', 'shard-borne', 'pumpion');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-43, 'unmuzzled', 'sheep-biting', 'ratsbane');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-44, 'vain', 'spur-galled', 'scut');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-45, 'venomed', 'swag-bellied', 'skainsmate');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-46, 'villainous', 'tardy-gaited', 'strumpet');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-47, 'warped', 'tickle-brained', 'varlot');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-48, 'wayward', 'toad-spotted', 'vassal');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-49, 'weedy', 'unchin-snouted', 'whey-face');
insert into Insult (id, firstAdjective, secondAdjective, noun) values (-50, 'yeasty', 'weather-bitten', 'wagtail');
