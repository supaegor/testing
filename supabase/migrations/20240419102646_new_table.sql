create table if not exists new_table (
    id serial primary key,
    name text not null,
    age int not null,
    company text not null,
    node text not null,
    description text not null
);

create function if not exists new_table_insert_trigger() returns trigger as $$ begin
    insert into new_table (name, age, company, node, description) values (new.name, new.age, new.company, new.node, new.description);
    return new;
end; $$ language plpgsql;
