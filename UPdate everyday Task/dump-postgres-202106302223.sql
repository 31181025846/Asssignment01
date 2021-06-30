PGDMP     7                    y            postgres    13.3    13.3 4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13442    postgres    DATABASE     i   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3075                        2615    17088    Personal_Shop    SCHEMA        CREATE SCHEMA "Personal_Shop";
    DROP SCHEMA "Personal_Shop";
                postgres    false            �            1259    17236    cart    TABLE     �   CREATE TABLE "Personal_Shop".cart (
    id integer NOT NULL,
    quantity integer NOT NULL,
    total integer NOT NULL,
    product_id integer NOT NULL
);
 !   DROP TABLE "Personal_Shop".cart;
       Personal_Shop         heap    postgres    false    4            �            1259    17094    category    TABLE     l   CREATE TABLE "Personal_Shop".category (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 %   DROP TABLE "Personal_Shop".category;
       Personal_Shop         heap    postgres    false    4            �            1259    17099    customer    TABLE     "  CREATE TABLE "Personal_Shop".customer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    mobile character varying(15) NOT NULL,
    city character varying(50) NOT NULL,
    user_id integer NOT NULL,
    email character varying(50) NOT NULL,
    date_of_birth date[]
);
 %   DROP TABLE "Personal_Shop".customer;
       Personal_Shop         heap    postgres    false    4            �            1259    17261    order_detail    TABLE     �   CREATE TABLE "Personal_Shop".order_detail (
    id integer NOT NULL,
    shipping_id integer NOT NULL,
    cart_id integer NOT NULL
);
 )   DROP TABLE "Personal_Shop".order_detail;
       Personal_Shop         heap    postgres    false    4            �            1259    17104    orders    TABLE     �   CREATE TABLE "Personal_Shop".orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date date NOT NULL,
    cart_id integer NOT NULL
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
    content character varying(50) NOT NULL,
    rating integer NOT NULL
);
 +   DROP TABLE "Personal_Shop".product_review;
       Personal_Shop         heap    postgres    false    4            �            1259    17246    shipping    TABLE     u   CREATE TABLE "Personal_Shop".shipping (
    id integer NOT NULL,
    shipping_type character varying(50) NOT NULL
);
 %   DROP TABLE "Personal_Shop".shipping;
       Personal_Shop         heap    postgres    false    4            �            1259    17172    transaction_status    TABLE     �   CREATE TABLE "Personal_Shop".transaction_status (
    id integer NOT NULL,
    status character varying(10) NOT NULL,
    order_detail_id integer NOT NULL
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
       Personal_Shop         heap    postgres    false    4            �          0    17236    cart 
   TABLE DATA           H   COPY "Personal_Shop".cart (id, quantity, total, product_id) FROM stdin;
    Personal_Shop          postgres    false    210            �          0    17094    category 
   TABLE DATA           5   COPY "Personal_Shop".category (id, name) FROM stdin;
    Personal_Shop          postgres    false    201            �          0    17099    customer 
   TABLE DATA           b   COPY "Personal_Shop".customer (id, name, mobile, city, user_id, email, date_of_birth) FROM stdin;
    Personal_Shop          postgres    false    202            �          0    17261    order_detail 
   TABLE DATA           I   COPY "Personal_Shop".order_detail (id, shipping_id, cart_id) FROM stdin;
    Personal_Shop          postgres    false    212            �          0    17104    orders 
   TABLE DATA           O   COPY "Personal_Shop".orders (id, customer_id, order_date, cart_id) FROM stdin;
    Personal_Shop          postgres    false    203            �          0    17109    product 
   TABLE DATA           O   COPY "Personal_Shop".product (id, name, price, quantity, describe) FROM stdin;
    Personal_Shop          postgres    false    204            �          0    17140    product_category 
   TABLE DATA           L   COPY "Personal_Shop".product_category (product_id, category_id) FROM stdin;
    Personal_Shop          postgres    false    206            �          0    17130    product_review 
   TABLE DATA           R   COPY "Personal_Shop".product_review (id, product_id, content, rating) FROM stdin;
    Personal_Shop          postgres    false    205            �          0    17246    shipping 
   TABLE DATA           >   COPY "Personal_Shop".shipping (id, shipping_type) FROM stdin;
    Personal_Shop          postgres    false    211            �          0    17172    transaction_status 
   TABLE DATA           R   COPY "Personal_Shop".transaction_status (id, status, order_detail_id) FROM stdin;
    Personal_Shop          postgres    false    207            �          0    17177    userr 
   TABLE DATA           Q   COPY "Personal_Shop".userr (id, email, password_hash, userr_role_id) FROM stdin;
    Personal_Shop          postgres    false    208            �          0    17182 
   userr_role 
   TABLE DATA           7   COPY "Personal_Shop".userr_role (id, name) FROM stdin;
    Personal_Shop          postgres    false    209            `           2606    17240    cart cart_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "Personal_Shop".cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY "Personal_Shop".cart DROP CONSTRAINT cart_pkey;
       Personal_Shop            postgres    false    210            P           2606    17098    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Personal_Shop".category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Personal_Shop".category DROP CONSTRAINT category_pkey;
       Personal_Shop            postgres    false    201            R           2606    17103    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Personal_Shop".customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Personal_Shop".customer DROP CONSTRAINT customer_pkey;
       Personal_Shop            postgres    false    202            d           2606    17265    order_detail order_detail_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "Personal_Shop".order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY "Personal_Shop".order_detail DROP CONSTRAINT order_detail_pkey;
       Personal_Shop            postgres    false    212            T           2606    17108    orders orders_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT orders_pkey;
       Personal_Shop            postgres    false    203            V           2606    17116    product product_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "Personal_Shop".product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Personal_Shop".product DROP CONSTRAINT product_pkey;
       Personal_Shop            postgres    false    204            X           2606    17134 "   product_review product_review_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Personal_Shop".product_review
    ADD CONSTRAINT product_review_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "Personal_Shop".product_review DROP CONSTRAINT product_review_pkey;
       Personal_Shop            postgres    false    205            b           2606    17250    shipping shipping_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Personal_Shop".shipping
    ADD CONSTRAINT shipping_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Personal_Shop".shipping DROP CONSTRAINT shipping_pkey;
       Personal_Shop            postgres    false    211            Z           2606    17176 *   transaction_status transaction_status_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "Personal_Shop".transaction_status
    ADD CONSTRAINT transaction_status_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY "Personal_Shop".transaction_status DROP CONSTRAINT transaction_status_pkey;
       Personal_Shop            postgres    false    207            \           2606    17181    userr userr_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "Personal_Shop".userr
    ADD CONSTRAINT userr_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY "Personal_Shop".userr DROP CONSTRAINT userr_pkey;
       Personal_Shop            postgres    false    208            ^           2606    17186    userr_role userr_role_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Personal_Shop".userr_role
    ADD CONSTRAINT userr_role_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY "Personal_Shop".userr_role DROP CONSTRAINT userr_role_pkey;
       Personal_Shop            postgres    false    209            f           2606    17281 $   orders foreignkey_from_cart_to_order    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT foreignkey_from_cart_to_order FOREIGN KEY (cart_id) REFERENCES "Personal_Shop".cart(id);
 W   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT foreignkey_from_cart_to_order;
       Personal_Shop          postgres    false    2912    203    210            n           2606    17266 1   order_detail foreignkey_from_cart_to_order_detail    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".order_detail
    ADD CONSTRAINT foreignkey_from_cart_to_order_detail FOREIGN KEY (cart_id) REFERENCES "Personal_Shop".cart(id);
 d   ALTER TABLE ONLY "Personal_Shop".order_detail DROP CONSTRAINT foreignkey_from_cart_to_order_detail;
       Personal_Shop          postgres    false    2912    212    210            j           2606    17148 ;   product_category foreignkey_from_category_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_category
    ADD CONSTRAINT foreignkey_from_category_to_product_review FOREIGN KEY (category_id) REFERENCES "Personal_Shop".category(id);
 n   ALTER TABLE ONLY "Personal_Shop".product_category DROP CONSTRAINT foreignkey_from_category_to_product_review;
       Personal_Shop          postgres    false    201    206    2896            g           2606    17223 )   orders foreignkey_from_customer_to_orders    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT foreignkey_from_customer_to_orders FOREIGN KEY (customer_id) REFERENCES "Personal_Shop".customer(id);
 \   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT foreignkey_from_customer_to_orders;
       Personal_Shop          postgres    false    203    2898    202            k           2606    17276 F   transaction_status foreignkey_from_order_detail__to_transaction_status    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".transaction_status
    ADD CONSTRAINT foreignkey_from_order_detail__to_transaction_status FOREIGN KEY (order_detail_id) REFERENCES "Personal_Shop".order_detail(id);
 y   ALTER TABLE ONLY "Personal_Shop".transaction_status DROP CONSTRAINT foreignkey_from_order_detail__to_transaction_status;
       Personal_Shop          postgres    false    2916    212    207            m           2606    17241 $   cart foreignkey_from_product_to_cart    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".cart
    ADD CONSTRAINT foreignkey_from_product_to_cart FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 W   ALTER TABLE ONLY "Personal_Shop".cart DROP CONSTRAINT foreignkey_from_product_to_cart;
       Personal_Shop          postgres    false    204    210    2902            h           2606    17135 8   product_review foreignkey_from_product_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_review
    ADD CONSTRAINT foreignkey_from_product_to_product_review FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 k   ALTER TABLE ONLY "Personal_Shop".product_review DROP CONSTRAINT foreignkey_from_product_to_product_review;
       Personal_Shop          postgres    false    204    205    2902            i           2606    17143 :   product_category foreignkey_from_product_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_category
    ADD CONSTRAINT foreignkey_from_product_to_product_review FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 m   ALTER TABLE ONLY "Personal_Shop".product_category DROP CONSTRAINT foreignkey_from_product_to_product_review;
       Personal_Shop          postgres    false    204    206    2902            o           2606    17271 5   order_detail foreignkey_from_shipping_to_order_detail    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".order_detail
    ADD CONSTRAINT foreignkey_from_shipping_to_order_detail FOREIGN KEY (shipping_id) REFERENCES "Personal_Shop".shipping(id);
 h   ALTER TABLE ONLY "Personal_Shop".order_detail DROP CONSTRAINT foreignkey_from_shipping_to_order_detail;
       Personal_Shop          postgres    false    2914    211    212            l           2606    17213 (   userr foreignkey_from_user_role_to_userr    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".userr
    ADD CONSTRAINT foreignkey_from_user_role_to_userr FOREIGN KEY (userr_role_id) REFERENCES "Personal_Shop".userr_role(id);
 [   ALTER TABLE ONLY "Personal_Shop".userr DROP CONSTRAINT foreignkey_from_user_role_to_userr;
       Personal_Shop          postgres    false    209    208    2910            e           2606    17218 )   customer foreignkey_from_user_to_customer    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".customer
    ADD CONSTRAINT foreignkey_from_user_to_customer FOREIGN KEY (user_id) REFERENCES "Personal_Shop".userr(id);
 \   ALTER TABLE ONLY "Personal_Shop".customer DROP CONSTRAINT foreignkey_from_user_to_customer;
       Personal_Shop          postgres    false    208    202    2908            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13442    postgres    DATABASE     i   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3075                        2615    17088    Personal_Shop    SCHEMA        CREATE SCHEMA "Personal_Shop";
    DROP SCHEMA "Personal_Shop";
                postgres    false            �            1259    17236    cart    TABLE     �   CREATE TABLE "Personal_Shop".cart (
    id integer NOT NULL,
    quantity integer NOT NULL,
    total integer NOT NULL,
    product_id integer NOT NULL
);
 !   DROP TABLE "Personal_Shop".cart;
       Personal_Shop         heap    postgres    false    4            �            1259    17094    category    TABLE     l   CREATE TABLE "Personal_Shop".category (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 %   DROP TABLE "Personal_Shop".category;
       Personal_Shop         heap    postgres    false    4            �            1259    17099    customer    TABLE     "  CREATE TABLE "Personal_Shop".customer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    mobile character varying(15) NOT NULL,
    city character varying(50) NOT NULL,
    user_id integer NOT NULL,
    email character varying(50) NOT NULL,
    date_of_birth date[]
);
 %   DROP TABLE "Personal_Shop".customer;
       Personal_Shop         heap    postgres    false    4            �            1259    17261    order_detail    TABLE     �   CREATE TABLE "Personal_Shop".order_detail (
    id integer NOT NULL,
    shipping_id integer NOT NULL,
    cart_id integer NOT NULL
);
 )   DROP TABLE "Personal_Shop".order_detail;
       Personal_Shop         heap    postgres    false    4            �            1259    17104    orders    TABLE     �   CREATE TABLE "Personal_Shop".orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date date NOT NULL,
    cart_id integer NOT NULL
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
    content character varying(50) NOT NULL,
    rating integer NOT NULL
);
 +   DROP TABLE "Personal_Shop".product_review;
       Personal_Shop         heap    postgres    false    4            �            1259    17246    shipping    TABLE     u   CREATE TABLE "Personal_Shop".shipping (
    id integer NOT NULL,
    shipping_type character varying(50) NOT NULL
);
 %   DROP TABLE "Personal_Shop".shipping;
       Personal_Shop         heap    postgres    false    4            �            1259    17172    transaction_status    TABLE     �   CREATE TABLE "Personal_Shop".transaction_status (
    id integer NOT NULL,
    status character varying(10) NOT NULL,
    order_detail_id integer NOT NULL
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
       Personal_Shop         heap    postgres    false    4            �          0    17236    cart 
   TABLE DATA           H   COPY "Personal_Shop".cart (id, quantity, total, product_id) FROM stdin;
    Personal_Shop          postgres    false    210   ~       �          0    17094    category 
   TABLE DATA           5   COPY "Personal_Shop".category (id, name) FROM stdin;
    Personal_Shop          postgres    false    201           �          0    17099    customer 
   TABLE DATA           b   COPY "Personal_Shop".customer (id, name, mobile, city, user_id, email, date_of_birth) FROM stdin;
    Personal_Shop          postgres    false    202           �          0    17261    order_detail 
   TABLE DATA           I   COPY "Personal_Shop".order_detail (id, shipping_id, cart_id) FROM stdin;
    Personal_Shop          postgres    false    212           �          0    17104    orders 
   TABLE DATA           O   COPY "Personal_Shop".orders (id, customer_id, order_date, cart_id) FROM stdin;
    Personal_Shop          postgres    false    203           �          0    17109    product 
   TABLE DATA           O   COPY "Personal_Shop".product (id, name, price, quantity, describe) FROM stdin;
    Personal_Shop          postgres    false    204           �          0    17140    product_category 
   TABLE DATA           L   COPY "Personal_Shop".product_category (product_id, category_id) FROM stdin;
    Personal_Shop          postgres    false    206           �          0    17130    product_review 
   TABLE DATA           R   COPY "Personal_Shop".product_review (id, product_id, content, rating) FROM stdin;
    Personal_Shop          postgres    false    205           �          0    17246    shipping 
   TABLE DATA           >   COPY "Personal_Shop".shipping (id, shipping_type) FROM stdin;
    Personal_Shop          postgres    false    211           �          0    17172    transaction_status 
   TABLE DATA           R   COPY "Personal_Shop".transaction_status (id, status, order_detail_id) FROM stdin;
    Personal_Shop          postgres    false    207           �          0    17177    userr 
   TABLE DATA           Q   COPY "Personal_Shop".userr (id, email, password_hash, userr_role_id) FROM stdin;
    Personal_Shop          postgres    false    208           �          0    17182 
   userr_role 
   TABLE DATA           7   COPY "Personal_Shop".userr_role (id, name) FROM stdin;
    Personal_Shop          postgres    false    209           `           2606    17240    cart cart_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "Personal_Shop".cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY "Personal_Shop".cart DROP CONSTRAINT cart_pkey;
       Personal_Shop            postgres    false    210            P           2606    17098    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Personal_Shop".category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Personal_Shop".category DROP CONSTRAINT category_pkey;
       Personal_Shop            postgres    false    201            R           2606    17103    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Personal_Shop".customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Personal_Shop".customer DROP CONSTRAINT customer_pkey;
       Personal_Shop            postgres    false    202            d           2606    17265    order_detail order_detail_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "Personal_Shop".order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY "Personal_Shop".order_detail DROP CONSTRAINT order_detail_pkey;
       Personal_Shop            postgres    false    212            T           2606    17108    orders orders_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT orders_pkey;
       Personal_Shop            postgres    false    203            V           2606    17116    product product_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "Personal_Shop".product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Personal_Shop".product DROP CONSTRAINT product_pkey;
       Personal_Shop            postgres    false    204            X           2606    17134 "   product_review product_review_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Personal_Shop".product_review
    ADD CONSTRAINT product_review_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "Personal_Shop".product_review DROP CONSTRAINT product_review_pkey;
       Personal_Shop            postgres    false    205            b           2606    17250    shipping shipping_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Personal_Shop".shipping
    ADD CONSTRAINT shipping_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Personal_Shop".shipping DROP CONSTRAINT shipping_pkey;
       Personal_Shop            postgres    false    211            Z           2606    17176 *   transaction_status transaction_status_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "Personal_Shop".transaction_status
    ADD CONSTRAINT transaction_status_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY "Personal_Shop".transaction_status DROP CONSTRAINT transaction_status_pkey;
       Personal_Shop            postgres    false    207            \           2606    17181    userr userr_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "Personal_Shop".userr
    ADD CONSTRAINT userr_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY "Personal_Shop".userr DROP CONSTRAINT userr_pkey;
       Personal_Shop            postgres    false    208            ^           2606    17186    userr_role userr_role_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Personal_Shop".userr_role
    ADD CONSTRAINT userr_role_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY "Personal_Shop".userr_role DROP CONSTRAINT userr_role_pkey;
       Personal_Shop            postgres    false    209            f           2606    17281 $   orders foreignkey_from_cart_to_order    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT foreignkey_from_cart_to_order FOREIGN KEY (cart_id) REFERENCES "Personal_Shop".cart(id);
 W   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT foreignkey_from_cart_to_order;
       Personal_Shop          postgres    false    2912    203    210            n           2606    17266 1   order_detail foreignkey_from_cart_to_order_detail    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".order_detail
    ADD CONSTRAINT foreignkey_from_cart_to_order_detail FOREIGN KEY (cart_id) REFERENCES "Personal_Shop".cart(id);
 d   ALTER TABLE ONLY "Personal_Shop".order_detail DROP CONSTRAINT foreignkey_from_cart_to_order_detail;
       Personal_Shop          postgres    false    2912    212    210            j           2606    17148 ;   product_category foreignkey_from_category_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_category
    ADD CONSTRAINT foreignkey_from_category_to_product_review FOREIGN KEY (category_id) REFERENCES "Personal_Shop".category(id);
 n   ALTER TABLE ONLY "Personal_Shop".product_category DROP CONSTRAINT foreignkey_from_category_to_product_review;
       Personal_Shop          postgres    false    201    206    2896            g           2606    17223 )   orders foreignkey_from_customer_to_orders    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".orders
    ADD CONSTRAINT foreignkey_from_customer_to_orders FOREIGN KEY (customer_id) REFERENCES "Personal_Shop".customer(id);
 \   ALTER TABLE ONLY "Personal_Shop".orders DROP CONSTRAINT foreignkey_from_customer_to_orders;
       Personal_Shop          postgres    false    203    2898    202            k           2606    17276 F   transaction_status foreignkey_from_order_detail__to_transaction_status    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".transaction_status
    ADD CONSTRAINT foreignkey_from_order_detail__to_transaction_status FOREIGN KEY (order_detail_id) REFERENCES "Personal_Shop".order_detail(id);
 y   ALTER TABLE ONLY "Personal_Shop".transaction_status DROP CONSTRAINT foreignkey_from_order_detail__to_transaction_status;
       Personal_Shop          postgres    false    2916    212    207            m           2606    17241 $   cart foreignkey_from_product_to_cart    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".cart
    ADD CONSTRAINT foreignkey_from_product_to_cart FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 W   ALTER TABLE ONLY "Personal_Shop".cart DROP CONSTRAINT foreignkey_from_product_to_cart;
       Personal_Shop          postgres    false    204    210    2902            h           2606    17135 8   product_review foreignkey_from_product_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_review
    ADD CONSTRAINT foreignkey_from_product_to_product_review FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 k   ALTER TABLE ONLY "Personal_Shop".product_review DROP CONSTRAINT foreignkey_from_product_to_product_review;
       Personal_Shop          postgres    false    204    205    2902            i           2606    17143 :   product_category foreignkey_from_product_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".product_category
    ADD CONSTRAINT foreignkey_from_product_to_product_review FOREIGN KEY (product_id) REFERENCES "Personal_Shop".product(id);
 m   ALTER TABLE ONLY "Personal_Shop".product_category DROP CONSTRAINT foreignkey_from_product_to_product_review;
       Personal_Shop          postgres    false    204    206    2902            o           2606    17271 5   order_detail foreignkey_from_shipping_to_order_detail    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".order_detail
    ADD CONSTRAINT foreignkey_from_shipping_to_order_detail FOREIGN KEY (shipping_id) REFERENCES "Personal_Shop".shipping(id);
 h   ALTER TABLE ONLY "Personal_Shop".order_detail DROP CONSTRAINT foreignkey_from_shipping_to_order_detail;
       Personal_Shop          postgres    false    2914    211    212            l           2606    17213 (   userr foreignkey_from_user_role_to_userr    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".userr
    ADD CONSTRAINT foreignkey_from_user_role_to_userr FOREIGN KEY (userr_role_id) REFERENCES "Personal_Shop".userr_role(id);
 [   ALTER TABLE ONLY "Personal_Shop".userr DROP CONSTRAINT foreignkey_from_user_role_to_userr;
       Personal_Shop          postgres    false    209    208    2910            e           2606    17218 )   customer foreignkey_from_user_to_customer    FK CONSTRAINT     �   ALTER TABLE ONLY "Personal_Shop".customer
    ADD CONSTRAINT foreignkey_from_user_to_customer FOREIGN KEY (user_id) REFERENCES "Personal_Shop".userr(id);
 \   ALTER TABLE ONLY "Personal_Shop".customer DROP CONSTRAINT foreignkey_from_user_to_customer;
       Personal_Shop          postgres    false    208    202    2908           