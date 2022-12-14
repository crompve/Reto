PGDMP                         z           vaccination    14.5    14.4 &               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16395    vaccination    DATABASE     i   CREATE DATABASE vaccination WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE vaccination;
                Retador    false            ?            1259    16634    role    TABLE     V   CREATE TABLE public.role (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            ?            1259    16633    role_id_seq    SEQUENCE     t   CREATE SEQUENCE public.role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public          postgres    false    210                       0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
          public          postgres    false    209            ?            1259    16640 
   user_roles    TABLE     _   CREATE TABLE public.user_roles (
    worker_id bigint NOT NULL,
    role_id bigint NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            ?            1259    16645    user_vaccine    TABLE     ?   CREATE TABLE public.user_vaccine (
    worker_id integer NOT NULL,
    vaccine_id integer NOT NULL,
    dose integer NOT NULL,
    vaccine_date timestamp without time zone
);
     DROP TABLE public.user_vaccine;
       public         heap    postgres    false            ?            1259    16651    vaccine    TABLE     Y   CREATE TABLE public.vaccine (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.vaccine;
       public         heap    postgres    false            ?            1259    16650    vaccine_id_seq    SEQUENCE     w   CREATE SEQUENCE public.vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.vaccine_id_seq;
       public          postgres    false    214                       0    0    vaccine_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.vaccine_id_seq OWNED BY public.vaccine.id;
          public          postgres    false    213            ?            1259    16658    worker    TABLE     ?  CREATE TABLE public.worker (
    id bigint NOT NULL,
    address character varying(255),
    birth_date timestamp without time zone,
    dni character varying(10),
    email character varying(255),
    name character varying(255),
    password character varying(255),
    phone character varying(255),
    surname character varying(255),
    username character varying(255),
    vaccination boolean NOT NULL
);
    DROP TABLE public.worker;
       public         heap    postgres    false            ?            1259    16657    worker_id_seq    SEQUENCE     v   CREATE SEQUENCE public.worker_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.worker_id_seq;
       public          postgres    false    216                        0    0    worker_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.worker_id_seq OWNED BY public.worker.id;
          public          postgres    false    215            n           2604    16637    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            o           2604    16654 
   vaccine id    DEFAULT     h   ALTER TABLE ONLY public.vaccine ALTER COLUMN id SET DEFAULT nextval('public.vaccine_id_seq'::regclass);
 9   ALTER TABLE public.vaccine ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            p           2604    16661 	   worker id    DEFAULT     f   ALTER TABLE ONLY public.worker ALTER COLUMN id SET DEFAULT nextval('public.worker_id_seq'::regclass);
 8   ALTER TABLE public.worker ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    16634    role 
   TABLE DATA                 public          postgres    false    210   R'                 0    16640 
   user_roles 
   TABLE DATA                 public          postgres    false    211   ?'                 0    16645    user_vaccine 
   TABLE DATA                 public          postgres    false    212   (                 0    16651    vaccine 
   TABLE DATA                 public          postgres    false    214   /(                 0    16658    worker 
   TABLE DATA                 public          postgres    false    216   I(       !           0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 1, false);
          public          postgres    false    209            "           0    0    vaccine_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vaccine_id_seq', 1, false);
          public          postgres    false    213            #           0    0    worker_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.worker_id_seq', 5, true);
          public          postgres    false    215            z           2606    16667 
   worker dni 
   CONSTRAINT     D   ALTER TABLE ONLY public.worker
    ADD CONSTRAINT dni UNIQUE (dni);
 4   ALTER TABLE ONLY public.worker DROP CONSTRAINT dni;
       public            postgres    false    216            |           2606    16669    worker email 
   CONSTRAINT     H   ALTER TABLE ONLY public.worker
    ADD CONSTRAINT email UNIQUE (email);
 6   ALTER TABLE ONLY public.worker DROP CONSTRAINT email;
       public            postgres    false    216            r           2606    16639    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    210            t           2606    16644    user_roles user_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (worker_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    211    211            v           2606    16649    user_vaccine user_vaccine_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.user_vaccine
    ADD CONSTRAINT user_vaccine_pkey PRIMARY KEY (worker_id, vaccine_id);
 H   ALTER TABLE ONLY public.user_vaccine DROP CONSTRAINT user_vaccine_pkey;
       public            postgres    false    212    212            ~           2606    16671    worker username 
   CONSTRAINT     N   ALTER TABLE ONLY public.worker
    ADD CONSTRAINT username UNIQUE (username);
 9   ALTER TABLE ONLY public.worker DROP CONSTRAINT username;
       public            postgres    false    216            x           2606    16656    vaccine vaccine_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT vaccine_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT vaccine_pkey;
       public            postgres    false    214            ?           2606    16665    worker worker_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.worker DROP CONSTRAINT worker_pkey;
       public            postgres    false    216            ?           2606    16672    user_roles roleid    FK CONSTRAINT     o   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT roleid FOREIGN KEY (role_id) REFERENCES public.role(id);
 ;   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT roleid;
       public          postgres    false    3186    210    211            ?           2606    16687    user_vaccine vaccineid    FK CONSTRAINT     z   ALTER TABLE ONLY public.user_vaccine
    ADD CONSTRAINT vaccineid FOREIGN KEY (vaccine_id) REFERENCES public.vaccine(id);
 @   ALTER TABLE ONLY public.user_vaccine DROP CONSTRAINT vaccineid;
       public          postgres    false    3192    214    212            ?           2606    16677    user_roles workerid    FK CONSTRAINT     u   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT workerid FOREIGN KEY (worker_id) REFERENCES public.worker(id);
 =   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT workerid;
       public          postgres    false    211    3200    216            ?           2606    16682    user_vaccine workerid    FK CONSTRAINT     w   ALTER TABLE ONLY public.user_vaccine
    ADD CONSTRAINT workerid FOREIGN KEY (worker_id) REFERENCES public.worker(id);
 ?   ALTER TABLE ONLY public.user_vaccine DROP CONSTRAINT workerid;
       public          postgres    false    216    3200    212               R   x???v
Q???W((M??L?+??IU??L?Q?K?M?Ts?	uV?0?QP??q?wt???S״??$^?Ls(PH/ ?"t         Q   x???v
Q???W((M??L?+-N-?/??I-V?(?/??2St@"@??B??O?k????????5?'?&??(M?? ?*         
   x???             
   x???             Z  x?Ő?n?@??>?,LԄ? ?T???Q?J???:?L????}?>E_?C?c?u77瞓?{????p?D?t顴?Ĕ4\?C??4????І?<z 50??0k?A???Tg? ?8S?,?WR??[?!?AN9k????T744?1??5???V?m?NMmD
?2q??????&?I??D?ʜ??*? ?S??ү?P5?j???^?Pv??m?jY???4?fvԗ???1@Gl??$k?????_???;;???b6?*??b?\`3,??l[?Y֍?0?Kh? '4?*?GF?=i??a6???3?y????;?5ޮF???A????7?N???Q??%?J???¦     