create extension if not exists pgcrypto;

create table if not exists public.rooms (
  id text primary key,
  host_name text not null,
  language text not null check (language in ('es','en')),
  theme text not null,
  theme_used text,
  status text not null default 'lobby' check (status in ('lobby','started','finished')),
  join_deadline timestamptz not null,
  common_word text,
  liar_word text,
  round_number integer not null default 0,
  created_at timestamptz not null default now()
);

create table if not exists public.players (
  id uuid primary key default gen_random_uuid(),
  room_id text not null references public.rooms(id) on delete cascade,
  name text not null,
  is_host boolean not null default false,
  word text,
  is_liar boolean not null default false,
  joined_at timestamptz not null default now()
);

alter table public.rooms enable row level security;
alter table public.players enable row level security;

alter table public.rooms add column if not exists theme_used text;
alter table public.rooms add column if not exists status text default 'lobby';
alter table public.rooms add column if not exists join_deadline timestamptz;
alter table public.rooms add column if not exists common_word text;
alter table public.rooms add column if not exists liar_word text;
alter table public.rooms add column if not exists round_number integer not null default 0;
alter table public.rooms add column if not exists created_at timestamptz not null default now();

alter table public.players add column if not exists is_host boolean not null default false;
alter table public.players add column if not exists word text;
alter table public.players add column if not exists is_liar boolean not null default false;
alter table public.players add column if not exists joined_at timestamptz not null default now();

drop policy if exists "rooms_select_all" on public.rooms;
drop policy if exists "rooms_insert_all" on public.rooms;
drop policy if exists "rooms_update_all" on public.rooms;
drop policy if exists "rooms_delete_all" on public.rooms;

create policy "rooms_select_all"
on public.rooms
for select
to anon
using (true);

create policy "rooms_insert_all"
on public.rooms
for insert
to anon
with check (true);

create policy "rooms_update_all"
on public.rooms
for update
to anon
using (true)
with check (true);

create policy "rooms_delete_all"
on public.rooms
for delete
to anon
using (true);

drop policy if exists "players_select_all" on public.players;
drop policy if exists "players_insert_all" on public.players;
drop policy if exists "players_update_all" on public.players;
drop policy if exists "players_delete_all" on public.players;

create policy "players_select_all"
on public.players
for select
to anon
using (true);

create policy "players_insert_all"
on public.players
for insert
to anon
with check (true);

create policy "players_update_all"
on public.players
for update
to anon
using (true)
with check (true);

create policy "players_delete_all"
on public.players
for delete
to anon
using (true);
