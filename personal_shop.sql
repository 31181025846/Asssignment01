PGDMP     &    !                y            Personal_Shop    13.3    13.3 |    A           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            C           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            D           1262    16819    Personal_Shop    DATABASE     p   CREATE DATABASE "Personal_Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Vietnamese_Vietnam.1258';
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
       public          postgres    false    212            E           0    0    Cart_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Cart_id_seq" OWNED BY public."Cart".id;
          public          postgres    false    211            �            1259    16940    Cart_product_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."Cart_product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Cart_product_id_seq";
       public          postgres    false    212            F           0    0    Cart_product_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Cart_product_id_seq" OWNED BY public."Cart".product_id;
          public          postgres    false    221            �            1259    16841    Category    TABLE     `   CREATE TABLE public."Category" (
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
       public          postgres    false    203            G           0    0    Category_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Category_id_seq" OWNED BY public."Category".id;
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
       public          postgres    false    216            H           0    0    Orders_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Orders_id_seq" OWNED BY public."Orders".id;
          public          postgres    false    213            �            1259    16896    Orders_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Orders_product_id_seq";
       public          postgres    false    216            I           0    0    Orders_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Orders_product_id_seq" OWNED BY public."Orders".product_id;
          public          postgres    false    214            �            1259    16898    Orders_user_id_seq    SEQUENCE     }   CREATE SEQUENCE public."Orders_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Orders_user_id_seq";
       public          postgres    false    216            J           0    0    Orders_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Orders_user_id_seq" OWNED BY public."Orders".user_id;
          public          postgres    false    215            �            1259    16856    Product    TABLE     �   CREATE TABLE public."Product" (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    describe text NOT NULL
);
    DROP TABLE public."Product";
       public         heap    postgres    false            �            1259    16987    Product_Category    TABLE     l   CREATE TABLE public."Product_Category" (
    product_id bigint NOT NULL,
    catefory_id bigint NOT NULL
);
 &   DROP TABLE public."Product_Category";
       public         heap    postgres    false            �            1259    16985     Product_Category_catefory_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Category_catefory_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Product_Category_catefory_id_seq";
       public          postgres    false    224            K           0    0     Product_Category_catefory_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Product_Category_catefory_id_seq" OWNED BY public."Product_Category".catefory_id;
          public          postgres    false    223            �            1259    16983    Product_Category_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Category_product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Product_Category_product_id_seq";
       public          postgres    false    224            L           0    0    Product_Category_product_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Product_Category_product_id_seq" OWNED BY public."Product_Category".product_id;
          public          postgres    false    222            �            1259    16876    Product_Review    TABLE     �   CREATE TABLE public."Product_Review" (
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
       public          postgres    false    210            M           0    0    Product_Review_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Product_Review_id_seq" OWNED BY public."Product_Review".id;
          public          postgres    false    208            �            1259    16874    Product_Review_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Review_product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Product_Review_product_id_seq";
       public          postgres    false    210            N           0    0    Product_Review_product_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Product_Review_product_id_seq" OWNED BY public."Product_Review".product_id;
          public          postgres    false    209            �            1259    17012    Product_Tag    TABLE     f   CREATE TABLE public."Product_Tag" (
    "Product_id" bigint NOT NULL,
    "Tag_id" bigint NOT NULL
);
 !   DROP TABLE public."Product_Tag";
       public         heap    postgres    false            �            1259    17008    Product_Tag_Product_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Tag_Product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Product_Tag_Product_id_seq";
       public          postgres    false    227            O           0    0    Product_Tag_Product_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Product_Tag_Product_id_seq" OWNED BY public."Product_Tag"."Product_id";
          public          postgres    false    225            �            1259    17010    Product_Tag_Tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_Tag_Tag_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Product_Tag_Tag_id_seq";
       public          postgres    false    227            P           0    0    Product_Tag_Tag_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Product_Tag_Tag_id_seq" OWNED BY public."Product_Tag"."Tag_id";
          public          postgres    false    226            �            1259    16850    Product_id_seq    SEQUENCE     y   CREATE SEQUENCE public."Product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Product_id_seq";
       public          postgres    false    205            Q           0    0    Product_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Product_id_seq" OWNED BY public."Product".id;
          public          postgres    false    204            �            1259    16830    Tag    TABLE     \   CREATE TABLE public."Tag" (
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
       public          postgres    false    201            R           0    0 
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
       public          postgres    false    220            S           0    0    Transaction_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Transaction_id_seq" OWNED BY public."Transaction".id;
          public          postgres    false    217            �            1259    16912    Transaction_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Transaction_order_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Transaction_order_id_seq";
       public          postgres    false    220            T           0    0    Transaction_order_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Transaction_order_id_seq" OWNED BY public."Transaction".order_id;
          public          postgres    false    219            �            1259    16910    Transaction_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Transaction_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Transaction_user_id_seq";
       public          postgres    false    220            U           0    0    Transaction_user_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Transaction_user_id_seq" OWNED BY public."Transaction".user_id;
          public          postgres    false    218            �            1259    16866    Userr    TABLE     )  CREATE TABLE public."Userr" (
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
       public          postgres    false    207            V           0    0    Userr_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Userr_id_seq" OWNED BY public."Userr".id;
          public          postgres    false    206            q           2604    16888    Cart id    DEFAULT     f   ALTER TABLE ONLY public."Cart" ALTER COLUMN id SET DEFAULT nextval('public."Cart_id_seq"'::regclass);
 8   ALTER TABLE public."Cart" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            r           2604    16942    Cart product_id    DEFAULT     v   ALTER TABLE ONLY public."Cart" ALTER COLUMN product_id SET DEFAULT nextval('public."Cart_product_id_seq"'::regclass);
 @   ALTER TABLE public."Cart" ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    221    212            l           2604    16844    Category id    DEFAULT     n   ALTER TABLE ONLY public."Category" ALTER COLUMN id SET DEFAULT nextval('public."Category_id_seq"'::regclass);
 <   ALTER TABLE public."Category" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            s           2604    16903 	   Orders id    DEFAULT     j   ALTER TABLE ONLY public."Orders" ALTER COLUMN id SET DEFAULT nextval('public."Orders_id_seq"'::regclass);
 :   ALTER TABLE public."Orders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    216    216            t           2604    16904    Orders product_id    DEFAULT     z   ALTER TABLE ONLY public."Orders" ALTER COLUMN product_id SET DEFAULT nextval('public."Orders_product_id_seq"'::regclass);
 B   ALTER TABLE public."Orders" ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    216    214    216            u           2604    16905    Orders user_id    DEFAULT     t   ALTER TABLE ONLY public."Orders" ALTER COLUMN user_id SET DEFAULT nextval('public."Orders_user_id_seq"'::regclass);
 ?   ALTER TABLE public."Orders" ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    216    215    216            m           2604    16859 
   Product id    DEFAULT     l   ALTER TABLE ONLY public."Product" ALTER COLUMN id SET DEFAULT nextval('public."Product_id_seq"'::regclass);
 ;   ALTER TABLE public."Product" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            y           2604    16990    Product_Category product_id    DEFAULT     �   ALTER TABLE ONLY public."Product_Category" ALTER COLUMN product_id SET DEFAULT nextval('public."Product_Category_product_id_seq"'::regclass);
 L   ALTER TABLE public."Product_Category" ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    224    222    224            z           2604    16991    Product_Category catefory_id    DEFAULT     �   ALTER TABLE ONLY public."Product_Category" ALTER COLUMN catefory_id SET DEFAULT nextval('public."Product_Category_catefory_id_seq"'::regclass);
 M   ALTER TABLE public."Product_Category" ALTER COLUMN catefory_id DROP DEFAULT;
       public          postgres    false    223    224    224            o           2604    16879    Product_Review id    DEFAULT     z   ALTER TABLE ONLY public."Product_Review" ALTER COLUMN id SET DEFAULT nextval('public."Product_Review_id_seq"'::regclass);
 B   ALTER TABLE public."Product_Review" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    208    210            p           2604    16880    Product_Review product_id    DEFAULT     �   ALTER TABLE ONLY public."Product_Review" ALTER COLUMN product_id SET DEFAULT nextval('public."Product_Review_product_id_seq"'::regclass);
 J   ALTER TABLE public."Product_Review" ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    210    209    210            {           2604    17015    Product_Tag Product_id    DEFAULT     �   ALTER TABLE ONLY public."Product_Tag" ALTER COLUMN "Product_id" SET DEFAULT nextval('public."Product_Tag_Product_id_seq"'::regclass);
 I   ALTER TABLE public."Product_Tag" ALTER COLUMN "Product_id" DROP DEFAULT;
       public          postgres    false    225    227    227            |           2604    17016    Product_Tag Tag_id    DEFAULT     ~   ALTER TABLE ONLY public."Product_Tag" ALTER COLUMN "Tag_id" SET DEFAULT nextval('public."Product_Tag_Tag_id_seq"'::regclass);
 E   ALTER TABLE public."Product_Tag" ALTER COLUMN "Tag_id" DROP DEFAULT;
       public          postgres    false    227    226    227            k           2604    16833    Tag id    DEFAULT     d   ALTER TABLE ONLY public."Tag" ALTER COLUMN id SET DEFAULT nextval('public."Tag_id_seq"'::regclass);
 7   ALTER TABLE public."Tag" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            v           2604    16917    Transaction id    DEFAULT     t   ALTER TABLE ONLY public."Transaction" ALTER COLUMN id SET DEFAULT nextval('public."Transaction_id_seq"'::regclass);
 ?   ALTER TABLE public."Transaction" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    220    220            w           2604    16918    Transaction user_id    DEFAULT     ~   ALTER TABLE ONLY public."Transaction" ALTER COLUMN user_id SET DEFAULT nextval('public."Transaction_user_id_seq"'::regclass);
 D   ALTER TABLE public."Transaction" ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    220    218    220            x           2604    16919    Transaction order_id    DEFAULT     �   ALTER TABLE ONLY public."Transaction" ALTER COLUMN order_id SET DEFAULT nextval('public."Transaction_order_id_seq"'::regclass);
 E   ALTER TABLE public."Transaction" ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    220    219    220            n           2604    16869    Userr id    DEFAULT     h   ALTER TABLE ONLY public."Userr" ALTER COLUMN id SET DEFAULT nextval('public."Userr_id_seq"'::regclass);
 9   ALTER TABLE public."Userr" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            /          0    16885    Cart 
   TABLE DATA           f   COPY public."Cart" (id, product_name, product_price, product_quantity, total, product_id) FROM stdin;
    public          postgres    false    212   ��       &          0    16841    Category 
   TABLE DATA           .   COPY public."Category" (id, name) FROM stdin;
    public          postgres    false    203   Ƒ       3          0    16900    Orders 
   TABLE DATA           �   COPY public."Orders" (id, product_id, user_id, product_quantity, product_price, totalcost, user_name, mobile, email, city, shipping) FROM stdin;
    public          postgres    false    216   �       (          0    16856    Product 
   TABLE DATA           H   COPY public."Product" (id, name, price, quantity, describe) FROM stdin;
    public          postgres    false    205   :�       ;          0    16987    Product_Category 
   TABLE DATA           E   COPY public."Product_Category" (product_id, catefory_id) FROM stdin;
    public          postgres    false    224   ��       -          0    16876    Product_Review 
   TABLE DATA           Y   COPY public."Product_Review" (id, product_id, product_name, content, rating) FROM stdin;
    public          postgres    false    210   Ю       >          0    17012    Product_Tag 
   TABLE DATA           ?   COPY public."Product_Tag" ("Product_id", "Tag_id") FROM stdin;
    public          postgres    false    227   ��       $          0    16830    Tag 
   TABLE DATA           *   COPY public."Tag" (id, title) FROM stdin;
    public          postgres    false    201   �       7          0    16914    Transaction 
   TABLE DATA           F   COPY public."Transaction" (id, user_id, order_id, status) FROM stdin;
    public          postgres    false    220   ��       *          0    16866    Userr 
   TABLE DATA           b   COPY public."Userr" (id, name, date_of_birth, mobile, email, "password_Hash", adminn) FROM stdin;
    public          postgres    false    207   ��       W           0    0    Cart_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Cart_id_seq"', 1, false);
          public          postgres    false    211            X           0    0    Cart_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Cart_product_id_seq"', 1, false);
          public          postgres    false    221            Y           0    0    Category_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Category_id_seq"', 1, false);
          public          postgres    false    202            Z           0    0    Orders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Orders_id_seq"', 1, false);
          public          postgres    false    213            [           0    0    Orders_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Orders_product_id_seq"', 1, false);
          public          postgres    false    214            \           0    0    Orders_user_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Orders_user_id_seq"', 1, false);
          public          postgres    false    215            ]           0    0     Product_Category_catefory_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Product_Category_catefory_id_seq"', 1, false);
          public          postgres    false    223            ^           0    0    Product_Category_product_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Product_Category_product_id_seq"', 1, false);
          public          postgres    false    222            _           0    0    Product_Review_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Product_Review_id_seq"', 1, false);
          public          postgres    false    208            `           0    0    Product_Review_product_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Product_Review_product_id_seq"', 1, false);
          public          postgres    false    209            a           0    0    Product_Tag_Product_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Product_Tag_Product_id_seq"', 1, false);
          public          postgres    false    225            b           0    0    Product_Tag_Tag_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Product_Tag_Tag_id_seq"', 1, false);
          public          postgres    false    226            c           0    0    Product_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Product_id_seq"', 1, false);
          public          postgres    false    204            d           0    0 
   Tag_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Tag_id_seq"', 1, false);
          public          postgres    false    200            e           0    0    Transaction_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Transaction_id_seq"', 1, false);
          public          postgres    false    217            f           0    0    Transaction_order_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Transaction_order_id_seq"', 1, false);
          public          postgres    false    219            g           0    0    Transaction_user_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Transaction_user_id_seq"', 1, false);
          public          postgres    false    218            h           0    0    Userr_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Userr_id_seq"', 1, false);
          public          postgres    false    206            �           2606    16890    Cart Cart_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Cart"
    ADD CONSTRAINT "Cart_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Cart" DROP CONSTRAINT "Cart_pkey";
       public            postgres    false    212            �           2606    16995    Category Category_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Category" DROP CONSTRAINT "Category_pkey";
       public            postgres    false    203            �           2606    16907    Orders Orders_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public            postgres    false    216            �           2606    16882 "   Product_Review Product_Review_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Product_Review"
    ADD CONSTRAINT "Product_Review_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Product_Review" DROP CONSTRAINT "Product_Review_pkey";
       public            postgres    false    210            �           2606    16863    Product Product_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "Product_pkey";
       public            postgres    false    205            ~           2606    16838    Tag Tag_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT "Tag_pkey";
       public            postgres    false    201            �           2606    16921    Transaction Transaction_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT "Transaction_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Transaction" DROP CONSTRAINT "Transaction_pkey";
       public            postgres    false    220            �           2606    16871    Userr Userr_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Userr"
    ADD CONSTRAINT "Userr_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Userr" DROP CONSTRAINT "Userr_pkey";
       public            postgres    false    207            �           1259    17007 /   fki_foreignkey_from_category_to_productcategory    INDEX     u   CREATE INDEX fki_foreignkey_from_category_to_productcategory ON public."Product_Category" USING btree (catefory_id);
 C   DROP INDEX public.fki_foreignkey_from_category_to_productcategory;
       public            postgres    false    224            �           1259    16965 (   fki_foreignkey_from_order_to_transaction    INDEX     f   CREATE INDEX fki_foreignkey_from_order_to_transaction ON public."Transaction" USING btree (order_id);
 <   DROP INDEX public.fki_foreignkey_from_order_to_transaction;
       public            postgres    false    220            �           1259    16952 #   fki_foreignkey_from_product_to_cart    INDEX     \   CREATE INDEX fki_foreignkey_from_product_to_cart ON public."Cart" USING btree (product_id);
 7   DROP INDEX public.fki_foreignkey_from_product_to_cart;
       public            postgres    false    212            �           1259    16971 $   fki_foreignkey_from_product_to_order    INDEX     _   CREATE INDEX fki_foreignkey_from_product_to_order ON public."Orders" USING btree (product_id);
 8   DROP INDEX public.fki_foreignkey_from_product_to_order;
       public            postgres    false    216            �           1259    17001 /   fki_foreignkey_from_product_to_product_category    INDEX     t   CREATE INDEX fki_foreignkey_from_product_to_product_category ON public."Product_Category" USING btree (product_id);
 C   DROP INDEX public.fki_foreignkey_from_product_to_product_category;
       public            postgres    false    224            �           1259    16927 -   fki_foreignkey_from_product_to_product_review    INDEX     p   CREATE INDEX fki_foreignkey_from_product_to_product_review ON public."Product_Review" USING btree (product_id);
 A   DROP INDEX public.fki_foreignkey_from_product_to_product_review;
       public            postgres    false    210            �           1259    17022 )   fki_foreignkey_from_product_to_producttag    INDEX     k   CREATE INDEX fki_foreignkey_from_product_to_producttag ON public."Product_Tag" USING btree ("Product_id");
 =   DROP INDEX public.fki_foreignkey_from_product_to_producttag;
       public            postgres    false    227            �           1259    17028 %   fki_foreignkey_from_tag_to_producttag    INDEX     c   CREATE INDEX fki_foreignkey_from_tag_to_producttag ON public."Product_Tag" USING btree ("Tag_id");
 9   DROP INDEX public.fki_foreignkey_from_tag_to_producttag;
       public            postgres    false    227            �           1259    16977 !   fki_foreignkey_from_user_to_order    INDEX     Y   CREATE INDEX fki_foreignkey_from_user_to_order ON public."Orders" USING btree (user_id);
 5   DROP INDEX public.fki_foreignkey_from_user_to_order;
       public            postgres    false    216            �           1259    16959 '   fki_foreignkey_from_user_to_transaction    INDEX     d   CREATE INDEX fki_foreignkey_from_user_to_transaction ON public."Transaction" USING btree (user_id);
 ;   DROP INDEX public.fki_foreignkey_from_user_to_transaction;
       public            postgres    false    220            �           2606    17002 <   Product_Category foreignkey_from_category_to_productcategory    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Category"
    ADD CONSTRAINT foreignkey_from_category_to_productcategory FOREIGN KEY (catefory_id) REFERENCES public."Category"(id) NOT VALID;
 h   ALTER TABLE ONLY public."Product_Category" DROP CONSTRAINT foreignkey_from_category_to_productcategory;
       public          postgres    false    224    203    2944            �           2606    16960 0   Transaction foreignkey_from_order_to_transaction    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT foreignkey_from_order_to_transaction FOREIGN KEY (order_id) REFERENCES public."Orders"(id) NOT VALID;
 \   ALTER TABLE ONLY public."Transaction" DROP CONSTRAINT foreignkey_from_order_to_transaction;
       public          postgres    false    216    2956    220            �           2606    16947 $   Cart foreignkey_from_product_to_cart    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cart"
    ADD CONSTRAINT foreignkey_from_product_to_cart FOREIGN KEY (product_id) REFERENCES public."Product"(id) NOT VALID;
 P   ALTER TABLE ONLY public."Cart" DROP CONSTRAINT foreignkey_from_product_to_cart;
       public          postgres    false    212    205    2946            �           2606    16966 '   Orders foreignkey_from_product_to_order    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT foreignkey_from_product_to_order FOREIGN KEY (product_id) REFERENCES public."Product"(id) NOT VALID;
 S   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT foreignkey_from_product_to_order;
       public          postgres    false    2946    216    205            �           2606    16996 <   Product_Category foreignkey_from_product_to_product_category    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Category"
    ADD CONSTRAINT foreignkey_from_product_to_product_category FOREIGN KEY (product_id) REFERENCES public."Product"(id) NOT VALID;
 h   ALTER TABLE ONLY public."Product_Category" DROP CONSTRAINT foreignkey_from_product_to_product_category;
       public          postgres    false    2946    224    205            �           2606    16922 8   Product_Review foreignkey_from_product_to_product_review    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Review"
    ADD CONSTRAINT foreignkey_from_product_to_product_review FOREIGN KEY (product_id) REFERENCES public."Product"(id) NOT VALID;
 d   ALTER TABLE ONLY public."Product_Review" DROP CONSTRAINT foreignkey_from_product_to_product_review;
       public          postgres    false    205    210    2946            �           2606    17017 1   Product_Tag foreignkey_from_product_to_producttag    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Tag"
    ADD CONSTRAINT foreignkey_from_product_to_producttag FOREIGN KEY ("Product_id") REFERENCES public."Product"(id) NOT VALID;
 ]   ALTER TABLE ONLY public."Product_Tag" DROP CONSTRAINT foreignkey_from_product_to_producttag;
       public          postgres    false    205    2946    227            �           2606    17023 -   Product_Tag foreignkey_from_tag_to_producttag    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_Tag"
    ADD CONSTRAINT foreignkey_from_tag_to_producttag FOREIGN KEY ("Tag_id") REFERENCES public."Tag"(id) NOT VALID;
 Y   ALTER TABLE ONLY public."Product_Tag" DROP CONSTRAINT foreignkey_from_tag_to_producttag;
       public          postgres    false    201    227    2942            �           2606    16972 $   Orders foreignkey_from_user_to_order    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT foreignkey_from_user_to_order FOREIGN KEY (user_id) REFERENCES public."Userr"(id) NOT VALID;
 P   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT foreignkey_from_user_to_order;
       public          postgres    false    207    2948    216            �           2606    16954 /   Transaction foreignkey_from_user_to_transaction    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT foreignkey_from_user_to_transaction FOREIGN KEY (user_id) REFERENCES public."Userr"(id) NOT VALID;
 [   ALTER TABLE ONLY public."Transaction" DROP CONSTRAINT foreignkey_from_user_to_transaction;
       public          postgres    false    220    207    2948            /      x������ � �      &   G   x�3���/-N�2��N�L�O,J�2���O�,IM��2�J�J-�2��HML)���K�2�tI,J-����� ^6:      3      x������ � �      (      x��\KoG�>��"��(����|Ϟ��dH��J�g0�Xlwղ��nV��9��`��5��S�VCۂlKC$Z�1���%_DdUfu5Ecn��U��_�#�1un�ej6��㮹�[s��r�n�:Y2{��f�u-s��|/ɢxjqe�^�O5������̬�O�Π��L��2���Y�6[���Nj��?Ot��安�?�Lw���l�il:a״����Y-�������c^�;>���B�d}Z����<JM<ܨ��Mg���<>��*��]w�v�M��l0��3P�Eb��G��F�k�O�9���U�16�����h�]%�ս��zD��Q<z��ko�;|.DǇ�л�w�%D�{/wS:8��Ջ̍K�hA<>�`��"޾�vz
����?�-m�9mF�h�<:�7�L��lE��6d>?�Ώ�3-����z�N�]d20'5kǇ�������`m�<���x��E�5��~�91]:OF�;�|ì']��1K7��4�v��Ğg��sYb��>g�1O"����ʬ��wk�->�w�� �<H�&�'P�Eۧ�tt��4k̙t �t��'v�o6�4&��I~����Y��#(�&�s�j)I<�R�3Y��~�*'b�
�ݣ'+�/b����$
H��b�V�S�d��C��]c���$�1�V3�]�A?~��t����S��%I*��I	��$T�&X�10�(Te}�8�f���ç�u�{�5����!F�"�_����� �߄�����$k�����̋�Y�O���<ȥ2+�����]E[Ĉ�\aa���2_*��D�O����(��Hl�oN&1g2�; ���DJ��݈�� �ٮ�ݸ�J�[�Nksӳ�T,a�t��p��=.�'����/ᨙ��6�gh��K5�a�C�B�-�7v��a��u!�����`b�߰�\�f�Q�n(�8�	:�1�G5�/c{��ہ��U`2#U�'�#~�����n��?`�dq����8`�z�(�
Ԧ�΅G��nc��hn+<���w`�^i�/�K�i���f}�z.le��x������ ����`�Eg9�
��T�W��bfN�ُs�m��l�X�>G�XW��4RA;1�k����п��CpX��gE�����Ks����;���oƊ���բ�;!�9p<��IFX�OτָB��eN���X���D��l]?*lg�@!=�.��2�a�K;���~j޼y�4ku2�o���'%�-̳��~4�\���APŲT"'��դ��̞r	���#��PW"�tO��>zL�g1��<2�K�������v�Y[ٞ�-�����1a�9)�_�~��a1
k7��`g�8�.���O��X���K��K�����E�#�o<�;�O�\Q�!B�ک��{�� DN��;R�
�`?(:%0��y�~Ǌf7~=%�U�uK	�>I����\��l�y� zyd�(��3��5���_\u��`�cmza�����9�ｗ�^Zd`/-M1=N��x��a��x���
�G����?���H1f��`�m���=a/m���%A �����K�9�څ��%� k�6H�HX8/ȂJN�!�bR�h�lx-���KkIV�+E�t:��~hdۦ_�m5x�"��8<\����9�Ү1��x�]�h�մ�e�(1�&;���}UA9>:	%�r��kD&C�_LGmz�
�Hj��fd��M3��N�Cl�r�j&���X/Ne�m��$A��Ipc���%s�XS"�e^d 2E�Ij-D�5�p���[N���Qȋ����Y�M�bE8^ �U�b?�ű��B�@IaK	�OM̶`�sqwo�IlOwvr0�<}�k�5�Q�S3��Ĝ(d���~)>9�|K��~d����$4޺�t�� ?ax��h?�]t�.�36L/qT��tX��A(JD;_8{�"a�Y7�,��7��O-.��(����p�.��`���@����!H;&p��J���� ��[�ZN�
K�_C<�E y��r1�=���rܑ�K��%xaiW�$ЦG�R���aNa�=�"|'ɸ+!��4����~hXA�	���d��L�"��M��z	���(ܨ� 1r<�v�h�^"�P�	KBwW��u$,Z.�����
'7x�6�<u^J\�j� W��k+�e��V+5Ss�.̟���>Ĝ��d5�s%�� 5�@�S. �i�rԍK�/�֘:����	/.�e�.�)# �z��9e� �V������;�~�&��n���YHP�MD��8iC�떚j��Z�"x�g���fHH2)������rD�ӃU"m˕H͘e����`�t०�Ka?�'{��UG�9�>L�|H���"���`��*�h9����⚀�(��1�(x[���+�P�JlB!���_ͅ�o��z�rc�V�,�� �~��-&�ι�!�l�
�e�#�Ua�Jt#A�+>��\�������]XN������wo,��ڲpC��(U��r���K?��e�9g����8YI�	��#�Ч�s�F�	�����N�zu��v�\����)�\X}�X[^}:W[��̣��_�"d6��ε�.W,�����H�z��N����-�e���3Ө��gN� 7)�15���6b^�Q��*L�D;k6�"/� Qg�
��$X,\�w�Y���H�Қc�	P��cY�%�Ka�3�4 ��*��cd�<w7q�Ԅ<xD�Q�2�"k9�Z��pi����j�<�k�5l�,:Brh�lK��:$)}o�f8>�{q��S�=�k<
 ���Xc�.�Dh�<�������'S�X�S8��:γ�*���+�/�@��X	k�Oa�d8r����^w�z)�2QSX�����^f3�h�*�U㕕J����j���������5�F��<,�zĖ˲�X�wMc1Xʻ�m���Ӡ.�� ��ݞ$��G�E�$�X�X%33�ʠ��v��!)As<��k'Y�B靘K󍹩Ʋ$�M���ӡ��ώ(����2�ݥ|�]ٶ��O�m���D�������f�B,����V,�c�����aw�;{@&��]ix��v�E	`��+ns�+���.c�v����(F�Z\Sį�H�j�L�˭���w����ݣ�_�䈻�Z3� �AD��5��|Bi(+	21�wx��q��Dv��<ΰ~��r�Ă����]�x�#��i�(������O��8	Ch3����e�0�j�o�=���d4`�P�s�	Y]RʏE@	�;V�z�����\�9�� (�[G;��vz9d��G2 ��<����Mb�#J�_)���&l�������J
?C���J�ȱ���o�L:[��}��(�~Kp�4�/�WGP�')fK��?�Q)#j�}u�-t�[X	1z��ؔՄ��5ώ*!����;�@��D�+��?z|��W|B�"�/���qZ	��"e��{=�p6h�?����:�>B��}�>�x������fq��C�\�Io;3/RC�XQb�[P�W�x׈9�{6��A5�§�3��M�w��ݿQ�i�p�o��7,����>۰���NO� �6WnR�y�ezfU�h�c�k!���F�ev�"J�Z�o�	�ԟ�&K��2���J�X�mN����%/}u���h�LXQ\	8�h�>�\���K4�P��	��^y�����d�a��R�r?��I�^\]� O�Ƙ/�/��VWkB�t��0/4�K��줃��*ZF[�.T� ���Q8z�E��;#�D"��W��e,��ҡ���������.��#ZL��8&�ԟv�D��܃V{���z�g�\8;5ה&q�C���W������S��?�(���� �V�t�W�0�A��2gA��N��R����h�����-`*ɕ�E
��Y��Ý0 �O��b��K��2�]����X��՚���/�Bu;%�[=[�/��<�kw��A��;���8��f��/E%́��y33�1���(�A���If��n����9�R3Z�7x@W;��ͮ	z2>B_�\��0͈|���tcl�b�-� `  #���ʲ��1��L2�;y��'"�c��5u.PYR�-��y�yLM�eMZ�aK����8Jz:ib� y��w����G�~�;m-P>d� 8���A�m��7�W8E�	����o���2h��`hۋ����Ǒ\�������߬8���@����^72�N>/s-hS	��h��~{Jac�3��ͫԠ�	���<2�f�Y�U-6XN��kTH�Q��e��3�/'��<D�d�r�Rj�f'�U�WJ>��lq1�O���Z�q�漣��24�i�Y�=Q梄.�@�(�S��s9����t��䱱
��b�2͵����fjIt~q!�T[��LP-�l<Q娋�#�sG�ŸyH�I��P�N̓�G1�suj�BN�̕�t����u��o�m�P<�ێsb+��"����{�2�:�r���,�W�4�ama9�ؙ'�/'FJGh��`�G��Cn��*�E� v�l�1хw��0lK������I;�nn�Zk�bwv�Gi?Is��@�u�PY�sEt2\�K���R}�\n�{S�f>��U�	/�p"]�D8�k�q��6�V˽~،́FN2���T׻1��վ���칗�8��'v�6�*��u{�D6��/;��A]�[>�]�UM\KUyU�[c�|������͔���)%�(�G%ǘ"�	)��ò���q.�@Tk��&��F�k�,z�2B��^H���6������:9�] U�I%e7Z-"�|:0.��M�(�f�tx��a�;ޥ�]@�
�%�/6QS����~�����ʚ&�<�ʳ �����0�P�+n�<Uq���|^M
j�qX�-��̟�u(���
�Bp%��B�]��k�����2��<����jci5�u{�&�\��F\��	��K�oݼ~���U B7_ŕ�?��!�g�t��"����UQD�{>�B!l���耓�gP$p|��
�b�6Kx��1��4v�W�dn���g�����1��W��wJ]��j�Ax�������w�W����f�$�5���u1��cN��=�^ME���cI$�YK�o��g����7����%�WT��3���~B����Sԓw2�s����x}���Rs1m'i��Gz��hA)����3�������]����ba�	,��.�g��Q!�����&>��ū����t|َo�c�я��kf�9��dj9�Z{(��$�8p�PrTX�Cc_���P���m^�K%\�@b]����rŤ�c�������ɮ�|�{��Q�ԇ���&�:'��R�_��b�ht 3nX\ww��|�]qyb}j���d:��g�b���h��&8��7��a���Z���:>�ʗ�n���<Ϋ��'��Z~��K�&!7�߃��p�`e�,ԛ�WK�
�)ʎ�i0���'��	?�����Zy�7�^�\"\�6�>��F��w#�S�o.�l�"s�7��Z���kI�1s��F�7��Ȓ(��E3{�e��\�PE|��F���ߊQ Y�4��ټz�i�P]ҵ��灻4'���!+]K�٫	$p+Ler�Fo���̕~��{���}�����N�N���9��SG�F!�^�5�Ru�j�j��^с��ɋ��k��wq]��sH�!l���Q��^ky{���͊���,/vp�7FcW�*�������l���T�k�1w�q���r��C`F�rh�����?������2j��fQ雈�oO({�e.QA��e���g����y3��\?h�+pK$|���K�|�!��
b��ؒ&�	�n%�E�U�l8A?2~�r/4W�Z��
������<^x�eR�tم6}h˝�0�Z�61�g�⒀`�0�.߷>�[j������HNx���q��\���ߔp?z��O�������� ]k�۝�{��`F��M5���q��)��?��t���ݽ^��v�}�b�슠.�BrskD�y�	+�������
߁�����yG���9�u�<|���(:o����	Af钨�/k�i�̀p�\�|����
+��yLhmj[��T�����^�>~�gu��+�����.&�~\<~�Uτ/��ۜ<k�;���-��z!��=!�^f�k�'��fʝ���F~�E�C��m��s��s�U�������=�����>K���~����{�h�*%��侗�)��f�7E"��m��;�);b�rл_j"�������d�~�yq�>U�U���Z@���"����n "ƹ_Qg"�_�,8M.[����}	�4�و�X<�;p~d'^2�B�h��\+��r	7��+(�����*����	>�3�\��eݳ��x��˛�,!�֢�yaE���O��s�0Z?� �'�6������͝Rv֚+�QB)I(���u��}ǣCj�ŕּ���9x�.�{L[�0����q��W��nRr��z[=���B�N�u-�<��ڝá�HVJ"����&Q�o��lRl_:�Y+�G�t�R�X	���h��	��<�!����Wz���2vW�\���W|V�	 ��m�3p'bt��l�;�g�Lzk��=�V.j�~O��,�/^�5Jr�j���Y�r`E���n�)�:�X�s�x]�<��{p�2t 6���fɌ����:.i����6���D��Q^��6��Wy�h��W����:Qǫ�K3$����5���㪘*�]�է����w�ȟ,N�E�j�˘g�>�k��e
��2	�_�*���1�?sU{�����x ��ǃ��G�0Ox�(�zZ��ۘ�̣S!ʆ���9a��p�Ӓ�t�������4�[�8CvL�j6��+��-�v.g��y�1&���*�6�f����h��Mb��*.�YOT\6���E�+��.�w�r86�m���b��;K��w������H�o�r��S�H ��"{ݖ{�R���Ag�8�ѶY�ێ[�!k�2 9��=Ց+��6�Mv�I��r�J�D�υ�mdΩ(>���90��>�$��!�?6�S0P_�8�I�h|1��j˔IxSC�v��Md��*cĺY�&�e�g7xp��&(�؏����g��S�rEQZh�O�(2ȶ���>��\ߑk���l�5~�D��&6�����/�)��߮MOO��g��      ;      x�3�4����� d      -      x������ � �      >      x�3�4�2�bCC�=... fF      $   x   x�3��,JMQ��/-N���2�t�)M-��/ɀ�q#�x�&�d��r�@�!DL��y�V&�'�p�A���9}��3KR�3�,8��R��,9]�RK�8!6r��q"������ ��8�      7      x������ � �      *   n   x�3��K/�L�SK�Sp�4200�50"NKss əVR���萞��������ihdlbj�i�e�雙�������o�oafainbi`����Jc�6����� X�"�     