drop table if exists rigs;
drop table if exists containers;

create table containers (
  id serial primary key,
  company varchar(128) not null,
  type varchar(128) not null,
  size varchar(128),
  year varchar(4) not null,
  nickname varchar(128),
  created_at timestamp not null default current_timestamp
);

create table rigs (
  id serial primary key,
  name varchar(128),
  container integer references containers not null,
  created_at timestamp not null default current_timestamp
);

INSERT INTO "containers" ("company","type","size","year","nickname")
VALUES
('Rigging Innovations', 'Curv', '2.0 VC2', '2017', 'colorbarf'),
('Wings', 'Wings', 'W8', '2012', 'pull out');
INSERT INTO "containers" ("company","type","year","nickname")
VALUES
('Sun Path', 'Javelin', '1994', 'first rig');

INSERT INTO "rigs" ("name", "container")
VALUES
('First Rig', 3),
('Second Rig', 2),
('Current Rig', 1);
