PGDMP     $    1                z            oporajita_tumi    13.4    13.4 �   p           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            r           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            s           1262    991568    oporajita_tumi    DATABASE     n   CREATE DATABASE oporajita_tumi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Bangla_Bangladesh.utf8';
    DROP DATABASE oporajita_tumi;
                postgres    false                       1259    1097979    app_api_facebookpixel    TABLE     �   CREATE TABLE public.app_api_facebookpixel (
    id bigint NOT NULL,
    facebook_pixel_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 )   DROP TABLE public.app_api_facebookpixel;
       public         heap    postgres    false                       1259    1097977    app_api_facebookpixel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_facebookpixel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.app_api_facebookpixel_id_seq;
       public          postgres    false    279            t           0    0    app_api_facebookpixel_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.app_api_facebookpixel_id_seq OWNED BY public.app_api_facebookpixel.id;
          public          postgres    false    278                       1259    1097990    app_api_googlead    TABLE     �   CREATE TABLE public.app_api_googlead (
    id bigint NOT NULL,
    google_ads_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public.app_api_googlead;
       public         heap    postgres    false                       1259    1097988    app_api_googlead_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_googlead_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.app_api_googlead_id_seq;
       public          postgres    false    281            u           0    0    app_api_googlead_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.app_api_googlead_id_seq OWNED BY public.app_api_googlead.id;
          public          postgres    false    280                       1259    1098001    app_api_googleanalytic    TABLE     �   CREATE TABLE public.app_api_googleanalytic (
    id bigint NOT NULL,
    google_analytics_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 *   DROP TABLE public.app_api_googleanalytic;
       public         heap    postgres    false                       1259    1097999    app_api_googleanalytic_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_googleanalytic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.app_api_googleanalytic_id_seq;
       public          postgres    false    283            v           0    0    app_api_googleanalytic_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.app_api_googleanalytic_id_seq OWNED BY public.app_api_googleanalytic.id;
          public          postgres    false    282                       1259    1098012    app_api_livechat    TABLE     �   CREATE TABLE public.app_api_livechat (
    id bigint NOT NULL,
    live_chat_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public.app_api_livechat;
       public         heap    postgres    false                       1259    1098010    app_api_livechat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_livechat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.app_api_livechat_id_seq;
       public          postgres    false    285            w           0    0    app_api_livechat_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.app_api_livechat_id_seq OWNED BY public.app_api_livechat.id;
          public          postgres    false    284                       1259    1089792    app_api_news    TABLE     �   CREATE TABLE public.app_api_news (
    id bigint NOT NULL,
    image1 character varying(100),
    image2 character varying(100),
    image3 character varying(100),
    popup_enable boolean
);
     DROP TABLE public.app_api_news;
       public         heap    postgres    false                       1259    1089790    app_api_news_id_seq    SEQUENCE     |   CREATE SEQUENCE public.app_api_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.app_api_news_id_seq;
       public          postgres    false    277            x           0    0    app_api_news_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.app_api_news_id_seq OWNED BY public.app_api_news.id;
          public          postgres    false    276                       1259    1098023     app_api_orderplacedfacebookpixel    TABLE     �   CREATE TABLE public.app_api_orderplacedfacebookpixel (
    id bigint NOT NULL,
    order_placed_facebook_pixel_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 4   DROP TABLE public.app_api_orderplacedfacebookpixel;
       public         heap    postgres    false                       1259    1098021 '   app_api_orderplacedfacebookpixel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_orderplacedfacebookpixel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.app_api_orderplacedfacebookpixel_id_seq;
       public          postgres    false    287            y           0    0 '   app_api_orderplacedfacebookpixel_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.app_api_orderplacedfacebookpixel_id_seq OWNED BY public.app_api_orderplacedfacebookpixel.id;
          public          postgres    false    286            �            1259    991737    app_api_popup    TABLE     �   CREATE TABLE public.app_api_popup (
    id bigint NOT NULL,
    image1 character varying(100),
    image2 character varying(100),
    image3 character varying(100),
    popup_enable boolean
);
 !   DROP TABLE public.app_api_popup;
       public         heap    postgres    false            �            1259    991735    app_api_popup_id_seq    SEQUENCE     }   CREATE SEQUENCE public.app_api_popup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.app_api_popup_id_seq;
       public          postgres    false    219            z           0    0    app_api_popup_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.app_api_popup_id_seq OWNED BY public.app_api_popup.id;
          public          postgres    false    218            �            1259    991745    app_api_promocode    TABLE     �  CREATE TABLE public.app_api_promocode (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    code character varying(50) NOT NULL,
    is_active boolean NOT NULL,
    usage_limit boolean NOT NULL,
    "limit" bigint,
    valid_from date NOT NULL,
    valid_to date,
    expire_limit boolean NOT NULL,
    discount_type character varying(20),
    discount numeric(8,2) NOT NULL,
    discount_order_type character varying(30),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    apply character varying(80),
    orders_over numeric(8,2),
    CONSTRAINT app_api_promocode_limit_check CHECK (("limit" >= 0))
);
 %   DROP TABLE public.app_api_promocode;
       public         heap    postgres    false            ;           1259    1270713    app_api_promocode_collection    TABLE     �   CREATE TABLE public.app_api_promocode_collection (
    id bigint NOT NULL,
    promocode_id bigint,
    productcategory_id integer
);
 0   DROP TABLE public.app_api_promocode_collection;
       public         heap    postgres    false            �            1259    991743    app_api_promocode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_promocode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.app_api_promocode_id_seq;
       public          postgres    false    221            {           0    0    app_api_promocode_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.app_api_promocode_id_seq OWNED BY public.app_api_promocode.id;
          public          postgres    false    220            !           1259    1114372    app_api_promocode_product    TABLE     �   CREATE TABLE public.app_api_promocode_product (
    id bigint NOT NULL,
    promocode_id bigint NOT NULL,
    product_id integer NOT NULL
);
 -   DROP TABLE public.app_api_promocode_product;
       public         heap    postgres    false                        1259    1114370 !   app_api_promocode_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_promocode_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.app_api_promocode_products_id_seq;
       public          postgres    false    289            |           0    0 !   app_api_promocode_products_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.app_api_promocode_products_id_seq OWNED BY public.app_api_promocode_product.id;
          public          postgres    false    288            �            1259    991600 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    991598    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            }           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    991610    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    991608    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            ~           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    991592    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    991590    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    991757    company_api_aboutus    TABLE     �  CREATE TABLE public.company_api_aboutus (
    id bigint NOT NULL,
    about_us_title character varying(300),
    about_us_text text,
    aboutus_image character varying(100),
    aboutus_image2 character varying(100),
    aboutus_video character varying(100),
    aboutus_video2 character varying(100),
    meta_title character varying(100),
    meta_description character varying(200),
    meta_keywords character varying(100)
);
 '   DROP TABLE public.company_api_aboutus;
       public         heap    postgres    false            �            1259    991755    company_api_aboutus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_aboutus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.company_api_aboutus_id_seq;
       public          postgres    false    223            �           0    0    company_api_aboutus_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.company_api_aboutus_id_seq OWNED BY public.company_api_aboutus.id;
          public          postgres    false    222            �            1259    991768    company_api_companypolicy    TABLE     �   CREATE TABLE public.company_api_companypolicy (
    id bigint NOT NULL,
    title character varying(200),
    description text NOT NULL
);
 -   DROP TABLE public.company_api_companypolicy;
       public         heap    postgres    false            �            1259    991766     company_api_companypolicy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_companypolicy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.company_api_companypolicy_id_seq;
       public          postgres    false    225            �           0    0     company_api_companypolicy_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.company_api_companypolicy_id_seq OWNED BY public.company_api_companypolicy.id;
          public          postgres    false    224            �            1259    991779    company_api_faq    TABLE        CREATE TABLE public.company_api_faq (
    id bigint NOT NULL,
    question character varying(200),
    answer text NOT NULL
);
 #   DROP TABLE public.company_api_faq;
       public         heap    postgres    false            �            1259    991777    company_api_faq_id_seq    SEQUENCE        CREATE SEQUENCE public.company_api_faq_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.company_api_faq_id_seq;
       public          postgres    false    227            �           0    0    company_api_faq_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.company_api_faq_id_seq OWNED BY public.company_api_faq.id;
          public          postgres    false    226            '           1259    1180122    company_api_metaproperty    TABLE     �   CREATE TABLE public.company_api_metaproperty (
    id integer NOT NULL,
    meta_title character varying(100),
    meta_description character varying(200),
    meta_keywords character varying(100)
);
 ,   DROP TABLE public.company_api_metaproperty;
       public         heap    postgres    false            &           1259    1180120    company_api_metaproperty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_metaproperty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.company_api_metaproperty_id_seq;
       public          postgres    false    295            �           0    0    company_api_metaproperty_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.company_api_metaproperty_id_seq OWNED BY public.company_api_metaproperty.id;
          public          postgres    false    294            �            1259    991790    company_api_news    TABLE     }  CREATE TABLE public.company_api_news (
    id bigint NOT NULL,
    title character varying(300),
    content text,
    image character varying(100),
    image2 character varying(100),
    video character varying(100),
    video2 character varying(100),
    slug character varying(50),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public.company_api_news;
       public         heap    postgres    false            �            1259    991788    company_api_news_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.company_api_news_id_seq;
       public          postgres    false    229            �           0    0    company_api_news_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.company_api_news_id_seq OWNED BY public.company_api_news.id;
          public          postgres    false    228            �            1259    991803    company_api_termscondition    TABLE     {  CREATE TABLE public.company_api_termscondition (
    id bigint NOT NULL,
    title character varying(300),
    content text,
    slug character varying(50),
    meta_title character varying(100),
    meta_description character varying(200),
    meta_keywords character varying(100),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 .   DROP TABLE public.company_api_termscondition;
       public         heap    postgres    false            �            1259    991801 !   company_api_termscondition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_termscondition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.company_api_termscondition_id_seq;
       public          postgres    false    231            �           0    0 !   company_api_termscondition_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.company_api_termscondition_id_seq OWNED BY public.company_api_termscondition.id;
          public          postgres    false    230                       1259    992279    customer_order_api_notification    TABLE     ,  CREATE TABLE public.customer_order_api_notification (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text,
    url character varying(200) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_from_id bigint NOT NULL,
    user_to_id bigint NOT NULL
);
 3   DROP TABLE public.customer_order_api_notification;
       public         heap    postgres    false                       1259    992277 &   customer_order_api_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.customer_order_api_notification_id_seq;
       public          postgres    false    272            �           0    0 &   customer_order_api_notification_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.customer_order_api_notification_id_seq OWNED BY public.customer_order_api_notification.id;
          public          postgres    false    271            
           1259    992224    customer_order_api_order    TABLE     �  CREATE TABLE public.customer_order_api_order (
    id integer NOT NULL,
    order_id character varying(100),
    order_type character varying(100) NOT NULL,
    status character varying(30) NOT NULL,
    ordered_by character varying(20),
    email character varying(100),
    phone character varying(20),
    address text,
    order_note text,
    unit integer,
    order_tracking_number integer,
    currency character varying(100) NOT NULL,
    shipping_charge numeric(10,2),
    other_charges numeric(10,2),
    other_discount numeric(10,2),
    promo_discount numeric(10,2),
    total_tax numeric(10,2) NOT NULL,
    order_total numeric(10,2) NOT NULL,
    is_payment_successful boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    accepted_date timestamp with time zone,
    shipping_start_date timestamp with time zone,
    completed_date timestamp with time zone,
    expected_delivery_date timestamp with time zone,
    is_fulfilled boolean NOT NULL,
    item_count integer,
    product_list text,
    customer_id integer,
    delivery_address_id integer,
    outlet_id integer,
    promo_code_id bigint,
    supplier_id integer,
    delivery_area_id integer,
    has_discount boolean NOT NULL,
    separate_delivery_address boolean NOT NULL,
    serial character varying(40),
    balance numeric(10,2) NOT NULL,
    description text,
    "Order_reference" character varying(50) NOT NULL,
    register_id integer,
    sales_note text,
    fullname character varying(200),
    paid numeric(10,2),
    sub_total numeric(10,2),
    total_discount numeric(10,2),
    register_total numeric(10,2),
    amount numeric(10,2) NOT NULL,
    payment_method character varying(50) NOT NULL,
    payment_status character varying(10) NOT NULL,
    reference character varying(500),
    pathao_area_id integer,
    pathao_city_id integer,
    pathao_zone_id integer,
    pathao_instruction text,
    pathao_item_description text,
    pathao_status boolean
);
 ,   DROP TABLE public.customer_order_api_order;
       public         heap    postgres    false            	           1259    992222    customer_order_api_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.customer_order_api_order_id_seq;
       public          postgres    false    266            �           0    0    customer_order_api_order_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.customer_order_api_order_id_seq OWNED BY public.customer_order_api_order.id;
          public          postgres    false    265                       1259    992256    customer_order_api_orderitem    TABLE       CREATE TABLE public.customer_order_api_orderitem (
    id integer NOT NULL,
    sku character varying(200),
    quantity integer,
    unit_price numeric(8,2),
    order_id integer,
    product_id integer,
    barcode character varying(200),
    compare_at_price numeric(10,2),
    fulfilled_quantity integer,
    stock_control boolean,
    size_id integer,
    product_name character varying(100),
    size_name character varying(100),
    size_value character varying(100),
    discount numeric(8,2),
    awaiting_stock integer
);
 0   DROP TABLE public.customer_order_api_orderitem;
       public         heap    postgres    false                       1259    992254 #   customer_order_api_orderitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_orderitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.customer_order_api_orderitem_id_seq;
       public          postgres    false    270            �           0    0 #   customer_order_api_orderitem_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.customer_order_api_orderitem_id_seq OWNED BY public.customer_order_api_orderitem.id;
          public          postgres    false    269            8           1259    1180611    customer_order_api_pathaotoken    TABLE        CREATE TABLE public.customer_order_api_pathaotoken (
    id integer NOT NULL,
    access_token text,
    refresh_token text
);
 2   DROP TABLE public.customer_order_api_pathaotoken;
       public         heap    postgres    false            7           1259    1180609 %   customer_order_api_pathaotoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_pathaotoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.customer_order_api_pathaotoken_id_seq;
       public          postgres    false    312            �           0    0 %   customer_order_api_pathaotoken_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.customer_order_api_pathaotoken_id_seq OWNED BY public.customer_order_api_pathaotoken.id;
          public          postgres    false    311                       1259    992243     customer_order_api_transferorder    TABLE     �  CREATE TABLE public.customer_order_api_transferorder (
    id integer NOT NULL,
    to_number character varying(100) NOT NULL,
    due_date timestamp with time zone,
    reference character varying(100),
    transfer_charge numeric(10,2) NOT NULL,
    note character varying(500),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    order_id integer NOT NULL,
    order_from_id integer NOT NULL,
    order_to_id integer NOT NULL
);
 4   DROP TABLE public.customer_order_api_transferorder;
       public         heap    postgres    false                       1259    992241 '   customer_order_api_transferorder_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_transferorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.customer_order_api_transferorder_id_seq;
       public          postgres    false    268            �           0    0 '   customer_order_api_transferorder_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.customer_order_api_transferorder_id_seq OWNED BY public.customer_order_api_transferorder.id;
          public          postgres    false    267                       1259    992134    customer_profile_api_address    TABLE     �  CREATE TABLE public.customer_profile_api_address (
    id integer NOT NULL,
    type character varying(50),
    address1 character varying(200),
    address2 character varying(200),
    country character varying(100),
    division character varying(100),
    city character varying(50),
    postal_code character varying(50),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    customer_id integer NOT NULL,
    email character varying(55),
    first_name character varying(150),
    last_name character varying(150),
    phone character varying(50),
    title character varying(10) NOT NULL,
    district character varying(100)
);
 0   DROP TABLE public.customer_profile_api_address;
       public         heap    postgres    false                       1259    992132 #   customer_profile_api_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_profile_api_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.customer_profile_api_address_id_seq;
       public          postgres    false    260            �           0    0 #   customer_profile_api_address_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.customer_profile_api_address_id_seq OWNED BY public.customer_profile_api_address.id;
          public          postgres    false    259                        1259    992118 "   customer_profile_api_customergroup    TABLE     �   CREATE TABLE public.customer_profile_api_customergroup (
    id integer NOT NULL,
    group_name character varying(150),
    created timestamp with time zone,
    updated timestamp with time zone
);
 6   DROP TABLE public.customer_profile_api_customergroup;
       public         heap    postgres    false                       1259    992126 +   customer_profile_api_customergroup_customer    TABLE     �   CREATE TABLE public.customer_profile_api_customergroup_customer (
    id bigint NOT NULL,
    customergroup_id integer NOT NULL,
    customerprofile_id integer NOT NULL
);
 ?   DROP TABLE public.customer_profile_api_customergroup_customer;
       public         heap    postgres    false                       1259    992124 2   customer_profile_api_customergroup_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_profile_api_customergroup_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.customer_profile_api_customergroup_customer_id_seq;
       public          postgres    false    258            �           0    0 2   customer_profile_api_customergroup_customer_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.customer_profile_api_customergroup_customer_id_seq OWNED BY public.customer_profile_api_customergroup_customer.id;
          public          postgres    false    257            �            1259    992116 )   customer_profile_api_customergroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_profile_api_customergroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.customer_profile_api_customergroup_id_seq;
       public          postgres    false    256            �           0    0 )   customer_profile_api_customergroup_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.customer_profile_api_customergroup_id_seq OWNED BY public.customer_profile_api_customergroup.id;
          public          postgres    false    255            �            1259    992101 $   customer_profile_api_customerprofile    TABLE     �  CREATE TABLE public.customer_profile_api_customerprofile (
    id integer NOT NULL,
    email character varying(55),
    username character varying(50),
    password character varying(50),
    title character varying(10),
    first_name character varying(150),
    last_name character varying(150),
    gender character varying(10),
    phone character varying(50),
    customer_number character varying(50),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id bigint,
    address text,
    company_name character varying(150),
    designation character varying(50),
    birthdate date
);
 8   DROP TABLE public.customer_profile_api_customerprofile;
       public         heap    postgres    false            �            1259    992099 +   customer_profile_api_customerprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_profile_api_customerprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.customer_profile_api_customerprofile_id_seq;
       public          postgres    false    254            �           0    0 +   customer_profile_api_customerprofile_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.customer_profile_api_customerprofile_id_seq OWNED BY public.customer_profile_api_customerprofile.id;
          public          postgres    false    253            �            1259    991702    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    991700    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            �            1259    991582    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    991580    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    991571    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    991569    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200                       1259    992350    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    991876    inventory_api_brand    TABLE     �  CREATE TABLE public.inventory_api_brand (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    description character varying(200),
    icon_image character varying(100),
    icon_image2 character varying(100),
    slug character varying(250),
    meta_title character varying(100),
    meta_description character varying(200),
    meta_keywords character varying(100),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 '   DROP TABLE public.inventory_api_brand;
       public         heap    postgres    false            �            1259    991874    inventory_api_brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.inventory_api_brand_id_seq;
       public          postgres    false    240            �           0    0    inventory_api_brand_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.inventory_api_brand_id_seq OWNED BY public.inventory_api_brand.id;
          public          postgres    false    239            %           1259    1180032    inventory_api_customermessage    TABLE     ;  CREATE TABLE public.inventory_api_customermessage (
    id integer NOT NULL,
    email character varying(100),
    phone character varying(15),
    subject character varying(200),
    message text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name_id integer
);
 1   DROP TABLE public.inventory_api_customermessage;
       public         heap    postgres    false            $           1259    1180030 $   inventory_api_customermessage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_customermessage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.inventory_api_customermessage_id_seq;
       public          postgres    false    293            �           0    0 $   inventory_api_customermessage_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.inventory_api_customermessage_id_seq OWNED BY public.inventory_api_customermessage.id;
          public          postgres    false    292            �            1259    991889     inventory_api_inventory_location    TABLE       CREATE TABLE public.inventory_api_inventory_location (
    id integer NOT NULL,
    location_name character varying(150) NOT NULL,
    phone character varying(15),
    is_active boolean NOT NULL,
    is_default boolean NOT NULL,
    address1 character varying(120),
    address2 character varying(120),
    country character varying(100),
    division character varying(100),
    city character varying(50),
    postal_code character varying(50),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 4   DROP TABLE public.inventory_api_inventory_location;
       public         heap    postgres    false            �            1259    991887 '   inventory_api_inventory_location_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_inventory_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.inventory_api_inventory_location_id_seq;
       public          postgres    false    242            �           0    0 '   inventory_api_inventory_location_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.inventory_api_inventory_location_id_seq OWNED BY public.inventory_api_inventory_location.id;
          public          postgres    false    241            �            1259    991988     inventory_api_inventory_transfer    TABLE     �  CREATE TABLE public.inventory_api_inventory_transfer (
    id integer NOT NULL,
    "TO_number" character varying(50) NOT NULL,
    status character varying(20) NOT NULL,
    total_transfer integer,
    total_receive integer,
    due_date date,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    from_inventory_id integer NOT NULL,
    to_inventory_id integer NOT NULL,
    transfer_quantity integer
);
 4   DROP TABLE public.inventory_api_inventory_transfer;
       public         heap    postgres    false            �            1259    991986 '   inventory_api_inventory_transfer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_inventory_transfer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.inventory_api_inventory_transfer_id_seq;
       public          postgres    false    252            �           0    0 '   inventory_api_inventory_transfer_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.inventory_api_inventory_transfer_id_seq OWNED BY public.inventory_api_inventory_transfer.id;
          public          postgres    false    251            #           1259    1155329 .   inventory_api_inventory_transfer_transfer_item    TABLE     �   CREATE TABLE public.inventory_api_inventory_transfer_transfer_item (
    id bigint NOT NULL,
    inventory_transfer_id integer NOT NULL,
    productsizevariant_id integer NOT NULL
);
 B   DROP TABLE public.inventory_api_inventory_transfer_transfer_item;
       public         heap    postgres    false            "           1259    1155327 5   inventory_api_inventory_transfer_transfer_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_inventory_transfer_transfer_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.inventory_api_inventory_transfer_transfer_item_id_seq;
       public          postgres    false    291            �           0    0 5   inventory_api_inventory_transfer_transfer_item_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.inventory_api_inventory_transfer_transfer_item_id_seq OWNED BY public.inventory_api_inventory_transfer_transfer_item.id;
          public          postgres    false    290            �            1259    991900    inventory_api_product    TABLE     ;  CREATE TABLE public.inventory_api_product (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    description text,
    short_description text,
    awaiting_stock integer,
    stock integer,
    on_hand integer,
    committed integer,
    available integer,
    sku character varying(100),
    barcode character varying(250),
    is_active boolean NOT NULL,
    is_display boolean NOT NULL,
    is_expanded boolean NOT NULL,
    is_selected boolean NOT NULL,
    option_values character varying(50),
    options character varying(50),
    enable_customer_note boolean NOT NULL,
    is_featured boolean NOT NULL,
    is_new boolean NOT NULL,
    store_only boolean NOT NULL,
    stock_control boolean NOT NULL,
    is_require_documents boolean NOT NULL,
    featured_image character varying(100),
    product_image1 character varying(100),
    product_image2 character varying(100),
    product_image3 character varying(100),
    advance_price numeric(10,2),
    auto_adjust_selling_price numeric(10,2),
    price numeric(10,2),
    weight numeric(10,2),
    unit integer,
    on_sale boolean,
    call_for_price boolean NOT NULL,
    attribute character varying(50),
    attribute2 character varying(50),
    attribute3 character varying(50),
    attribute4 character varying(50),
    attribute5 character varying(50),
    attribute6 character varying(50),
    delivery_info text,
    meta_title character varying(100),
    meta_description character varying(200),
    meta_keywords character varying(100),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    slug character varying(250),
    value character varying(50),
    brand_id integer,
    category_id integer,
    tax_id bigint,
    tags character varying(100),
    compare_at_price numeric(10,2),
    cost_price numeric(10,2)
);
 )   DROP TABLE public.inventory_api_product;
       public         heap    postgres    false            �            1259    991898    inventory_api_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.inventory_api_product_id_seq;
       public          postgres    false    244            �           0    0    inventory_api_product_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.inventory_api_product_id_seq OWNED BY public.inventory_api_product.id;
          public          postgres    false    243            �            1259    991913    inventory_api_productcategory    TABLE     �  CREATE TABLE public.inventory_api_productcategory (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    descriptions text,
    slug character varying(50),
    meta_title character varying(100),
    meta_description character varying(200),
    meta_keywords character varying(100),
    icon text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 1   DROP TABLE public.inventory_api_productcategory;
       public         heap    postgres    false            �            1259    991911 $   inventory_api_productcategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.inventory_api_productcategory_id_seq;
       public          postgres    false    246            �           0    0 $   inventory_api_productcategory_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.inventory_api_productcategory_id_seq OWNED BY public.inventory_api_productcategory.id;
          public          postgres    false    245            2           1259    1180523    inventory_api_productpurchased    TABLE     �  CREATE TABLE public.inventory_api_productpurchased (
    id integer NOT NULL,
    adjusment integer,
    due_date date NOT NULL,
    po_number character varying(50),
    purchase_date date NOT NULL,
    received_note text,
    received_quantity_price numeric(10,2),
    reference character varying(500),
    total_amount numeric(10,2),
    total_due numeric(10,2),
    total_payment numeric(10,2),
    total_tax numeric(10,2),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    supplier_id integer,
    order_total numeric(10,2),
    other_amount numeric(10,2),
    other_charge numeric(10,2),
    status character varying(20)
);
 2   DROP TABLE public.inventory_api_productpurchased;
       public         heap    postgres    false            1           1259    1180521 %   inventory_api_productpurchased_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productpurchased_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.inventory_api_productpurchased_id_seq;
       public          postgres    false    306            �           0    0 %   inventory_api_productpurchased_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.inventory_api_productpurchased_id_seq OWNED BY public.inventory_api_productpurchased.id;
          public          postgres    false    305            4           1259    1180534 "   inventory_api_productpurchaseditem    TABLE     �  CREATE TABLE public.inventory_api_productpurchaseditem (
    id integer NOT NULL,
    order_quantity integer,
    received_quantity integer,
    sku character varying(50),
    subtotal numeric(10,2),
    total_received_price numeric(10,2),
    total_tax numeric(10,2),
    inventory_location_id integer,
    purchase_item_id integer,
    purchased_product_id integer,
    purchased_size_id integer,
    tax_id bigint,
    cost_price numeric(10,2)
);
 6   DROP TABLE public.inventory_api_productpurchaseditem;
       public         heap    postgres    false            3           1259    1180532 )   inventory_api_productpurchaseditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productpurchaseditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.inventory_api_productpurchaseditem_id_seq;
       public          postgres    false    308            �           0    0 )   inventory_api_productpurchaseditem_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.inventory_api_productpurchaseditem_id_seq OWNED BY public.inventory_api_productpurchaseditem.id;
          public          postgres    false    307            6           1259    1180578 %   inventory_api_productpurchasedpayment    TABLE     g  CREATE TABLE public.inventory_api_productpurchasedpayment (
    id integer NOT NULL,
    amount numeric(10,2),
    payment_date date,
    payment_method character varying(50),
    reference character varying(500),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    purchased_id integer,
    due numeric(10,2)
);
 9   DROP TABLE public.inventory_api_productpurchasedpayment;
       public         heap    postgres    false            5           1259    1180576 ,   inventory_api_productpurchasedpayment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productpurchasedpayment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.inventory_api_productpurchasedpayment_id_seq;
       public          postgres    false    310            �           0    0 ,   inventory_api_productpurchasedpayment_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.inventory_api_productpurchasedpayment_id_seq OWNED BY public.inventory_api_productpurchasedpayment.id;
          public          postgres    false    309            �            1259    991937     inventory_api_productsizevariant    TABLE        CREATE TABLE public.inventory_api_productsizevariant (
    id integer NOT NULL,
    name character varying(100),
    awaiting_stock integer,
    stock integer,
    on_hand integer,
    committed integer,
    available integer,
    option character varying(50),
    value character varying(50),
    options character varying(50),
    sku character varying(100),
    barcode character varying(250),
    parent_id integer,
    "position" character varying(100),
    advance_price numeric(10,2),
    auto_adjust_selling_price numeric(10,2),
    cost_price numeric(10,2),
    compare_at_price numeric(10,2),
    price numeric(10,2),
    is_selected boolean NOT NULL,
    weight numeric(10,2),
    product_id integer,
    on_sale boolean,
    tags character varying(100)
);
 4   DROP TABLE public.inventory_api_productsizevariant;
       public         heap    postgres    false            �            1259    991935 '   inventory_api_productsizevariant_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productsizevariant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.inventory_api_productsizevariant_id_seq;
       public          postgres    false    250            �           0    0 '   inventory_api_productsizevariant_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.inventory_api_productsizevariant_id_seq OWNED BY public.inventory_api_productsizevariant.id;
          public          postgres    false    249            �            1259    991926    inventory_api_supplier    TABLE     �  CREATE TABLE public.inventory_api_supplier (
    id integer NOT NULL,
    supplier_name character varying(50) NOT NULL,
    supplier_company_name character varying(50) NOT NULL,
    is_active boolean NOT NULL,
    supplier_first_name character varying(50) NOT NULL,
    supplier_last_name character varying(50),
    supplier_phone character varying(15),
    supplier_address character varying(120),
    supplier_address2 character varying(120),
    city character varying(50),
    country character varying(100),
    division character varying(100),
    postal_code character varying(20),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    tax_id bigint
);
 *   DROP TABLE public.inventory_api_supplier;
       public         heap    postgres    false            �            1259    991924    inventory_api_supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.inventory_api_supplier_id_seq;
       public          postgres    false    248            �           0    0    inventory_api_supplier_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.inventory_api_supplier_id_seq OWNED BY public.inventory_api_supplier.id;
          public          postgres    false    247                       1259    992172    pos_api_outlet    TABLE     �  CREATE TABLE public.pos_api_outlet (
    id integer NOT NULL,
    outlet_name character varying(150) NOT NULL,
    location_name character varying(150),
    email character varying(50),
    phone character varying(15),
    receipt_template character varying(50),
    email_template character varying(50),
    country_name character varying(100),
    division character varying(100),
    postal_code character varying(20),
    city character varying(50),
    address1 character varying(120),
    address2 character varying(120),
    full_address character varying(240),
    slug character varying(50),
    cash_management boolean NOT NULL,
    is_active boolean NOT NULL,
    is_default boolean NOT NULL,
    is_deleted boolean NOT NULL,
    selected boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    inventory_location_id integer,
    tax_id bigint
);
 "   DROP TABLE public.pos_api_outlet;
       public         heap    postgres    false                       1259    992170    pos_api_outlet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pos_api_outlet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pos_api_outlet_id_seq;
       public          postgres    false    262            �           0    0    pos_api_outlet_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pos_api_outlet_id_seq OWNED BY public.pos_api_outlet.id;
          public          postgres    false    261                       1259    992185    pos_api_register    TABLE     �  CREATE TABLE public.pos_api_register (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    opened_at time without time zone,
    closed_at time without time zone,
    cash_management boolean NOT NULL,
    is_active boolean NOT NULL,
    is_deleted boolean NOT NULL,
    status boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    closed_by_id integer,
    opened_by_id integer,
    outlet_id integer NOT NULL
);
 $   DROP TABLE public.pos_api_register;
       public         heap    postgres    false                       1259    992183    pos_api_register_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pos_api_register_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pos_api_register_id_seq;
       public          postgres    false    264            �           0    0    pos_api_register_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pos_api_register_id_seq OWNED BY public.pos_api_register.id;
          public          postgres    false    263            (           1259    1180130 "   settings_api_checkoutfieldsettings    TABLE     �  CREATE TABLE public.settings_api_checkoutfieldsettings (
    id integer NOT NULL,
    checkout_from_all_country boolean,
    customer_note character varying(100),
    title character varying(100),
    first_name character varying(100),
    last_name character varying(100),
    email character varying(100),
    company_name character varying(100),
    phone character varying(100),
    billing_address_line1 character varying(100),
    billing_address_line2 character varying(100),
    billing_city character varying(100),
    billing_country character varying(100),
    billing_postal_code character varying(100),
    billing_state character varying(100),
    defferent_delivery_address character varying(100),
    delivery_name character varying(100),
    delivery_phone character varying(100),
    delivery_address_line1 character varying(100),
    delivery_address_line2 character varying(100),
    delivery_country character varying(100),
    delivery_city character varying(100),
    delivery_postal_code character varying(100),
    delivery_state character varying(100),
    delivery_slot character varying(100),
    time_slot boolean,
    time_slot_label character varying(100),
    customer_instruction character varying(100),
    new_time_slot character varying(100),
    "terms_and_condition_show_OR_hidden" boolean,
    terms_and_condition character varying(100),
    terms_and_condition_label character varying(100),
    terms_and_condition_link character varying(300),
    "terms_and_condition_show_OR_hidden2" boolean,
    terms_and_condition2 character varying(100),
    terms_and_condition_label2 character varying(100),
    terms_and_condition_link2 character varying(300),
    minimum_checkout_amount_setting boolean,
    minimum_checkout_amount numeric(10,2)
);
 6   DROP TABLE public.settings_api_checkoutfieldsettings;
       public         heap    postgres    false            )           1259    1180149 )   settings_api_checkoutfieldsettings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_checkoutfieldsettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.settings_api_checkoutfieldsettings_id_seq;
       public          postgres    false    296            �           0    0 )   settings_api_checkoutfieldsettings_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.settings_api_checkoutfieldsettings_id_seq OWNED BY public.settings_api_checkoutfieldsettings.id;
          public          postgres    false    297            �            1259    991818    settings_api_checkoutsetting    TABLE     z  CREATE TABLE public.settings_api_checkoutsetting (
    id bigint NOT NULL,
    guest_checkout boolean NOT NULL,
    create_account boolean NOT NULL,
    seperate_delivery_address boolean NOT NULL,
    social_login boolean NOT NULL,
    document_label character varying(100),
    billing_address_label character varying(100),
    delivery_address_label character varying(100)
);
 0   DROP TABLE public.settings_api_checkoutsetting;
       public         heap    postgres    false            �            1259    991816 #   settings_api_checkoutsetting_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_checkoutsetting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.settings_api_checkoutsetting_id_seq;
       public          postgres    false    233            �           0    0 #   settings_api_checkoutsetting_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.settings_api_checkoutsetting_id_seq OWNED BY public.settings_api_checkoutsetting.id;
          public          postgres    false    232            E           1259    1303546    settings_api_customuser    TABLE     �  CREATE TABLE public.settings_api_customuser (
    id integer NOT NULL,
    confirmation_sent_at timestamp with time zone NOT NULL,
    confirmed_at timestamp with time zone,
    confirmation boolean NOT NULL,
    contact character varying(20),
    email character varying(40),
    full_name character varying(100),
    is_all_outlet boolean NOT NULL,
    selected boolean NOT NULL,
    user_id bigint,
    password character varying(100)
);
 +   DROP TABLE public.settings_api_customuser;
       public         heap    postgres    false            D           1259    1303544    settings_api_customuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_customuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.settings_api_customuser_id_seq;
       public          postgres    false    325            �           0    0    settings_api_customuser_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.settings_api_customuser_id_seq OWNED BY public.settings_api_customuser.id;
          public          postgres    false    324            K           1259    1303644 "   settings_api_customuser_operations    TABLE     �   CREATE TABLE public.settings_api_customuser_operations (
    id bigint NOT NULL,
    customuser_id integer NOT NULL,
    operation_id integer NOT NULL
);
 6   DROP TABLE public.settings_api_customuser_operations;
       public         heap    postgres    false            J           1259    1303642 )   settings_api_customuser_operations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_customuser_operations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.settings_api_customuser_operations_id_seq;
       public          postgres    false    331            �           0    0 )   settings_api_customuser_operations_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.settings_api_customuser_operations_id_seq OWNED BY public.settings_api_customuser_operations.id;
          public          postgres    false    330            G           1259    1303600    settings_api_customuser_outlet    TABLE     �   CREATE TABLE public.settings_api_customuser_outlet (
    id bigint NOT NULL,
    customuser_id integer NOT NULL,
    outlet_id integer NOT NULL
);
 2   DROP TABLE public.settings_api_customuser_outlet;
       public         heap    postgres    false            F           1259    1303598 %   settings_api_customuser_outlet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_customuser_outlet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.settings_api_customuser_outlet_id_seq;
       public          postgres    false    327            �           0    0 %   settings_api_customuser_outlet_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.settings_api_customuser_outlet_id_seq OWNED BY public.settings_api_customuser_outlet.id;
          public          postgres    false    326            I           1259    1303622    settings_api_customuser_roles    TABLE     �   CREATE TABLE public.settings_api_customuser_roles (
    id bigint NOT NULL,
    customuser_id integer NOT NULL,
    role_id integer NOT NULL
);
 1   DROP TABLE public.settings_api_customuser_roles;
       public         heap    postgres    false            H           1259    1303620 $   settings_api_customuser_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_customuser_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.settings_api_customuser_roles_id_seq;
       public          postgres    false    329            �           0    0 $   settings_api_customuser_roles_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.settings_api_customuser_roles_id_seq OWNED BY public.settings_api_customuser_roles.id;
          public          postgres    false    328            �            1259    991859    settings_api_deliveryarea    TABLE     #  CREATE TABLE public.settings_api_deliveryarea (
    id integer NOT NULL,
    price numeric(10,2),
    shipping_rate_name character varying(100),
    weight_lower_limit numeric(10,2),
    weight_upper_limit numeric(10,2),
    country character varying(100),
    shipping_method_id integer
);
 -   DROP TABLE public.settings_api_deliveryarea;
       public         heap    postgres    false            0           1259    1180234     settings_api_deliveryarea_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_deliveryarea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.settings_api_deliveryarea_id_seq;
       public          postgres    false    238            �           0    0     settings_api_deliveryarea_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.settings_api_deliveryarea_id_seq OWNED BY public.settings_api_deliveryarea.id;
          public          postgres    false    304            +           1259    1180154    settings_api_freeshippingmethod    TABLE     ?  CREATE TABLE public.settings_api_freeshippingmethod (
    id integer NOT NULL,
    amount_mesurement character varying(100) NOT NULL,
    amount numeric(10,2),
    weight_mesurement character varying(100) NOT NULL,
    weight numeric(10,2),
    free_shipping boolean NOT NULL,
    instruction character varying(300)
);
 3   DROP TABLE public.settings_api_freeshippingmethod;
       public         heap    postgres    false            *           1259    1180152 &   settings_api_freeshippingmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_freeshippingmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.settings_api_freeshippingmethod_id_seq;
       public          postgres    false    299            �           0    0 &   settings_api_freeshippingmethod_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.settings_api_freeshippingmethod_id_seq OWNED BY public.settings_api_freeshippingmethod.id;
          public          postgres    false    298            �            1259    991829    settings_api_generalsetting    TABLE     �  CREATE TABLE public.settings_api_generalsetting (
    id bigint NOT NULL,
    store_name character varying(300) NOT NULL,
    business_name character varying(300),
    email character varying(254),
    phone character varying(50),
    street character varying(50),
    city character varying(50),
    country character varying(100),
    division character varying(100),
    postal_code character varying(50),
    currency character varying(100) NOT NULL,
    currency_text character varying(100),
    product_per_page character varying(100),
    sort_by character varying(300) NOT NULL,
    timezone character varying(300),
    online boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 /   DROP TABLE public.settings_api_generalsetting;
       public         heap    postgres    false            �            1259    991827 "   settings_api_generalsetting_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_generalsetting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.settings_api_generalsetting_id_seq;
       public          postgres    false    235            �           0    0 "   settings_api_generalsetting_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.settings_api_generalsetting_id_seq OWNED BY public.settings_api_generalsetting.id;
          public          postgres    false    234            =           1259    1295323    settings_api_operation    TABLE       CREATE TABLE public.settings_api_operation (
    id integer NOT NULL,
    name character varying(100),
    description text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    resource_id integer,
    display_text character varying(150)
);
 *   DROP TABLE public.settings_api_operation;
       public         heap    postgres    false            <           1259    1295321    settings_api_operation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_operation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.settings_api_operation_id_seq;
       public          postgres    false    317            �           0    0    settings_api_operation_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.settings_api_operation_id_seq OWNED BY public.settings_api_operation.id;
          public          postgres    false    316            M           1259    1377210    settings_api_paymentmethod    TABLE     �   CREATE TABLE public.settings_api_paymentmethod (
    id integer NOT NULL,
    description text,
    cash_on boolean NOT NULL
);
 .   DROP TABLE public.settings_api_paymentmethod;
       public         heap    postgres    false            L           1259    1377208 !   settings_api_paymentmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_paymentmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.settings_api_paymentmethod_id_seq;
       public          postgres    false    333            �           0    0 !   settings_api_paymentmethod_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.settings_api_paymentmethod_id_seq OWNED BY public.settings_api_paymentmethod.id;
          public          postgres    false    332            C           1259    1295350    settings_api_permissionrole    TABLE     �   CREATE TABLE public.settings_api_permissionrole (
    id integer NOT NULL,
    name character varying(100),
    role_id integer,
    user_id bigint,
    operation_id integer
);
 /   DROP TABLE public.settings_api_permissionrole;
       public         heap    postgres    false            B           1259    1295348 "   settings_api_permissionrole_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_permissionrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.settings_api_permissionrole_id_seq;
       public          postgres    false    323            �           0    0 "   settings_api_permissionrole_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.settings_api_permissionrole_id_seq OWNED BY public.settings_api_permissionrole.id;
          public          postgres    false    322            :           1259    1262522    settings_api_regeionaldetails    TABLE     �   CREATE TABLE public.settings_api_regeionaldetails (
    id integer NOT NULL,
    region_name character varying(100),
    region_price numeric(10,2),
    delivery_area_id integer
);
 1   DROP TABLE public.settings_api_regeionaldetails;
       public         heap    postgres    false            9           1259    1262520 $   settings_api_regeionaldetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_regeionaldetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.settings_api_regeionaldetails_id_seq;
       public          postgres    false    314            �           0    0 $   settings_api_regeionaldetails_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.settings_api_regeionaldetails_id_seq OWNED BY public.settings_api_regeionaldetails.id;
          public          postgres    false    313            ?           1259    1295334    settings_api_resource    TABLE     �   CREATE TABLE public.settings_api_resource (
    id integer NOT NULL,
    name character varying(100),
    description text,
    selected boolean NOT NULL
);
 )   DROP TABLE public.settings_api_resource;
       public         heap    postgres    false            >           1259    1295332    settings_api_resource_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_resource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.settings_api_resource_id_seq;
       public          postgres    false    319            �           0    0    settings_api_resource_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.settings_api_resource_id_seq OWNED BY public.settings_api_resource.id;
          public          postgres    false    318            A           1259    1295342    settings_api_role    TABLE     �   CREATE TABLE public.settings_api_role (
    id integer NOT NULL,
    name character varying(100),
    pos_manager boolean NOT NULL,
    pos_cashier boolean NOT NULL,
    ecommerce_staff boolean NOT NULL
);
 %   DROP TABLE public.settings_api_role;
       public         heap    postgres    false            @           1259    1295340    settings_api_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.settings_api_role_id_seq;
       public          postgres    false    321            �           0    0    settings_api_role_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.settings_api_role_id_seq OWNED BY public.settings_api_role.id;
          public          postgres    false    320            -           1259    1180165 #   settings_api_standardshippingmethod    TABLE     �   CREATE TABLE public.settings_api_standardshippingmethod (
    id integer NOT NULL,
    standard_shipping boolean NOT NULL,
    instruction character varying(300),
    name character varying(100)
);
 7   DROP TABLE public.settings_api_standardshippingmethod;
       public         heap    postgres    false            ,           1259    1180163 *   settings_api_standardshippingmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_standardshippingmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.settings_api_standardshippingmethod_id_seq;
       public          postgres    false    301            �           0    0 *   settings_api_standardshippingmethod_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.settings_api_standardshippingmethod_id_seq OWNED BY public.settings_api_standardshippingmethod.id;
          public          postgres    false    300            /           1259    1180173 &   settings_api_storepickupshippingmethod    TABLE     �   CREATE TABLE public.settings_api_storepickupshippingmethod (
    id integer NOT NULL,
    store_pickup boolean NOT NULL,
    instruction character varying(300)
);
 :   DROP TABLE public.settings_api_storepickupshippingmethod;
       public         heap    postgres    false            .           1259    1180171 -   settings_api_storepickupshippingmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_storepickupshippingmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.settings_api_storepickupshippingmethod_id_seq;
       public          postgres    false    303            �           0    0 -   settings_api_storepickupshippingmethod_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.settings_api_storepickupshippingmethod_id_seq OWNED BY public.settings_api_storepickupshippingmethod.id;
          public          postgres    false    302            �            1259    991851    settings_api_taxrate    TABLE     �   CREATE TABLE public.settings_api_taxrate (
    id bigint NOT NULL,
    name character varying(100),
    tax numeric(5,2),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 (   DROP TABLE public.settings_api_taxrate;
       public         heap    postgres    false            �            1259    991849    settings_api_taxrate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_taxrate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.settings_api_taxrate_id_seq;
       public          postgres    false    237            �           0    0    settings_api_taxrate_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.settings_api_taxrate_id_seq OWNED BY public.settings_api_taxrate.id;
          public          postgres    false    236                       1259    992362    superadmin_api_adminuser    TABLE     �  CREATE TABLE public.superadmin_api_adminuser (
    id integer NOT NULL,
    name character varying(150),
    email character varying(254) NOT NULL,
    mobile character varying(20) NOT NULL,
    status character varying(150) NOT NULL,
    role character varying(50),
    confirmation_sent_at timestamp with time zone NOT NULL,
    profile_image character varying(100),
    created date NOT NULL,
    updated date NOT NULL,
    user_id bigint
);
 ,   DROP TABLE public.superadmin_api_adminuser;
       public         heap    postgres    false                       1259    992360    superadmin_api_adminuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.superadmin_api_adminuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.superadmin_api_adminuser_id_seq;
       public          postgres    false    275            �           0    0    superadmin_api_adminuser_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.superadmin_api_adminuser_id_seq OWNED BY public.superadmin_api_adminuser.id;
          public          postgres    false    274            �            1259    991644    user_auth_user    TABLE     E  CREATE TABLE public.user_auth_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    is_customer boolean NOT NULL,
    is_admin boolean NOT NULL,
    phone character varying(20),
    address text
);
 "   DROP TABLE public.user_auth_user;
       public         heap    postgres    false            �            1259    991657    user_auth_user_groups    TABLE     �   CREATE TABLE public.user_auth_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 )   DROP TABLE public.user_auth_user_groups;
       public         heap    postgres    false            �            1259    991655    user_auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.user_auth_user_groups_id_seq;
       public          postgres    false    213            �           0    0    user_auth_user_groups_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.user_auth_user_groups_id_seq OWNED BY public.user_auth_user_groups.id;
          public          postgres    false    212            �            1259    991642    user_auth_user_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.user_auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.user_auth_user_id_seq;
       public          postgres    false    211            �           0    0    user_auth_user_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.user_auth_user_id_seq OWNED BY public.user_auth_user.id;
          public          postgres    false    210            �            1259    991665    user_auth_user_user_permissions    TABLE     �   CREATE TABLE public.user_auth_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 3   DROP TABLE public.user_auth_user_user_permissions;
       public         heap    postgres    false            �            1259    991663 &   user_auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.user_auth_user_user_permissions_id_seq;
       public          postgres    false    215            �           0    0 &   user_auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.user_auth_user_user_permissions_id_seq OWNED BY public.user_auth_user_user_permissions.id;
          public          postgres    false    214                       2604    1097982    app_api_facebookpixel id    DEFAULT     �   ALTER TABLE ONLY public.app_api_facebookpixel ALTER COLUMN id SET DEFAULT nextval('public.app_api_facebookpixel_id_seq'::regclass);
 G   ALTER TABLE public.app_api_facebookpixel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    279    279                       2604    1097993    app_api_googlead id    DEFAULT     z   ALTER TABLE ONLY public.app_api_googlead ALTER COLUMN id SET DEFAULT nextval('public.app_api_googlead_id_seq'::regclass);
 B   ALTER TABLE public.app_api_googlead ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    280    281                       2604    1098004    app_api_googleanalytic id    DEFAULT     �   ALTER TABLE ONLY public.app_api_googleanalytic ALTER COLUMN id SET DEFAULT nextval('public.app_api_googleanalytic_id_seq'::regclass);
 H   ALTER TABLE public.app_api_googleanalytic ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    283    283                       2604    1098015    app_api_livechat id    DEFAULT     z   ALTER TABLE ONLY public.app_api_livechat ALTER COLUMN id SET DEFAULT nextval('public.app_api_livechat_id_seq'::regclass);
 B   ALTER TABLE public.app_api_livechat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    285    285                        2604    1089795    app_api_news id    DEFAULT     r   ALTER TABLE ONLY public.app_api_news ALTER COLUMN id SET DEFAULT nextval('public.app_api_news_id_seq'::regclass);
 >   ALTER TABLE public.app_api_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    277    277                       2604    1098026 #   app_api_orderplacedfacebookpixel id    DEFAULT     �   ALTER TABLE ONLY public.app_api_orderplacedfacebookpixel ALTER COLUMN id SET DEFAULT nextval('public.app_api_orderplacedfacebookpixel_id_seq'::regclass);
 R   ALTER TABLE public.app_api_orderplacedfacebookpixel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    286    287            �           2604    991740    app_api_popup id    DEFAULT     t   ALTER TABLE ONLY public.app_api_popup ALTER COLUMN id SET DEFAULT nextval('public.app_api_popup_id_seq'::regclass);
 ?   ALTER TABLE public.app_api_popup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    991748    app_api_promocode id    DEFAULT     |   ALTER TABLE ONLY public.app_api_promocode ALTER COLUMN id SET DEFAULT nextval('public.app_api_promocode_id_seq'::regclass);
 C   ALTER TABLE public.app_api_promocode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221                       2604    1114375    app_api_promocode_product id    DEFAULT     �   ALTER TABLE ONLY public.app_api_promocode_product ALTER COLUMN id SET DEFAULT nextval('public.app_api_promocode_products_id_seq'::regclass);
 K   ALTER TABLE public.app_api_promocode_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    289    289            �           2604    991603    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    991613    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �           2604    991595    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    991760    company_api_aboutus id    DEFAULT     �   ALTER TABLE ONLY public.company_api_aboutus ALTER COLUMN id SET DEFAULT nextval('public.company_api_aboutus_id_seq'::regclass);
 E   ALTER TABLE public.company_api_aboutus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    991771    company_api_companypolicy id    DEFAULT     �   ALTER TABLE ONLY public.company_api_companypolicy ALTER COLUMN id SET DEFAULT nextval('public.company_api_companypolicy_id_seq'::regclass);
 K   ALTER TABLE public.company_api_companypolicy ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    991782    company_api_faq id    DEFAULT     x   ALTER TABLE ONLY public.company_api_faq ALTER COLUMN id SET DEFAULT nextval('public.company_api_faq_id_seq'::regclass);
 A   ALTER TABLE public.company_api_faq ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            	           2604    1180125    company_api_metaproperty id    DEFAULT     �   ALTER TABLE ONLY public.company_api_metaproperty ALTER COLUMN id SET DEFAULT nextval('public.company_api_metaproperty_id_seq'::regclass);
 J   ALTER TABLE public.company_api_metaproperty ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    295    295            �           2604    991793    company_api_news id    DEFAULT     z   ALTER TABLE ONLY public.company_api_news ALTER COLUMN id SET DEFAULT nextval('public.company_api_news_id_seq'::regclass);
 B   ALTER TABLE public.company_api_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    991806    company_api_termscondition id    DEFAULT     �   ALTER TABLE ONLY public.company_api_termscondition ALTER COLUMN id SET DEFAULT nextval('public.company_api_termscondition_id_seq'::regclass);
 L   ALTER TABLE public.company_api_termscondition ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    992282 "   customer_order_api_notification id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_notification ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_notification_id_seq'::regclass);
 Q   ALTER TABLE public.customer_order_api_notification ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272            �           2604    992227    customer_order_api_order id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_order ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_order_id_seq'::regclass);
 J   ALTER TABLE public.customer_order_api_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            �           2604    992259    customer_order_api_orderitem id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_orderitem ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_orderitem_id_seq'::regclass);
 N   ALTER TABLE public.customer_order_api_orderitem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270                       2604    1180614 !   customer_order_api_pathaotoken id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_pathaotoken ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_pathaotoken_id_seq'::regclass);
 P   ALTER TABLE public.customer_order_api_pathaotoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    312    311    312            �           2604    992246 #   customer_order_api_transferorder id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_transferorder ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_transferorder_id_seq'::regclass);
 R   ALTER TABLE public.customer_order_api_transferorder ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268            �           2604    992137    customer_profile_api_address id    DEFAULT     �   ALTER TABLE ONLY public.customer_profile_api_address ALTER COLUMN id SET DEFAULT nextval('public.customer_profile_api_address_id_seq'::regclass);
 N   ALTER TABLE public.customer_profile_api_address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            �           2604    992121 %   customer_profile_api_customergroup id    DEFAULT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup ALTER COLUMN id SET DEFAULT nextval('public.customer_profile_api_customergroup_id_seq'::regclass);
 T   ALTER TABLE public.customer_profile_api_customergroup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256            �           2604    992129 .   customer_profile_api_customergroup_customer id    DEFAULT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer ALTER COLUMN id SET DEFAULT nextval('public.customer_profile_api_customergroup_customer_id_seq'::regclass);
 ]   ALTER TABLE public.customer_profile_api_customergroup_customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            �           2604    992104 '   customer_profile_api_customerprofile id    DEFAULT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile ALTER COLUMN id SET DEFAULT nextval('public.customer_profile_api_customerprofile_id_seq'::regclass);
 V   ALTER TABLE public.customer_profile_api_customerprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            �           2604    991705    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    991585    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �           2604    991574    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �           2604    991879    inventory_api_brand id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_brand ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_brand_id_seq'::regclass);
 E   ALTER TABLE public.inventory_api_brand ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240                       2604    1180035     inventory_api_customermessage id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_customermessage ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_customermessage_id_seq'::regclass);
 O   ALTER TABLE public.inventory_api_customermessage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    293    292    293            �           2604    991892 #   inventory_api_inventory_location id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_inventory_location ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_inventory_location_id_seq'::regclass);
 R   ALTER TABLE public.inventory_api_inventory_location ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    991991 #   inventory_api_inventory_transfer id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_inventory_transfer_id_seq'::regclass);
 R   ALTER TABLE public.inventory_api_inventory_transfer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252                       2604    1155332 1   inventory_api_inventory_transfer_transfer_item id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_inventory_transfer_transfer_item_id_seq'::regclass);
 `   ALTER TABLE public.inventory_api_inventory_transfer_transfer_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    290    291            �           2604    991903    inventory_api_product id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_product ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_product_id_seq'::regclass);
 G   ALTER TABLE public.inventory_api_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            �           2604    991916     inventory_api_productcategory id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productcategory ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productcategory_id_seq'::regclass);
 O   ALTER TABLE public.inventory_api_productcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246                       2604    1180526 !   inventory_api_productpurchased id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productpurchased ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productpurchased_id_seq'::regclass);
 P   ALTER TABLE public.inventory_api_productpurchased ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    306    305    306                       2604    1180537 %   inventory_api_productpurchaseditem id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productpurchaseditem_id_seq'::regclass);
 T   ALTER TABLE public.inventory_api_productpurchaseditem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    308    307    308                       2604    1180581 (   inventory_api_productpurchasedpayment id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productpurchasedpayment_id_seq'::regclass);
 W   ALTER TABLE public.inventory_api_productpurchasedpayment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    310    309    310            �           2604    991940 #   inventory_api_productsizevariant id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productsizevariant ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productsizevariant_id_seq'::regclass);
 R   ALTER TABLE public.inventory_api_productsizevariant ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            �           2604    991929    inventory_api_supplier id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_supplier ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_supplier_id_seq'::regclass);
 H   ALTER TABLE public.inventory_api_supplier ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            �           2604    992175    pos_api_outlet id    DEFAULT     v   ALTER TABLE ONLY public.pos_api_outlet ALTER COLUMN id SET DEFAULT nextval('public.pos_api_outlet_id_seq'::regclass);
 @   ALTER TABLE public.pos_api_outlet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            �           2604    992188    pos_api_register id    DEFAULT     z   ALTER TABLE ONLY public.pos_api_register ALTER COLUMN id SET DEFAULT nextval('public.pos_api_register_id_seq'::regclass);
 B   ALTER TABLE public.pos_api_register ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264            
           2604    1180151 %   settings_api_checkoutfieldsettings id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_checkoutfieldsettings ALTER COLUMN id SET DEFAULT nextval('public.settings_api_checkoutfieldsettings_id_seq'::regclass);
 T   ALTER TABLE public.settings_api_checkoutfieldsettings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    297    296            �           2604    991821    settings_api_checkoutsetting id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_checkoutsetting ALTER COLUMN id SET DEFAULT nextval('public.settings_api_checkoutsetting_id_seq'::regclass);
 N   ALTER TABLE public.settings_api_checkoutsetting ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233                       2604    1303549    settings_api_customuser id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_customuser ALTER COLUMN id SET DEFAULT nextval('public.settings_api_customuser_id_seq'::regclass);
 I   ALTER TABLE public.settings_api_customuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    324    325    325                       2604    1303647 %   settings_api_customuser_operations id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_customuser_operations ALTER COLUMN id SET DEFAULT nextval('public.settings_api_customuser_operations_id_seq'::regclass);
 T   ALTER TABLE public.settings_api_customuser_operations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    330    331    331                       2604    1303603 !   settings_api_customuser_outlet id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_customuser_outlet ALTER COLUMN id SET DEFAULT nextval('public.settings_api_customuser_outlet_id_seq'::regclass);
 P   ALTER TABLE public.settings_api_customuser_outlet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    326    327    327                       2604    1303625     settings_api_customuser_roles id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_customuser_roles ALTER COLUMN id SET DEFAULT nextval('public.settings_api_customuser_roles_id_seq'::regclass);
 O   ALTER TABLE public.settings_api_customuser_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    328    329    329            �           2604    1180236    settings_api_deliveryarea id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_deliveryarea ALTER COLUMN id SET DEFAULT nextval('public.settings_api_deliveryarea_id_seq'::regclass);
 K   ALTER TABLE public.settings_api_deliveryarea ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    304    238                       2604    1180157 "   settings_api_freeshippingmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_freeshippingmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_freeshippingmethod_id_seq'::regclass);
 Q   ALTER TABLE public.settings_api_freeshippingmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    299    299            �           2604    991832    settings_api_generalsetting id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_generalsetting ALTER COLUMN id SET DEFAULT nextval('public.settings_api_generalsetting_id_seq'::regclass);
 M   ALTER TABLE public.settings_api_generalsetting ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235                       2604    1295326    settings_api_operation id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_operation ALTER COLUMN id SET DEFAULT nextval('public.settings_api_operation_id_seq'::regclass);
 H   ALTER TABLE public.settings_api_operation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    316    317                       2604    1377213    settings_api_paymentmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_paymentmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_paymentmethod_id_seq'::regclass);
 L   ALTER TABLE public.settings_api_paymentmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    332    333    333                       2604    1295353    settings_api_permissionrole id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_permissionrole ALTER COLUMN id SET DEFAULT nextval('public.settings_api_permissionrole_id_seq'::regclass);
 M   ALTER TABLE public.settings_api_permissionrole ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    323    322    323                       2604    1262525     settings_api_regeionaldetails id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_regeionaldetails ALTER COLUMN id SET DEFAULT nextval('public.settings_api_regeionaldetails_id_seq'::regclass);
 O   ALTER TABLE public.settings_api_regeionaldetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    314    314                       2604    1295337    settings_api_resource id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_resource ALTER COLUMN id SET DEFAULT nextval('public.settings_api_resource_id_seq'::regclass);
 G   ALTER TABLE public.settings_api_resource ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    318    319    319                       2604    1295345    settings_api_role id    DEFAULT     |   ALTER TABLE ONLY public.settings_api_role ALTER COLUMN id SET DEFAULT nextval('public.settings_api_role_id_seq'::regclass);
 C   ALTER TABLE public.settings_api_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    321    320    321                       2604    1180168 &   settings_api_standardshippingmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_standardshippingmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_standardshippingmethod_id_seq'::regclass);
 U   ALTER TABLE public.settings_api_standardshippingmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    301    301                       2604    1180176 )   settings_api_storepickupshippingmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_storepickupshippingmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_storepickupshippingmethod_id_seq'::regclass);
 X   ALTER TABLE public.settings_api_storepickupshippingmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    302    303            �           2604    991854    settings_api_taxrate id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_taxrate ALTER COLUMN id SET DEFAULT nextval('public.settings_api_taxrate_id_seq'::regclass);
 F   ALTER TABLE public.settings_api_taxrate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    992365    superadmin_api_adminuser id    DEFAULT     �   ALTER TABLE ONLY public.superadmin_api_adminuser ALTER COLUMN id SET DEFAULT nextval('public.superadmin_api_adminuser_id_seq'::regclass);
 J   ALTER TABLE public.superadmin_api_adminuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    275    275            �           2604    991647    user_auth_user id    DEFAULT     v   ALTER TABLE ONLY public.user_auth_user ALTER COLUMN id SET DEFAULT nextval('public.user_auth_user_id_seq'::regclass);
 @   ALTER TABLE public.user_auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    991660    user_auth_user_groups id    DEFAULT     �   ALTER TABLE ONLY public.user_auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_auth_user_groups_id_seq'::regclass);
 G   ALTER TABLE public.user_auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    991668 "   user_auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_auth_user_user_permissions_id_seq'::regclass);
 Q   ALTER TABLE public.user_auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            7          0    1097979    app_api_facebookpixel 
   TABLE DATA           Z   COPY public.app_api_facebookpixel (id, facebook_pixel_link, created, updated) FROM stdin;
    public          postgres    false    279   ��      9          0    1097990    app_api_googlead 
   TABLE DATA           Q   COPY public.app_api_googlead (id, google_ads_link, created, updated) FROM stdin;
    public          postgres    false    281   a�      ;          0    1098001    app_api_googleanalytic 
   TABLE DATA           ]   COPY public.app_api_googleanalytic (id, google_analytics_link, created, updated) FROM stdin;
    public          postgres    false    283   ~�      =          0    1098012    app_api_livechat 
   TABLE DATA           P   COPY public.app_api_livechat (id, live_chat_link, created, updated) FROM stdin;
    public          postgres    false    285   ��      5          0    1089792    app_api_news 
   TABLE DATA           P   COPY public.app_api_news (id, image1, image2, image3, popup_enable) FROM stdin;
    public          postgres    false    277   ��      ?          0    1098023     app_api_orderplacedfacebookpixel 
   TABLE DATA           r   COPY public.app_api_orderplacedfacebookpixel (id, order_placed_facebook_pixel_link, created, updated) FROM stdin;
    public          postgres    false    287    �      �          0    991737    app_api_popup 
   TABLE DATA           Q   COPY public.app_api_popup (id, image1, image2, image3, popup_enable) FROM stdin;
    public          postgres    false    219   �      �          0    991745    app_api_promocode 
   TABLE DATA           �   COPY public.app_api_promocode (id, name, code, is_active, usage_limit, "limit", valid_from, valid_to, expire_limit, discount_type, discount, discount_order_type, created, updated, apply, orders_over) FROM stdin;
    public          postgres    false    221   o�      [          0    1270713    app_api_promocode_collection 
   TABLE DATA           \   COPY public.app_api_promocode_collection (id, promocode_id, productcategory_id) FROM stdin;
    public          postgres    false    315   O�      A          0    1114372    app_api_promocode_product 
   TABLE DATA           Q   COPY public.app_api_promocode_product (id, promocode_id, product_id) FROM stdin;
    public          postgres    false    289   l�      �          0    991600 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ��      �          0    991610    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ��      �          0    991592    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ��      �          0    991757    company_api_aboutus 
   TABLE DATA           �   COPY public.company_api_aboutus (id, about_us_title, about_us_text, aboutus_image, aboutus_image2, aboutus_video, aboutus_video2, meta_title, meta_description, meta_keywords) FROM stdin;
    public          postgres    false    223   ��                0    991768    company_api_companypolicy 
   TABLE DATA           K   COPY public.company_api_companypolicy (id, title, description) FROM stdin;
    public          postgres    false    225   ��                0    991779    company_api_faq 
   TABLE DATA           ?   COPY public.company_api_faq (id, question, answer) FROM stdin;
    public          postgres    false    227   ��      G          0    1180122    company_api_metaproperty 
   TABLE DATA           c   COPY public.company_api_metaproperty (id, meta_title, meta_description, meta_keywords) FROM stdin;
    public          postgres    false    295    �                0    991790    company_api_news 
   TABLE DATA           t   COPY public.company_api_news (id, title, content, image, image2, video, video2, slug, created, updated) FROM stdin;
    public          postgres    false    229   :�                0    991803    company_api_termscondition 
   TABLE DATA           �   COPY public.company_api_termscondition (id, title, content, slug, meta_title, meta_description, meta_keywords, created, updated) FROM stdin;
    public          postgres    false    231   W�      0          0    992279    customer_order_api_notification 
   TABLE DATA           y   COPY public.customer_order_api_notification (id, title, description, url, created, user_from_id, user_to_id) FROM stdin;
    public          postgres    false    272   t�      *          0    992224    customer_order_api_order 
   TABLE DATA           G  COPY public.customer_order_api_order (id, order_id, order_type, status, ordered_by, email, phone, address, order_note, unit, order_tracking_number, currency, shipping_charge, other_charges, other_discount, promo_discount, total_tax, order_total, is_payment_successful, created, updated, accepted_date, shipping_start_date, completed_date, expected_delivery_date, is_fulfilled, item_count, product_list, customer_id, delivery_address_id, outlet_id, promo_code_id, supplier_id, delivery_area_id, has_discount, separate_delivery_address, serial, balance, description, "Order_reference", register_id, sales_note, fullname, paid, sub_total, total_discount, register_total, amount, payment_method, payment_status, reference, pathao_area_id, pathao_city_id, pathao_zone_id, pathao_instruction, pathao_item_description, pathao_status) FROM stdin;
    public          postgres    false    266   ��      .          0    992256    customer_order_api_orderitem 
   TABLE DATA           �   COPY public.customer_order_api_orderitem (id, sku, quantity, unit_price, order_id, product_id, barcode, compare_at_price, fulfilled_quantity, stock_control, size_id, product_name, size_name, size_value, discount, awaiting_stock) FROM stdin;
    public          postgres    false    270   �      X          0    1180611    customer_order_api_pathaotoken 
   TABLE DATA           Y   COPY public.customer_order_api_pathaotoken (id, access_token, refresh_token) FROM stdin;
    public          postgres    false    312   �      ,          0    992243     customer_order_api_transferorder 
   TABLE DATA           �   COPY public.customer_order_api_transferorder (id, to_number, due_date, reference, transfer_charge, note, created, updated, order_id, order_from_id, order_to_id) FROM stdin;
    public          postgres    false    268         $          0    992134    customer_profile_api_address 
   TABLE DATA           �   COPY public.customer_profile_api_address (id, type, address1, address2, country, division, city, postal_code, created, updated, customer_id, email, first_name, last_name, phone, title, district) FROM stdin;
    public          postgres    false    260                    0    992118 "   customer_profile_api_customergroup 
   TABLE DATA           ^   COPY public.customer_profile_api_customergroup (id, group_name, created, updated) FROM stdin;
    public          postgres    false    256   �      "          0    992126 +   customer_profile_api_customergroup_customer 
   TABLE DATA           o   COPY public.customer_profile_api_customergroup_customer (id, customergroup_id, customerprofile_id) FROM stdin;
    public          postgres    false    258   1                0    992101 $   customer_profile_api_customerprofile 
   TABLE DATA           �   COPY public.customer_profile_api_customerprofile (id, email, username, password, title, first_name, last_name, gender, phone, customer_number, created, updated, user_id, address, company_name, designation, birthdate) FROM stdin;
    public          postgres    false    254   X      �          0    991702    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   �      �          0    991582    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203         �          0    991571    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   �      1          0    992350    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    273   �/                0    991876    inventory_api_brand 
   TABLE DATA           �   COPY public.inventory_api_brand (id, name, description, icon_image, icon_image2, slug, meta_title, meta_description, meta_keywords, created, updated) FROM stdin;
    public          postgres    false    240   �4      E          0    1180032    inventory_api_customermessage 
   TABLE DATA           v   COPY public.inventory_api_customermessage (id, email, phone, subject, message, created, updated, name_id) FROM stdin;
    public          postgres    false    293   V5                0    991889     inventory_api_inventory_location 
   TABLE DATA           �   COPY public.inventory_api_inventory_location (id, location_name, phone, is_active, is_default, address1, address2, country, division, city, postal_code, created, updated) FROM stdin;
    public          postgres    false    242   s5                0    991988     inventory_api_inventory_transfer 
   TABLE DATA           �   COPY public.inventory_api_inventory_transfer (id, "TO_number", status, total_transfer, total_receive, due_date, created, updated, from_inventory_id, to_inventory_id, transfer_quantity) FROM stdin;
    public          postgres    false    252   �5      C          0    1155329 .   inventory_api_inventory_transfer_transfer_item 
   TABLE DATA           z   COPY public.inventory_api_inventory_transfer_transfer_item (id, inventory_transfer_id, productsizevariant_id) FROM stdin;
    public          postgres    false    291   6                0    991900    inventory_api_product 
   TABLE DATA           �  COPY public.inventory_api_product (id, name, description, short_description, awaiting_stock, stock, on_hand, committed, available, sku, barcode, is_active, is_display, is_expanded, is_selected, option_values, options, enable_customer_note, is_featured, is_new, store_only, stock_control, is_require_documents, featured_image, product_image1, product_image2, product_image3, advance_price, auto_adjust_selling_price, price, weight, unit, on_sale, call_for_price, attribute, attribute2, attribute3, attribute4, attribute5, attribute6, delivery_info, meta_title, meta_description, meta_keywords, created, updated, slug, value, brand_id, category_id, tax_id, tags, compare_at_price, cost_price) FROM stdin;
    public          postgres    false    244   6                0    991913    inventory_api_productcategory 
   TABLE DATA           �   COPY public.inventory_api_productcategory (id, name, descriptions, slug, meta_title, meta_description, meta_keywords, icon, created, updated) FROM stdin;
    public          postgres    false    246   �8      R          0    1180523    inventory_api_productpurchased 
   TABLE DATA           !  COPY public.inventory_api_productpurchased (id, adjusment, due_date, po_number, purchase_date, received_note, received_quantity_price, reference, total_amount, total_due, total_payment, total_tax, created, updated, supplier_id, order_total, other_amount, other_charge, status) FROM stdin;
    public          postgres    false    306   39      T          0    1180534 "   inventory_api_productpurchaseditem 
   TABLE DATA           �   COPY public.inventory_api_productpurchaseditem (id, order_quantity, received_quantity, sku, subtotal, total_received_price, total_tax, inventory_location_id, purchase_item_id, purchased_product_id, purchased_size_id, tax_id, cost_price) FROM stdin;
    public          postgres    false    308   y=      V          0    1180578 %   inventory_api_productpurchasedpayment 
   TABLE DATA           �   COPY public.inventory_api_productpurchasedpayment (id, amount, payment_date, payment_method, reference, created, updated, purchased_id, due) FROM stdin;
    public          postgres    false    310   �>                0    991937     inventory_api_productsizevariant 
   TABLE DATA           6  COPY public.inventory_api_productsizevariant (id, name, awaiting_stock, stock, on_hand, committed, available, option, value, options, sku, barcode, parent_id, "position", advance_price, auto_adjust_selling_price, cost_price, compare_at_price, price, is_selected, weight, product_id, on_sale, tags) FROM stdin;
    public          postgres    false    250   �?                0    991926    inventory_api_supplier 
   TABLE DATA             COPY public.inventory_api_supplier (id, supplier_name, supplier_company_name, is_active, supplier_first_name, supplier_last_name, supplier_phone, supplier_address, supplier_address2, city, country, division, postal_code, created, updated, tax_id) FROM stdin;
    public          postgres    false    248   tB      &          0    992172    pos_api_outlet 
   TABLE DATA           :  COPY public.pos_api_outlet (id, outlet_name, location_name, email, phone, receipt_template, email_template, country_name, division, postal_code, city, address1, address2, full_address, slug, cash_management, is_active, is_default, is_deleted, selected, created, updated, inventory_location_id, tax_id) FROM stdin;
    public          postgres    false    262   C      (          0    992185    pos_api_register 
   TABLE DATA           �   COPY public.pos_api_register (id, name, opened_at, closed_at, cash_management, is_active, is_deleted, status, created, updated, closed_by_id, opened_by_id, outlet_id) FROM stdin;
    public          postgres    false    264   D      H          0    1180130 "   settings_api_checkoutfieldsettings 
   TABLE DATA           5  COPY public.settings_api_checkoutfieldsettings (id, checkout_from_all_country, customer_note, title, first_name, last_name, email, company_name, phone, billing_address_line1, billing_address_line2, billing_city, billing_country, billing_postal_code, billing_state, defferent_delivery_address, delivery_name, delivery_phone, delivery_address_line1, delivery_address_line2, delivery_country, delivery_city, delivery_postal_code, delivery_state, delivery_slot, time_slot, time_slot_label, customer_instruction, new_time_slot, "terms_and_condition_show_OR_hidden", terms_and_condition, terms_and_condition_label, terms_and_condition_link, "terms_and_condition_show_OR_hidden2", terms_and_condition2, terms_and_condition_label2, terms_and_condition_link2, minimum_checkout_amount_setting, minimum_checkout_amount) FROM stdin;
    public          postgres    false    296   0D      	          0    991818    settings_api_checkoutsetting 
   TABLE DATA           �   COPY public.settings_api_checkoutsetting (id, guest_checkout, create_account, seperate_delivery_address, social_login, document_label, billing_address_label, delivery_address_label) FROM stdin;
    public          postgres    false    233   YD      e          0    1303546    settings_api_customuser 
   TABLE DATA           �   COPY public.settings_api_customuser (id, confirmation_sent_at, confirmed_at, confirmation, contact, email, full_name, is_all_outlet, selected, user_id, password) FROM stdin;
    public          postgres    false    325   D      k          0    1303644 "   settings_api_customuser_operations 
   TABLE DATA           ]   COPY public.settings_api_customuser_operations (id, customuser_id, operation_id) FROM stdin;
    public          postgres    false    331   G      g          0    1303600    settings_api_customuser_outlet 
   TABLE DATA           V   COPY public.settings_api_customuser_outlet (id, customuser_id, outlet_id) FROM stdin;
    public          postgres    false    327   I      i          0    1303622    settings_api_customuser_roles 
   TABLE DATA           S   COPY public.settings_api_customuser_roles (id, customuser_id, role_id) FROM stdin;
    public          postgres    false    329   _I                0    991859    settings_api_deliveryarea 
   TABLE DATA           �   COPY public.settings_api_deliveryarea (id, price, shipping_rate_name, weight_lower_limit, weight_upper_limit, country, shipping_method_id) FROM stdin;
    public          postgres    false    238   �I      K          0    1180154    settings_api_freeshippingmethod 
   TABLE DATA           �   COPY public.settings_api_freeshippingmethod (id, amount_mesurement, amount, weight_mesurement, weight, free_shipping, instruction) FROM stdin;
    public          postgres    false    299   )J                0    991829    settings_api_generalsetting 
   TABLE DATA           �   COPY public.settings_api_generalsetting (id, store_name, business_name, email, phone, street, city, country, division, postal_code, currency, currency_text, product_per_page, sort_by, timezone, online, created, updated) FROM stdin;
    public          postgres    false    235   �J      ]          0    1295323    settings_api_operation 
   TABLE DATA           t   COPY public.settings_api_operation (id, name, description, created, updated, resource_id, display_text) FROM stdin;
    public          postgres    false    317   0K      m          0    1377210    settings_api_paymentmethod 
   TABLE DATA           N   COPY public.settings_api_paymentmethod (id, description, cash_on) FROM stdin;
    public          postgres    false    333   �O      c          0    1295350    settings_api_permissionrole 
   TABLE DATA           _   COPY public.settings_api_permissionrole (id, name, role_id, user_id, operation_id) FROM stdin;
    public          postgres    false    323   mP      Z          0    1262522    settings_api_regeionaldetails 
   TABLE DATA           h   COPY public.settings_api_regeionaldetails (id, region_name, region_price, delivery_area_id) FROM stdin;
    public          postgres    false    314   �P      _          0    1295334    settings_api_resource 
   TABLE DATA           P   COPY public.settings_api_resource (id, name, description, selected) FROM stdin;
    public          postgres    false    319   Q      a          0    1295342    settings_api_role 
   TABLE DATA           `   COPY public.settings_api_role (id, name, pos_manager, pos_cashier, ecommerce_staff) FROM stdin;
    public          postgres    false    321   �Q      M          0    1180165 #   settings_api_standardshippingmethod 
   TABLE DATA           g   COPY public.settings_api_standardshippingmethod (id, standard_shipping, instruction, name) FROM stdin;
    public          postgres    false    301   �Q      O          0    1180173 &   settings_api_storepickupshippingmethod 
   TABLE DATA           _   COPY public.settings_api_storepickupshippingmethod (id, store_pickup, instruction) FROM stdin;
    public          postgres    false    303   R                0    991851    settings_api_taxrate 
   TABLE DATA           O   COPY public.settings_api_taxrate (id, name, tax, created, updated) FROM stdin;
    public          postgres    false    237   ?R      3          0    992362    superadmin_api_adminuser 
   TABLE DATA           �   COPY public.superadmin_api_adminuser (id, name, email, mobile, status, role, confirmation_sent_at, profile_image, created, updated, user_id) FROM stdin;
    public          postgres    false    275   �R      �          0    991644    user_auth_user 
   TABLE DATA           �   COPY public.user_auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_customer, is_admin, phone, address) FROM stdin;
    public          postgres    false    211   �R      �          0    991657    user_auth_user_groups 
   TABLE DATA           F   COPY public.user_auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   wa      �          0    991665    user_auth_user_user_permissions 
   TABLE DATA           U   COPY public.user_auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   �a      �           0    0    app_api_facebookpixel_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.app_api_facebookpixel_id_seq', 1, true);
          public          postgres    false    278            �           0    0    app_api_googlead_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.app_api_googlead_id_seq', 1, false);
          public          postgres    false    280            �           0    0    app_api_googleanalytic_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.app_api_googleanalytic_id_seq', 1, false);
          public          postgres    false    282            �           0    0    app_api_livechat_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.app_api_livechat_id_seq', 1, true);
          public          postgres    false    284            �           0    0    app_api_news_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.app_api_news_id_seq', 1, false);
          public          postgres    false    276            �           0    0 '   app_api_orderplacedfacebookpixel_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.app_api_orderplacedfacebookpixel_id_seq', 1, false);
          public          postgres    false    286            �           0    0    app_api_popup_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.app_api_popup_id_seq', 2, true);
          public          postgres    false    218            �           0    0    app_api_promocode_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.app_api_promocode_id_seq', 3, true);
          public          postgres    false    220            �           0    0 !   app_api_promocode_products_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.app_api_promocode_products_id_seq', 1, false);
          public          postgres    false    288            �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
          public          postgres    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 5, true);
          public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 268, true);
          public          postgres    false    204            �           0    0    company_api_aboutus_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.company_api_aboutus_id_seq', 1, false);
          public          postgres    false    222            �           0    0     company_api_companypolicy_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.company_api_companypolicy_id_seq', 1, false);
          public          postgres    false    224            �           0    0    company_api_faq_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.company_api_faq_id_seq', 1, false);
          public          postgres    false    226            �           0    0    company_api_metaproperty_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.company_api_metaproperty_id_seq', 1, true);
          public          postgres    false    294            �           0    0    company_api_news_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.company_api_news_id_seq', 1, false);
          public          postgres    false    228            �           0    0 !   company_api_termscondition_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.company_api_termscondition_id_seq', 1, false);
          public          postgres    false    230            �           0    0 &   customer_order_api_notification_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.customer_order_api_notification_id_seq', 1, false);
          public          postgres    false    271            �           0    0    customer_order_api_order_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.customer_order_api_order_id_seq', 206, true);
          public          postgres    false    265            �           0    0 #   customer_order_api_orderitem_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_api_orderitem_id_seq', 172, true);
          public          postgres    false    269            �           0    0 %   customer_order_api_pathaotoken_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_api_pathaotoken_id_seq', 4, true);
          public          postgres    false    311            �           0    0 '   customer_order_api_transferorder_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.customer_order_api_transferorder_id_seq', 1, false);
          public          postgres    false    267            �           0    0 #   customer_profile_api_address_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.customer_profile_api_address_id_seq', 25, true);
          public          postgres    false    259            �           0    0 2   customer_profile_api_customergroup_customer_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.customer_profile_api_customergroup_customer_id_seq', 8, true);
          public          postgres    false    257            �           0    0 )   customer_profile_api_customergroup_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.customer_profile_api_customergroup_id_seq', 2, true);
          public          postgres    false    255            �           0    0 +   customer_profile_api_customerprofile_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.customer_profile_api_customerprofile_id_seq', 42, true);
          public          postgres    false    253            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 119, true);
          public          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 67, true);
          public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 208, true);
          public          postgres    false    200            �           0    0    inventory_api_brand_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.inventory_api_brand_id_seq', 3, true);
          public          postgres    false    239            �           0    0 $   inventory_api_customermessage_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.inventory_api_customermessage_id_seq', 1, false);
          public          postgres    false    292            �           0    0 '   inventory_api_inventory_location_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.inventory_api_inventory_location_id_seq', 2, true);
          public          postgres    false    241            �           0    0 '   inventory_api_inventory_transfer_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.inventory_api_inventory_transfer_id_seq', 1, false);
          public          postgres    false    251            �           0    0 5   inventory_api_inventory_transfer_transfer_item_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.inventory_api_inventory_transfer_transfer_item_id_seq', 1, false);
          public          postgres    false    290            �           0    0    inventory_api_product_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.inventory_api_product_id_seq', 13, true);
          public          postgres    false    243            �           0    0 $   inventory_api_productcategory_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.inventory_api_productcategory_id_seq', 3, true);
          public          postgres    false    245            �           0    0 %   inventory_api_productpurchased_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.inventory_api_productpurchased_id_seq', 35, true);
          public          postgres    false    305            �           0    0 )   inventory_api_productpurchaseditem_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.inventory_api_productpurchaseditem_id_seq', 56, true);
          public          postgres    false    307            �           0    0 ,   inventory_api_productpurchasedpayment_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.inventory_api_productpurchasedpayment_id_seq', 10, true);
          public          postgres    false    309            �           0    0 '   inventory_api_productsizevariant_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.inventory_api_productsizevariant_id_seq', 55, true);
          public          postgres    false    249            �           0    0    inventory_api_supplier_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.inventory_api_supplier_id_seq', 2, true);
          public          postgres    false    247            �           0    0    pos_api_outlet_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pos_api_outlet_id_seq', 10, true);
          public          postgres    false    261            �           0    0    pos_api_register_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pos_api_register_id_seq', 1, false);
          public          postgres    false    263            �           0    0 )   settings_api_checkoutfieldsettings_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.settings_api_checkoutfieldsettings_id_seq', 1, true);
          public          postgres    false    297            �           0    0 #   settings_api_checkoutsetting_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.settings_api_checkoutsetting_id_seq', 1, true);
          public          postgres    false    232            �           0    0    settings_api_customuser_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.settings_api_customuser_id_seq', 22, true);
          public          postgres    false    324            �           0    0 )   settings_api_customuser_operations_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.settings_api_customuser_operations_id_seq', 176, true);
          public          postgres    false    330            �           0    0 %   settings_api_customuser_outlet_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.settings_api_customuser_outlet_id_seq', 18, true);
          public          postgres    false    326            �           0    0 $   settings_api_customuser_roles_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.settings_api_customuser_roles_id_seq', 22, true);
          public          postgres    false    328            �           0    0     settings_api_deliveryarea_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.settings_api_deliveryarea_id_seq', 426, true);
          public          postgres    false    304            �           0    0 &   settings_api_freeshippingmethod_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.settings_api_freeshippingmethod_id_seq', 5, true);
          public          postgres    false    298            �           0    0 "   settings_api_generalsetting_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.settings_api_generalsetting_id_seq', 1, true);
          public          postgres    false    234            �           0    0    settings_api_operation_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.settings_api_operation_id_seq', 39, true);
          public          postgres    false    316            �           0    0 !   settings_api_paymentmethod_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.settings_api_paymentmethod_id_seq', 1, true);
          public          postgres    false    332            �           0    0 "   settings_api_permissionrole_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.settings_api_permissionrole_id_seq', 1, true);
          public          postgres    false    322            �           0    0 $   settings_api_regeionaldetails_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.settings_api_regeionaldetails_id_seq', 56, true);
          public          postgres    false    313            �           0    0    settings_api_resource_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.settings_api_resource_id_seq', 11, true);
          public          postgres    false    318            �           0    0    settings_api_role_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.settings_api_role_id_seq', 3, true);
          public          postgres    false    320            �           0    0 *   settings_api_standardshippingmethod_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.settings_api_standardshippingmethod_id_seq', 15, true);
          public          postgres    false    300            �           0    0 -   settings_api_storepickupshippingmethod_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.settings_api_storepickupshippingmethod_id_seq', 1, true);
          public          postgres    false    302            �           0    0    settings_api_taxrate_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.settings_api_taxrate_id_seq', 1, true);
          public          postgres    false    236            �           0    0    superadmin_api_adminuser_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.superadmin_api_adminuser_id_seq', 1, false);
          public          postgres    false    274            �           0    0    user_auth_user_groups_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.user_auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            �           0    0    user_auth_user_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.user_auth_user_id_seq', 63, true);
          public          postgres    false    210            �           0    0 &   user_auth_user_user_permissions_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.user_auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            �           2606    1097987 0   app_api_facebookpixel app_api_facebookpixel_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.app_api_facebookpixel
    ADD CONSTRAINT app_api_facebookpixel_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.app_api_facebookpixel DROP CONSTRAINT app_api_facebookpixel_pkey;
       public            postgres    false    279            �           2606    1097998 &   app_api_googlead app_api_googlead_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.app_api_googlead
    ADD CONSTRAINT app_api_googlead_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.app_api_googlead DROP CONSTRAINT app_api_googlead_pkey;
       public            postgres    false    281            �           2606    1098009 2   app_api_googleanalytic app_api_googleanalytic_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.app_api_googleanalytic
    ADD CONSTRAINT app_api_googleanalytic_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.app_api_googleanalytic DROP CONSTRAINT app_api_googleanalytic_pkey;
       public            postgres    false    283            �           2606    1098020 &   app_api_livechat app_api_livechat_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.app_api_livechat
    ADD CONSTRAINT app_api_livechat_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.app_api_livechat DROP CONSTRAINT app_api_livechat_pkey;
       public            postgres    false    285            �           2606    1089797    app_api_news app_api_news_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.app_api_news
    ADD CONSTRAINT app_api_news_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.app_api_news DROP CONSTRAINT app_api_news_pkey;
       public            postgres    false    277            �           2606    1098031 F   app_api_orderplacedfacebookpixel app_api_orderplacedfacebookpixel_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.app_api_orderplacedfacebookpixel
    ADD CONSTRAINT app_api_orderplacedfacebookpixel_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.app_api_orderplacedfacebookpixel DROP CONSTRAINT app_api_orderplacedfacebookpixel_pkey;
       public            postgres    false    287            H           2606    991742     app_api_popup app_api_popup_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.app_api_popup
    ADD CONSTRAINT app_api_popup_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.app_api_popup DROP CONSTRAINT app_api_popup_pkey;
       public            postgres    false    219            K           2606    991753 ,   app_api_promocode app_api_promocode_code_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.app_api_promocode
    ADD CONSTRAINT app_api_promocode_code_key UNIQUE (code);
 V   ALTER TABLE ONLY public.app_api_promocode DROP CONSTRAINT app_api_promocode_code_key;
       public            postgres    false    221                        2606    1270717 ?   app_api_promocode_collection app_api_promocode_collections_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.app_api_promocode_collection
    ADD CONSTRAINT app_api_promocode_collections_pkey PRIMARY KEY (id);
 i   ALTER TABLE ONLY public.app_api_promocode_collection DROP CONSTRAINT app_api_promocode_collections_pkey;
       public            postgres    false    315            M           2606    991751 (   app_api_promocode app_api_promocode_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.app_api_promocode
    ADD CONSTRAINT app_api_promocode_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.app_api_promocode DROP CONSTRAINT app_api_promocode_pkey;
       public            postgres    false    221            �           2606    1114393 X   app_api_promocode_product app_api_promocode_produc_promocode_id_product_id_a7fc563f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_product
    ADD CONSTRAINT app_api_promocode_produc_promocode_id_product_id_a7fc563f_uniq UNIQUE (promocode_id, product_id);
 �   ALTER TABLE ONLY public.app_api_promocode_product DROP CONSTRAINT app_api_promocode_produc_promocode_id_product_id_a7fc563f_uniq;
       public            postgres    false    289    289            �           2606    1114377 9   app_api_promocode_product app_api_promocode_products_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.app_api_promocode_product
    ADD CONSTRAINT app_api_promocode_products_pkey PRIMARY KEY (id);
 c   ALTER TABLE ONLY public.app_api_promocode_product DROP CONSTRAINT app_api_promocode_products_pkey;
       public            postgres    false    289            )           2606    991640    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            .           2606    991626 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            1           2606    991615 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            +           2606    991605    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            $           2606    991617 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            &           2606    991597 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            O           2606    991765 ,   company_api_aboutus company_api_aboutus_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.company_api_aboutus
    ADD CONSTRAINT company_api_aboutus_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.company_api_aboutus DROP CONSTRAINT company_api_aboutus_pkey;
       public            postgres    false    223            Q           2606    991776 8   company_api_companypolicy company_api_companypolicy_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.company_api_companypolicy
    ADD CONSTRAINT company_api_companypolicy_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.company_api_companypolicy DROP CONSTRAINT company_api_companypolicy_pkey;
       public            postgres    false    225            S           2606    991787 $   company_api_faq company_api_faq_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.company_api_faq
    ADD CONSTRAINT company_api_faq_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.company_api_faq DROP CONSTRAINT company_api_faq_pkey;
       public            postgres    false    227            �           2606    1180127 6   company_api_metaproperty company_api_metaproperty_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.company_api_metaproperty
    ADD CONSTRAINT company_api_metaproperty_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.company_api_metaproperty DROP CONSTRAINT company_api_metaproperty_pkey;
       public            postgres    false    295            U           2606    991798 &   company_api_news company_api_news_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_api_news
    ADD CONSTRAINT company_api_news_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_api_news DROP CONSTRAINT company_api_news_pkey;
       public            postgres    false    229            X           2606    991800 *   company_api_news company_api_news_slug_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.company_api_news
    ADD CONSTRAINT company_api_news_slug_key UNIQUE (slug);
 T   ALTER TABLE ONLY public.company_api_news DROP CONSTRAINT company_api_news_slug_key;
       public            postgres    false    229            Z           2606    991811 :   company_api_termscondition company_api_termscondition_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.company_api_termscondition
    ADD CONSTRAINT company_api_termscondition_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.company_api_termscondition DROP CONSTRAINT company_api_termscondition_pkey;
       public            postgres    false    231            ]           2606    991813 >   company_api_termscondition company_api_termscondition_slug_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.company_api_termscondition
    ADD CONSTRAINT company_api_termscondition_slug_key UNIQUE (slug);
 h   ALTER TABLE ONLY public.company_api_termscondition DROP CONSTRAINT company_api_termscondition_slug_key;
       public            postgres    false    231            �           2606    992287 D   customer_order_api_notification customer_order_api_notification_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_notification
    ADD CONSTRAINT customer_order_api_notification_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.customer_order_api_notification DROP CONSTRAINT customer_order_api_notification_pkey;
       public            postgres    false    272            �           2606    992232 6   customer_order_api_order customer_order_api_order_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_order_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_order_pkey;
       public            postgres    false    266            �           2606    992261 >   customer_order_api_orderitem customer_order_api_orderitem_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_orderitem_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_orderitem_pkey;
       public            postgres    false    270            �           2606    1180619 B   customer_order_api_pathaotoken customer_order_api_pathaotoken_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_pathaotoken
    ADD CONSTRAINT customer_order_api_pathaotoken_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.customer_order_api_pathaotoken DROP CONSTRAINT customer_order_api_pathaotoken_pkey;
       public            postgres    false    312            �           2606    992253 N   customer_order_api_transferorder customer_order_api_transferorder_order_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_transferorder_order_id_key UNIQUE (order_id);
 x   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_transferorder_order_id_key;
       public            postgres    false    268            �           2606    992251 F   customer_order_api_transferorder customer_order_api_transferorder_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_transferorder_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_transferorder_pkey;
       public            postgres    false    268            �           2606    992142 >   customer_profile_api_address customer_profile_api_address_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.customer_profile_api_address
    ADD CONSTRAINT customer_profile_api_address_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.customer_profile_api_address DROP CONSTRAINT customer_profile_api_address_pkey;
       public            postgres    false    260            �           2606    992151 k   customer_profile_api_customergroup_customer customer_profile_api_cus_customergroup_id_custome_48a03e56_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_cus_customergroup_id_custome_48a03e56_uniq UNIQUE (customergroup_id, customerprofile_id);
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_cus_customergroup_id_custome_48a03e56_uniq;
       public            postgres    false    258    258            �           2606    992131 \   customer_profile_api_customergroup_customer customer_profile_api_customergroup_customer_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_customergroup_customer_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_customergroup_customer_pkey;
       public            postgres    false    258            �           2606    992123 J   customer_profile_api_customergroup customer_profile_api_customergroup_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup
    ADD CONSTRAINT customer_profile_api_customergroup_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.customer_profile_api_customergroup DROP CONSTRAINT customer_profile_api_customergroup_pkey;
       public            postgres    false    256            �           2606    992111 S   customer_profile_api_customerprofile customer_profile_api_customerprofile_email_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_email_key UNIQUE (email);
 }   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_email_key;
       public            postgres    false    254            �           2606    992109 N   customer_profile_api_customerprofile customer_profile_api_customerprofile_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_pkey;
       public            postgres    false    254            �           2606    992115 U   customer_profile_api_customerprofile customer_profile_api_customerprofile_user_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_user_id_key UNIQUE (user_id);
    ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_user_id_key;
       public            postgres    false    254            �           2606    992113 V   customer_profile_api_customerprofile customer_profile_api_customerprofile_username_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_username_key UNIQUE (username);
 �   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_username_key;
       public            postgres    false    254            E           2606    991711 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217                       2606    991589 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            !           2606    991587 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203                       2606    991579 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    992357 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    273            h           2606    991884 ,   inventory_api_brand inventory_api_brand_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.inventory_api_brand
    ADD CONSTRAINT inventory_api_brand_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.inventory_api_brand DROP CONSTRAINT inventory_api_brand_pkey;
       public            postgres    false    240            k           2606    991886 0   inventory_api_brand inventory_api_brand_slug_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.inventory_api_brand
    ADD CONSTRAINT inventory_api_brand_slug_key UNIQUE (slug);
 Z   ALTER TABLE ONLY public.inventory_api_brand DROP CONSTRAINT inventory_api_brand_slug_key;
       public            postgres    false    240            �           2606    1180040 @   inventory_api_customermessage inventory_api_customermessage_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.inventory_api_customermessage
    ADD CONSTRAINT inventory_api_customermessage_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.inventory_api_customermessage DROP CONSTRAINT inventory_api_customermessage_pkey;
       public            postgres    false    293            �           2606    1155336 n   inventory_api_inventory_transfer_transfer_item inventory_api_inventory__inventory_transfer_id_pr_e260949b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_inventory__inventory_transfer_id_pr_e260949b_uniq UNIQUE (inventory_transfer_id, productsizevariant_id);
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_inventory__inventory_transfer_id_pr_e260949b_uniq;
       public            postgres    false    291    291            m           2606    991897 F   inventory_api_inventory_location inventory_api_inventory_location_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_location
    ADD CONSTRAINT inventory_api_inventory_location_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.inventory_api_inventory_location DROP CONSTRAINT inventory_api_inventory_location_pkey;
       public            postgres    false    242            �           2606    991995 O   inventory_api_inventory_transfer inventory_api_inventory_transfer_TO_number_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT "inventory_api_inventory_transfer_TO_number_key" UNIQUE ("TO_number");
 {   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT "inventory_api_inventory_transfer_TO_number_key";
       public            postgres    false    252            �           2606    991993 F   inventory_api_inventory_transfer inventory_api_inventory_transfer_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT inventory_api_inventory_transfer_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT inventory_api_inventory_transfer_pkey;
       public            postgres    false    252            �           2606    1155334 b   inventory_api_inventory_transfer_transfer_item inventory_api_inventory_transfer_transfer_item_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_inventory_transfer_transfer_item_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_inventory_transfer_transfer_item_pkey;
       public            postgres    false    291            q           2606    991908 0   inventory_api_product inventory_api_product_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_product_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_product_pkey;
       public            postgres    false    244            t           2606    991910 4   inventory_api_product inventory_api_product_slug_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_product_slug_key UNIQUE (slug);
 ^   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_product_slug_key;
       public            postgres    false    244            w           2606    991921 @   inventory_api_productcategory inventory_api_productcategory_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.inventory_api_productcategory
    ADD CONSTRAINT inventory_api_productcategory_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.inventory_api_productcategory DROP CONSTRAINT inventory_api_productcategory_pkey;
       public            postgres    false    246            z           2606    991923 D   inventory_api_productcategory inventory_api_productcategory_slug_key 
   CONSTRAINT        ALTER TABLE ONLY public.inventory_api_productcategory
    ADD CONSTRAINT inventory_api_productcategory_slug_key UNIQUE (slug);
 n   ALTER TABLE ONLY public.inventory_api_productcategory DROP CONSTRAINT inventory_api_productcategory_slug_key;
       public            postgres    false    246            �           2606    1180531 B   inventory_api_productpurchased inventory_api_productpurchased_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchased
    ADD CONSTRAINT inventory_api_productpurchased_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.inventory_api_productpurchased DROP CONSTRAINT inventory_api_productpurchased_pkey;
       public            postgres    false    306            �           2606    1180539 J   inventory_api_productpurchaseditem inventory_api_productpurchaseditem_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_productpurchaseditem_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_productpurchaseditem_pkey;
       public            postgres    false    308            �           2606    1180586 P   inventory_api_productpurchasedpayment inventory_api_productpurchasedpayment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment
    ADD CONSTRAINT inventory_api_productpurchasedpayment_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment DROP CONSTRAINT inventory_api_productpurchasedpayment_pkey;
       public            postgres    false    310                       2606    991945 F   inventory_api_productsizevariant inventory_api_productsizevariant_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productsizevariant
    ADD CONSTRAINT inventory_api_productsizevariant_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.inventory_api_productsizevariant DROP CONSTRAINT inventory_api_productsizevariant_pkey;
       public            postgres    false    250            |           2606    991934 2   inventory_api_supplier inventory_api_supplier_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.inventory_api_supplier
    ADD CONSTRAINT inventory_api_supplier_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.inventory_api_supplier DROP CONSTRAINT inventory_api_supplier_pkey;
       public            postgres    false    248            �           2606    992180 "   pos_api_outlet pos_api_outlet_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_pkey;
       public            postgres    false    262            �           2606    992182 &   pos_api_outlet pos_api_outlet_slug_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_slug_key UNIQUE (slug);
 P   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_slug_key;
       public            postgres    false    262            �           2606    992190 &   pos_api_register pos_api_register_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_pkey;
       public            postgres    false    264            �           2606    1180141 J   settings_api_checkoutfieldsettings settings_api_checkoutfieldsettings_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_checkoutfieldsettings
    ADD CONSTRAINT settings_api_checkoutfieldsettings_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.settings_api_checkoutfieldsettings DROP CONSTRAINT settings_api_checkoutfieldsettings_pkey;
       public            postgres    false    296            _           2606    991826 >   settings_api_checkoutsetting settings_api_checkoutsetting_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.settings_api_checkoutsetting
    ADD CONSTRAINT settings_api_checkoutsetting_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.settings_api_checkoutsetting DROP CONSTRAINT settings_api_checkoutsetting_pkey;
       public            postgres    false    233                       2606    1303651 b   settings_api_customuser_operations settings_api_customuser__customuser_id_operation__cdc10257_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_operations
    ADD CONSTRAINT settings_api_customuser__customuser_id_operation__cdc10257_uniq UNIQUE (customuser_id, operation_id);
 �   ALTER TABLE ONLY public.settings_api_customuser_operations DROP CONSTRAINT settings_api_customuser__customuser_id_operation__cdc10257_uniq;
       public            postgres    false    331    331                       2606    1303607 ]   settings_api_customuser_outlet settings_api_customuser__customuser_id_outlet_id_a6e17684_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_outlet
    ADD CONSTRAINT settings_api_customuser__customuser_id_outlet_id_a6e17684_uniq UNIQUE (customuser_id, outlet_id);
 �   ALTER TABLE ONLY public.settings_api_customuser_outlet DROP CONSTRAINT settings_api_customuser__customuser_id_outlet_id_a6e17684_uniq;
       public            postgres    false    327    327                       2606    1303629 Z   settings_api_customuser_roles settings_api_customuser__customuser_id_role_id_c2605b78_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_roles
    ADD CONSTRAINT settings_api_customuser__customuser_id_role_id_c2605b78_uniq UNIQUE (customuser_id, role_id);
 �   ALTER TABLE ONLY public.settings_api_customuser_roles DROP CONSTRAINT settings_api_customuser__customuser_id_role_id_c2605b78_uniq;
       public            postgres    false    329    329            !           2606    1303649 J   settings_api_customuser_operations settings_api_customuser_operations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_operations
    ADD CONSTRAINT settings_api_customuser_operations_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.settings_api_customuser_operations DROP CONSTRAINT settings_api_customuser_operations_pkey;
       public            postgres    false    331                       2606    1303605 B   settings_api_customuser_outlet settings_api_customuser_outlet_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_outlet
    ADD CONSTRAINT settings_api_customuser_outlet_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.settings_api_customuser_outlet DROP CONSTRAINT settings_api_customuser_outlet_pkey;
       public            postgres    false    327                       2606    1303551 4   settings_api_customuser settings_api_customuser_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.settings_api_customuser
    ADD CONSTRAINT settings_api_customuser_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.settings_api_customuser DROP CONSTRAINT settings_api_customuser_pkey;
       public            postgres    false    325                       2606    1303627 @   settings_api_customuser_roles settings_api_customuser_roles_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.settings_api_customuser_roles
    ADD CONSTRAINT settings_api_customuser_roles_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.settings_api_customuser_roles DROP CONSTRAINT settings_api_customuser_roles_pkey;
       public            postgres    false    329            e           2606    1180226 8   settings_api_deliveryarea settings_api_deliveryarea_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.settings_api_deliveryarea
    ADD CONSTRAINT settings_api_deliveryarea_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.settings_api_deliveryarea DROP CONSTRAINT settings_api_deliveryarea_pkey;
       public            postgres    false    238            �           2606    1180162 D   settings_api_freeshippingmethod settings_api_freeshippingmethod_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_freeshippingmethod
    ADD CONSTRAINT settings_api_freeshippingmethod_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.settings_api_freeshippingmethod DROP CONSTRAINT settings_api_freeshippingmethod_pkey;
       public            postgres    false    299            a           2606    991837 <   settings_api_generalsetting settings_api_generalsetting_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.settings_api_generalsetting
    ADD CONSTRAINT settings_api_generalsetting_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.settings_api_generalsetting DROP CONSTRAINT settings_api_generalsetting_pkey;
       public            postgres    false    235                       2606    1295331 2   settings_api_operation settings_api_operation_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.settings_api_operation
    ADD CONSTRAINT settings_api_operation_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.settings_api_operation DROP CONSTRAINT settings_api_operation_pkey;
       public            postgres    false    317            #           2606    1377218 :   settings_api_paymentmethod settings_api_paymentmethod_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.settings_api_paymentmethod
    ADD CONSTRAINT settings_api_paymentmethod_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.settings_api_paymentmethod DROP CONSTRAINT settings_api_paymentmethod_pkey;
       public            postgres    false    333            
           2606    1295355 <   settings_api_permissionrole settings_api_permissionrole_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.settings_api_permissionrole
    ADD CONSTRAINT settings_api_permissionrole_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.settings_api_permissionrole DROP CONSTRAINT settings_api_permissionrole_pkey;
       public            postgres    false    323            �           2606    1262527 @   settings_api_regeionaldetails settings_api_regeionaldetails_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.settings_api_regeionaldetails
    ADD CONSTRAINT settings_api_regeionaldetails_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.settings_api_regeionaldetails DROP CONSTRAINT settings_api_regeionaldetails_pkey;
       public            postgres    false    314                       2606    1295339 0   settings_api_resource settings_api_resource_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.settings_api_resource
    ADD CONSTRAINT settings_api_resource_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.settings_api_resource DROP CONSTRAINT settings_api_resource_pkey;
       public            postgres    false    319                       2606    1295347 (   settings_api_role settings_api_role_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.settings_api_role
    ADD CONSTRAINT settings_api_role_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.settings_api_role DROP CONSTRAINT settings_api_role_pkey;
       public            postgres    false    321            �           2606    1180170 L   settings_api_standardshippingmethod settings_api_standardshippingmethod_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_standardshippingmethod
    ADD CONSTRAINT settings_api_standardshippingmethod_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.settings_api_standardshippingmethod DROP CONSTRAINT settings_api_standardshippingmethod_pkey;
       public            postgres    false    301            �           2606    1180178 R   settings_api_storepickupshippingmethod settings_api_storepickupshippingmethod_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_storepickupshippingmethod
    ADD CONSTRAINT settings_api_storepickupshippingmethod_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.settings_api_storepickupshippingmethod DROP CONSTRAINT settings_api_storepickupshippingmethod_pkey;
       public            postgres    false    303            c           2606    991856 .   settings_api_taxrate settings_api_taxrate_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.settings_api_taxrate
    ADD CONSTRAINT settings_api_taxrate_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.settings_api_taxrate DROP CONSTRAINT settings_api_taxrate_pkey;
       public            postgres    false    237            �           2606    992370 6   superadmin_api_adminuser superadmin_api_adminuser_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.superadmin_api_adminuser
    ADD CONSTRAINT superadmin_api_adminuser_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.superadmin_api_adminuser DROP CONSTRAINT superadmin_api_adminuser_pkey;
       public            postgres    false    275            9           2606    991662 0   user_auth_user_groups user_auth_user_groups_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_pkey;
       public            postgres    false    213            <           2606    991673 J   user_auth_user_groups user_auth_user_groups_user_id_group_id_6887c85a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_user_id_group_id_6887c85a_uniq UNIQUE (user_id, group_id);
 t   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_user_id_group_id_6887c85a_uniq;
       public            postgres    false    213    213            3           2606    991652 "   user_auth_user user_auth_user_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.user_auth_user
    ADD CONSTRAINT user_auth_user_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.user_auth_user DROP CONSTRAINT user_auth_user_pkey;
       public            postgres    false    211            >           2606    991687 \   user_auth_user_user_permissions user_auth_user_user_perm_user_id_permission_id_4df7833e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user_perm_user_id_permission_id_4df7833e_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user_perm_user_id_permission_id_4df7833e_uniq;
       public            postgres    false    215    215            A           2606    991670 D   user_auth_user_user_permissions user_auth_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user_permissions_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user_permissions_pkey;
       public            postgres    false    215            6           2606    991654 *   user_auth_user user_auth_user_username_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.user_auth_user
    ADD CONSTRAINT user_auth_user_username_key UNIQUE (username);
 T   ALTER TABLE ONLY public.user_auth_user DROP CONSTRAINT user_auth_user_username_key;
       public            postgres    false    211            I           1259    991754 $   app_api_promocode_code_a87ba6c3_like    INDEX     v   CREATE INDEX app_api_promocode_code_a87ba6c3_like ON public.app_api_promocode USING btree (code varchar_pattern_ops);
 8   DROP INDEX public.app_api_promocode_code_a87ba6c3_like;
       public            postgres    false    221            �           1259    1114405 .   app_api_promocode_products_product_id_eb3006a7    INDEX     z   CREATE INDEX app_api_promocode_products_product_id_eb3006a7 ON public.app_api_promocode_product USING btree (product_id);
 B   DROP INDEX public.app_api_promocode_products_product_id_eb3006a7;
       public            postgres    false    289            �           1259    1114404 0   app_api_promocode_products_promocode_id_0a5f44a5    INDEX     ~   CREATE INDEX app_api_promocode_products_promocode_id_0a5f44a5 ON public.app_api_promocode_product USING btree (promocode_id);
 D   DROP INDEX public.app_api_promocode_products_promocode_id_0a5f44a5;
       public            postgres    false    289            '           1259    991641    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ,           1259    991637 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            /           1259    991638 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            "           1259    991623 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            V           1259    991814 #   company_api_news_slug_e3340262_like    INDEX     t   CREATE INDEX company_api_news_slug_e3340262_like ON public.company_api_news USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.company_api_news_slug_e3340262_like;
       public            postgres    false    229            [           1259    991815 -   company_api_termscondition_slug_7af59f12_like    INDEX     �   CREATE INDEX company_api_termscondition_slug_7af59f12_like ON public.company_api_termscondition USING btree (slug varchar_pattern_ops);
 A   DROP INDEX public.company_api_termscondition_slug_7af59f12_like;
       public            postgres    false    231            �           1259    992348 5   customer_order_api_notification_user_from_id_13ad845e    INDEX     �   CREATE INDEX customer_order_api_notification_user_from_id_13ad845e ON public.customer_order_api_notification USING btree (user_from_id);
 I   DROP INDEX public.customer_order_api_notification_user_from_id_13ad845e;
       public            postgres    false    272            �           1259    992349 3   customer_order_api_notification_user_to_id_70196d07    INDEX     �   CREATE INDEX customer_order_api_notification_user_to_id_70196d07 ON public.customer_order_api_notification USING btree (user_to_id);
 G   DROP INDEX public.customer_order_api_notification_user_to_id_70196d07;
       public            postgres    false    272            �           1259    992303 -   customer_order_api_order_customer_id_63ce65df    INDEX     y   CREATE INDEX customer_order_api_order_customer_id_63ce65df ON public.customer_order_api_order USING btree (customer_id);
 A   DROP INDEX public.customer_order_api_order_customer_id_63ce65df;
       public            postgres    false    266            �           1259    992304 5   customer_order_api_order_delivery_address_id_caf12fc3    INDEX     �   CREATE INDEX customer_order_api_order_delivery_address_id_caf12fc3 ON public.customer_order_api_order USING btree (delivery_address_id);
 I   DROP INDEX public.customer_order_api_order_delivery_address_id_caf12fc3;
       public            postgres    false    266            �           1259    1180237 2   customer_order_api_order_delivery_area_id_e1c48ff8    INDEX     �   CREATE INDEX customer_order_api_order_delivery_area_id_e1c48ff8 ON public.customer_order_api_order USING btree (delivery_area_id);
 F   DROP INDEX public.customer_order_api_order_delivery_area_id_e1c48ff8;
       public            postgres    false    266            �           1259    992305 +   customer_order_api_order_outlet_id_5bda43f3    INDEX     u   CREATE INDEX customer_order_api_order_outlet_id_5bda43f3 ON public.customer_order_api_order USING btree (outlet_id);
 ?   DROP INDEX public.customer_order_api_order_outlet_id_5bda43f3;
       public            postgres    false    266            �           1259    992336 /   customer_order_api_order_promo_code_id_2fbc7ba3    INDEX     }   CREATE INDEX customer_order_api_order_promo_code_id_2fbc7ba3 ON public.customer_order_api_order USING btree (promo_code_id);
 C   DROP INDEX public.customer_order_api_order_promo_code_id_2fbc7ba3;
       public            postgres    false    266            �           1259    1048834 -   customer_order_api_order_register_id_8221cf57    INDEX     y   CREATE INDEX customer_order_api_order_register_id_8221cf57 ON public.customer_order_api_order USING btree (register_id);
 A   DROP INDEX public.customer_order_api_order_register_id_8221cf57;
       public            postgres    false    266            �           1259    992337 -   customer_order_api_order_supplier_id_54364318    INDEX     y   CREATE INDEX customer_order_api_order_supplier_id_54364318 ON public.customer_order_api_order USING btree (supplier_id);
 A   DROP INDEX public.customer_order_api_order_supplier_id_54364318;
       public            postgres    false    266            �           1259    992333 .   customer_order_api_orderitem_order_id_5691a1fa    INDEX     {   CREATE INDEX customer_order_api_orderitem_order_id_5691a1fa ON public.customer_order_api_orderitem USING btree (order_id);
 B   DROP INDEX public.customer_order_api_orderitem_order_id_5691a1fa;
       public            postgres    false    270            �           1259    992334 0   customer_order_api_orderitem_product_id_44ffc334    INDEX        CREATE INDEX customer_order_api_orderitem_product_id_44ffc334 ON public.customer_order_api_orderitem USING btree (product_id);
 D   DROP INDEX public.customer_order_api_orderitem_product_id_44ffc334;
       public            postgres    false    270            �           1259    1048835 -   customer_order_api_orderitem_size_id_d99d89ee    INDEX     y   CREATE INDEX customer_order_api_orderitem_size_id_d99d89ee ON public.customer_order_api_orderitem USING btree (size_id);
 A   DROP INDEX public.customer_order_api_orderitem_size_id_d99d89ee;
       public            postgres    false    270            �           1259    992321 7   customer_order_api_transferorder_order_from_id_9d61289c    INDEX     �   CREATE INDEX customer_order_api_transferorder_order_from_id_9d61289c ON public.customer_order_api_transferorder USING btree (order_from_id);
 K   DROP INDEX public.customer_order_api_transferorder_order_from_id_9d61289c;
       public            postgres    false    268            �           1259    992322 5   customer_order_api_transferorder_order_to_id_0c74a8df    INDEX     �   CREATE INDEX customer_order_api_transferorder_order_to_id_0c74a8df ON public.customer_order_api_transferorder USING btree (order_to_id);
 I   DROP INDEX public.customer_order_api_transferorder_order_to_id_0c74a8df;
       public            postgres    false    268            �           1259    992169 1   customer_profile_api_address_customer_id_045d07fa    INDEX     �   CREATE INDEX customer_profile_api_address_customer_id_045d07fa ON public.customer_profile_api_address USING btree (customer_id);
 E   DROP INDEX public.customer_profile_api_address_customer_id_045d07fa;
       public            postgres    false    260            �           1259    992162 4   customer_profile_api_custo_customergroup_id_c981a60c    INDEX     �   CREATE INDEX customer_profile_api_custo_customergroup_id_c981a60c ON public.customer_profile_api_customergroup_customer USING btree (customergroup_id);
 H   DROP INDEX public.customer_profile_api_custo_customergroup_id_c981a60c;
       public            postgres    false    258            �           1259    992163 6   customer_profile_api_custo_customerprofile_id_ecfc1af3    INDEX     �   CREATE INDEX customer_profile_api_custo_customerprofile_id_ecfc1af3 ON public.customer_profile_api_customergroup_customer USING btree (customerprofile_id);
 J   DROP INDEX public.customer_profile_api_custo_customerprofile_id_ecfc1af3;
       public            postgres    false    258            �           1259    992148 8   customer_profile_api_customerprofile_email_c360b31c_like    INDEX     �   CREATE INDEX customer_profile_api_customerprofile_email_c360b31c_like ON public.customer_profile_api_customerprofile USING btree (email varchar_pattern_ops);
 L   DROP INDEX public.customer_profile_api_customerprofile_email_c360b31c_like;
       public            postgres    false    254            �           1259    992149 ;   customer_profile_api_customerprofile_username_fa6dc1f9_like    INDEX     �   CREATE INDEX customer_profile_api_customerprofile_username_fa6dc1f9_like ON public.customer_profile_api_customerprofile USING btree (username varchar_pattern_ops);
 O   DROP INDEX public.customer_profile_api_customerprofile_username_fa6dc1f9_like;
       public            postgres    false    254            C           1259    991722 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            F           1259    991723 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            �           1259    992359 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    273            �           1259    992358 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    273            i           1259    992004 &   inventory_api_brand_slug_5fda00de_like    INDEX     z   CREATE INDEX inventory_api_brand_slug_5fda00de_like ON public.inventory_api_brand USING btree (slug varchar_pattern_ops);
 :   DROP INDEX public.inventory_api_brand_slug_5fda00de_like;
       public            postgres    false    240            �           1259    1180046 .   inventory_api_customermessage_name_id_ee946ae7    INDEX     {   CREATE INDEX inventory_api_customermessage_name_id_ee946ae7 ON public.inventory_api_customermessage USING btree (name_id);
 B   DROP INDEX public.inventory_api_customermessage_name_id_ee946ae7;
       public            postgres    false    293            �           1259    1155347 9   inventory_api_inventory_tr_inventory_transfer_id_11ca4d6e    INDEX     �   CREATE INDEX inventory_api_inventory_tr_inventory_transfer_id_11ca4d6e ON public.inventory_api_inventory_transfer_transfer_item USING btree (inventory_transfer_id);
 M   DROP INDEX public.inventory_api_inventory_tr_inventory_transfer_id_11ca4d6e;
       public            postgres    false    291            �           1259    1155348 .   inventory_api_inventory_tr_product_id_f7dae728    INDEX     �   CREATE INDEX inventory_api_inventory_tr_product_id_f7dae728 ON public.inventory_api_inventory_transfer_transfer_item USING btree (productsizevariant_id);
 B   DROP INDEX public.inventory_api_inventory_tr_product_id_f7dae728;
       public            postgres    false    291            �           1259    992083 8   inventory_api_inventory_transfer_TO_number_7ba20f92_like    INDEX     �   CREATE INDEX "inventory_api_inventory_transfer_TO_number_7ba20f92_like" ON public.inventory_api_inventory_transfer USING btree ("TO_number" varchar_pattern_ops);
 N   DROP INDEX public."inventory_api_inventory_transfer_TO_number_7ba20f92_like";
       public            postgres    false    252            �           1259    992084 ;   inventory_api_inventory_transfer_from_inventory_id_83b618f2    INDEX     �   CREATE INDEX inventory_api_inventory_transfer_from_inventory_id_83b618f2 ON public.inventory_api_inventory_transfer USING btree (from_inventory_id);
 O   DROP INDEX public.inventory_api_inventory_transfer_from_inventory_id_83b618f2;
       public            postgres    false    252            �           1259    992085 9   inventory_api_inventory_transfer_to_inventory_id_e474aaf6    INDEX     �   CREATE INDEX inventory_api_inventory_transfer_to_inventory_id_e474aaf6 ON public.inventory_api_inventory_transfer USING btree (to_inventory_id);
 M   DROP INDEX public.inventory_api_inventory_transfer_to_inventory_id_e474aaf6;
       public            postgres    false    252            n           1259    992011 '   inventory_api_product_brand_id_ecf01728    INDEX     m   CREATE INDEX inventory_api_product_brand_id_ecf01728 ON public.inventory_api_product USING btree (brand_id);
 ;   DROP INDEX public.inventory_api_product_brand_id_ecf01728;
       public            postgres    false    244            o           1259    992052 *   inventory_api_product_category_id_97d8fd58    INDEX     s   CREATE INDEX inventory_api_product_category_id_97d8fd58 ON public.inventory_api_product USING btree (category_id);
 >   DROP INDEX public.inventory_api_product_category_id_97d8fd58;
       public            postgres    false    244            r           1259    992010 (   inventory_api_product_slug_f995538e_like    INDEX     ~   CREATE INDEX inventory_api_product_slug_f995538e_like ON public.inventory_api_product USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.inventory_api_product_slug_f995538e_like;
       public            postgres    false    244            u           1259    992053 %   inventory_api_product_tax_id_7a84feb6    INDEX     i   CREATE INDEX inventory_api_product_tax_id_7a84feb6 ON public.inventory_api_product USING btree (tax_id);
 9   DROP INDEX public.inventory_api_product_tax_id_7a84feb6;
       public            postgres    false    244            x           1259    992012 0   inventory_api_productcategory_slug_124b8bbd_like    INDEX     �   CREATE INDEX inventory_api_productcategory_slug_124b8bbd_like ON public.inventory_api_productcategory USING btree (slug varchar_pattern_ops);
 D   DROP INDEX public.inventory_api_productcategory_slug_124b8bbd_like;
       public            postgres    false    246            �           1259    1180571 9   inventory_api_productpurch_inventory_location_id_5b3c6e6c    INDEX     �   CREATE INDEX inventory_api_productpurch_inventory_location_id_5b3c6e6c ON public.inventory_api_productpurchaseditem USING btree (inventory_location_id);
 M   DROP INDEX public.inventory_api_productpurch_inventory_location_id_5b3c6e6c;
       public            postgres    false    308            �           1259    1180573 8   inventory_api_productpurch_purchased_product_id_82894f09    INDEX     �   CREATE INDEX inventory_api_productpurch_purchased_product_id_82894f09 ON public.inventory_api_productpurchaseditem USING btree (purchased_product_id);
 L   DROP INDEX public.inventory_api_productpurch_purchased_product_id_82894f09;
       public            postgres    false    308            �           1259    1180545 3   inventory_api_productpurchased_supplier_id_9710dd25    INDEX     �   CREATE INDEX inventory_api_productpurchased_supplier_id_9710dd25 ON public.inventory_api_productpurchased USING btree (supplier_id);
 G   DROP INDEX public.inventory_api_productpurchased_supplier_id_9710dd25;
       public            postgres    false    306            �           1259    1180572 <   inventory_api_productpurchaseditem_purchase_item_id_306c1984    INDEX     �   CREATE INDEX inventory_api_productpurchaseditem_purchase_item_id_306c1984 ON public.inventory_api_productpurchaseditem USING btree (purchase_item_id);
 P   DROP INDEX public.inventory_api_productpurchaseditem_purchase_item_id_306c1984;
       public            postgres    false    308            �           1259    1180574 =   inventory_api_productpurchaseditem_purchased_size_id_0eae197c    INDEX     �   CREATE INDEX inventory_api_productpurchaseditem_purchased_size_id_0eae197c ON public.inventory_api_productpurchaseditem USING btree (purchased_size_id);
 Q   DROP INDEX public.inventory_api_productpurchaseditem_purchased_size_id_0eae197c;
       public            postgres    false    308            �           1259    1180575 2   inventory_api_productpurchaseditem_tax_id_484f1da8    INDEX     �   CREATE INDEX inventory_api_productpurchaseditem_tax_id_484f1da8 ON public.inventory_api_productpurchaseditem USING btree (tax_id);
 F   DROP INDEX public.inventory_api_productpurchaseditem_tax_id_484f1da8;
       public            postgres    false    308            �           1259    1180592 ;   inventory_api_productpurchasedpayment_purchased_id_74bbd7b8    INDEX     �   CREATE INDEX inventory_api_productpurchasedpayment_purchased_id_74bbd7b8 ON public.inventory_api_productpurchasedpayment USING btree (purchased_id);
 O   DROP INDEX public.inventory_api_productpurchasedpayment_purchased_id_74bbd7b8;
       public            postgres    false    310            �           1259    992024 4   inventory_api_productsizevariant_product_id_36fc9be0    INDEX     �   CREATE INDEX inventory_api_productsizevariant_product_id_36fc9be0 ON public.inventory_api_productsizevariant USING btree (product_id);
 H   DROP INDEX public.inventory_api_productsizevariant_product_id_36fc9be0;
       public            postgres    false    250            }           1259    992018 &   inventory_api_supplier_tax_id_00acd6a4    INDEX     k   CREATE INDEX inventory_api_supplier_tax_id_00acd6a4 ON public.inventory_api_supplier USING btree (tax_id);
 :   DROP INDEX public.inventory_api_supplier_tax_id_00acd6a4;
       public            postgres    false    248            �           1259    992202 -   pos_api_outlet_inventory_location_id_e6e43042    INDEX     y   CREATE INDEX pos_api_outlet_inventory_location_id_e6e43042 ON public.pos_api_outlet USING btree (inventory_location_id);
 A   DROP INDEX public.pos_api_outlet_inventory_location_id_e6e43042;
       public            postgres    false    262            �           1259    992201 !   pos_api_outlet_slug_05059a9b_like    INDEX     p   CREATE INDEX pos_api_outlet_slug_05059a9b_like ON public.pos_api_outlet USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.pos_api_outlet_slug_05059a9b_like;
       public            postgres    false    262            �           1259    992203    pos_api_outlet_tax_id_c77400bb    INDEX     [   CREATE INDEX pos_api_outlet_tax_id_c77400bb ON public.pos_api_outlet USING btree (tax_id);
 2   DROP INDEX public.pos_api_outlet_tax_id_c77400bb;
       public            postgres    false    262            �           1259    992219 &   pos_api_register_closed_by_id_af4c20bd    INDEX     k   CREATE INDEX pos_api_register_closed_by_id_af4c20bd ON public.pos_api_register USING btree (closed_by_id);
 :   DROP INDEX public.pos_api_register_closed_by_id_af4c20bd;
       public            postgres    false    264            �           1259    992220 &   pos_api_register_opened_by_id_fae461e8    INDEX     k   CREATE INDEX pos_api_register_opened_by_id_fae461e8 ON public.pos_api_register USING btree (opened_by_id);
 :   DROP INDEX public.pos_api_register_opened_by_id_fae461e8;
       public            postgres    false    264            �           1259    992221 #   pos_api_register_outlet_id_cb0a7d9b    INDEX     e   CREATE INDEX pos_api_register_outlet_id_cb0a7d9b ON public.pos_api_register USING btree (outlet_id);
 7   DROP INDEX public.pos_api_register_outlet_id_cb0a7d9b;
       public            postgres    false    264                       1259    1303662 9   settings_api_customuser_operations_customuser_id_58c1944c    INDEX     �   CREATE INDEX settings_api_customuser_operations_customuser_id_58c1944c ON public.settings_api_customuser_operations USING btree (customuser_id);
 M   DROP INDEX public.settings_api_customuser_operations_customuser_id_58c1944c;
       public            postgres    false    331                       1259    1303663 8   settings_api_customuser_operations_operation_id_744043ec    INDEX     �   CREATE INDEX settings_api_customuser_operations_operation_id_744043ec ON public.settings_api_customuser_operations USING btree (operation_id);
 L   DROP INDEX public.settings_api_customuser_operations_operation_id_744043ec;
       public            postgres    false    331                       1259    1303618 5   settings_api_customuser_outlet_customuser_id_8a8a3323    INDEX     �   CREATE INDEX settings_api_customuser_outlet_customuser_id_8a8a3323 ON public.settings_api_customuser_outlet USING btree (customuser_id);
 I   DROP INDEX public.settings_api_customuser_outlet_customuser_id_8a8a3323;
       public            postgres    false    327                       1259    1303619 1   settings_api_customuser_outlet_outlet_id_76e30f7c    INDEX     �   CREATE INDEX settings_api_customuser_outlet_outlet_id_76e30f7c ON public.settings_api_customuser_outlet USING btree (outlet_id);
 E   DROP INDEX public.settings_api_customuser_outlet_outlet_id_76e30f7c;
       public            postgres    false    327                       1259    1303640 4   settings_api_customuser_roles_customuser_id_3d8613b7    INDEX     �   CREATE INDEX settings_api_customuser_roles_customuser_id_3d8613b7 ON public.settings_api_customuser_roles USING btree (customuser_id);
 H   DROP INDEX public.settings_api_customuser_roles_customuser_id_3d8613b7;
       public            postgres    false    329                       1259    1303641 .   settings_api_customuser_roles_role_id_fc491733    INDEX     {   CREATE INDEX settings_api_customuser_roles_role_id_fc491733 ON public.settings_api_customuser_roles USING btree (role_id);
 B   DROP INDEX public.settings_api_customuser_roles_role_id_fc491733;
       public            postgres    false    329                       1259    1303577 (   settings_api_customuser_user_id_a82ec8b6    INDEX     o   CREATE INDEX settings_api_customuser_user_id_a82ec8b6 ON public.settings_api_customuser USING btree (user_id);
 <   DROP INDEX public.settings_api_customuser_user_id_a82ec8b6;
       public            postgres    false    325            f           1259    1188816 5   settings_api_deliveryarea_shipping_method_id_7034b6e0    INDEX     �   CREATE INDEX settings_api_deliveryarea_shipping_method_id_7034b6e0 ON public.settings_api_deliveryarea USING btree (shipping_method_id);
 I   DROP INDEX public.settings_api_deliveryarea_shipping_method_id_7034b6e0;
       public            postgres    false    238                       1259    1295379 +   settings_api_operation_resource_id_083604c3    INDEX     u   CREATE INDEX settings_api_operation_resource_id_083604c3 ON public.settings_api_operation USING btree (resource_id);
 ?   DROP INDEX public.settings_api_operation_resource_id_083604c3;
       public            postgres    false    317                       1259    1303491 1   settings_api_permissionrole_operation_id_55abec82    INDEX     �   CREATE INDEX settings_api_permissionrole_operation_id_55abec82 ON public.settings_api_permissionrole USING btree (operation_id);
 E   DROP INDEX public.settings_api_permissionrole_operation_id_55abec82;
       public            postgres    false    323                       1259    1295377 ,   settings_api_permissionrole_role_id_faf47404    INDEX     w   CREATE INDEX settings_api_permissionrole_role_id_faf47404 ON public.settings_api_permissionrole USING btree (role_id);
 @   DROP INDEX public.settings_api_permissionrole_role_id_faf47404;
       public            postgres    false    323                       1259    1295378 ,   settings_api_permissionrole_user_id_d5316e5e    INDEX     w   CREATE INDEX settings_api_permissionrole_user_id_d5316e5e ON public.settings_api_permissionrole USING btree (user_id);
 @   DROP INDEX public.settings_api_permissionrole_user_id_d5316e5e;
       public            postgres    false    323            �           1259    1262533 7   settings_api_regeionaldetails_delivery_area_id_51615c76    INDEX     �   CREATE INDEX settings_api_regeionaldetails_delivery_area_id_51615c76 ON public.settings_api_regeionaldetails USING btree (delivery_area_id);
 K   DROP INDEX public.settings_api_regeionaldetails_delivery_area_id_51615c76;
       public            postgres    false    314            �           1259    992376 )   superadmin_api_adminuser_user_id_7a86dc82    INDEX     q   CREATE INDEX superadmin_api_adminuser_user_id_7a86dc82 ON public.superadmin_api_adminuser USING btree (user_id);
 =   DROP INDEX public.superadmin_api_adminuser_user_id_7a86dc82;
       public            postgres    false    275            7           1259    991685 '   user_auth_user_groups_group_id_165f3b9d    INDEX     m   CREATE INDEX user_auth_user_groups_group_id_165f3b9d ON public.user_auth_user_groups USING btree (group_id);
 ;   DROP INDEX public.user_auth_user_groups_group_id_165f3b9d;
       public            postgres    false    213            :           1259    991684 &   user_auth_user_groups_user_id_e339ec14    INDEX     k   CREATE INDEX user_auth_user_groups_user_id_e339ec14 ON public.user_auth_user_groups USING btree (user_id);
 :   DROP INDEX public.user_auth_user_groups_user_id_e339ec14;
       public            postgres    false    213            ?           1259    991699 6   user_auth_user_user_permissions_permission_id_2c602bd2    INDEX     �   CREATE INDEX user_auth_user_user_permissions_permission_id_2c602bd2 ON public.user_auth_user_user_permissions USING btree (permission_id);
 J   DROP INDEX public.user_auth_user_user_permissions_permission_id_2c602bd2;
       public            postgres    false    215            B           1259    991698 0   user_auth_user_user_permissions_user_id_31fb400e    INDEX        CREATE INDEX user_auth_user_user_permissions_user_id_31fb400e ON public.user_auth_user_user_permissions USING btree (user_id);
 D   DROP INDEX public.user_auth_user_user_permissions_user_id_31fb400e;
       public            postgres    false    215            4           1259    991671 %   user_auth_user_username_59f710c9_like    INDEX     x   CREATE INDEX user_auth_user_username_59f710c9_like ON public.user_auth_user USING btree (username varchar_pattern_ops);
 9   DROP INDEX public.user_auth_user_username_59f710c9_like;
       public            postgres    false    211            O           2606    1114399 O   app_api_promocode_product app_api_promocode_pr_product_id_eb3006a7_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_product
    ADD CONSTRAINT app_api_promocode_pr_product_id_eb3006a7_fk_inventory FOREIGN KEY (product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.app_api_promocode_product DROP CONSTRAINT app_api_promocode_pr_product_id_eb3006a7_fk_inventory;
       public          postgres    false    289    244    3441            N           2606    1114394 Q   app_api_promocode_product app_api_promocode_pr_promocode_id_0a5f44a5_fk_app_api_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_product
    ADD CONSTRAINT app_api_promocode_pr_promocode_id_0a5f44a5_fk_app_api_p FOREIGN KEY (promocode_id) REFERENCES public.app_api_promocode(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.app_api_promocode_product DROP CONSTRAINT app_api_promocode_pr_promocode_id_0a5f44a5_fk_app_api_p;
       public          postgres    false    289    3405    221            &           2606    991632 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    209    205    3366            %           2606    991627 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3371    209    207            $           2606    991618 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    203    3361            K           2606    992338 W   customer_order_api_notification customer_order_api_n_user_from_id_13ad845e_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_notification
    ADD CONSTRAINT customer_order_api_n_user_from_id_13ad845e_fk_user_auth FOREIGN KEY (user_from_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_notification DROP CONSTRAINT customer_order_api_n_user_from_id_13ad845e_fk_user_auth;
       public          postgres    false    211    3379    272            L           2606    992343 U   customer_order_api_notification customer_order_api_n_user_to_id_70196d07_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_notification
    ADD CONSTRAINT customer_order_api_n_user_to_id_70196d07_fk_user_auth FOREIGN KEY (user_to_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.customer_order_api_notification DROP CONSTRAINT customer_order_api_n_user_to_id_70196d07_fk_user_auth;
       public          postgres    false    272    3379    211            @           2606    992288 O   customer_order_api_order customer_order_api_o_customer_id_63ce65df_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_customer_id_63ce65df_fk_customer_ FOREIGN KEY (customer_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_customer_id_63ce65df_fk_customer_;
       public          postgres    false    3468    266    254            A           2606    992293 W   customer_order_api_order customer_order_api_o_delivery_address_id_caf12fc3_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_delivery_address_id_caf12fc3_fk_customer_ FOREIGN KEY (delivery_address_id) REFERENCES public.customer_profile_api_address(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_delivery_address_id_caf12fc3_fk_customer_;
       public          postgres    false    266    260    3484            J           2606    1180017 P   customer_order_api_orderitem customer_order_api_o_order_id_5691a1fa_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_o_order_id_5691a1fa_fk_customer_ FOREIGN KEY (order_id) REFERENCES public.customer_order_api_order(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_o_order_id_5691a1fa_fk_customer_;
       public          postgres    false    266    270    3502            B           2606    992298 M   customer_order_api_order customer_order_api_o_outlet_id_5bda43f3_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_outlet_id_5bda43f3_fk_pos_api_o FOREIGN KEY (outlet_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_outlet_id_5bda43f3_fk_pos_api_o;
       public          postgres    false    266    3487    262            H           2606    992328 R   customer_order_api_orderitem customer_order_api_o_product_id_44ffc334_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_o_product_id_44ffc334_fk_inventory FOREIGN KEY (product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_o_product_id_44ffc334_fk_inventory;
       public          postgres    false    270    3441    244            >           2606    992267 Q   customer_order_api_order customer_order_api_o_promo_code_id_2fbc7ba3_fk_app_api_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_promo_code_id_2fbc7ba3_fk_app_api_p FOREIGN KEY (promo_code_id) REFERENCES public.app_api_promocode(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_promo_code_id_2fbc7ba3_fk_app_api_p;
       public          postgres    false    221    3405    266            C           2606    1048821 O   customer_order_api_order customer_order_api_o_register_id_8221cf57_fk_pos_api_r    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_register_id_8221cf57_fk_pos_api_r FOREIGN KEY (register_id) REFERENCES public.pos_api_register(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_register_id_8221cf57_fk_pos_api_r;
       public          postgres    false    3496    266    264            I           2606    1048826 O   customer_order_api_orderitem customer_order_api_o_size_id_d99d89ee_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_o_size_id_d99d89ee_fk_inventory FOREIGN KEY (size_id) REFERENCES public.inventory_api_productsizevariant(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_o_size_id_d99d89ee_fk_inventory;
       public          postgres    false    270    250    3455            ?           2606    992272 O   customer_order_api_order customer_order_api_o_supplier_id_54364318_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_supplier_id_54364318_fk_inventory FOREIGN KEY (supplier_id) REFERENCES public.inventory_api_supplier(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_supplier_id_54364318_fk_inventory;
       public          postgres    false    248    266    3452            D           2606    1180253 N   customer_order_api_order customer_order_api_order_delivery_area_id_e1c48ff8_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_order_delivery_area_id_e1c48ff8_fk FOREIGN KEY (delivery_area_id) REFERENCES public.settings_api_deliveryarea(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_order_delivery_area_id_e1c48ff8_fk;
       public          postgres    false    266    238    3429            F           2606    992311 Y   customer_order_api_transferorder customer_order_api_t_order_from_id_9d61289c_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_t_order_from_id_9d61289c_fk_pos_api_o FOREIGN KEY (order_from_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_t_order_from_id_9d61289c_fk_pos_api_o;
       public          postgres    false    3487    268    262            E           2606    992306 T   customer_order_api_transferorder customer_order_api_t_order_id_98171d05_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_t_order_id_98171d05_fk_customer_ FOREIGN KEY (order_id) REFERENCES public.customer_order_api_order(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_t_order_id_98171d05_fk_customer_;
       public          postgres    false    3502    268    266            G           2606    992316 W   customer_order_api_transferorder customer_order_api_t_order_to_id_0c74a8df_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_t_order_to_id_0c74a8df_fk_pos_api_o FOREIGN KEY (order_to_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_t_order_to_id_0c74a8df_fk_pos_api_o;
       public          postgres    false    262    268    3487            8           2606    992164 S   customer_profile_api_address customer_profile_api_customer_id_045d07fa_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_address
    ADD CONSTRAINT customer_profile_api_customer_id_045d07fa_fk_customer_ FOREIGN KEY (customer_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.customer_profile_api_address DROP CONSTRAINT customer_profile_api_customer_id_045d07fa_fk_customer_;
       public          postgres    false    260    3468    254            6           2606    992152 g   customer_profile_api_customergroup_customer customer_profile_api_customergroup_id_c981a60c_fk_customer_    FK CONSTRAINT     
  ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_customergroup_id_c981a60c_fk_customer_ FOREIGN KEY (customergroup_id) REFERENCES public.customer_profile_api_customergroup(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_customergroup_id_c981a60c_fk_customer_;
       public          postgres    false    256    3475    258            7           2606    992157 i   customer_profile_api_customergroup_customer customer_profile_api_customerprofile_id_ecfc1af3_fk_customer_    FK CONSTRAINT       ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_customerprofile_id_ecfc1af3_fk_customer_ FOREIGN KEY (customerprofile_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_customerprofile_id_ecfc1af3_fk_customer_;
       public          postgres    false    254    3468    258            5           2606    992143 W   customer_profile_api_customerprofile customer_profile_api_user_id_e2c23c4c_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_user_id_e2c23c4c_fk_user_auth FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_user_id_e2c23c4c_fk_user_auth;
       public          postgres    false    254    3379    211            +           2606    991712 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3361    217    203            ,           2606    991717 G   django_admin_log django_admin_log_user_id_c564eba6_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_auth_user_id;
       public          postgres    false    211    3379    217            R           2606    1180041 P   inventory_api_customermessage inventory_api_custom_name_id_ee946ae7_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_customermessage
    ADD CONSTRAINT inventory_api_custom_name_id_ee946ae7_fk_customer_ FOREIGN KEY (name_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.inventory_api_customermessage DROP CONSTRAINT inventory_api_custom_name_id_ee946ae7_fk_customer_;
       public          postgres    false    3468    293    254            3           2606    992068 ]   inventory_api_inventory_transfer inventory_api_invent_from_inventory_id_83b618f2_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT inventory_api_invent_from_inventory_id_83b618f2_fk_inventory FOREIGN KEY (from_inventory_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT inventory_api_invent_from_inventory_id_83b618f2_fk_inventory;
       public          postgres    false    3437    252    242            P           2606    1155337 n   inventory_api_inventory_transfer_transfer_item inventory_api_invent_inventory_transfer_i_11ca4d6e_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_invent_inventory_transfer_i_11ca4d6e_fk_inventory FOREIGN KEY (inventory_transfer_id) REFERENCES public.inventory_api_inventory_transfer(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_invent_inventory_transfer_i_11ca4d6e_fk_inventory;
       public          postgres    false    252    3462    291            Q           2606    1179961 n   inventory_api_inventory_transfer_transfer_item inventory_api_invent_productsizevariant_i_43e8a202_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_invent_productsizevariant_i_43e8a202_fk_inventory FOREIGN KEY (productsizevariant_id) REFERENCES public.inventory_api_productsizevariant(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_invent_productsizevariant_i_43e8a202_fk_inventory;
       public          postgres    false    250    3455    291            4           2606    992073 [   inventory_api_inventory_transfer inventory_api_invent_to_inventory_id_e474aaf6_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT inventory_api_invent_to_inventory_id_e474aaf6_fk_inventory FOREIGN KEY (to_inventory_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT inventory_api_invent_to_inventory_id_e474aaf6_fk_inventory;
       public          postgres    false    252    242    3437            0           2606    992005 I   inventory_api_product inventory_api_produc_brand_id_ecf01728_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_produc_brand_id_ecf01728_fk_inventory FOREIGN KEY (brand_id) REFERENCES public.inventory_api_brand(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_produc_brand_id_ecf01728_fk_inventory;
       public          postgres    false    244    240    3432            .           2606    991968 L   inventory_api_product inventory_api_produc_category_id_97d8fd58_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_produc_category_id_97d8fd58_fk_inventory FOREIGN KEY (category_id) REFERENCES public.inventory_api_productcategory(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_produc_category_id_97d8fd58_fk_inventory;
       public          postgres    false    244    3447    246            T           2606    1180546 b   inventory_api_productpurchaseditem inventory_api_produc_inventory_location_i_5b3c6e6c_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_inventory_location_i_5b3c6e6c_fk_inventory FOREIGN KEY (inventory_location_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_inventory_location_i_5b3c6e6c_fk_inventory;
       public          postgres    false    308    3437    242            2           2606    992019 V   inventory_api_productsizevariant inventory_api_produc_product_id_36fc9be0_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productsizevariant
    ADD CONSTRAINT inventory_api_produc_product_id_36fc9be0_fk_inventory FOREIGN KEY (product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productsizevariant DROP CONSTRAINT inventory_api_produc_product_id_36fc9be0_fk_inventory;
       public          postgres    false    250    3441    244            U           2606    1180551 ^   inventory_api_productpurchaseditem inventory_api_produc_purchase_item_id_306c1984_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_purchase_item_id_306c1984_fk_inventory FOREIGN KEY (purchase_item_id) REFERENCES public.inventory_api_productpurchased(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_purchase_item_id_306c1984_fk_inventory;
       public          postgres    false    3566    306    308            Y           2606    1180587 ]   inventory_api_productpurchasedpayment inventory_api_produc_purchased_id_74bbd7b8_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment
    ADD CONSTRAINT inventory_api_produc_purchased_id_74bbd7b8_fk_inventory FOREIGN KEY (purchased_id) REFERENCES public.inventory_api_productpurchased(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment DROP CONSTRAINT inventory_api_produc_purchased_id_74bbd7b8_fk_inventory;
       public          postgres    false    3566    310    306            V           2606    1180556 b   inventory_api_productpurchaseditem inventory_api_produc_purchased_product_id_82894f09_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_purchased_product_id_82894f09_fk_inventory FOREIGN KEY (purchased_product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_purchased_product_id_82894f09_fk_inventory;
       public          postgres    false    3441    308    244            W           2606    1180561 _   inventory_api_productpurchaseditem inventory_api_produc_purchased_size_id_0eae197c_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_purchased_size_id_0eae197c_fk_inventory FOREIGN KEY (purchased_size_id) REFERENCES public.inventory_api_productsizevariant(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_purchased_size_id_0eae197c_fk_inventory;
       public          postgres    false    250    3455    308            S           2606    1180540 U   inventory_api_productpurchased inventory_api_produc_supplier_id_9710dd25_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchased
    ADD CONSTRAINT inventory_api_produc_supplier_id_9710dd25_fk_inventory FOREIGN KEY (supplier_id) REFERENCES public.inventory_api_supplier(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.inventory_api_productpurchased DROP CONSTRAINT inventory_api_produc_supplier_id_9710dd25_fk_inventory;
       public          postgres    false    3452    306    248            X           2606    1180566 T   inventory_api_productpurchaseditem inventory_api_produc_tax_id_484f1da8_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_tax_id_484f1da8_fk_settings_ FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_tax_id_484f1da8_fk_settings_;
       public          postgres    false    308    3427    237            /           2606    991973 G   inventory_api_product inventory_api_produc_tax_id_7a84feb6_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_produc_tax_id_7a84feb6_fk_settings_ FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_produc_tax_id_7a84feb6_fk_settings_;
       public          postgres    false    237    244    3427            1           2606    992013 H   inventory_api_supplier inventory_api_suppli_tax_id_00acd6a4_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_supplier
    ADD CONSTRAINT inventory_api_suppli_tax_id_00acd6a4_fk_settings_ FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.inventory_api_supplier DROP CONSTRAINT inventory_api_suppli_tax_id_00acd6a4_fk_settings_;
       public          postgres    false    248    3427    237            9           2606    992191 H   pos_api_outlet pos_api_outlet_inventory_location_i_e6e43042_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_inventory_location_i_e6e43042_fk_inventory FOREIGN KEY (inventory_location_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_inventory_location_i_e6e43042_fk_inventory;
       public          postgres    false    3437    262    242            :           2606    992196 H   pos_api_outlet pos_api_outlet_tax_id_c77400bb_fk_settings_api_taxrate_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_tax_id_c77400bb_fk_settings_api_taxrate_id FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_tax_id_c77400bb_fk_settings_api_taxrate_id;
       public          postgres    false    262    3427    237            ;           2606    992204 D   pos_api_register pos_api_register_closed_by_id_af4c20bd_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_closed_by_id_af4c20bd_fk_customer_ FOREIGN KEY (closed_by_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_closed_by_id_af4c20bd_fk_customer_;
       public          postgres    false    264    3468    254            <           2606    992209 D   pos_api_register pos_api_register_opened_by_id_fae461e8_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_opened_by_id_fae461e8_fk_customer_ FOREIGN KEY (opened_by_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_opened_by_id_fae461e8_fk_customer_;
       public          postgres    false    3468    254    264            =           2606    992214 I   pos_api_register pos_api_register_outlet_id_cb0a7d9b_fk_pos_api_outlet_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_outlet_id_cb0a7d9b_fk_pos_api_outlet_id FOREIGN KEY (outlet_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_outlet_id_cb0a7d9b_fk_pos_api_outlet_id;
       public          postgres    false    262    3487    264            b           2606    1303630 V   settings_api_customuser_roles settings_api_customu_customuser_id_3d8613b7_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_roles
    ADD CONSTRAINT settings_api_customu_customuser_id_3d8613b7_fk_settings_ FOREIGN KEY (customuser_id) REFERENCES public.settings_api_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_customuser_roles DROP CONSTRAINT settings_api_customu_customuser_id_3d8613b7_fk_settings_;
       public          postgres    false    325    329    3598            d           2606    1303652 [   settings_api_customuser_operations settings_api_customu_customuser_id_58c1944c_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_operations
    ADD CONSTRAINT settings_api_customu_customuser_id_58c1944c_fk_settings_ FOREIGN KEY (customuser_id) REFERENCES public.settings_api_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_customuser_operations DROP CONSTRAINT settings_api_customu_customuser_id_58c1944c_fk_settings_;
       public          postgres    false    331    3598    325            `           2606    1303608 W   settings_api_customuser_outlet settings_api_customu_customuser_id_8a8a3323_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_outlet
    ADD CONSTRAINT settings_api_customu_customuser_id_8a8a3323_fk_settings_ FOREIGN KEY (customuser_id) REFERENCES public.settings_api_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_customuser_outlet DROP CONSTRAINT settings_api_customu_customuser_id_8a8a3323_fk_settings_;
       public          postgres    false    327    325    3598            e           2606    1303657 Z   settings_api_customuser_operations settings_api_customu_operation_id_744043ec_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_operations
    ADD CONSTRAINT settings_api_customu_operation_id_744043ec_fk_settings_ FOREIGN KEY (operation_id) REFERENCES public.settings_api_operation(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_customuser_operations DROP CONSTRAINT settings_api_customu_operation_id_744043ec_fk_settings_;
       public          postgres    false    3586    317    331            a           2606    1303613 S   settings_api_customuser_outlet settings_api_customu_outlet_id_76e30f7c_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_outlet
    ADD CONSTRAINT settings_api_customu_outlet_id_76e30f7c_fk_pos_api_o FOREIGN KEY (outlet_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.settings_api_customuser_outlet DROP CONSTRAINT settings_api_customu_outlet_id_76e30f7c_fk_pos_api_o;
       public          postgres    false    3487    327    262            c           2606    1303635 P   settings_api_customuser_roles settings_api_customu_role_id_fc491733_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_roles
    ADD CONSTRAINT settings_api_customu_role_id_fc491733_fk_settings_ FOREIGN KEY (role_id) REFERENCES public.settings_api_role(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.settings_api_customuser_roles DROP CONSTRAINT settings_api_customu_role_id_fc491733_fk_settings_;
       public          postgres    false    3591    321    329            _           2606    1303570 U   settings_api_customuser settings_api_customuser_user_id_a82ec8b6_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser
    ADD CONSTRAINT settings_api_customuser_user_id_a82ec8b6_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.settings_api_customuser DROP CONSTRAINT settings_api_customuser_user_id_a82ec8b6_fk_user_auth_user_id;
       public          postgres    false    325    211    3379            -           2606    1188811 W   settings_api_deliveryarea settings_api_deliver_shipping_method_id_7034b6e0_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_deliveryarea
    ADD CONSTRAINT settings_api_deliver_shipping_method_id_7034b6e0_fk_settings_ FOREIGN KEY (shipping_method_id) REFERENCES public.settings_api_standardshippingmethod(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_deliveryarea DROP CONSTRAINT settings_api_deliver_shipping_method_id_7034b6e0_fk_settings_;
       public          postgres    false    3562    301    238            [           2606    1295356 M   settings_api_operation settings_api_operati_resource_id_083604c3_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_operation
    ADD CONSTRAINT settings_api_operati_resource_id_083604c3_fk_settings_ FOREIGN KEY (resource_id) REFERENCES public.settings_api_resource(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.settings_api_operation DROP CONSTRAINT settings_api_operati_resource_id_083604c3_fk_settings_;
       public          postgres    false    319    317    3589            \           2606    1303486 S   settings_api_permissionrole settings_api_permiss_operation_id_55abec82_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_permissionrole
    ADD CONSTRAINT settings_api_permiss_operation_id_55abec82_fk_settings_ FOREIGN KEY (operation_id) REFERENCES public.settings_api_operation(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.settings_api_permissionrole DROP CONSTRAINT settings_api_permiss_operation_id_55abec82_fk_settings_;
       public          postgres    false    323    317    3586            ]           2606    1295366 N   settings_api_permissionrole settings_api_permiss_role_id_faf47404_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_permissionrole
    ADD CONSTRAINT settings_api_permiss_role_id_faf47404_fk_settings_ FOREIGN KEY (role_id) REFERENCES public.settings_api_role(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.settings_api_permissionrole DROP CONSTRAINT settings_api_permiss_role_id_faf47404_fk_settings_;
       public          postgres    false    321    323    3591            ^           2606    1295371 N   settings_api_permissionrole settings_api_permiss_user_id_d5316e5e_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_permissionrole
    ADD CONSTRAINT settings_api_permiss_user_id_d5316e5e_fk_user_auth FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.settings_api_permissionrole DROP CONSTRAINT settings_api_permiss_user_id_d5316e5e_fk_user_auth;
       public          postgres    false    211    3379    323            Z           2606    1262528 Y   settings_api_regeionaldetails settings_api_regeion_delivery_area_id_51615c76_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_regeionaldetails
    ADD CONSTRAINT settings_api_regeion_delivery_area_id_51615c76_fk_settings_ FOREIGN KEY (delivery_area_id) REFERENCES public.settings_api_deliveryarea(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_regeionaldetails DROP CONSTRAINT settings_api_regeion_delivery_area_id_51615c76_fk_settings_;
       public          postgres    false    314    3429    238            M           2606    992371 W   superadmin_api_adminuser superadmin_api_adminuser_user_id_7a86dc82_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.superadmin_api_adminuser
    ADD CONSTRAINT superadmin_api_adminuser_user_id_7a86dc82_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.superadmin_api_adminuser DROP CONSTRAINT superadmin_api_adminuser_user_id_7a86dc82_fk_user_auth_user_id;
       public          postgres    false    275    3379    211            (           2606    991679 N   user_auth_user_groups user_auth_user_groups_group_id_165f3b9d_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_group_id_165f3b9d_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_group_id_165f3b9d_fk_auth_group_id;
       public          postgres    false    213    3371    207            '           2606    991674 Q   user_auth_user_groups user_auth_user_groups_user_id_e339ec14_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_user_id_e339ec14_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_user_id_e339ec14_fk_user_auth_user_id;
       public          postgres    false    211    213    3379            *           2606    991693 X   user_auth_user_user_permissions user_auth_user_user__permission_id_2c602bd2_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user__permission_id_2c602bd2_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user__permission_id_2c602bd2_fk_auth_perm;
       public          postgres    false    3366    215    205            )           2606    991688 R   user_auth_user_user_permissions user_auth_user_user__user_id_31fb400e_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user__user_id_31fb400e_fk_user_auth FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user__user_id_31fb400e_fk_user_auth;
       public          postgres    false    215    3379    211            7   �  x�eRMo�0=�_1��A�P��C�a��v���2���!�l����w��]H�6�潙�q|u��*j�X��g���;��\ջ[�e����)d~^߫6^�Y[H����f\���=/���$��G�8βk/�0��-5�����sV��F>��tT�&����v����Х�R-Q��q��m��+��
H)ֆ�˼ͺvk%q�rɛ��-%gV��.� �Rl�6¬c+$oT�U'0 /�A&�f��a�>�Õ`F|)��|�D�3���[I��bL+��Q���V6������jQ�C�j��aQ��4�XHSY���Ⱦ��}<��@�Ek|k)pv��_��~|�ùMj=���'�<�����W�4������2��J�:�C���[�w�m��wWI�$�(�)D�4Φј&q���A4��x�F4�F7���%��z53��      9      x������ � �      ;      x������ � �      =      x������ � �      5   8   x�3���MLO-�/(�O)M.��r���RS�3�K��
��9c�@��+F��� 9�      ?      x������ � �      �   B   x�3�L�(I-�K̉O,(��LN,����N.JM�+��/�72�7�,�53��+�K���,����� o�      �   �   x���Qk�0��˧�{1�]4Sߜ��X� t�����:7�F��0��?����?��Q��ma>���>��pJJS����� �D�$�]Q�LuX�ٰ�Q�A(IQ�E�KZX7OJ�2���97.����e��/f� ��X?���	c"�J?"O�D�
�p���@��e^#����6�8]����·iaS���Ol��מv      [      x������ � �      A      x������ � �      �      x�3�,�/����� 	?      �   '   x�3�4�4�2��\�@҄�$bf�e
�M,�b���� am�      �   �
  x��Zے��}6_�/8� ����Su�I�5I�2{�|�6�d]l�S5�k�e�K�e����.��m����2}��������YTr��=��BA�x�o������: �?
�60���=��>��0>\\ㆢ��) z'��¢�{d2�(p���u_O����t���/���'��;��/�{=8�����n�z���`��R��tǀ�+�o�o�.*|ˎt�Wa�빇�m���U�G�,c��;I����`����2z��_��5�6�>_sQ)!�qJ�NE���@�"�����=�v��6�����mE��_��o�8�+N���(i���Z�Y%����\��+�J!Ї^�n��F�B�Pt���X���ٝ\�[���( ԺG �Y �����C'��Ň�y��eX�����Eh���^��}�4��34���j��)��RX�t�'WB�E�T�4b�""=D�PCDw�_����K�t�mv%fh�֢֩!�P�04�%R�
C�	#%A�0V�2u����h�E�&�QZI�L4I)(%�"�$���KD�z�솥����e�6M�,�����M�f"X. �f�D(�  �:�2|��>d�V4J�NC1�&-�B�d�B�1E�Y��׼�w?��4~�ޕ�����V�3Ǣ�`�J�9"�KB�� ?XR��6;�A�6=m�Ud�1!�Q$�� �M��� �U��M~w�JHx�Y�����S�8�GN�U�`AV�/݋+!#��⠄�b�#}A��aD?���7<~�P8N_~ÏK�������<�ͱ�*�lF�}
�s� sLV�_��yqdN�,�J�D��pJ�G��pBzɇ0��j�����uWU�=j.�m�M���2��[� �xL�hrDLb�ͯ��6�|UA&��⤴'at��H�>���ED
�I/"j���<����{�ߩ�s�vaOq�s�o��'P�&�+X��%�M˖?���QO�
vU#����*3� �tʍ�IzdH*?>�Q1G�'2=ɻ4�W�r8�ݳr�D=*���^s��$7��)�(yM&F�v�U����|���$H�!�%=�҂~̅iI6aZP9n�c�CwՑN��gQ�J�@��*j ��(�����A3��}x�^�:�n'|���q*Bhh�T0Z���[F�k,n0�Z�=�s�Tʦ~t!J�A� "�8n`�8���s{<��/ЇՈ����y5���A0yd� 8q��4��a^V�!�ҷ)�H�%�J%��	�P��L������Z���eW���I��\��l���.��G�IBI�R0('a�������s �b33��2$��Z�RU�GE]��ʰ��k9�z�sx>}���/?ǋ�c���3t95%����t}5��f��d�)Â���z���n��:�����O�Q�0*D�ҰDR�#"��%
�J������릾s{H�Ը�y��tB@gGi;�ۆ#D�0� ��������֭;T<��!�Q��*J]�ڢ������,�@�D��a��b>>כH���w�6!h{� ��&��$���Ծ�>�=��w�m"����qvC,��m�h�h�(��;`���aD���8�O�����z㌭ ��@�� 7�Ѝ3�v��B�����_�*��R~�k>���RVx�����w���8��=�?���{�ǀ��X�s�a)�zC��M�e�[�R ���!�!��8^o���՘	CC�#��) e?��'���+s�DB�c�!��K�kήn����ǜǂ��f�)���1D��
eXr<�a�!yuvq5$��a��(}�.�t��X}�.�t��Xy�.�p��8VTҟ7������> �J�E�oL��ޚ��7���@ޚ��7��� oI잩:|�繻�@zT�kl.J]���L���z��a�63��9�S�lfq��n��~Z�\ysm�6�VQ#!�GE����1EF��s4��ϡ�]h�=��CtB/uz*���aN=֌�5o̘#�6S���#�<dMp$���t_�@�_��&���-6%����P���l��/G��6/���M���=�'&T`{g��T[�TL{g�Y[�D8{gN][FD�|'�Uο^��V�W@�%],��X��m{����8W��d��k8e۶�&�CY��E���ʼ��`�ߤ�>�U�G|k#|D�������Wx��4Y`�7r|�agCl��^	�Ԇ�)��띡��L�f�B��i�����3n[ؘ4�?+ddcJ�H�n>�Dv2�@z_o��Es�^}��U��;L-l܁���=bjd�2�d�S�[4pz3���5��d`wQ���[;S¦���"LmL���͍0��6#�+��w�����,�-4y�.�x|�%��b�Y�d�2���,��8��~����j?�h�ҕ�,������^��e}Õ�,����g����m)�x�\ՙgD��r��f^��g��<&2L��/�z|�t?n�9y^\k_����˓7�>�Ѭ�����D��\��>A7�stI�h5��޵�o[�_T��K��N��Ah9DD���n�*л��R���W�Ie֯%�N�,_J(�P*}\�ciP���AF茋��P�k�F9�U2f �7���z�Io�J��7�ٔ�,_��7V.�5��:�\�e*r�7���n�I/����^�Ĭ�Y����z#+�9�=/2����(�jy��      �      x������ � �            x������ � �            x������ � �      G   *   x�3�,�,�IUp�tI-N.�,(�����N-�/J����� Ü
�            x������ � �            x������ � �      0      x������ � �      *      x�ݝ�o7Ɵտb�[<���2yI�1�n�t�,��$����r���K�$[�����8��ϱGߏC��m&O&�xs��7ﺟ߿=~?�����O'�LO��?O�Xή_��;��z9��\MБQ�&�����|*�?��0����vs�ny�ۼ�λˋi���v1]^v�W���'��Wˋ��..�w-_]v����W��*����	H)���ޭ��%⑄#�:�^ROR8翪��z���������e�ÕM��m��o�	�_�?�|��o�o�aq��������;�/:�٢��w�����Ʌ_�a�LL����j[`���c���ч_~|���^���A�f��y�ms�o�CՃ��M�5�qSs.8�U�!,��=Ya�R�Z1�]�G�P��(d�1$b�v��R���=P� ��F�j�T��G�4�2��!Q+�@-s�^a(�V�K)�Z����X�,2��I�DT�����\}x�!�H,�$CX@v�_��H��o@oT�:��E�*�y���㰇�����5�7�$i��(������i���`�R�^��\�r��n�`���!Q+�PA�~H�i�aO,PJ�sHՊ9���C�o��N@�>�j�ZN��i��d+]:�QP+��n�v�irk�L̡�V̡�t��z�9a��R�b��q cz�z��q2Jse�b���pP�G%�}��s�Z1�f���iFW��9�D��B�i:�����ڥr�^&O�o~����_��6 ��:DRQ2?ZV+����@�^��(�VL�by�n����v�
j� �@��B;���c��tK��C��C�V"ԍ�P�W���X�C��à��F|�ՊA䁺1�G),[�:��*�@�jo��D��ӧ�כ�i� T�{�����@�-uQ}Y���\�h�ɺ%؇�$'бJi�j�4l!_�EC��
PҸ�X��E!b7łL�c�|w5�����(��h���	 �\��R�v�����ّ.�H��i2w[4L��Hd�5U��N����B�	� Ў1�����(��h@X��g5U��N��[��H�V�d�x��N��$>��V���A�F�~O�m�pov8�@Xb����՚Q�V2��F	�]����
ʵ��(��P蝲�["QkG�v����8#U��H��i�����\�Bb�%�\��F��[�Y<i�s��PS�j�4Z��`��'�$C!oT��h<����3i=�#�JD)m�I��~����qX���6�Z;��S��a� h�͇�j�4Z��ovB�� ���� �J�a�\:��0|����h%��� �+밐;R�z��r�a�a��!�T�G멜\�9�c�%�Z=��cy�5�#�V�7R�z��r�p��S��BS����h;�{�e�C�(�Y�j�8����pߕ5B#�|�)W���v(')�8���\�G۩���g�fv�9�T�����Y	$�T6�����h;���Y�C6��&��fb�0����o�}�]��H��q���9�8�����|KM��8���.�fr��_�0�g���ܻ�Z=�v3y0|x�R �W�����q���׆��$��z�j�8���+�A�\�A|�KY�G��|e�
�d����Z=�v3y0\��ze�a��Hq�j�8��L��9󋄿(�qS^T���n&G=tee(�����Z=�vS��pF�&��ZR�#U���n*Gr�o�0!�|*���h8�{�]8Y�P ��<ő�)�*�L�ټ�����8�Bm�r�@Ňȗ��7�}�>��SsݥVI�P���]�F����c�(��F�'�FPk�A+���xLmE���G�:�?<�H(Ѫ�1�	yRn�d8��m�?���B�)��3y�ip�S���<!�3��9uO ��>~L}�y��<ۦ<���M��"��#��Z�My�|�Vg@��M���7�VfS��^�&�&�Ll��TP+����ʈ�2nc�!mcje6�&��o|�7jx@��XEG�'�ț�Z�f5I�s�?��Ky�I��h?&a8�͇�����ZM*����îfןf����}��;.���
rJ��UPS�����jx̯|������貞bR!G��$���R��"b\w��1�� Q�gѣo�1k��$�B8����aN�ǽgsx8�Y"+R�9�Z4��Ǚs����k�ڑAϋ����ckQ��{�
��QG��Vgm�^���c��X�gc�:c=������r����@�eHM���\-��������M��*q��V�jC�K�헶��$e����f}C9z:�B&9|��
M̨S�s��������!�F���bͅ����EN5�k��,���-I,�0�MH�ˬ��՚A���Bȇ9	���Yu���j�$(�A�g�f��y[��#
���r8ςKG2�*�Δ���x�}����ejh�S��Ⱦ[O���HՊK�ne.r
��)���BQ}Y��R>l�����WOboC���G�rڤ��ѩ���U��/�\��G<��jĔ�kS�X�M��׿���©���Ã�M���.�������,y*�]i�.*,Ǘ>�:��O�S�E�cTQ�u��+��� �c7���sU�k
nh�X�$=��7L�p��x�j����:K(X�%��Zy	�wZ�N��'G`���Gj���	�O������5���P���p���[6��t����f�ޙ�u�1�b�7w-�3�9s��ru#-7���&oϗ�?�7������\�r.��B{%�z����q���H��Ǌ����_Χ�ݛ�+���M$e��Ǻ���;����Z���H8
���z�����ؾ��

;��)Frj{�cLm�����u�N�Ad{�ߘڂ�;�~�p��C[�S��Gj���=5����]��GZ����/B�Ta�3s/��l��߇�r�z �gH��F-�>����GƄ�����3*+�:S:ǹN*�SQwT�^9�_��/����PQ��
&W��jH���?6TtUT�S��
��^�+N\j�Jt����4�=�J]T�Sᘊ
�|-���6A%���J�젰��N*�S�1��
�/��*�gTV���C��b<C�=��QjP��*�gPV*k_�Z���}@�}sM�󬇕�-x���}0�M8]ӑ�,rgb�[�S��k�)�3�Q�`L�+Π*�5���TEE?�X��/��~�ҢuL8<C�[�G�)i8�a��@CP�W�6~l����w��/k��<����%�f�NȰ3�A�+�l�j���/P��_�@T���mX�"�F����Ӫg�Z��(UU=v���:\'#�9T���-����p7�T�����a���T`Х�F�����Ԏ��gZ�4��R�}�ݭ��������>m����k�h���X5J����ޛb����{�����l��|�r3۲q{�&�g�S'9�%��0��a\�l�̶�kP>�L�㴻�^�_m��Y�W�w�<�ըR�w��{p�P<��ؕJ��-���q�������;;<i�ѨήT+uq�e��:�{��,QY%�j,����Z&Qg[�����cc��̾��NN��G����5��[�eVb�ܕj�.;X���6�6N�m�\��p	aXJI@(�Q�mBi-�������U�<ŵ��0O?����!D[�1wu�:0�x���]��������o_�7g�/�������nο|Τ��Uw:[~�>�:��Z�P�F�aK��鶀bP���,��	�K���n�<],��6��v��trY6�+��.<��±�`L<sa֫�|��NQi��x��y��Z���;� (����s�	l+U��ha4yV��x�}����/<`/@(���C��jG�n��B5�jګ����&�4$ՠ*I2�R-T�����%&�'L.��[m�8j��9К��9Lc�S��W����������$�{:А$g#�64a݇�|�H�o�LV�3�<��7�>��{?���Etu�6V!�	�}q=�	����r:�̮o�9����-����a��Z���-� M  ZuNO檪�f��4�A���nU"��C��q�k�E���pDi��N%�d����1�&1��V�dd0j���wl��d^����m�`ˍ�{�ȁ��M�^�p�/1�`,�m2<�ּIFY,{l�Q���6��]��^��#��7�q���]���˛�WB�_}i2�n�m��UĖ�bi_
T�jX���iјI�Z���/ L]஧�u�9N� L*�yb���#so�b�t��r��r�K�y��Mb��u=�&0hFn���gጐ��`!�T7��a�60NG�nE����h줯��/���u�&'�������͟��������      .   �  x���1n�0��Z:�Ar����I������jO�f$��G��$V�1��{DP�t}��C��0�2�z��E��<�ח��¬�v
R�H�)�x8�EO�҂|
�o���~�z�����7����/`i���|s[���P�����l$l�+`��
����f�!��mC12�l`�{v��=���@Wq�rk��8����U<�/-t����]��g!�X�*%�BWI]%%,t�2a��Dte�U"�2�*]t�����+�����]	1c�b^t%ļ2�J�yeЕ]9t%DW]	ѕCWBt�Е]9t�DW])ѕCWJt�Е]9t�DW]�ϺZG�\�,�ʊ������a�,��X(K����]Ye宬���rW��BY�{,���'��BY�{,����U��-����Wo11��f���Ъ��/�Ԫ��c���[Ḽ�9z��ᩉ���4QX� �&�[$��5�Y*���PFG��Pw;���ݞ~��5cZl͘�[3�5�֌iM�5cZl͘�[3�5�֜iM�5gZSl͙�[s�5�֜iM�5gZ�N�o��e�x��w�@�pj���m�@���@	��|��ΟjA������2zA�m�F;jctA����v�0:�:��脚im�Lk��fZ[O��3Sn=vJO�98wJa���^���e��jN��      X   9  x��[��J����/����8�2���BNb�����������D��f��U�ǽ��m>�E3��0m��^����Z�#�4�-�.@�"u�g$M\D���}��}��$˻��iUDϲM�*HQ����]�n���+.R��P�kP��m��.i����]�R�t�w�>�E8:����������z������>�w�N���5.��
ְj�vQ�MF�KA�F�80�*�c��m�N�;�UX�$���$hږ���������oC�%y��?��(b��]dcg�OF�Fw�.jϽ�B��>y���xt��g;FIp�� �qߢS��3lc�2=%��ãyE��P�[\4�S�M�H��#�
�oy��u�D-ҟ�F��-�}�����������e�����r:n���R4��Dу���l�E�n6�]����1ܿ��U.n�;�/י�U��ϟ�:�g2�׵��o~��|��y>'��H�
�`uY�����Q���i��򧝜��k�����]/���w�� ����o{�?���ww���ib��u������q3x?�;��A&�^��E����r0��}p���$��#y�2lf4>f�Wn*��a�L����]��c4�l>NV�éxL嗻m��<�|o��\]v���P\hD�kȯ
mg�z�	���ʬ.]�����r���֛�P�C���x��{md���%<v�u3۽G���i�|>��gx�Lnr(/#����9�I�9���(3||?u����p��^G=�Y��D?sݼ&�JW�_���@oS�E<ݯ�)�A���X�������z������l�nf�B�M=��c0jvl�:u��r?Jζz���ؼ�����6\���������yl��������W�Ǻ��6p�	�Z1#���g�D���!�x͙֊3�-���!�XVCǁT��k��RH�&T�Z2��1�5�N	�0�\_�T f���0Wk�4p��Hi��-�P*B1�V�cl5C�{1C`ӈBJ�E�*/Sb����h�!F��0"IBsN���!G�Y!��p��T�ok�ŐB�j����>;P^YH�������Ȁ�F�c w������8"9� ���6�g�f5�2�L��Hǡ0�&��Lq�	S��KH���!~n�I�q��	��Vh�(&�J�����&��Iq����<�d qQSa�b�V5�SD(32��;�	#DX�)�B!�jh���& ze���B:�Jk/ ���*��VI#�X	�%��9�=E"�;���ȣ��`~+�ң�c��J̝3ίQrJ����	���������Ix-
      ,      x������ � �      $   �  x���]o� ��ɯ�~)��૪��Ej�j���I��֝m����8Q?�εTU:��� q��6���hc����1�C�ZE^�q^��������r�os��t�#�fۡ�
q!�@�r~B�	��R�oT�7��M�k��YkNww.T䶾C���qP�N��J&]�"��re>'�		$O	��_L�g�����2pE��[�08ȇ�L�.k1�mY`W�C�e�ڵ8�V[����X7,�
�l��E�+a�!�l�������C��v_p��SƟ�$Ա�}�q��&�:���}�C�o�P��]�I�t�7���G1S����l����u>6����}�� i����BN%/�^t��C܄�
�;xY���]����&0�T)O��FP����*��zP�Al}s������,OB.��c���'�H�������a����[7�[A=G���̦,I)#\Z�^8yTy�JISҪ��j�F?��'����8M�!J��ޤ�·2��+�C�Ȋ%��j ˅���:�7��&��m4��:Ϸ��p�h�;��H��s��/i�,�Z�Ď�cu�ϖ�y�8���j�?R����|�\�N#
������b1�xޖO�_��t���Y�-���D��#����"���i%��L�1����j��L�r          H   x�-ɱ�0�:�"=�����xzJ�C���r��sy!H���
&F2�X���o(X�e c� �oe7yO��      "      x�3�4�4�2��\1z\\\ 
         R  x��V�r�F}^}�;�����z�I�x���t�B�I[[R�__�ԅK�M,$R8ҞC ����<]�J�Ӵ��7�������X\d⏇Q:'�
i�#��:!@��ꍂH�DJ�ߤ�/�^����t��A��jP�-�O��G�e���|��=F�m�g���s�`y/�|���Ҏ�Y5�����ٹ�����י;��X\�e5�YV�Z��a�բ�[^��LB&vh�tWU��D�5�qJ�2�n����'�ӸZLy;�8���7ُ�?����(#��ڗ�A5J�Q�S�6�������d~�6�vnQ����+�����H&�� ����۠�t#���P<��j�������g��F��+���������uZ'�b���n��6x�q��U�B�T��[�7��i����1��+FOd����f�X;��)Lֳ*�e�6�&^.J�l�/��z��t-�N�2����m��#e��ԱRDH�� ���A{�4b�a��V'ZƖ4�=@�F-�{zy���Ж�y>��O���I���#7�T�.A��j�<tt@M� ��nW��D\�����ϳ����ӲZ�����mP'=mX��X�w���(�[g$Hʋ��r�f�j�i�l������O	���b	���X�D�������W+����K���+a�*��'a;n���ðl�oE�|�����ٌ\h\ܤj�{��s�G8~y'��1L�ƥ �ް{b�d��C6�A�r	���56�a4��_\V|�9)�yV��2-�2�y|��*�>�[�|r���Ѷ��:�ӻq��ٸ���b�E��b�|�֗�3�������p���9�n�裼�>��X�A4�#�]����<�}�އ���14:��~����ݡv�K�%�Cy�Y'�c����k�x�4�p�ً��=�D�W�j"�D�MN�� 5k�۳$�"}yI���O�l'�����i��u��HiC1��u}B���K7@�b+�D9.ʎ�r^+��!jƔv\��.�%��w*W_G���ظ,�[��
ذ�>*�9V�pĭ��!ʇ��̶G��ν�o/�Ni];����`�/=�/F      �   R	  x���K��8��ʧr��"Y,�|�b�v$�ف�X�[���Lz�ݷ(R�[2e�cu������h����;fr&7Lo/���ߙ�x���>����_�j����_����2�eBf��`7LB2#�g@�W��1��pS X@�"�W�f�U��)^r�@����B�=C���Ps��H(8)�3T���=cH��#հ�b�+üb(��V x�M1�tf?��v�T��z����ݱ��?���u.���_����>;����F0�n˘P2���eW��j����]^����p��lN��
-��W���`���W谤�2�PZ@PUu�W�!?�������>D���1�3�p�AQ0.�����A˪
Ho�[�ق��+J��h�6�On�Zw��	�|����m����{��+w��nq�Ĭ}��h� h���X���9xc�������\�?�\��Ы��$LG�?<��C5[��ǳ��ݜܕcp ˧���m̳�o�����jȗ��#�6a�_�W����1�y3H���E�v7F"ad����K������xl$/�B#�2*w�K�|�Xw�[1��h���c}��¿u�}l���^\0�@�C��}��ߪ���y5��F�� ǰu�g���ǺYel���#�+F��w�sNa���.��6�
(����u	��,�A��xcN����xǳl,Xb�PB��r��57c!1֏��u�����&>%T��~����\q��	U(�B�`Vv]ȥ�d�-����C���@%�	ex��wT�z<�gG~�`R�&7����f�h�-��1�L���g�e�~��A^h�L�[{r���L�Q��a��MaD�h�3�Q$�	��1��@�R��%�[�A�/�ߨf��å�
�~���5����S�Ƃ�2q���v|�9�j�!#eyv����H��}��u�ζw3s��9��UQ -��t�|n�lf+�C��q�c]7(4�����j�u0$��J�i�X�E(|�l���N�K���FHL`mP�U)���ȇ����z��o0:��h�Y��\zK�0p��km�(��G�z-;1�0>y��Ҙ�ԡ�����ذ!�(LǢ���sY_������2�1��4ݲ{�Ҕmu�I��R,$e��*�>VI�!PrC�x,fߟ��Sߴ/I�\2P�2.��.���F{���~�Q�)Ll�]9'���^��+"��>~���#�����RTUƏ�szviα�ʄ��d�ܹi�$@�%�dG�0�ؓ����ͳk�>gP���H1�}�ݯ[´n[�i��z�O�aHm�2�/!ۑ�n몺ߞ����n�ͥ*�?$f)���*wt�{H�K�H� �C��ٙZ�~{,��c3W�����[3#��.��/�^��@��׷�He��!���<�Zڥ�b�s������-�� �Md�A�8�mے�ۻ�A@�NHTTR��D#�����zmvs������l��;6����������?>��^cA�����W�j�.!�����׎�pՐ�)3w
- d�6N!�mv��&g������^���{� Z'��x'����ؔ��+_�iö��e^z��@���S����ľ���,|A�{
I�{�T����N��Uv����!=��/h߭�F������.���z�77�޳(��xY4�j����aZ'�ޟ(�XE�����н��+�ay&�����ќ�B�ƋU����3�͐v_����~[��n�@]���׷j�>��3�sYI��W��t�����/�Y��GjUw��rZ����o�(&I
!��ې����r^%.��n���C�������w�*l������ a��k�ZwOǺ[_��%�����2t� C��ק�s������;r��"5 �X9�*�!m�(}!NqΆVL�m�Z�$�D�a� -Mh#��C��A���
Il 5C@�RyH�;Q%@%��� ��.��~�_r�U]�8��Rl�nv��J�,^-{ʎj�z�"g`����a��ܮy���f��}��(5��Y[���}�����O�ѭ_�������Esa��+������yK�׮�P̫�P�~7�8���g���T\����W��M�a�������l��� �;�ui:|g"�x�\z����|��� �t���be������F����T����S]ӥ��@K�/z�ߐ�I��;uۯ������Z�$^raֺ��T=��\��-�x/.dF���2��4I-ITt!3o:U��Bi[������h�CE(t@˗�d3ù�c�o�50/oɩ�:�Q�b�3|�c���
S-R&k��O��͛����      �   �  x�}Uے�0}�?fK��l�T$-�t6iٯ��"Yf^49�$�;i�tk��R���D�|K�ք`��|FO��"��c���0|�@��N��*�NuÇr&Q�pܠ�ڑ5� �wU�A:��6��A,ц�G�4���Ԣ� ��wM+H�=Ω�/4�2V���D�U�藋�o1�-�������lg��8OWcq�.�ǟusb�ӾJi�%���=�K�s�.⏆����,�4r��k�,�'�64S	B�5���?�_|(oT'ח�����U���}}SŹ�ν�	�)�He�� �y���K(e�9����cj�IGa.��-2�يxlL�Q�Kk0�������]�y��'� ���7��Z�iȫ-���%���Fk��QA~J�s�O��SV�9Zr��Wڑ��xj�&�P���(�U3�k������Btw��b%�Ƣ�P�1&&lj(���$3����Yy@G����QZiՈ��#�T��(�)����@�nUW�e�̢����:�屌<:S�{+�b������%z��~�e��n*�2Ϧ�W�A�Uː��?������ՈB.�R�ʾt��y��UE�~S�.V�?0TQ�=ɬ����E07BU�F��H��[�Q�-aXr�� �#��i      �      x����r9��{�"�O�� �u-��K���kdK+���^���$���US�$N?b��xP��|z��n�����I)��6ݦ��	�W��*|Qv����1��S�/l���rx=�:��#�d|ۿ�QZk��O����>�y��fy���v�����u�^��[���u��x<������Jk�(��tF�_���~:~N�w�LqŬ)�KZ��|�vN���]���m<�~L�^��ξ��fHX ��_��e9�tL#�X�ڤ�ą��B~����v�\����x�\N���p��:o�6�i�\�ܙ϶8��`�f�"E�6�!���Q?.�������b� ���v�0�/�~��q{{4�K��%����ty�4���O��ǜ�W�'������3t��l�<��.�g����R:�`@�!�!�a�?�ؓ��?�矧�cgڡ92��yܟ�^#��BEQ�����ؓ�I���t=�n�ۏ�O�`�K��������ty�S�.ʳ����z;�rĻ��O��co�;L�t>=�hm�t�h�|����}
�j�"!�W��ϟ�� �3�O�w�d'~��J'���Y3�?��ӯ���/`nfg�����G1t~���rFU�v�>(LǧUgE�Fy
wk��К��5�t�:,S��_�w�ﴣ죓um��X/������N{�`�A�-�e��%�i�H�|"8}�U]c�H+�� Z9��)��圑��5��8�?9~AE�CO��;�,�:�g�ED��v�,C.%��w���,�2KCb��Ҏ1Y�3�9�_^����sVt��U�/
w����NEX��\�|���?�_�˴'��2]�O�^�S�%h�!�T�J��y�5s��s<Y$�"�:ّ�vX�)u�R��XZ����1�o�Ê��n�W�]�Ý�A{��;�6m��Ҍ�Qg:8(�[~�]��S�!���E�#�qɾ��f
�{�h<N���c�M�#�+�U;�CtQɹ�.T/��1�ف�� ��>y��x�"��/�0_��B�4ˁH��F��F�?w#�I�9����m;8�.$���b����"I��T�69���uZ�������F�󠳎6y���a���� ������'DvPިt$��\�zg��h��O���4��7:$;�f��p|;��Z<�v���x�^����5�Rf#.��p���9�$
�q��2	V��$%
��ta�$b������4�}9/	�<Jq@K(X�6|t�{NU�\��XVԂ�x�[X�%�5�hAjW�>=�G�Vsr�-u���R�"�۬����&��h׀� ȲW ��`H��18���J ���(��wfS��1�FZ��б���AO�2a��c�T5���ٓ9���D�8�����?�l�v�.iK~�Y�B����J������V����FY�Ӧ�e���nR���I�L��XM=8�5��:i�޾�.`Eb��܅.|����$$=.��K<��a͞�ם�F���IA�7Կ���&*�[�O�6���<b!��<J4��#��&K��؆���,Y��f��P���U��ľ�������pM��dB,oE��W�/���y�F`��gD�L4�ks�{N�~�� �;K�����1.�&�QL�%$�v�6É��~���z���}���~�CO�Z����>�H�G��q��:��)�a�T,̋u�����%*�3(#m�Ы�fi�K�uQ�Q"x�����
���R�������Y����$�����sS��lɃ�;�U�9�9�L���XN��G��m�	m��K�����z��3l��N����!�%��?.�q3���PEGuH:��+b�8>��~�!x���bǉ�u�����EN)�=(�����?�ڝ�IP�;����`��,���B����~R����MZ��_^����Ht,���"�9}�α_s�Oq��$��*�Q<�+W����-6�+;8PN�j���Mq���$77�I�
�_a��FE�i,�8T�I���.?���۞���e�Rw�|D�`�h,�������=Vc�)m�)l0��h�R��Ӵ�h��R��<<�}z�}�Ǘ�M/5�p7O��M��A�be���U>N2R�����N��*�z��P� �9cpQ0}��5�W�,N����|�*�(&�b�����ިpkO82p�M���2�U,guX3��XRj��K4����B��گ��9��pј窭y��L�+N�� ��%a�C3@c���PF�Z�\���Q˜�*�f��C��t�7�n�ԡ1�Rn1�iS`7��Q��<��ƢK�%WS�p�d��`f��GP<��?��;��~�^*,�5)HZ5�G�Y��&i�K�2f�Tf#�=jC��r��)��!D:qY��k:�:�|�.��<,�SS3�P,@ZR��� ;����~D�`+U���'/�G�=���*D	��n���6G��ne���բ�}-�d��uˁY���/�?���K�8YHܡ��UR[*�B��?p���:�mmM�y�m�r�0*Xz�iX��2=�h'^�m�|/7�em/s�i�s�F9���{�Z��۬m�ai�7a@�@���9W�*s8L�D���l��Gc��	<�tL���n#>f�J�J��x��)���G�l+z�g��j�2P�I}�h��-��Ը�Uj�^��2G�c�����r��O�b��@���� ��t��~=���8�s�9����5���)M4�S^��0��Sww�\�������G�d���'�P��`���Cp�����(���m]r,��9�뾌�� )A�.���y��2�� K$[f>l�u���ƥNs�m���U��t�����RR#�~��&������b�D������@�Jϰ��5L�0�<�Aq�ި��P'x��h:^�?�RDg�[Y�
���@��������m� �\�셫>�yU(=���k���iy�%E�^ɘL[`)��F����0�8���:+h�����Օ4�s%g�+E����j����Lb��t�1_ųmR0��Y9ǧͷ�;�Z� НC�'
g_6�z�am�[x g�{��S�u�N�;X͉��~�t����{�W�R)Y�e�X���Q�@G���ߙf�*ທ���_������zg�>`����;�чpΖo���C2.�I
y�~PP�-����;�1(J�!�\��S�������7�g�����-i)����l��yV]^�|E\�aZn�#�w�KS��0ER�Klr=���~M�.�pz��x��i����c%ɭIr���"Tc�������I��]Ϸ⟀��yHJ��i�Z��LU���_=S�����;ކP����L��'�E�� o�K��,uV���	����b̫�[L�����|�.��sjq��f0O_O�<��#m�FY)�цl��w�@�>3�
��/���W��	�.[�MH��8!z���C��D&����tM��������/�K~��mT^��`ZP��x!J<���%SY�����;`&	-�/���ϼ�Yr̼{�1�>M{����mR��/��ߎ$r����|!���3Nk1�d4��[657�Ye�\u 6�ys������q�d����R�m�`���o��rm��Ա��z���C�:M�a㞫o+�Ր�NL��;)�יy�w��w<�x�W�e�Ӝ��9lT���Ef�����t|�[����E�e��Mf`�ky��I�9�/A�=���N�B���}��'�H%O~����gW�	�i����1K'l4�tuE�\&_���ϧ�i�5�b���Ѭ*bv-MI��8r39h��9�*�[�\��_��!��ڪ��@��7���Z'+"{��t����(�\�Ʀ`�ޗ1+�kN�&z�����.������t=�����[�r\B�"��i����]���`P�g��L@6-�vv��vF�;TA��$����~��e��`��{X�h�U�z\�Hz�W�v��\|FA���&�����נd�*���$�囧�^h�Q���*�r( �   ���X~eE�ʜ�^Ν�)��ש��.��2��OA���b�6��g�7w+��P�)�)��l�>)Ԙ��c����M���Ϯ�ܔL΅h���p��qU_�\u�{z�tebc�Xz��+�cR*&���|����C��dH�z>�}�.��)����ɻ���=�r!����h��`�O���8w���\"p- |�ɓ=������_�5qr      1     x���Ǯ�:��=O��WAnq��B� ���+���;Oa��H{�y��v����]�,���Y�%�{u_�M)�3r��9�V��N��&�!|����lّɢ��~n|W��������- ��rT�e$V��R�UX�MZ�6����y�s���v �*䨝�t1���j��$*2�h�K���q���6�A�O���[���e�t5	&Mxa"�jo��E�xԶ���!�a�9U��#Ep<M�l4�� ����^p�(��C�r������o���0�� �����Ϲ�s�l!,�'�}���u3W��Y���J�F��.���� �Q�>��6X�ă��&C��A��0��O�I�A&�+���wȜ'�>�U��)�҂&�5V�p��!_Uoā7���5B��}: ���ĭ��/�6���������8��R�fI��u�3yR�P�7��?�Kw���t�:y���D� /!QBhD1d��}�:�S�.�E�1��m�v~��0"�|�ϒ�Gi|����ϗxe���[�Gc�G�y)������/��(a ~�O�
�l�*4#��Y��En���BǇ1�>�Gt)5/���U��N72��=>Q�a�� �6g��&��y�3�^D������U�@���B�Z�cu��=���Oʧ��q��kv ������f'���ë��"ۉ�p�<Թ���0�8Oe�iE3_�[Q\v�}�p���T�v%�C�w������n��?�>4E=��Hv��zfܙ��;��E�}�-�`�X��j�-��XN�s�.�I�"R�e!��cvO�|���6��n�D�YwVuEo�kG�w�	���/"�]AXT�B$������tҶO������ʵ��*E�}"�u�i���������S+{��.�Q�`�J�X��M����_I�I���w�R!l��(h�a0�b��(�,�g�
�Hd&+Y�
rS�w�2-����\#�)�ڈ�Mq�&�L]� �?D�}!$"a0�A��&���8(��(��ła���nB��j�}"�u[)�#�y�B�<9q�
��.�r�UŘ���g���ѻ���B�A�!@o�!4ml�'N�I�$	rFvzv�'y�m!ɠh�M��5B��5pmwo�!���:\rY�w�E��~�:z�� #�
<�N�;��(J;��^H��o^�>"]k|"Q������y¬�vG�l��~^��i���L�%�Oɦ(��������2"C��E���Ǐ��ydj         �   x����
�0��s��KJ�v]ۣ���9��T���a�Ã�����x.C��YG-7cL�z c?齢�N�R�QP��j}���)5"�u��b��
�+��-@~�Lbœ�n������_�d)�}�G���Bi      E      x������ � �         a   x�3�,.)��K�426"c#� �
A���+[�Y�X�Y�YXZk���2��+��Q@��b�ͭ��M�,�ͰX�*����� @-C�            x������ � �      C      x������ � �         �  x�͖�r�0���)�O��n� �!�2�T��`�;v���������N2U$�����{AE�r����oU��m�$�~���.�}Wu���J�DO������@L	+e�#��? wV@�rg��p�qIy��u��n�����g��Md2m�i[�Ӫ�8�b5mf���v]�n������v6{h�����C��W ��'m$e�X��F��4 �T�ENJ�����G«�j�m��>Ӥn�}�����@j���@��2�M�c@�0�"H�
������U+��"@�?�-�G����ux(��Rp�� �>
�6k�ڝ�KZ�V�״H���=�"t}>���D~Pj����w�T�7F�t�+�����[��v�~ޢ��p��j��-�g�&o�@G��+|]v�ex�-��<S6�$�;�.�����"<=���ɤ,����4�C�.�Pz/Qܖ,�����%K"l�)hC�!��Ʉr/�)�A�����z��|>�r ������2(: �\zyl��Ů�_�e�^�P��\�M����{P8�w�ºxՙ��2�!����Ϊ�4�L����yq��ZW[cj�m����~�akS�'ԇ>0�>��x��Tl�]R������:���VD�5{�N�u)��,"���y�M&�?�sR/         ]   x�3�LN,IM�/�T0�,.)��K����E�RFF���F��
FFV��V��z�&���fx%���aXjD��F&zF���X-E������ ��@b      R   6  x�ՙ]�[7���_��`1_}�Uh�"�%�B!P���K/��::��ڒ��+� duxϞ�3I�H�X���O�����(P���ퟯp ���~���_�w��v�y>�����_�ݪH�Ã��������_�o������Wk=ov�����X�G��kc���sd��"� ����w�]U�ʤ.��v������b�_�q���
CF�H�_{vS��J;"2ʈ��'A�Ȭ�$^[nn�y���f��}nԽ�k���Cu��"���j���x��OO�6Fڎ��2F���٤H1�Ԉ^R��fh��(�)SrL*���k��r�A���#��r7�5wj�ӑ;�]�P�3�d�L����'h7�+�y5:7浉m����,�yL�ء�՚[z�^Jb;Q)��Zѷ�f" �Mop猟}�m_1{����
7�1�f�,z��|����7��2`f3y1�ˁ��^1�~c���kfv���K�I��q�����@�3��L���
Jg�n��n͸lN��DB���T�ԙԭYƫA��M}�y�Y��ԙ֭Uũ��ټ�ٌЫgg5ZP:ԭQK�Pc&t#��?=��;�غ4�Q��dq�(!u�g5��^�Z�q��՟f��7޳��Ί����(ܒ�qe!靍̪mھv�崪s\u����0P$���Z���֝D�m�2_��;�Zӷ>�d$z�)��:�X��v��0�ui&۔�K�Qk�ֶ�C?9��yP��;jM�9:9�x��������c��|�ţs�N�ه����i�Wdmʖ��������?������?]R��(�5$�D}��^@8��%��%��UZpk�Ƌ�tdgϝ�j=5�*�8�A�қ\�1Fu!*�����H�c���F����2@��{��$t2�V�����1� ?o���Q�*����/c��C>����_�X\�^<�b��2? �b�*�<H�*�&ъ"����򎲳k`k�p�C?3	Z.em��	J('ڊ��^(�������[��iA;5�.���gb8�tq�tS��[�/n�\��Q��      T   "  x���Qr� D��0I��DO�����ԍQ���LL�^��EpD�B
�{}m)��W �B�g(A�ޡ}�=4��x����ɚw�B��b��}�e$"���āDC��:����@���!yA%���L�pc��I^�0��&}x���� ��U ���n�e��%���P[�����I��N��gp����\e��gF��0�ǢwNy���I����aћ:҉o�H��ʓm��ߣ�S��_���;m���v���7��m:�˜!s�ͽ�Rǽ��7�A�      V   �   x���;n�0@g���S�!z��E�m�*v(��:14�x�{2E�^@�����ȼ�.TN,U�Z �ZyC�f'������8�;*���_��y��;*����ߚ��05P�{*�Hf����y}�c��������	�"��@"{��l���T=c�icr�ܚ>)��E��	����=m�(���բ���2,�ѵ(�[��V����x�qG/�ȴ��/��Q��=]���	��g��%��ў��;�<� _�         �  x���ߎ� Ư�)|�Ʉ��j�n&{17��v.'1Le���ZZ'�O��U�g+A[�;��W&����)Z�$Ys�^�T�����ͦѥך'�4���2-�pD�M�lҳٝ�1�?芷]#�*�  `. t��g���G#|���>A�>Zk#�AL�Zp�������kݪb��/>�Q�zǫ�� |�ٶ����ȉ˒��)|#�9ԭT�4�ld�/;D�I�DC��Ldx��l�@�)�3���j�%R:��v�6'^b]7��#�A޵j�7��n�Z�%��+M(l��-��kވ5�
�I�asJ�����a�~	�ݵ�w(?�����o�~@�~sǈ���Ť"FM4NOiFI�ߜ[�eBE�>R:�e#��~�Mq9�S�|?2�r�y`R�)��/!ƳF����R��<K��}�g=��q�WӸ������|��QN j�+
Y��v���כ���s_��?�[���.�\U�a�������Np������O�F]���A�P�G)E�ɀ�
X��}9���A������^F'�����Q�m ���]�������f�+�O��{�Ƌ�%0�7��*����K��A�P*f/�)��]yV�j�S�����z��]��?nWǳ�.`qf���oa\暗YjN�n���i3�=�f���         �   x���1
�0Eg��KB";��C�^L9]:؆\���C�B�������C�TH�R�힎�J�WX�wf-A.��Bc!,�b�a��F3[3�m{�.����B���O89S��I�0s]�(WH�q�H�8��ֶ޹����'WC��z .2Ut      &   �   x����J�0���S�n[��4s�O���v�d��l��o�*��E0��I`B��iE�'���ҙ�������k�JŒb[qa獀X��J��B�H�ujw�����U�L>��t\Z�A<9�S���`�'�b������Ċ(h��c.�cY��B�^U�:�[pǪt���,�lb�zc�P�V��V�����5`�����k�����Ec[��TF��Vw�7EQ|Ҭ�n      (      x������ � �      H      x�3�,��J#������ �0      	      x�3�,��?����� C0�      e   t  x���Mn"1��p��G�\�r�g�	��xHM�tZ$�~��L\�4$���G��2l�">[zF�����LL�9������B��\��p�#���4�f?O����W��������'Kl2	R�h�*h�뼌F�}�_��O�J#������&Ԟ�U>�c �-��}:�_q^�l�0sd�֋=l)��9����++��[��&Y�,
�����2�G���آ�X[�� �4��4�VX�v�8z����þ��x,�=Ҽ]i`�!WO�0�(WRQ{�uXʾD^Y�ұ.�5��G��PŞ��q)	���Pb̶��9�̀����r�7R��s�焣�삱@^��Q���<|$�6�HR&���E��P{�4�������p���gB5UQ��T�AoÝS"����e��k)�˰^D�fK
�Ƿa�o����x?Ί��)e$��!��TU�[��Odu[�]�(=g��G�T{�i�3O5&@��H�c=��V ��?���ʰ߆s!v��������X�4�wAd]U{�y~��+��/܎���M0��P�B��\�wgC ��ܮ�t�m#\$��:?_��:�6��/���Ӏ��6��y�nS�����}1���/���      k   �  x���q1߃`\"t���a�>�ŦwD���JN�zj�H��S+ui�n�ԣ�zU��
-�*FTW1���15U��bTm��WWf���<���d�y�2�<d�y����-3�Gs!4OĚ7ҵZdh���$G�V���5"֚�t�H:w$�'����j����,�܎�LL�N{:O�)����H���3#SgEҹ�C牤�F�n��<s:�#K�y#��sEҹ#�<�t�/Ϙ�4L���Qګ�u���>��d!-�V�Z���:��	�|Q ���������Q���Qu1� K*�����"���*R0�0Pu0P��ڪ7�$�PݘP�cB��	Ճ�G-��@�ńj�i�aL��1�����0PAΣ�bB͆�|��iL���������0Pu0P�|��-�ecqoP��l�"������F��/��l�2������F��/��ll.*7◍\�_6r'~���0K�?I�iأ1      g   K   x����@��PL��G�^��?c	W쨜q�+v�˞�8�� 1�fI�ߺ#�v�����m�֐m�2�<��      i   W   x����0���bn�ڎ�^�#^H�Q�&�\,s���1/�ԃ��G��(oM���A/�w��tPl�(�~��Zt|�t|߯���	�         S   x�312�44�30�,I-.�4��@DpbiJ��cQbg����1P\���J�ļ��Ĕ���J3 ����&D�7)����� g#*      K   �   x���1
�0Eg�=Ap�� L;I�B��"�lJ�_��=K�����
�!�)��3�!�&x�q��v7�3�ίv��셤�l�KqRa�Rc)�ۇXw�E�^D9ג�K�����n{�5"¹A�/@�^I         b   x�3�,��,V �D����T#�?���%��s��w	u��p��Z(YZ���Y��i���Y��Z��e�b���� R�      ]   �  x����j�F��[O���M����d��M`�gڶXY$�z'O��Zj[R1�1?|���N��{^��v�p*�燶�N�&��>p�QWpA93�ٟ������	r�B9�C8U��ܵ��q�w|_0E=��K��U�ǉ���)����$9�:��-'�
&)��[�wک�n½(r�f8��C�1��TƅG�k�܏�<�2M.�Ә���x�+�׆J���J�䯉�'^f�KٔO��Kw|.�ph�S��q��+����h�Jr?����⓬].]�9I�	�L`�Q%�m�30s�W9��
�Fj���f�J�ee~G�ˡj�HD�5�j� .�}$2�l�7te�?bQ��A��hOnUI~��oŐ'r�9Tu{}�ag%�r!4���
Q�GZ�6uդ��"�@�����9���Q��
n����#?�T����?���=�s�
�����7�^rz��L͸Z����!=�\(�Z�5��� ��4?�B:�[��j��߯Ω�ޠ�����&i:��%��vl�q
��6*��B�h�o���ҡ�ӝ��g��я�]/��̸#���ߛQ��qȰV��|>.�H�
u;m��CY�n8��3b�a��K�F��S��O�|B��Dᥬjh��[�����p�-GW�%���<!�!_OUl/�ek�3�M��j��̊"����8������t08�vX]lTK���|�E����U=�rTs�����8��[ ��h�����G�X��F%ҝ[Ւ�gV���R{���9ا���7@Q�z%�FҵU�5���	3�P~�M>dRIΑ�ߪ�|ao6Z��p](A�L�S7�[]���Fqͅv�ˌ��/ð�mTG>��61��L�������#�e������p1��10C�UnU^�匍�泄�V�	��{�����e���]���BHxY���z�GU�|�L�dj�.<AQ�r��S!�5uX��!�2)Ӂ1���@�y��#�s��Du<6�qz�t�7��t��Ҝn��q��4��FU䏉��5�~��i�"t�)ZJ��W�"?��|���!��š<�r�+D1�v��
�!�IS��ѡ.���+Bך�]����T^��̅�o�����S���D�`7�"_4S�>����ҍ�&���ֳW��U#)��fY�/��,      m   �   x�U�1�@k����$E�Hi.>'X9ld| ~@i���V���n�S��ج9�;V��Z`��7���������Ԋ'��V�����X��(\ea�`��'��(z��������P�g��*e�jd
����b�Ez�)�/p,Bi      c   "   x�3��/V�M�KLO-�4��������� _�(      Z   S   x�35��/-)�LIU�LL�42�30�412�25���K8gd��$���s�@卹LM�ɛp���MFR`j�P`Ɖ]g� �(      _      x�Eͻ!�����Ft��F���Hk�2F��!���
�v��L�h]�_؉nj�Qؗk�Xb/
��]�ú�R�,�k�1����>�v�ŉ"Kn��PR�'I��È'i�a�����'�O�gJ��$+�      a   D   x�3�,�/��M�KLO-�,�L�L�2�%'gd��@�\Ɯ������Eɩ��%�ii ��%\1z\\\ ���      M   %   x�34�,��H���W(�/�IQ0�,I-.����� ��      O      x�3�L�L)��=... B�         <   x�3�,.)��K�41�30�4202�50�54W00�26�2��36�414�60�/����� ��      3      x������ � �      �   �  x��YYo�<�����w�Kmǎ�JG*SB}�Q�!���8m��4�n��n�{���ZˁԲbp���j��j^m]k_P�Xm����Ɗ�D���
������E���_��@���� �@���j@��S�S�#���Kځ����������i���!H��}�Jk=Y<�]�Q��Y��>��[F���T�eDeJV�p��y�v龦,�CQ��<<��oK�;�ѓ >!���ė/S���J5�@&ZȬ=}]�w�B�pmja\3'L>���0����+� ���',6���3LD~/BP��h޳��z~���p+	�/?��Y�^�pW����$�Rߚ٦����rkmҌ��H_R~��3��R۪Ȉ��%��OQM�A��)~���B
������%#����)�(Ԅe�l�=x�xu��sɗ��g?M�͵*!y��!"�[槄��mv����X��u$~��I.��y���ҁ�d�V��3{ G?�/�b��M�pq���4�/i��Թ(�+���y�o�o���ǡ�8�?�<	��@@ �݇	��^��?%RL݄]
����鯍�w�����t��s[zp�i�g-1[���Lw����QW���	���Pˮ!�J�
�Kku�e}p�:�Ρ0��k]�
���î�ma��=�;�����26��B�c���ޠn8�����"��!��!bFS���f�E���i˨��|�
��i�g�IK٤�o�"��#��u��Н<������!ڿC�,I��������M�k��7�x��3�KՑ���[]��������6�+�Bpv��ÿ́"�/;Z�x��p����'ȇ�p���G98k���ʿ��^�5����'(<Ҁ�2F�����m��j���'T�]W�uв�Z>�� �F�]��"�[�ـh��0Po-�dN��p�&�G�w�\�]ۙng�\tߊ��NZ����7���sz�_e�xG��E��O�>a��])��� �gD���@~ƾ�u��v0�U6���h���K�Bt
у��(�C ,g �F�~�w���~����� �>���8�='�������Y�񿀕�/��LB��y�|MMG����HP��^=i�8>Y]��bs�{2�7��A�(6�f�>Ź$ZT2SJ֠��;�"�;? ��nk~��}ﻌ��KZ�O ������e��o��znմ��X�[�?��	�I�,�ޥ����¤f(��e.H�M>k� �[���=^!��)�R���!b�'W�*����A���P{9��s�7��}镆 D��8�h�D�d4�%Ǒp;�R������V��C��x���?*V��y��r����;_�|��6񏥡|͗�Ug�Y��VB�P�+�	@#p���O����z[nȹ>���:��<ئE�.#miؙ������.������z�~�ys��'����b�o,\%��^HU/�\Nk�HVE�,�{'�Z�X������P�v�碩�S�ct��)^���bM�f��.׍/��A�!�� j�P�^A�>]���v�uG㙝l��XRY?��Q?z����9?���
.�nΤ��:1��-��ͼd�mɣ��EeI��@��;ß�6;F��͊"��[�G3�(�$�	8�W�.����7կ�LG#m�������_h)wY;k���W���y��JD%D��`���g��ؽ�*�o��ѡYdA�n֗}<�m�*������.ۡ��G���&���0��Q�Z���Y�,�\.�a@>����*�������v�YB@���3�,f�C�3��1���vµ����ps{��l2���]"M�W���E%"�M6 # K�����g�������Y|�-��M�ĳe���	�Ý��[v�⍾)8m�p5�w;�|y�2o?}<������"Z���E�a9u aQ@�뷨p����H�����Xo�G{O�����&�Mk;s�&��C�.ߒ�  ܞ�����N��+�#L�N�=���;�z��<8�A���R�_��&��3�*��%���<��6_�{�ώ�\�s�j#$��2����Ô�z�f��vjp:0tI7�ǥx�i酸������<$��U�^�O5��
���ѦL�p���&�y22i2���Nx��p}�%�ֶ�-�;L2&��95�E��� En+��w�<[����»��<iv-�
���V�X	����[�He٭���i'�2�.�n��\��E��f�-6��J'>9qw}�ðw��Ra%�>�M$����jù�s`X$V��B\���pb_��ш�����=�K,�9
�<�a� p��3��rh��B���]\�VlHb�������\�+[F�$Z]���7O-d��^���a�7��z8�<�;<⭍�r���| ���C����T��%Oz��+r�;t�`�&��:*��
�0�Z�nZb�IЊ5_L[��A�Su��Z1��n��S!�1_���P@�y+�(U�tuI��o	�'�#�{��K4��&��^aR*�#wl�==���b�k�e]7b�_v�M�H�H��f�e]�hgq	O�봻wS{p˶�H����/�Z��[e������
|��hi��n<�Es%��;f���b�7���l���Ĵ]{�[��I��nz���g�sW�"��������{���sg	"�*��.��h�W X�%���}��X?������C{q�ڦ׿��ɵu�$��:�I,m��V���|�s/�7�����h�5Pİ
|���(�~����o,��lu�!8��1kzQ����i�n���"j$����G�Q�����tmk�fy������ޙ;$�te�T��X�߼cq$�
{���n�wg8lpz���[,ʕ���QJ���hiQ�7���J_얄c|�����M#�'L�(P���I�6�k�m��v����tqP#=n��[#�q�<6#wm�^�Kl�p�{�~g��v��9<�W>p�Β���ɶ젲����� �*y�b_:]߼���.����v�=��qW�#���Z$�^�M��]<;�2�%�7,���
���:ܹqzB�^����Z^p�8%	U���I��+9d����
�G\��*��=br�*�Ri+�Y���F�=��ك|-x�c�ɜc�B����ep��)����ZN��L��s���������7*�*�z�p\^��"�T�o�1eoW3H�ඒ��`O1%'�g�V�\E��no5��퉟�
�4�<�e�\����v� �=�6�W���Q�����O�=Py2H�-�RY ���
��j�s37d3_K� td��մ�M������88e#�H�5]=�Τk'y6?���p�Z��Ms͇w�����o���@��FX�0W�t� O,rRU-F��j�S��D��[��V��n�tM����V�6�Q������R�w�=�[�����#PE?���5"���X1�ʹdAV'ӴUuh�$�z֧8�Q�I�#�����X���w�o�q�7Omxܑ�N���6ݥ^� t���@5������ ��&X�p�<�Of�p����5:�Ыw��tF���ᝇ#_��,�n�,�L��NzJ�05�w�f�H �»M{��5<.D� T����4H�s64�Ŏ9�JfV�:�=���z�f1UQ!�B)t�����{;w��ZWn���^����)tcw�BO^�U��r��i���?�<Z�E      �      x������ � �      �      x������ � �     