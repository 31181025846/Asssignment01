PGDMP         8                y            postgres    13.3    13.3 V               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13442    postgres    DATABASE     i   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Vietnamese_Vietnam.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3099                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4            �            1259    16405    category    TABLE     b   CREATE TABLE public.category (
    id bigint NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false    4            �            1259    16403    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    202    4                       0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    201            �            1259    16421    customer    TABLE     ,  CREATE TABLE public.customer (
    id bigint NOT NULL,
    city character varying(50) NOT NULL,
    date_of_birth timestamp without time zone,
    email character varying(50) NOT NULL,
    mobile character varying(12) NOT NULL,
    name character varying(50) NOT NULL,
    user_id bigint NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false    4            �            1259    16419    customer_id_seq    SEQUENCE     x   CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public          postgres    false    4    206                       0    0    customer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;
          public          postgres    false    205            �            1259    16442    order_detail    TABLE     �   CREATE TABLE public.order_detail (
    id bigint NOT NULL,
    quantity integer NOT NULL,
    total integer NOT NULL,
    product_id bigint NOT NULL,
    order_id bigint NOT NULL,
    shipping_id bigint NOT NULL
);
     DROP TABLE public.order_detail;
       public         heap    postgres    false    4            �            1259    16440    order_detail_id_seq    SEQUENCE     |   CREATE SEQUENCE public.order_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.order_detail_id_seq;
       public          postgres    false    210    4                        0    0    order_detail_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.order_detail_id_seq OWNED BY public.order_detail.id;
          public          postgres    false    209            �            1259    16450    orders    TABLE     �   CREATE TABLE public.orders (
    id bigint NOT NULL,
    order_date timestamp without time zone,
    customer_id bigint NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false    4            �            1259    16448    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    212    4            !           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    211            �            1259    16429    product    TABLE     �   CREATE TABLE public.product (
    id bigint NOT NULL,
    describe character varying(200) NOT NULL,
    name character varying(100) NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    category_id bigint
);
    DROP TABLE public.product;
       public         heap    postgres    false    4            �            1259    16427    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    4    208            "           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    207            �            1259    16458    product_review    TABLE     �   CREATE TABLE public.product_review (
    id bigint NOT NULL,
    content character varying(50) NOT NULL,
    rating integer NOT NULL,
    product_id bigint NOT NULL
);
 "   DROP TABLE public.product_review;
       public         heap    postgres    false    4            �            1259    16456    product_review_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.product_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_review_id_seq;
       public          postgres    false    4    214            #           0    0    product_review_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_review_id_seq OWNED BY public.product_review.id;
          public          postgres    false    213            �            1259    16466    shipping    TABLE     k   CREATE TABLE public.shipping (
    id bigint NOT NULL,
    shipping_type character varying(20) NOT NULL
);
    DROP TABLE public.shipping;
       public         heap    postgres    false    4            �            1259    16464    shipping_id_seq    SEQUENCE     x   CREATE SEQUENCE public.shipping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.shipping_id_seq;
       public          postgres    false    4    216            $           0    0    shipping_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.shipping_id_seq OWNED BY public.shipping.id;
          public          postgres    false    215            �            1259    16474    transaction_status    TABLE     �   CREATE TABLE public.transaction_status (
    id bigint NOT NULL,
    status character varying(10) NOT NULL,
    order_detail_id bigint NOT NULL
);
 &   DROP TABLE public.transaction_status;
       public         heap    postgres    false    4            �            1259    16472    transaction_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaction_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.transaction_status_id_seq;
       public          postgres    false    4    218            %           0    0    transaction_status_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.transaction_status_id_seq OWNED BY public.transaction_status.id;
          public          postgres    false    217            �            1259    16413 	   user_role    TABLE     c   CREATE TABLE public.user_role (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false    4            �            1259    16411    user_role_id_seq    SEQUENCE     y   CREATE SEQUENCE public.user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_role_id_seq;
       public          postgres    false    4    204            &           0    0    user_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_role_id_seq OWNED BY public.user_role.id;
          public          postgres    false    203            �            1259    16492    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    password character varying(20) NOT NULL,
    username character varying(20) NOT NULL,
    user_role_id bigint NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    16490    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    220    4            '           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    219            Y           2604    16408    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    202    202            [           2604    16424    customer id    DEFAULT     j   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            ]           2604    16445    order_detail id    DEFAULT     r   ALTER TABLE ONLY public.order_detail ALTER COLUMN id SET DEFAULT nextval('public.order_detail_id_seq'::regclass);
 >   ALTER TABLE public.order_detail ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ^           2604    16453 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            \           2604    16432 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208            _           2604    16461    product_review id    DEFAULT     v   ALTER TABLE ONLY public.product_review ALTER COLUMN id SET DEFAULT nextval('public.product_review_id_seq'::regclass);
 @   ALTER TABLE public.product_review ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            `           2604    16469    shipping id    DEFAULT     j   ALTER TABLE ONLY public.shipping ALTER COLUMN id SET DEFAULT nextval('public.shipping_id_seq'::regclass);
 :   ALTER TABLE public.shipping ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            a           2604    16477    transaction_status id    DEFAULT     ~   ALTER TABLE ONLY public.transaction_status ALTER COLUMN id SET DEFAULT nextval('public.transaction_status_id_seq'::regclass);
 D   ALTER TABLE public.transaction_status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            Z           2604    16416    user_role id    DEFAULT     l   ALTER TABLE ONLY public.user_role ALTER COLUMN id SET DEFAULT nextval('public.user_role_id_seq'::regclass);
 ;   ALTER TABLE public.user_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    204    204            b           2604    16495    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220                      0    16405    category 
   TABLE DATA           ,   COPY public.category (id, name) FROM stdin;
    public          postgres    false    202                      0    16421    customer 
   TABLE DATA           Y   COPY public.customer (id, city, date_of_birth, email, mobile, name, user_id) FROM stdin;
    public          postgres    false    206                      0    16442    order_detail 
   TABLE DATA           ^   COPY public.order_detail (id, quantity, total, product_id, order_id, shipping_id) FROM stdin;
    public          postgres    false    210                      0    16450    orders 
   TABLE DATA           =   COPY public.orders (id, order_date, customer_id) FROM stdin;
    public          postgres    false    212            	          0    16429    product 
   TABLE DATA           S   COPY public.product (id, describe, name, price, quantity, category_id) FROM stdin;
    public          postgres    false    208                      0    16458    product_review 
   TABLE DATA           I   COPY public.product_review (id, content, rating, product_id) FROM stdin;
    public          postgres    false    214                      0    16466    shipping 
   TABLE DATA           5   COPY public.shipping (id, shipping_type) FROM stdin;
    public          postgres    false    216                      0    16474    transaction_status 
   TABLE DATA           I   COPY public.transaction_status (id, status, order_detail_id) FROM stdin;
    public          postgres    false    218                      0    16413 	   user_role 
   TABLE DATA           -   COPY public.user_role (id, name) FROM stdin;
    public          postgres    false    204                      0    16492    users 
   TABLE DATA           E   COPY public.users (id, password, username, user_role_id) FROM stdin;
    public          postgres    false    220            (           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    201            )           0    0    customer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customer_id_seq', 1, false);
          public          postgres    false    205            *           0    0    order_detail_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_detail_id_seq', 1, false);
          public          postgres    false    209            +           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public          postgres    false    211            ,           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 1, false);
          public          postgres    false    207            -           0    0    product_review_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_review_id_seq', 1, false);
          public          postgres    false    213            .           0    0    shipping_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.shipping_id_seq', 1, false);
          public          postgres    false    215            /           0    0    transaction_status_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.transaction_status_id_seq', 1, false);
          public          postgres    false    217            0           0    0    user_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_role_id_seq', 1, false);
          public          postgres    false    203            1           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    219            d           2606    16410    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    202            h           2606    16426    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    206            l           2606    16447    order_detail order_detail_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_pkey;
       public            postgres    false    210            n           2606    16455    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    212            j           2606    16434    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    208            p           2606    16463 "   product_review product_review_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT product_review_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_review DROP CONSTRAINT product_review_pkey;
       public            postgres    false    214            r           2606    16471    shipping shipping_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.shipping
    ADD CONSTRAINT shipping_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.shipping DROP CONSTRAINT shipping_pkey;
       public            postgres    false    216            t           2606    16479 *   transaction_status transaction_status_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.transaction_status
    ADD CONSTRAINT transaction_status_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.transaction_status DROP CONSTRAINT transaction_status_pkey;
       public            postgres    false    218            f           2606    16418    user_role user_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    204            v           2606    16497    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    220            x           2606    16435 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    2916    202    208            |           2606    16513 "   orders fk624gtjin3po807j3vix093tlf    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk624gtjin3po807j3vix093tlf FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk624gtjin3po807j3vix093tlf;
       public          postgres    false    206    2920    212                       2606    16503 !   users fk7x3uo1krtxr8r60py9rd2ys5p    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk7x3uo1krtxr8r60py9rd2ys5p FOREIGN KEY (user_role_id) REFERENCES public.user_role(id);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT fk7x3uo1krtxr8r60py9rd2ys5p;
       public          postgres    false    220    204    2918            y           2606    16485 (   order_detail fkb8bg2bkty0oksa3wiq5mp5qnc    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT fkb8bg2bkty0oksa3wiq5mp5qnc FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT fkb8bg2bkty0oksa3wiq5mp5qnc;
       public          postgres    false    208    2922    210            ~           2606    16523 .   transaction_status fkcqi9pid94y8ku8d3sjssnrq1c    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction_status
    ADD CONSTRAINT fkcqi9pid94y8ku8d3sjssnrq1c FOREIGN KEY (order_detail_id) REFERENCES public.order_detail(id);
 X   ALTER TABLE ONLY public.transaction_status DROP CONSTRAINT fkcqi9pid94y8ku8d3sjssnrq1c;
       public          postgres    false    210    218    2924            }           2606    16480 *   product_review fkkaqmhakwt05p3n0px81b9pdya    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT fkkaqmhakwt05p3n0px81b9pdya FOREIGN KEY (product_id) REFERENCES public.product(id);
 T   ALTER TABLE ONLY public.product_review DROP CONSTRAINT fkkaqmhakwt05p3n0px81b9pdya;
       public          postgres    false    214    208    2922            w           2606    16508 $   customer fkra1cb3fu95r1a0m7aksow0nk4    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT fkra1cb3fu95r1a0m7aksow0nk4 FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.customer DROP CONSTRAINT fkra1cb3fu95r1a0m7aksow0nk4;
       public          postgres    false    220    206    2934            z           2606    16498 (   order_detail fkrws2q0si6oyd6il8gqe2aennc    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT fkrws2q0si6oyd6il8gqe2aennc FOREIGN KEY (order_id) REFERENCES public.orders(id);
 R   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT fkrws2q0si6oyd6il8gqe2aennc;
       public          postgres    false    2926    212    210            {           2606    16518 (   order_detail fksx3e0djtb8jub6c1dsgq5mobb    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT fksx3e0djtb8jub6c1dsgq5mobb FOREIGN KEY (shipping_id) REFERENCES public.shipping(id);
 R   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT fksx3e0djtb8jub6c1dsgq5mobb;
       public          postgres    false    216    210    2930               ,   x�3���/-N�2��N�L�O,J�2��HML)���K����� �(
>            x������ � �            x������ � �            x������ � �      	      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      V               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13442    postgres    DATABASE     i   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Vietnamese_Vietnam.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3099                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4            �            1259    16405    category    TABLE     b   CREATE TABLE public.category (
    id bigint NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false    4            �            1259    16403    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    202    4                       0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    201            �            1259    16421    customer    TABLE     ,  CREATE TABLE public.customer (
    id bigint NOT NULL,
    city character varying(50) NOT NULL,
    date_of_birth timestamp without time zone,
    email character varying(50) NOT NULL,
    mobile character varying(12) NOT NULL,
    name character varying(50) NOT NULL,
    user_id bigint NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false    4            �            1259    16419    customer_id_seq    SEQUENCE     x   CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public          postgres    false    4    206                       0    0    customer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;
          public          postgres    false    205            �            1259    16442    order_detail    TABLE     �   CREATE TABLE public.order_detail (
    id bigint NOT NULL,
    quantity integer NOT NULL,
    total integer NOT NULL,
    product_id bigint NOT NULL,
    order_id bigint NOT NULL,
    shipping_id bigint NOT NULL
);
     DROP TABLE public.order_detail;
       public         heap    postgres    false    4            �            1259    16440    order_detail_id_seq    SEQUENCE     |   CREATE SEQUENCE public.order_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.order_detail_id_seq;
       public          postgres    false    210    4                        0    0    order_detail_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.order_detail_id_seq OWNED BY public.order_detail.id;
          public          postgres    false    209            �            1259    16450    orders    TABLE     �   CREATE TABLE public.orders (
    id bigint NOT NULL,
    order_date timestamp without time zone,
    customer_id bigint NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false    4            �            1259    16448    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    212    4            !           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    211            �            1259    16429    product    TABLE     �   CREATE TABLE public.product (
    id bigint NOT NULL,
    describe character varying(200) NOT NULL,
    name character varying(100) NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    category_id bigint
);
    DROP TABLE public.product;
       public         heap    postgres    false    4            �            1259    16427    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    4    208            "           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    207            �            1259    16458    product_review    TABLE     �   CREATE TABLE public.product_review (
    id bigint NOT NULL,
    content character varying(50) NOT NULL,
    rating integer NOT NULL,
    product_id bigint NOT NULL
);
 "   DROP TABLE public.product_review;
       public         heap    postgres    false    4            �            1259    16456    product_review_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.product_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_review_id_seq;
       public          postgres    false    4    214            #           0    0    product_review_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_review_id_seq OWNED BY public.product_review.id;
          public          postgres    false    213            �            1259    16466    shipping    TABLE     k   CREATE TABLE public.shipping (
    id bigint NOT NULL,
    shipping_type character varying(20) NOT NULL
);
    DROP TABLE public.shipping;
       public         heap    postgres    false    4            �            1259    16464    shipping_id_seq    SEQUENCE     x   CREATE SEQUENCE public.shipping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.shipping_id_seq;
       public          postgres    false    4    216            $           0    0    shipping_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.shipping_id_seq OWNED BY public.shipping.id;
          public          postgres    false    215            �            1259    16474    transaction_status    TABLE     �   CREATE TABLE public.transaction_status (
    id bigint NOT NULL,
    status character varying(10) NOT NULL,
    order_detail_id bigint NOT NULL
);
 &   DROP TABLE public.transaction_status;
       public         heap    postgres    false    4            �            1259    16472    transaction_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaction_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.transaction_status_id_seq;
       public          postgres    false    4    218            %           0    0    transaction_status_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.transaction_status_id_seq OWNED BY public.transaction_status.id;
          public          postgres    false    217            �            1259    16413 	   user_role    TABLE     c   CREATE TABLE public.user_role (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false    4            �            1259    16411    user_role_id_seq    SEQUENCE     y   CREATE SEQUENCE public.user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_role_id_seq;
       public          postgres    false    4    204            &           0    0    user_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_role_id_seq OWNED BY public.user_role.id;
          public          postgres    false    203            �            1259    16492    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    password character varying(20) NOT NULL,
    username character varying(20) NOT NULL,
    user_role_id bigint NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    16490    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    220    4            '           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    219            Y           2604    16408    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    202    202            [           2604    16424    customer id    DEFAULT     j   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            ]           2604    16445    order_detail id    DEFAULT     r   ALTER TABLE ONLY public.order_detail ALTER COLUMN id SET DEFAULT nextval('public.order_detail_id_seq'::regclass);
 >   ALTER TABLE public.order_detail ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ^           2604    16453 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            \           2604    16432 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208            _           2604    16461    product_review id    DEFAULT     v   ALTER TABLE ONLY public.product_review ALTER COLUMN id SET DEFAULT nextval('public.product_review_id_seq'::regclass);
 @   ALTER TABLE public.product_review ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            `           2604    16469    shipping id    DEFAULT     j   ALTER TABLE ONLY public.shipping ALTER COLUMN id SET DEFAULT nextval('public.shipping_id_seq'::regclass);
 :   ALTER TABLE public.shipping ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            a           2604    16477    transaction_status id    DEFAULT     ~   ALTER TABLE ONLY public.transaction_status ALTER COLUMN id SET DEFAULT nextval('public.transaction_status_id_seq'::regclass);
 D   ALTER TABLE public.transaction_status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            Z           2604    16416    user_role id    DEFAULT     l   ALTER TABLE ONLY public.user_role ALTER COLUMN id SET DEFAULT nextval('public.user_role_id_seq'::regclass);
 ;   ALTER TABLE public.user_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    204    204            b           2604    16495    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220                      0    16405    category 
   TABLE DATA           ,   COPY public.category (id, name) FROM stdin;
    public          postgres    false    202   �                 0    16421    customer 
   TABLE DATA           Y   COPY public.customer (id, city, date_of_birth, email, mobile, name, user_id) FROM stdin;
    public          postgres    false    206   6                  0    16442    order_detail 
   TABLE DATA           ^   COPY public.order_detail (id, quantity, total, product_id, order_id, shipping_id) FROM stdin;
    public          postgres    false    210                     0    16450    orders 
   TABLE DATA           =   COPY public.orders (id, order_date, customer_id) FROM stdin;
    public          postgres    false    212           	          0    16429    product 
   TABLE DATA           S   COPY public.product (id, describe, name, price, quantity, category_id) FROM stdin;
    public          postgres    false    208                     0    16458    product_review 
   TABLE DATA           I   COPY public.product_review (id, content, rating, product_id) FROM stdin;
    public          postgres    false    214                     0    16466    shipping 
   TABLE DATA           5   COPY public.shipping (id, shipping_type) FROM stdin;
    public          postgres    false    216                     0    16474    transaction_status 
   TABLE DATA           I   COPY public.transaction_status (id, status, order_detail_id) FROM stdin;
    public          postgres    false    218                     0    16413 	   user_role 
   TABLE DATA           -   COPY public.user_role (id, name) FROM stdin;
    public          postgres    false    204                     0    16492    users 
   TABLE DATA           E   COPY public.users (id, password, username, user_role_id) FROM stdin;
    public          postgres    false    220           (           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    201            )           0    0    customer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customer_id_seq', 1, false);
          public          postgres    false    205            *           0    0    order_detail_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_detail_id_seq', 1, false);
          public          postgres    false    209            +           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public          postgres    false    211            ,           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 1, false);
          public          postgres    false    207            -           0    0    product_review_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_review_id_seq', 1, false);
          public          postgres    false    213            .           0    0    shipping_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.shipping_id_seq', 1, false);
          public          postgres    false    215            /           0    0    transaction_status_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.transaction_status_id_seq', 1, false);
          public          postgres    false    217            0           0    0    user_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_role_id_seq', 1, false);
          public          postgres    false    203            1           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    219            d           2606    16410    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    202            h           2606    16426    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    206            l           2606    16447    order_detail order_detail_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_pkey;
       public            postgres    false    210            n           2606    16455    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    212            j           2606    16434    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    208            p           2606    16463 "   product_review product_review_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT product_review_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_review DROP CONSTRAINT product_review_pkey;
       public            postgres    false    214            r           2606    16471    shipping shipping_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.shipping
    ADD CONSTRAINT shipping_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.shipping DROP CONSTRAINT shipping_pkey;
       public            postgres    false    216            t           2606    16479 *   transaction_status transaction_status_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.transaction_status
    ADD CONSTRAINT transaction_status_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.transaction_status DROP CONSTRAINT transaction_status_pkey;
       public            postgres    false    218            f           2606    16418    user_role user_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    204            v           2606    16497    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    220            x           2606    16435 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    2916    202    208            |           2606    16513 "   orders fk624gtjin3po807j3vix093tlf    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk624gtjin3po807j3vix093tlf FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk624gtjin3po807j3vix093tlf;
       public          postgres    false    206    2920    212                       2606    16503 !   users fk7x3uo1krtxr8r60py9rd2ys5p    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk7x3uo1krtxr8r60py9rd2ys5p FOREIGN KEY (user_role_id) REFERENCES public.user_role(id);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT fk7x3uo1krtxr8r60py9rd2ys5p;
       public          postgres    false    220    204    2918            y           2606    16485 (   order_detail fkb8bg2bkty0oksa3wiq5mp5qnc    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT fkb8bg2bkty0oksa3wiq5mp5qnc FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT fkb8bg2bkty0oksa3wiq5mp5qnc;
       public          postgres    false    208    2922    210            ~           2606    16523 .   transaction_status fkcqi9pid94y8ku8d3sjssnrq1c    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction_status
    ADD CONSTRAINT fkcqi9pid94y8ku8d3sjssnrq1c FOREIGN KEY (order_detail_id) REFERENCES public.order_detail(id);
 X   ALTER TABLE ONLY public.transaction_status DROP CONSTRAINT fkcqi9pid94y8ku8d3sjssnrq1c;
       public          postgres    false    210    218    2924            }           2606    16480 *   product_review fkkaqmhakwt05p3n0px81b9pdya    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT fkkaqmhakwt05p3n0px81b9pdya FOREIGN KEY (product_id) REFERENCES public.product(id);
 T   ALTER TABLE ONLY public.product_review DROP CONSTRAINT fkkaqmhakwt05p3n0px81b9pdya;
       public          postgres    false    214    208    2922            w           2606    16508 $   customer fkra1cb3fu95r1a0m7aksow0nk4    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT fkra1cb3fu95r1a0m7aksow0nk4 FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.customer DROP CONSTRAINT fkra1cb3fu95r1a0m7aksow0nk4;
       public          postgres    false    220    206    2934            z           2606    16498 (   order_detail fkrws2q0si6oyd6il8gqe2aennc    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT fkrws2q0si6oyd6il8gqe2aennc FOREIGN KEY (order_id) REFERENCES public.orders(id);
 R   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT fkrws2q0si6oyd6il8gqe2aennc;
       public          postgres    false    2926    212    210            {           2606    16518 (   order_detail fksx3e0djtb8jub6c1dsgq5mobb    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT fksx3e0djtb8jub6c1dsgq5mobb FOREIGN KEY (shipping_id) REFERENCES public.shipping(id);
 R   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT fksx3e0djtb8jub6c1dsgq5mobb;
       public          postgres    false    216    210    2930           