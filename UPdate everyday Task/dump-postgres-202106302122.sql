PGDMP     7                    y            postgres    13.3    13.3 3    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    13442    postgres    DATABASE     i   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3072                        2615    17088    Personal_Shop    SCHEMA        CREATE SCHEMA "Personal_Shop";
    DROP SCHEMA "Personal_Shop";
                postgres    false            �            1259    17089    cart    TABLE     �   CREATE TABLE "Personal_Shop".cart (
    id integer NOT NULL,
    product_name character varying(50) NOT NULL,
    product_price integer NOT NULL,
    product_quantity integer NOT NULL,
    total integer NOT NULL,
    product_id integer NOT NULL
);
 !   DROP TABLE "Personal_Shop".cart;
       Personal_Shop         heap    postgres    false    4            �            1259    17094    category    TABLE     l   CREATE TABLE "Personal_Shop".category (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 %   DROP TABLE "Personal_Shop".category;
       Personal_Shop         heap    postgres    false    4            �            1259    17099    customer    TABLE       CREATE TABLE "Personal_Shop".customer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    mobile character varying(15) NOT NULL,
    city character varying(50) NOT NULL,
    user_id integer NOT NULL,
    email character varying(50) NOT NULL
);
 %   DROP TABLE "Personal_Shop".customer;
       Personal_Shop         heap    postgres    false    4            �            1259    17104    orders    TABLE       CREATE TABLE "Personal_Shop".orders (
    id integer NOT NULL,
    product_id integer NOT NULL,
    product_quantity integer NOT NULL,
    product_price integer NOT NULL,
    totalcost integer NOT NULL,
    customer_id integer NOT NULL,
    customer_name character varying(50) NOT NULL,
    customer_mobile character varying(15) NOT NULL,
    customer_email character varying(50) NOT NULL,
    customer_city character varying(100) NOT NULL,
    shipping character varying(50) NOT NULL,
    order_date date NOT NULL
);
 #   DROP TABLE "Personal_Shop".orders;
       Personal_Shop         heap    postgres    false    4            �            1259    17109    product    TABLE     �   CREATE TABLE "Personal_Shop".product (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    describe text NOT NULL
);
 $   DROP TABLE "Personal_Shop".product;
       Personal_Shop         heap    postgres    false    4            �            1259    17140    product_category    TABLE     u   CREATE TABLE "Personal_Shop".product_category (
    product_id integer NOT NULL,
    category_id integer NOT NULL
);
 -   DROP TABLE "Personal_Shop".product_category;
       Personal_Shop         heap    postgres    false    4            �            1259    17130    product_review    TABLE     �   CREATE TABLE "Personal_Shop".product_review (
    id integer NOT NULL,
    product_id integer NOT NULL,
    product_name character varying(50) NOT NULL,
    content character varying(50) NOT NULL,
    rating integer NOT NULL
);
 +   DROP TABLE "Personal_Shop".product_review;
       Personal_Shop         heap    postgres    false    4            �            1259    17164    product_tag    TABLE     k   CREATE TABLE "Personal_Shop".product_tag (
    product_id integer NOT NULL,
    tag_id integer NOT NULL
);
 (   DROP TABLE "Personal_Shop".product_tag;
       Personal_Shop         heap    postgres    false    4            �            1259    17167    tag    TABLE     h   CREATE TABLE "Personal_Shop".tag (
    id integer NOT NULL,
    title character varying(50) NOT NULL
);
     DROP TABLE "Personal_Shop".tag;
       Personal_Shop         heap    postgres    false    4            �            1259    17172    transaction_status    TABLE     �   CREATE TABLE "Personal_Shop".transaction_status (
    id integer NOT NULL,
    order_id integer NOT NULL,
    status character varying(10) NOT NULL
);
 /   DROP TABLE "Personal_Shop".transaction_status;
       Personal_Shop         heap    postgres    false    4            �            1259    17177    userr    TABLE     �   CREATE TABLE "Personal_Shop".userr (
    id integer NOT NULL,
    email character varying(50) NOT NULL,
    password_hash character varying(50) NOT NULL,
    userr_role_id integer NOT NULL
);
 "   DROP TABLE "Personal_Shop".userr;
       Personal_Shop         heap    postgres    false    4            �            1259    17182 
   userr_role    TABLE     n   CREATE TABLE "Personal_Shop".userr_role (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 '   DROP TABLE "Personal_Shop".userr_role;
       Personal_Shop         heap    postgres    false    4            �          0    17089    cart 
   TABLE DATA           m   COPY "Personal_Shop".cart (id, product_name, product_price, product_quantity, total, product_id) FROM stdin;
    Personal_Shop          postgres    false    201            �          0    17094    category 
   TABLE DATA           5   COPY "Personal_Shop".category (id, name) FROM stdin;
    Personal_Shop          postgres    false    202            �          0    17099    customer 
   TABLE DATA           S   COPY "Personal_Shop".customer (id, name, mobile, city, user_id, email) FROM stdin;
    Personal_Shop          postgres    false    203            �          0    17104    orders 
   TABLE DATA           �   COPY "Personal_Shop".orders (id, product_id, product_quantity, product_price, totalcost, customer_id, customer_name, customer_mobile, customer_email, customer_city, shipping, order_date) FROM stdin;
    Personal_Shop          postgres    false    204            �          0    17109    product 
   TABLE DATA           O   COPY "Personal_Shop".product (id, name, price, quantity, describe) FROM stdin;
    Personal_Shop          postgres    false    205            �          0    17140    product_category 
   TABLE DATA           L   COPY "Personal_Shop".product_category (product_id, category_id) FROM stdin;
    Personal_Shop          postgres    false    207            �          0    17130    product_review 
   TABLE DATA           `   COPY "Personal_Shop".product_review (id, product_id, product_name, content, rating) FROM stdin;
    Personal_Shop          postgres    false    206            �          0    17164    product_tag 
   TABLE DATA           B   COPY "Personal_Shop".product_tag (product_id, tag_id) FROM stdin;
    Personal_Shop          postgres    false    208            �          0    17167    tag 
   TABLE DATA           1   COPY "Personal_Shop".tag (id, title) FROM stdin;
    Personal_Shop          postgres    false    209            �          0    17172    transaction_status 
   TABLE DATA           K   COPY "Personal_Shop".transaction_status (id, order_id, status) FROM stdin;
    Personal_Shop          postgres    false    210            �          0    17177    userr 
   TABLE DATA           Q   COPY "Personal_Shop".userr (id, email, password_hash, userr_role_id) FROM stdin;
    Personal_Shop          postgres    false    211            �          0    17182 
   userr_role 
   TABLE DATA           7   COPY "Personal_Shop".userr_role (id, name) FROM stdin;
    Personal_Shop          postgres    false    212            O           2606    17093    cart cart_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "Personal_Shop".cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY "Personal_Shop".cart DROP CONSTRAINT cart_pkey;
       Personal_Shop            postgres    false    201            Q           2606    17098    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Personal_Shop".category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Personal_Shop".category DROP CONSTRAINT category_pkey;
       Personal_Shop            postgres    false    202            S           2606    17103    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Personal_Shop".customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Personal_Shop".customer DROP CONSTRAINT customer_pkey;
       Personal_Shop            postgres    false    203            U           2606    17108    orders orders_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT orders_pkey;
       Personal_Shop            postgres    false    204            W           2606    17116    product product_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "Personal_Shop".product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Personal_Shop".product DROP CONSTRAINT product_pkey;
       Personal_Shop            postgres    false    205            Y           2606    17134 "   product_review product_review_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Personal_Shop".product_review
    ADD CONSTRAINT product_review_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "Personal_Shop".product_review DROP CONSTRAINT product_review_pkey;
       Personal_Shop            postgres    false    206            [           2606    17171    tag tag_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "Personal_Shop".tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY "Personal_Shop".tag DROP CONSTRAINT tag_pkey;
       Personal_Shop            postgres    false    209            ]           2606    17176 *   transaction_status transaction_status_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "Personal_Shop".transaction_status
    ADD CONSTRAINT transaction_status_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY "Personal_Shop".transaction_status DROP CONSTRAINT transaction_status_pkey;
       Personal_Shop            postgres    false    210            _           2606    17181    userr userr_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "Personal_Shop".userr
    ADD CONSTRAINT userr_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY "Personal_Shop".userr DROP CONSTRAINT userr_pkey;
       Personal_Shop            postgres    false    211            a           2606    17186    userr_role userr_role_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Personal_Shop".userr_role
    ADD CONSTRAINT userr_role_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY "Personal_Shop".userr_role DROP CONSTRAINT userr_role_pkey;
       Personal_Shop            postgres    false    212            h           2606    17148 ;   product_category foreignkey_from_category_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_category
    ADD CONSTRAINT foreignkey_from_category_to_product_review FOREIGN KEY (category_id) REFERENCES "Personal_Shop".category(id);
 n   ALTER TABLE ONLY "Personal_Shop".product_category DROP CONSTRAINT foreignkey_from_category_to_product_review;
       Personal_Shop          postgres    false    2897    202    207            d           2606    17223 )   orders foreignkey_from_customer_to_orders    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT foreignkey_from_customer_to_orders FOREIGN KEY (customer_id) REFERENCES "Personal_Shop".customer(id);
 \   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT foreignkey_from_customer_to_orders;
       Personal_Shop          postgres    false    2899    203    204            k           2606    17203 7   transaction_status foreignkey_from_order_to_transaction    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".transaction_status
    ADD CONSTRAINT foreignkey_from_order_to_transaction FOREIGN KEY (order_id) REFERENCES "Personal_Shop".orders(id);
 j   ALTER TABLE ONLY "Personal_Shop".transaction_status DROP CONSTRAINT foreignkey_from_order_to_transaction;
       Personal_Shop          postgres    false    204    210    2901            b           2606    17188 $   cart foreignkey_from_product_to_cart    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".cart
    ADD CONSTRAINT foreignkey_from_product_to_cart FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 W   ALTER TABLE ONLY "Personal_Shop".cart DROP CONSTRAINT foreignkey_from_product_to_cart;
       Personal_Shop          postgres    false    2903    205    201            e           2606    17228 '   orders foreignkey_from_product_to_order    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT foreignkey_from_product_to_order FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 Z   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT foreignkey_from_product_to_order;
       Personal_Shop          postgres    false    205    2903    204            f           2606    17135 8   product_review foreignkey_from_product_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_review
    ADD CONSTRAINT foreignkey_from_product_to_product_review FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 k   ALTER TABLE ONLY "Personal_Shop".product_review DROP CONSTRAINT foreignkey_from_product_to_product_review;
       Personal_Shop          postgres    false    205    206    2903            g           2606    17143 :   product_category foreignkey_from_product_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_category
    ADD CONSTRAINT foreignkey_from_product_to_product_review FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 m   ALTER TABLE ONLY "Personal_Shop".product_category DROP CONSTRAINT foreignkey_from_product_to_product_review;
       Personal_Shop          postgres    false    207    205    2903            i           2606    17193 1   product_tag foreignkey_from_product_to_producttag    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_tag
    ADD CONSTRAINT foreignkey_from_product_to_producttag FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 d   ALTER TABLE ONLY "Personal_Shop".product_tag DROP CONSTRAINT foreignkey_from_product_to_producttag;
       Personal_Shop          postgres    false    208    2903    205            j           2606    17198 -   product_tag foreignkey_from_tag_to_producttag    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_tag
    ADD CONSTRAINT foreignkey_from_tag_to_producttag FOREIGN KEY (tag_id) REFERENCES "Personal_Shop".tag(id);
 `   ALTER TABLE ONLY "Personal_Shop".product_tag DROP CONSTRAINT foreignkey_from_tag_to_producttag;
       Personal_Shop          postgres    false    2907    208    209            l           2606    17213 (   userr foreignkey_from_user_role_to_userr    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".userr
    ADD CONSTRAINT foreignkey_from_user_role_to_userr FOREIGN KEY (userr_role_id) REFERENCES "Personal_Shop".userr_role(id);
 [   ALTER TABLE ONLY "Personal_Shop".userr DROP CONSTRAINT foreignkey_from_user_role_to_userr;
       Personal_Shop          postgres    false    212    2913    211            c           2606    17218 )   customer foreignkey_from_user_to_customer    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".customer
    ADD CONSTRAINT foreignkey_from_user_to_customer FOREIGN KEY (user_id) REFERENCES "Personal_Shop".userr(id);
 \   ALTER TABLE ONLY "Personal_Shop".customer DROP CONSTRAINT foreignkey_from_user_to_customer;
       Personal_Shop          postgres    false    211    203    2911            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      3    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    13442    postgres    DATABASE     i   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3072                        2615    17088    Personal_Shop    SCHEMA        CREATE SCHEMA "Personal_Shop";
    DROP SCHEMA "Personal_Shop";
                postgres    false            �            1259    17089    cart    TABLE     �   CREATE TABLE "Personal_Shop".cart (
    id integer NOT NULL,
    product_name character varying(50) NOT NULL,
    product_price integer NOT NULL,
    product_quantity integer NOT NULL,
    total integer NOT NULL,
    product_id integer NOT NULL
);
 !   DROP TABLE "Personal_Shop".cart;
       Personal_Shop         heap    postgres    false    4            �            1259    17094    category    TABLE     l   CREATE TABLE "Personal_Shop".category (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 %   DROP TABLE "Personal_Shop".category;
       Personal_Shop         heap    postgres    false    4            �            1259    17099    customer    TABLE       CREATE TABLE "Personal_Shop".customer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    mobile character varying(15) NOT NULL,
    city character varying(50) NOT NULL,
    user_id integer NOT NULL,
    email character varying(50) NOT NULL
);
 %   DROP TABLE "Personal_Shop".customer;
       Personal_Shop         heap    postgres    false    4            �            1259    17104    orders    TABLE       CREATE TABLE "Personal_Shop".orders (
    id integer NOT NULL,
    product_id integer NOT NULL,
    product_quantity integer NOT NULL,
    product_price integer NOT NULL,
    totalcost integer NOT NULL,
    customer_id integer NOT NULL,
    customer_name character varying(50) NOT NULL,
    customer_mobile character varying(15) NOT NULL,
    customer_email character varying(50) NOT NULL,
    customer_city character varying(100) NOT NULL,
    shipping character varying(50) NOT NULL,
    order_date date NOT NULL
);
 #   DROP TABLE "Personal_Shop".orders;
       Personal_Shop         heap    postgres    false    4            �            1259    17109    product    TABLE     �   CREATE TABLE "Personal_Shop".product (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    describe text NOT NULL
);
 $   DROP TABLE "Personal_Shop".product;
       Personal_Shop         heap    postgres    false    4            �            1259    17140    product_category    TABLE     u   CREATE TABLE "Personal_Shop".product_category (
    product_id integer NOT NULL,
    category_id integer NOT NULL
);
 -   DROP TABLE "Personal_Shop".product_category;
       Personal_Shop         heap    postgres    false    4            �            1259    17130    product_review    TABLE     �   CREATE TABLE "Personal_Shop".product_review (
    id integer NOT NULL,
    product_id integer NOT NULL,
    product_name character varying(50) NOT NULL,
    content character varying(50) NOT NULL,
    rating integer NOT NULL
);
 +   DROP TABLE "Personal_Shop".product_review;
       Personal_Shop         heap    postgres    false    4            �            1259    17164    product_tag    TABLE     k   CREATE TABLE "Personal_Shop".product_tag (
    product_id integer NOT NULL,
    tag_id integer NOT NULL
);
 (   DROP TABLE "Personal_Shop".product_tag;
       Personal_Shop         heap    postgres    false    4            �            1259    17167    tag    TABLE     h   CREATE TABLE "Personal_Shop".tag (
    id integer NOT NULL,
    title character varying(50) NOT NULL
);
     DROP TABLE "Personal_Shop".tag;
       Personal_Shop         heap    postgres    false    4            �            1259    17172    transaction_status    TABLE     �   CREATE TABLE "Personal_Shop".transaction_status (
    id integer NOT NULL,
    order_id integer NOT NULL,
    status character varying(10) NOT NULL
);
 /   DROP TABLE "Personal_Shop".transaction_status;
       Personal_Shop         heap    postgres    false    4            �            1259    17177    userr    TABLE     �   CREATE TABLE "Personal_Shop".userr (
    id integer NOT NULL,
    email character varying(50) NOT NULL,
    password_hash character varying(50) NOT NULL,
    userr_role_id integer NOT NULL
);
 "   DROP TABLE "Personal_Shop".userr;
       Personal_Shop         heap    postgres    false    4            �            1259    17182 
   userr_role    TABLE     n   CREATE TABLE "Personal_Shop".userr_role (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 '   DROP TABLE "Personal_Shop".userr_role;
       Personal_Shop         heap    postgres    false    4            �          0    17089    cart 
   TABLE DATA           m   COPY "Personal_Shop".cart (id, product_name, product_price, product_quantity, total, product_id) FROM stdin;
    Personal_Shop          postgres    false    201   �       �          0    17094    category 
   TABLE DATA           5   COPY "Personal_Shop".category (id, name) FROM stdin;
    Personal_Shop          postgres    false    202           �          0    17099    customer 
   TABLE DATA           S   COPY "Personal_Shop".customer (id, name, mobile, city, user_id, email) FROM stdin;
    Personal_Shop          postgres    false    203           �          0    17104    orders 
   TABLE DATA           �   COPY "Personal_Shop".orders (id, product_id, product_quantity, product_price, totalcost, customer_id, customer_name, customer_mobile, customer_email, customer_city, shipping, order_date) FROM stdin;
    Personal_Shop          postgres    false    204           �          0    17109    product 
   TABLE DATA           O   COPY "Personal_Shop".product (id, name, price, quantity, describe) FROM stdin;
    Personal_Shop          postgres    false    205           �          0    17140    product_category 
   TABLE DATA           L   COPY "Personal_Shop".product_category (product_id, category_id) FROM stdin;
    Personal_Shop          postgres    false    207           �          0    17130    product_review 
   TABLE DATA           `   COPY "Personal_Shop".product_review (id, product_id, product_name, content, rating) FROM stdin;
    Personal_Shop          postgres    false    206           �          0    17164    product_tag 
   TABLE DATA           B   COPY "Personal_Shop".product_tag (product_id, tag_id) FROM stdin;
    Personal_Shop          postgres    false    208           �          0    17167    tag 
   TABLE DATA           1   COPY "Personal_Shop".tag (id, title) FROM stdin;
    Personal_Shop          postgres    false    209           �          0    17172    transaction_status 
   TABLE DATA           K   COPY "Personal_Shop".transaction_status (id, order_id, status) FROM stdin;
    Personal_Shop          postgres    false    210           �          0    17177    userr 
   TABLE DATA           Q   COPY "Personal_Shop".userr (id, email, password_hash, userr_role_id) FROM stdin;
    Personal_Shop          postgres    false    211           �          0    17182 
   userr_role 
   TABLE DATA           7   COPY "Personal_Shop".userr_role (id, name) FROM stdin;
    Personal_Shop          postgres    false    212           O           2606    17093    cart cart_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "Personal_Shop".cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY "Personal_Shop".cart DROP CONSTRAINT cart_pkey;
       Personal_Shop            postgres    false    201            Q           2606    17098    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Personal_Shop".category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Personal_Shop".category DROP CONSTRAINT category_pkey;
       Personal_Shop            postgres    false    202            S           2606    17103    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Personal_Shop".customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Personal_Shop".customer DROP CONSTRAINT customer_pkey;
       Personal_Shop            postgres    false    203            U           2606    17108    orders orders_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT orders_pkey;
       Personal_Shop            postgres    false    204            W           2606    17116    product product_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "Personal_Shop".product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Personal_Shop".product DROP CONSTRAINT product_pkey;
       Personal_Shop            postgres    false    205            Y           2606    17134 "   product_review product_review_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Personal_Shop".product_review
    ADD CONSTRAINT product_review_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "Personal_Shop".product_review DROP CONSTRAINT product_review_pkey;
       Personal_Shop            postgres    false    206            [           2606    17171    tag tag_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "Personal_Shop".tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY "Personal_Shop".tag DROP CONSTRAINT tag_pkey;
       Personal_Shop            postgres    false    209            ]           2606    17176 *   transaction_status transaction_status_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "Personal_Shop".transaction_status
    ADD CONSTRAINT transaction_status_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY "Personal_Shop".transaction_status DROP CONSTRAINT transaction_status_pkey;
       Personal_Shop            postgres    false    210            _           2606    17181    userr userr_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "Personal_Shop".userr
    ADD CONSTRAINT userr_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY "Personal_Shop".userr DROP CONSTRAINT userr_pkey;
       Personal_Shop            postgres    false    211            a           2606    17186    userr_role userr_role_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Personal_Shop".userr_role
    ADD CONSTRAINT userr_role_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY "Personal_Shop".userr_role DROP CONSTRAINT userr_role_pkey;
       Personal_Shop            postgres    false    212            h           2606    17148 ;   product_category foreignkey_from_category_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_category
    ADD CONSTRAINT foreignkey_from_category_to_product_review FOREIGN KEY (category_id) REFERENCES "Personal_Shop".category(id);
 n   ALTER TABLE ONLY "Personal_Shop".product_category DROP CONSTRAINT foreignkey_from_category_to_product_review;
       Personal_Shop          postgres    false    2897    202    207            d           2606    17223 )   orders foreignkey_from_customer_to_orders    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT foreignkey_from_customer_to_orders FOREIGN KEY (customer_id) REFERENCES "Personal_Shop".customer(id);
 \   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT foreignkey_from_customer_to_orders;
       Personal_Shop          postgres    false    2899    203    204            k           2606    17203 7   transaction_status foreignkey_from_order_to_transaction    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".transaction_status
    ADD CONSTRAINT foreignkey_from_order_to_transaction FOREIGN KEY (order_id) REFERENCES "Personal_Shop".orders(id);
 j   ALTER TABLE ONLY "Personal_Shop".transaction_status DROP CONSTRAINT foreignkey_from_order_to_transaction;
       Personal_Shop          postgres    false    204    210    2901            b           2606    17188 $   cart foreignkey_from_product_to_cart    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".cart
    ADD CONSTRAINT foreignkey_from_product_to_cart FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 W   ALTER TABLE ONLY "Personal_Shop".cart DROP CONSTRAINT foreignkey_from_product_to_cart;
       Personal_Shop          postgres    false    2903    205    201            e           2606    17228 '   orders foreignkey_from_product_to_order    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT foreignkey_from_product_to_order FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 Z   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT foreignkey_from_product_to_order;
       Personal_Shop          postgres    false    205    2903    204            f           2606    17135 8   product_review foreignkey_from_product_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_review
    ADD CONSTRAINT foreignkey_from_product_to_product_review FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 k   ALTER TABLE ONLY "Personal_Shop".product_review DROP CONSTRAINT foreignkey_from_product_to_product_review;
       Personal_Shop          postgres    false    205    206    2903            g           2606    17143 :   product_category foreignkey_from_product_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_category
    ADD CONSTRAINT foreignkey_from_product_to_product_review FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 m   ALTER TABLE ONLY "Personal_Shop".product_category DROP CONSTRAINT foreignkey_from_product_to_product_review;
       Personal_Shop          postgres    false    207    205    2903            i           2606    17193 1   product_tag foreignkey_from_product_to_producttag    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_tag
    ADD CONSTRAINT foreignkey_from_product_to_producttag FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 d   ALTER TABLE ONLY "Personal_Shop".product_tag DROP CONSTRAINT foreignkey_from_product_to_producttag;
       Personal_Shop          postgres    false    208    2903    205            j           2606    17198 -   product_tag foreignkey_from_tag_to_producttag    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_tag
    ADD CONSTRAINT foreignkey_from_tag_to_producttag FOREIGN KEY (tag_id) REFERENCES "Personal_Shop".tag(id);
 `   ALTER TABLE ONLY "Personal_Shop".product_tag DROP CONSTRAINT foreignkey_from_tag_to_producttag;
       Personal_Shop          postgres    false    2907    208    209            l           2606    17213 (   userr foreignkey_from_user_role_to_userr    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".userr
    ADD CONSTRAINT foreignkey_from_user_role_to_userr FOREIGN KEY (userr_role_id) REFERENCES "Personal_Shop".userr_role(id);
 [   ALTER TABLE ONLY "Personal_Shop".userr DROP CONSTRAINT foreignkey_from_user_role_to_userr;
       Personal_Shop          postgres    false    212    2913    211            c           2606    17218 )   customer foreignkey_from_user_to_customer    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".customer
    ADD CONSTRAINT foreignkey_from_user_to_customer FOREIGN KEY (user_id) REFERENCES "Personal_Shop".userr(id);
 \   ALTER TABLE ONLY "Personal_Shop".customer DROP CONSTRAINT foreignkey_from_user_to_customer;
       Personal_Shop          postgres    false    211    203    2911           