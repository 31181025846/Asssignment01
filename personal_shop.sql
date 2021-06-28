PGDMP     4                    y            Personal_Shop    13.3    13.3 l    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    16819    Personal_Shop    DATABASE     p   CREATE DATABASE "Personal_Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE "Personal_Shop";
                postgres    false            �            1259    16885    Cart    TABLE     �   CREATE TABLE public."Cart" (
    id bigint NOT NULL,
    product_name character varying(50) NOT NULL,
    product_price integer NOT NULL,
    product_quantity integer NOT NULL,
    total integer NOT NULL,
    product_id bigint NOT NULL
);
    DROP TABLE public."Cart";
       public         heap    postgres    false            �            1259    16883    Cart_id_seq    SEQUENCE     v   CREATE SEQUENCE public."Cart_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Cart_id_seq";
       public          postgres    false    214            /           0    0    Cart_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Cart_id_seq" OWNED BY public."Cart".id;
          public          postgres    false    213            �            1259    16940    Cart_product_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."Cart_product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Cart_product_id_seq";
       public          postgres    false    214            0           0    0    Cart_product_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Cart_product_id_seq" OWNED BY public."Cart".product_id;
          public          postgres    false    223            �            1259    16841    Category    TABLE     `   CREATE TABLE public."Category" (
    id bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public."Category";
       public         heap    postgres    false            �            1259    16839    Category_id_seq    SEQUENCE     z   CREATE SEQUENCE public."Category_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Category_id_seq";
       public          postgres    false    203            1           0    0    Category_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Category_id_seq" OWNED BY public."Category".id;
          public          postgres    false    202            �            1259    16900    Orders    TABLE     �  CREATE TABLE public."Orders" (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    user_id bigint NOT NULL,
    product_quantity integer NOT NULL,
    product_price integer NOT NULL,
    totalcost integer NOT NULL,
    user_name character varying(50) NOT NULL,
    mobile character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    city character varying(100) NOT NULL,
    shipping character varying(50) NOT NULL
);
    DROP TABLE public."Orders";
       public         heap    postgres    false            �            1259    16894    Orders_id_seq    SEQUENCE     x   CREATE SEQUENCE public."Orders_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Orders_id_seq";
       public          postgres    false    218            2           0    0    Orders_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Orders_id_seq" OWNED BY public."Orders".id;
          public          postgres    false    215            �            1259    16896    Orders_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Orders_product_id_seq";
       public          postgres    false    218            3           0    0    Orders_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Orders_product_id_seq" OWNED BY public."Orders".product_id;
          public          postgres    false    216            �            1259    16898    Orders_user_id_seq    SEQUENCE     }   CREATE SEQUENCE public."Orders_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Orders_user_id_seq";
       public          postgres    false    218            4           0    0    Orders_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Orders_user_id_seq" OWNED BY public."Orders".user_id;
          public          postgres    false    217            �            1259    16856    Product    TABLE     �   CREATE TABLE public."Product" (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    category_id bigint NOT NULL,
    tag_id bigint NOT NULL,
    describe text NOT NULL
);
    DROP TABLE public."Product";
       public         heap    postgres    false            �            1259    16876    Product_Review    TABLE     �   CREATE TABLE public."Product_Review" (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    product_name character varying(50) NOT NULL,
    content character varying(50) NOT NULL,
    rating integer NOT NULL
);
 $   DROP TABLE public."Product_Review";
       public         heap    postgres    false            �            1259    16872    Product_Review_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Review_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Product_Review_id_seq";
       public          postgres    false    212            5           0    0    Product_Review_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Product_Review_id_seq" OWNED BY public."Product_Review".id;
          public          postgres    false    210            �            1259    16874    Product_Review_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Review_product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Product_Review_product_id_seq";
       public          postgres    false    212            6           0    0    Product_Review_product_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Product_Review_product_id_seq" OWNED BY public."Product_Review".product_id;
          public          postgres    false    211            �            1259    16852    Product_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_category_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Product_category_id_seq";
       public          postgres    false    207            7           0    0    Product_category_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Product_category_id_seq" OWNED BY public."Product".category_id;
          public          postgres    false    205            �            1259    16850    Product_id_seq    SEQUENCE     y   CREATE SEQUENCE public."Product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Product_id_seq";
       public          postgres    false    207            8           0    0    Product_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Product_id_seq" OWNED BY public."Product".id;
          public          postgres    false    204            �            1259    16854    Product_tag_id_seq    SEQUENCE     }   CREATE SEQUENCE public."Product_tag_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Product_tag_id_seq";
       public          postgres    false    207            9           0    0    Product_tag_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Product_tag_id_seq" OWNED BY public."Product".tag_id;
          public          postgres    false    206            �            1259    16830    Tag    TABLE     \   CREATE TABLE public."Tag" (
    id bigint NOT NULL,
    title character varying NOT NULL
);
    DROP TABLE public."Tag";
       public         heap    postgres    false            �            1259    16828 
   Tag_id_seq    SEQUENCE     u   CREATE SEQUENCE public."Tag_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."Tag_id_seq";
       public          postgres    false    201            :           0    0 
   Tag_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."Tag_id_seq" OWNED BY public."Tag".id;
          public          postgres    false    200            �            1259    16914    Transaction    TABLE     �   CREATE TABLE public."Transaction" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    order_id bigint NOT NULL,
    status character varying(10) NOT NULL
);
 !   DROP TABLE public."Transaction";
       public         heap    postgres    false            �            1259    16908    Transaction_id_seq    SEQUENCE     }   CREATE SEQUENCE public."Transaction_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Transaction_id_seq";
       public          postgres    false    222            ;           0    0    Transaction_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Transaction_id_seq" OWNED BY public."Transaction".id;
          public          postgres    false    219            �            1259    16912    Transaction_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Transaction_order_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Transaction_order_id_seq";
       public          postgres    false    222            <           0    0    Transaction_order_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Transaction_order_id_seq" OWNED BY public."Transaction".order_id;
          public          postgres    false    221            �            1259    16910    Transaction_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Transaction_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Transaction_user_id_seq";
       public          postgres    false    222            =           0    0    Transaction_user_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Transaction_user_id_seq" OWNED BY public."Transaction".user_id;
          public          postgres    false    220            �            1259    16866    Userr    TABLE     )  CREATE TABLE public."Userr" (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    mobile character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    "password_Hash" character varying(50) NOT NULL,
    adminn smallint NOT NULL
);
    DROP TABLE public."Userr";
       public         heap    postgres    false            �            1259    16864    Userr_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Userr_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Userr_id_seq";
       public          postgres    false    209            >           0    0    Userr_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Userr_id_seq" OWNED BY public."Userr".id;
          public          postgres    false    208            g           2604    16888    Cart id    DEFAULT     f   ALTER TABLE ONLY public."Cart" ALTER COLUMN id SET DEFAULT nextval('public."Cart_id_seq"'::regclass);
 8   ALTER TABLE public."Cart" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            h           2604    16942    Cart product_id    DEFAULT     v   ALTER TABLE ONLY public."Cart" ALTER COLUMN product_id SET DEFAULT nextval('public."Cart_product_id_seq"'::regclass);
 @   ALTER TABLE public."Cart" ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    223    214            `           2604    16844    Category id    DEFAULT     n   ALTER TABLE ONLY public."Category" ALTER COLUMN id SET DEFAULT nextval('public."Category_id_seq"'::regclass);
 <   ALTER TABLE public."Category" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            i           2604    16903 	   Orders id    DEFAULT     j   ALTER TABLE ONLY public."Orders" ALTER COLUMN id SET DEFAULT nextval('public."Orders_id_seq"'::regclass);
 :   ALTER TABLE public."Orders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    218    218            j           2604    16904    Orders product_id    DEFAULT     z   ALTER TABLE ONLY public."Orders" ALTER COLUMN product_id SET DEFAULT nextval('public."Orders_product_id_seq"'::regclass);
 B   ALTER TABLE public."Orders" ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    218    216    218            k           2604    16905    Orders user_id    DEFAULT     t   ALTER TABLE ONLY public."Orders" ALTER COLUMN user_id SET DEFAULT nextval('public."Orders_user_id_seq"'::regclass);
 ?   ALTER TABLE public."Orders" ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    218    217    218            a           2604    16859 
   Product id    DEFAULT     l   ALTER TABLE ONLY public."Product" ALTER COLUMN id SET DEFAULT nextval('public."Product_id_seq"'::regclass);
 ;   ALTER TABLE public."Product" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    204    207            b           2604    16860    Product category_id    DEFAULT     ~   ALTER TABLE ONLY public."Product" ALTER COLUMN category_id SET DEFAULT nextval('public."Product_category_id_seq"'::regclass);
 D   ALTER TABLE public."Product" ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    207    205    207            c           2604    16861    Product tag_id    DEFAULT     t   ALTER TABLE ONLY public."Product" ALTER COLUMN tag_id SET DEFAULT nextval('public."Product_tag_id_seq"'::regclass);
 ?   ALTER TABLE public."Product" ALTER COLUMN tag_id DROP DEFAULT;
       public          postgres    false    206    207    207            e           2604    16879    Product_Review id    DEFAULT     z   ALTER TABLE ONLY public."Product_Review" ALTER COLUMN id SET DEFAULT nextval('public."Product_Review_id_seq"'::regclass);
 B   ALTER TABLE public."Product_Review" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    212    212            f           2604    16880    Product_Review product_id    DEFAULT     �   ALTER TABLE ONLY public."Product_Review" ALTER COLUMN product_id SET DEFAULT nextval('public."Product_Review_product_id_seq"'::regclass);
 J   ALTER TABLE public."Product_Review" ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    212    211    212            _           2604    16833    Tag id    DEFAULT     d   ALTER TABLE ONLY public."Tag" ALTER COLUMN id SET DEFAULT nextval('public."Tag_id_seq"'::regclass);
 7   ALTER TABLE public."Tag" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            l           2604    16917    Transaction id    DEFAULT     t   ALTER TABLE ONLY public."Transaction" ALTER COLUMN id SET DEFAULT nextval('public."Transaction_id_seq"'::regclass);
 ?   ALTER TABLE public."Transaction" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    219    222            m           2604    16918    Transaction user_id    DEFAULT     ~   ALTER TABLE ONLY public."Transaction" ALTER COLUMN user_id SET DEFAULT nextval('public."Transaction_user_id_seq"'::regclass);
 D   ALTER TABLE public."Transaction" ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    222    220    222            n           2604    16919    Transaction order_id    DEFAULT     �   ALTER TABLE ONLY public."Transaction" ALTER COLUMN order_id SET DEFAULT nextval('public."Transaction_order_id_seq"'::regclass);
 E   ALTER TABLE public."Transaction" ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    222    221    222            d           2604    16869    Userr id    DEFAULT     h   ALTER TABLE ONLY public."Userr" ALTER COLUMN id SET DEFAULT nextval('public."Userr_id_seq"'::regclass);
 9   ALTER TABLE public."Userr" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209                      0    16885    Cart 
   TABLE DATA           f   COPY public."Cart" (id, product_name, product_price, product_quantity, total, product_id) FROM stdin;
    public          postgres    false    214   �|                 0    16841    Category 
   TABLE DATA           .   COPY public."Category" (id, name) FROM stdin;
    public          postgres    false    203   
}       #          0    16900    Orders 
   TABLE DATA           �   COPY public."Orders" (id, product_id, user_id, product_quantity, product_price, totalcost, user_name, mobile, email, city, shipping) FROM stdin;
    public          postgres    false    218   '}                 0    16856    Product 
   TABLE DATA           ]   COPY public."Product" (id, name, price, quantity, category_id, tag_id, describe) FROM stdin;
    public          postgres    false    207   D}                 0    16876    Product_Review 
   TABLE DATA           Y   COPY public."Product_Review" (id, product_id, product_name, content, rating) FROM stdin;
    public          postgres    false    212   a}                 0    16830    Tag 
   TABLE DATA           *   COPY public."Tag" (id, title) FROM stdin;
    public          postgres    false    201   ~}       '          0    16914    Transaction 
   TABLE DATA           F   COPY public."Transaction" (id, user_id, order_id, status) FROM stdin;
    public          postgres    false    222   �}                 0    16866    Userr 
   TABLE DATA           b   COPY public."Userr" (id, name, date_of_birth, mobile, email, "password_Hash", adminn) FROM stdin;
    public          postgres    false    209   �}       ?           0    0    Cart_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Cart_id_seq"', 1, false);
          public          postgres    false    213            @           0    0    Cart_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Cart_product_id_seq"', 1, false);
          public          postgres    false    223            A           0    0    Category_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Category_id_seq"', 1, false);
          public          postgres    false    202            B           0    0    Orders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Orders_id_seq"', 1, false);
          public          postgres    false    215            C           0    0    Orders_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Orders_product_id_seq"', 1, false);
          public          postgres    false    216            D           0    0    Orders_user_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Orders_user_id_seq"', 1, false);
          public          postgres    false    217            E           0    0    Product_Review_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Product_Review_id_seq"', 1, false);
          public          postgres    false    210            F           0    0    Product_Review_product_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Product_Review_product_id_seq"', 1, false);
          public          postgres    false    211            G           0    0    Product_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Product_category_id_seq"', 1, false);
          public          postgres    false    205            H           0    0    Product_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Product_id_seq"', 1, false);
          public          postgres    false    204            I           0    0    Product_tag_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Product_tag_id_seq"', 1, false);
          public          postgres    false    206            J           0    0 
   Tag_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Tag_id_seq"', 1, false);
          public          postgres    false    200            K           0    0    Transaction_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Transaction_id_seq"', 1, false);
          public          postgres    false    219            L           0    0    Transaction_order_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Transaction_order_id_seq"', 1, false);
          public          postgres    false    221            M           0    0    Transaction_user_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Transaction_user_id_seq"', 1, false);
          public          postgres    false    220            N           0    0    Userr_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Userr_id_seq"', 1, false);
          public          postgres    false    208            }           2606    16890    Cart Cart_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Cart"
    ADD CONSTRAINT "Cart_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Cart" DROP CONSTRAINT "Cart_pkey";
       public            postgres    false    214            r           2606    16849    Category Category_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Category" DROP CONSTRAINT "Category_pkey";
       public            postgres    false    203            �           2606    16907    Orders Orders_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public            postgres    false    218            z           2606    16882 "   Product_Review Product_Review_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Product_Review"
    ADD CONSTRAINT "Product_Review_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Product_Review" DROP CONSTRAINT "Product_Review_pkey";
       public            postgres    false    212            t           2606    16863    Product Product_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "Product_pkey";
       public            postgres    false    207            p           2606    16838    Tag Tag_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT "Tag_pkey";
       public            postgres    false    201            �           2606    16921    Transaction Transaction_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT "Transaction_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Transaction" DROP CONSTRAINT "Transaction_pkey";
       public            postgres    false    222            x           2606    16871    Userr Userr_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Userr"
    ADD CONSTRAINT "Userr_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Userr" DROP CONSTRAINT "Userr_pkey";
       public            postgres    false    209            u           1259    16939 '   fki_foreignkey_from_category_to_product    INDEX     d   CREATE INDEX fki_foreignkey_from_category_to_product ON public."Product" USING btree (category_id);
 ;   DROP INDEX public.fki_foreignkey_from_category_to_product;
       public            postgres    false    207            �           1259    16965 (   fki_foreignkey_from_order_to_transaction    INDEX     f   CREATE INDEX fki_foreignkey_from_order_to_transaction ON public."Transaction" USING btree (order_id);
 <   DROP INDEX public.fki_foreignkey_from_order_to_transaction;
       public            postgres    false    222            ~           1259    16952 #   fki_foreignkey_from_product_to_cart    INDEX     \   CREATE INDEX fki_foreignkey_from_product_to_cart ON public."Cart" USING btree (product_id);
 7   DROP INDEX public.fki_foreignkey_from_product_to_cart;
       public            postgres    false    214            �           1259    16971 $   fki_foreignkey_from_product_to_order    INDEX     _   CREATE INDEX fki_foreignkey_from_product_to_order ON public."Orders" USING btree (product_id);
 8   DROP INDEX public.fki_foreignkey_from_product_to_order;
       public            postgres    false    218            {           1259    16927 -   fki_foreignkey_from_product_to_product_review    INDEX     p   CREATE INDEX fki_foreignkey_from_product_to_product_review ON public."Product_Review" USING btree (product_id);
 A   DROP INDEX public.fki_foreignkey_from_product_to_product_review;
       public            postgres    false    212            v           1259    16933 "   fki_foreignkey_from_tag_to_product    INDEX     Z   CREATE INDEX fki_foreignkey_from_tag_to_product ON public."Product" USING btree (tag_id);
 6   DROP INDEX public.fki_foreignkey_from_tag_to_product;
       public            postgres    false    207            �           1259    16977 !   fki_foreignkey_from_user_to_order    INDEX     Y   CREATE INDEX fki_foreignkey_from_user_to_order ON public."Orders" USING btree (user_id);
 5   DROP INDEX public.fki_foreignkey_from_user_to_order;
       public            postgres    false    218            �           1259    16959 '   fki_foreignkey_from_user_to_transaction    INDEX     d   CREATE INDEX fki_foreignkey_from_user_to_transaction ON public."Transaction" USING btree (user_id);
 ;   DROP INDEX public.fki_foreignkey_from_user_to_transaction;
       public            postgres    false    222            �           2606    16978 +   Product foreignkey_from_category_to_product    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT foreignkey_from_category_to_product FOREIGN KEY (category_id) REFERENCES public."Category"(id) NOT VALID;
 W   ALTER TABLE ONLY public."Product" DROP CONSTRAINT foreignkey_from_category_to_product;
       public          postgres    false    207    203    2930            �           2606    16960 0   Transaction foreignkey_from_order_to_transaction    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT foreignkey_from_order_to_transaction FOREIGN KEY (order_id) REFERENCES public."Orders"(id) NOT VALID;
 \   ALTER TABLE ONLY public."Transaction" DROP CONSTRAINT foreignkey_from_order_to_transaction;
       public          postgres    false    2944    218    222            �           2606    16947 $   Cart foreignkey_from_product_to_cart    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cart"
    ADD CONSTRAINT foreignkey_from_product_to_cart FOREIGN KEY (product_id) REFERENCES public."Product"(id) NOT VALID;
 P   ALTER TABLE ONLY public."Cart" DROP CONSTRAINT foreignkey_from_product_to_cart;
       public          postgres    false    214    207    2932            �           2606    16966 '   Orders foreignkey_from_product_to_order    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT foreignkey_from_product_to_order FOREIGN KEY (product_id) REFERENCES public."Product"(id) NOT VALID;
 S   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT foreignkey_from_product_to_order;
       public          postgres    false    218    207    2932            �           2606    16922 8   Product_Review foreignkey_from_product_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Review"
    ADD CONSTRAINT foreignkey_from_product_to_product_review FOREIGN KEY (product_id) REFERENCES public."Product"(id) NOT VALID;
 d   ALTER TABLE ONLY public."Product_Review" DROP CONSTRAINT foreignkey_from_product_to_product_review;
       public          postgres    false    212    207    2932            �           2606    16928 &   Product foreignkey_from_tag_to_product    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT foreignkey_from_tag_to_product FOREIGN KEY (tag_id) REFERENCES public."Tag"(id) NOT VALID;
 R   ALTER TABLE ONLY public."Product" DROP CONSTRAINT foreignkey_from_tag_to_product;
       public          postgres    false    2928    207    201            �           2606    16972 $   Orders foreignkey_from_user_to_order    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT foreignkey_from_user_to_order FOREIGN KEY (user_id) REFERENCES public."Userr"(id) NOT VALID;
 P   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT foreignkey_from_user_to_order;
       public          postgres    false    2936    209    218            �           2606    16954 /   Transaction foreignkey_from_user_to_transaction    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT foreignkey_from_user_to_transaction FOREIGN KEY (user_id) REFERENCES public."Userr"(id) NOT VALID;
 [   ALTER TABLE ONLY public."Transaction" DROP CONSTRAINT foreignkey_from_user_to_transaction;
       public          postgres    false    2936    222    209                  x������ � �            x������ � �      #      x������ � �            x������ � �            x������ � �            x������ � �      '      x������ � �            x������ � �     