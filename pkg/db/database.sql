PGDMP  7                     |            sooc    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16562    sooc    DATABASE     x   CREATE DATABASE sooc WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE sooc;
                postgres    false            �            1259    16567    orders    TABLE     �   CREATE TABLE public.orders (
    id integer NOT NULL,
    dishname character varying(30),
    quantity integer,
    isdellivery boolean,
    isready boolean,
    isserved boolean
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16566    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    216            �           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    215            O           2604    16570 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16567    orders 
   TABLE DATA           X   COPY public.orders (id, dishname, quantity, isdellivery, isready, isserved) FROM stdin;
    public          postgres    false    216   �
       �           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 2, true);
          public          postgres    false    215            Q           2606    16572    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    216            �   9   x�3�0��m�.l�4�,�L�L�2	n���bυ=@z��F@	�$W� ���     