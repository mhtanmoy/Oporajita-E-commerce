PGDMP         +                 z            oporajita_tumi    13.4    13.4 *   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    991568    oporajita_tumi    DATABASE     n   CREATE DATABASE oporajita_tumi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Bangla_Bangladesh.utf8';
    DROP DATABASE oporajita_tumi;
                postgres    false                       1259    1097979    app_api_facebookpixel    TABLE     �   CREATE TABLE public.app_api_facebookpixel (
    id bigint NOT NULL,
    facebook_pixel_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 )   DROP TABLE public.app_api_facebookpixel;
       public         heap    postgres    false                       1259    1097977    app_api_facebookpixel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_facebookpixel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.app_api_facebookpixel_id_seq;
       public          postgres    false    281            �           0    0    app_api_facebookpixel_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.app_api_facebookpixel_id_seq OWNED BY public.app_api_facebookpixel.id;
          public          postgres    false    280                       1259    1097990    app_api_googlead    TABLE     �   CREATE TABLE public.app_api_googlead (
    id bigint NOT NULL,
    google_ads_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public.app_api_googlead;
       public         heap    postgres    false                       1259    1097988    app_api_googlead_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_googlead_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.app_api_googlead_id_seq;
       public          postgres    false    283            �           0    0    app_api_googlead_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.app_api_googlead_id_seq OWNED BY public.app_api_googlead.id;
          public          postgres    false    282                       1259    1098001    app_api_googleanalytic    TABLE     �   CREATE TABLE public.app_api_googleanalytic (
    id bigint NOT NULL,
    google_analytics_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 *   DROP TABLE public.app_api_googleanalytic;
       public         heap    postgres    false                       1259    1097999    app_api_googleanalytic_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_googleanalytic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.app_api_googleanalytic_id_seq;
       public          postgres    false    285            �           0    0    app_api_googleanalytic_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.app_api_googleanalytic_id_seq OWNED BY public.app_api_googleanalytic.id;
          public          postgres    false    284                       1259    1098012    app_api_livechat    TABLE     �   CREATE TABLE public.app_api_livechat (
    id bigint NOT NULL,
    live_chat_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public.app_api_livechat;
       public         heap    postgres    false                       1259    1098010    app_api_livechat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_livechat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.app_api_livechat_id_seq;
       public          postgres    false    287            �           0    0    app_api_livechat_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.app_api_livechat_id_seq OWNED BY public.app_api_livechat.id;
          public          postgres    false    286                       1259    1089792    app_api_news    TABLE     �   CREATE TABLE public.app_api_news (
    id bigint NOT NULL,
    image1 character varying(100),
    image2 character varying(100),
    image3 character varying(100),
    popup_enable boolean
);
     DROP TABLE public.app_api_news;
       public         heap    postgres    false                       1259    1089790    app_api_news_id_seq    SEQUENCE     |   CREATE SEQUENCE public.app_api_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.app_api_news_id_seq;
       public          postgres    false    279            �           0    0    app_api_news_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.app_api_news_id_seq OWNED BY public.app_api_news.id;
          public          postgres    false    278            !           1259    1098023     app_api_orderplacedfacebookpixel    TABLE     �   CREATE TABLE public.app_api_orderplacedfacebookpixel (
    id bigint NOT NULL,
    order_placed_facebook_pixel_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 4   DROP TABLE public.app_api_orderplacedfacebookpixel;
       public         heap    postgres    false                        1259    1098021 '   app_api_orderplacedfacebookpixel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_orderplacedfacebookpixel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.app_api_orderplacedfacebookpixel_id_seq;
       public          postgres    false    289            �           0    0 '   app_api_orderplacedfacebookpixel_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.app_api_orderplacedfacebookpixel_id_seq OWNED BY public.app_api_orderplacedfacebookpixel.id;
          public          postgres    false    288            �            1259    991737    app_api_popup    TABLE     �   CREATE TABLE public.app_api_popup (
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
       public          postgres    false    219            �           0    0    app_api_popup_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.app_api_popup_id_seq OWNED BY public.app_api_popup.id;
          public          postgres    false    218            �            1259    991745    app_api_promocode    TABLE     �  CREATE TABLE public.app_api_promocode (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    code character varying(50) NOT NULL,
    is_active boolean NOT NULL,
    usage_limit boolean NOT NULL,
    "limit" bigint NOT NULL,
    valid_from date NOT NULL,
    valid_to date,
    expire_limit boolean NOT NULL,
    discount_type character varying(20) NOT NULL,
    discount numeric(8,2) NOT NULL,
    discount_order_type character varying(30) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    apply character varying(80) NOT NULL,
    orders_over numeric(8,2),
    CONSTRAINT app_api_promocode_limit_check CHECK (("limit" >= 0))
);
 %   DROP TABLE public.app_api_promocode;
       public         heap    postgres    false            �            1259    991743    app_api_promocode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_promocode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.app_api_promocode_id_seq;
       public          postgres    false    221            �           0    0    app_api_promocode_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.app_api_promocode_id_seq OWNED BY public.app_api_promocode.id;
          public          postgres    false    220            #           1259    1114372    app_api_promocode_products    TABLE     �   CREATE TABLE public.app_api_promocode_products (
    id bigint NOT NULL,
    promocode_id bigint NOT NULL,
    product_id integer NOT NULL
);
 .   DROP TABLE public.app_api_promocode_products;
       public         heap    postgres    false            "           1259    1114370 !   app_api_promocode_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_promocode_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.app_api_promocode_products_id_seq;
       public          postgres    false    291            �           0    0 !   app_api_promocode_products_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.app_api_promocode_products_id_seq OWNED BY public.app_api_promocode_products.id;
          public          postgres    false    290            �            1259    991600 
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
       public          postgres    false    207            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
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
       public          postgres    false    209            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
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
       public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
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
       public          postgres    false    223            �           0    0    company_api_aboutus_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.company_api_aboutus_id_seq OWNED BY public.company_api_aboutus.id;
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
       public          postgres    false    225            �           0    0     company_api_companypolicy_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.company_api_companypolicy_id_seq OWNED BY public.company_api_companypolicy.id;
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
       public          postgres    false    227            �           0    0    company_api_faq_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.company_api_faq_id_seq OWNED BY public.company_api_faq.id;
          public          postgres    false    226            )           1259    1180122    company_api_metaproperty    TABLE     �   CREATE TABLE public.company_api_metaproperty (
    id integer NOT NULL,
    meta_title character varying(100),
    meta_description character varying(200),
    meta_keywords character varying(100)
);
 ,   DROP TABLE public.company_api_metaproperty;
       public         heap    postgres    false            (           1259    1180120    company_api_metaproperty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_metaproperty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.company_api_metaproperty_id_seq;
       public          postgres    false    297            �           0    0    company_api_metaproperty_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.company_api_metaproperty_id_seq OWNED BY public.company_api_metaproperty.id;
          public          postgres    false    296            �            1259    991790    company_api_news    TABLE     }  CREATE TABLE public.company_api_news (
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
       public          postgres    false    229            �           0    0    company_api_news_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.company_api_news_id_seq OWNED BY public.company_api_news.id;
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
       public          postgres    false    231                        0    0 !   company_api_termscondition_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.company_api_termscondition_id_seq OWNED BY public.company_api_termscondition.id;
          public          postgres    false    230                       1259    992279    customer_order_api_notification    TABLE     ,  CREATE TABLE public.customer_order_api_notification (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text,
    url character varying(200) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_from_id bigint NOT NULL,
    user_to_id bigint NOT NULL
);
 3   DROP TABLE public.customer_order_api_notification;
       public         heap    postgres    false                       1259    992277 &   customer_order_api_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.customer_order_api_notification_id_seq;
       public          postgres    false    274                       0    0 &   customer_order_api_notification_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.customer_order_api_notification_id_seq OWNED BY public.customer_order_api_notification.id;
          public          postgres    false    273            
           1259    992224    customer_order_api_order    TABLE     �  CREATE TABLE public.customer_order_api_order (
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
    shipping_charge numeric(10,2) NOT NULL,
    other_charges numeric(10,2) NOT NULL,
    other_discount numeric(10,2) NOT NULL,
    promo_discount numeric(10,2) NOT NULL,
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
    payment_id integer,
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
    register_total numeric(10,2)
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
       public          postgres    false    266                       0    0    customer_order_api_order_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.customer_order_api_order_id_seq OWNED BY public.customer_order_api_order.id;
          public          postgres    false    265                       1259    992256    customer_order_api_orderitem    TABLE     "  CREATE TABLE public.customer_order_api_orderitem (
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
    product_image character varying(100),
    product_name character varying(100),
    size_name character varying(100),
    size_value character varying(100),
    discount numeric(8,2)
);
 0   DROP TABLE public.customer_order_api_orderitem;
       public         heap    postgres    false                       1259    992254 #   customer_order_api_orderitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_orderitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.customer_order_api_orderitem_id_seq;
       public          postgres    false    272                       0    0 #   customer_order_api_orderitem_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.customer_order_api_orderitem_id_seq OWNED BY public.customer_order_api_orderitem.id;
          public          postgres    false    271                       1259    992235 !   customer_order_api_paymentdetails    TABLE     �  CREATE TABLE public.customer_order_api_paymentdetails (
    id integer NOT NULL,
    payment_method character varying(10) NOT NULL,
    payment_status character varying(10) NOT NULL,
    amount_paid numeric(10,2) NOT NULL,
    transaction_id character varying(70),
    is_failed boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    sale_status character varying(30),
    source character varying(30)
);
 5   DROP TABLE public.customer_order_api_paymentdetails;
       public         heap    postgres    false                       1259    992233 (   customer_order_api_paymentdetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_paymentdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.customer_order_api_paymentdetails_id_seq;
       public          postgres    false    268                       0    0 (   customer_order_api_paymentdetails_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.customer_order_api_paymentdetails_id_seq OWNED BY public.customer_order_api_paymentdetails.id;
          public          postgres    false    267                       1259    992243     customer_order_api_transferorder    TABLE     �  CREATE TABLE public.customer_order_api_transferorder (
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
       public         heap    postgres    false                       1259    992241 '   customer_order_api_transferorder_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_transferorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.customer_order_api_transferorder_id_seq;
       public          postgres    false    270                       0    0 '   customer_order_api_transferorder_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.customer_order_api_transferorder_id_seq OWNED BY public.customer_order_api_transferorder.id;
          public          postgres    false    269                       1259    992134    customer_profile_api_address    TABLE     �  CREATE TABLE public.customer_profile_api_address (
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
       public          postgres    false    260                       0    0 #   customer_profile_api_address_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.customer_profile_api_address_id_seq OWNED BY public.customer_profile_api_address.id;
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
       public          postgres    false    258                       0    0 2   customer_profile_api_customergroup_customer_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.customer_profile_api_customergroup_customer_id_seq OWNED BY public.customer_profile_api_customergroup_customer.id;
          public          postgres    false    257            �            1259    992116 )   customer_profile_api_customergroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_profile_api_customergroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.customer_profile_api_customergroup_id_seq;
       public          postgres    false    256                       0    0 )   customer_profile_api_customergroup_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.customer_profile_api_customergroup_id_seq OWNED BY public.customer_profile_api_customergroup.id;
          public          postgres    false    255            �            1259    992101 $   customer_profile_api_customerprofile    TABLE     �  CREATE TABLE public.customer_profile_api_customerprofile (
    id integer NOT NULL,
    email character varying(55) NOT NULL,
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
       public          postgres    false    254            	           0    0 +   customer_profile_api_customerprofile_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.customer_profile_api_customerprofile_id_seq OWNED BY public.customer_profile_api_customerprofile.id;
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
       public          postgres    false    217            
           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
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
       public          postgres    false    203                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
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
       public          postgres    false    201                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200                       1259    992350    django_session    TABLE     �   CREATE TABLE public.django_session (
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
       public          postgres    false    240                       0    0    inventory_api_brand_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.inventory_api_brand_id_seq OWNED BY public.inventory_api_brand.id;
          public          postgres    false    239            '           1259    1180032    inventory_api_customermessage    TABLE     ;  CREATE TABLE public.inventory_api_customermessage (
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
       public         heap    postgres    false            &           1259    1180030 $   inventory_api_customermessage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_customermessage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.inventory_api_customermessage_id_seq;
       public          postgres    false    295                       0    0 $   inventory_api_customermessage_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.inventory_api_customermessage_id_seq OWNED BY public.inventory_api_customermessage.id;
          public          postgres    false    294            �            1259    991889     inventory_api_inventory_location    TABLE       CREATE TABLE public.inventory_api_inventory_location (
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
       public          postgres    false    242                       0    0 '   inventory_api_inventory_location_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.inventory_api_inventory_location_id_seq OWNED BY public.inventory_api_inventory_location.id;
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
       public          postgres    false    252                       0    0 '   inventory_api_inventory_transfer_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.inventory_api_inventory_transfer_id_seq OWNED BY public.inventory_api_inventory_transfer.id;
          public          postgres    false    251            %           1259    1155329 .   inventory_api_inventory_transfer_transfer_item    TABLE     �   CREATE TABLE public.inventory_api_inventory_transfer_transfer_item (
    id bigint NOT NULL,
    inventory_transfer_id integer NOT NULL,
    productsizevariant_id integer NOT NULL
);
 B   DROP TABLE public.inventory_api_inventory_transfer_transfer_item;
       public         heap    postgres    false            $           1259    1155327 5   inventory_api_inventory_transfer_transfer_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_inventory_transfer_transfer_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.inventory_api_inventory_transfer_transfer_item_id_seq;
       public          postgres    false    293                       0    0 5   inventory_api_inventory_transfer_transfer_item_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.inventory_api_inventory_transfer_transfer_item_id_seq OWNED BY public.inventory_api_inventory_transfer_transfer_item.id;
          public          postgres    false    292            �            1259    991900    inventory_api_product    TABLE     �  CREATE TABLE public.inventory_api_product (
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
    tags character varying(100)
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
       public          postgres    false    244                       0    0    inventory_api_product_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.inventory_api_product_id_seq OWNED BY public.inventory_api_product.id;
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
       public          postgres    false    246                       0    0 $   inventory_api_productcategory_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.inventory_api_productcategory_id_seq OWNED BY public.inventory_api_productcategory.id;
          public          postgres    false    245            6           1259    1180523    inventory_api_productpurchased    TABLE     $  CREATE TABLE public.inventory_api_productpurchased (
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
    supplier_id integer
);
 2   DROP TABLE public.inventory_api_productpurchased;
       public         heap    postgres    false            5           1259    1180521 %   inventory_api_productpurchased_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productpurchased_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.inventory_api_productpurchased_id_seq;
       public          postgres    false    310                       0    0 %   inventory_api_productpurchased_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.inventory_api_productpurchased_id_seq OWNED BY public.inventory_api_productpurchased.id;
          public          postgres    false    309            8           1259    1180534 "   inventory_api_productpurchaseditem    TABLE     �  CREATE TABLE public.inventory_api_productpurchaseditem (
    id integer NOT NULL,
    order_quantity integer,
    received_quantity integer,
    sku character varying(50),
    subtotal numeric(10,2),
    total_received_price numeric(10,2),
    total_tax numeric(10,2),
    unit_price numeric(10,2),
    inventory_location_id integer,
    purchase_item_id integer,
    purchased_product_id integer,
    purchased_size_id integer,
    tax_id bigint
);
 6   DROP TABLE public.inventory_api_productpurchaseditem;
       public         heap    postgres    false            7           1259    1180532 )   inventory_api_productpurchaseditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productpurchaseditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.inventory_api_productpurchaseditem_id_seq;
       public          postgres    false    312                       0    0 )   inventory_api_productpurchaseditem_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.inventory_api_productpurchaseditem_id_seq OWNED BY public.inventory_api_productpurchaseditem.id;
          public          postgres    false    311            :           1259    1180578 %   inventory_api_productpurchasedpayment    TABLE     P  CREATE TABLE public.inventory_api_productpurchasedpayment (
    id integer NOT NULL,
    amount numeric(10,2),
    payment_date date,
    payment_method character varying(50),
    reference character varying(500),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    purchased_id integer
);
 9   DROP TABLE public.inventory_api_productpurchasedpayment;
       public         heap    postgres    false            9           1259    1180576 ,   inventory_api_productpurchasedpayment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productpurchasedpayment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.inventory_api_productpurchasedpayment_id_seq;
       public          postgres    false    314                       0    0 ,   inventory_api_productpurchasedpayment_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.inventory_api_productpurchasedpayment_id_seq OWNED BY public.inventory_api_productpurchasedpayment.id;
          public          postgres    false    313            �            1259    991937     inventory_api_productsizevariant    TABLE        CREATE TABLE public.inventory_api_productsizevariant (
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
       public          postgres    false    250                       0    0 '   inventory_api_productsizevariant_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.inventory_api_productsizevariant_id_seq OWNED BY public.inventory_api_productsizevariant.id;
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
       public          postgres    false    248                       0    0    inventory_api_supplier_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.inventory_api_supplier_id_seq OWNED BY public.inventory_api_supplier.id;
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
       public          postgres    false    262                       0    0    pos_api_outlet_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pos_api_outlet_id_seq OWNED BY public.pos_api_outlet.id;
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
       public          postgres    false    264                       0    0    pos_api_register_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pos_api_register_id_seq OWNED BY public.pos_api_register.id;
          public          postgres    false    263            *           1259    1180130 "   settings_api_checkoutfieldsettings    TABLE     �  CREATE TABLE public.settings_api_checkoutfieldsettings (
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
       public         heap    postgres    false            +           1259    1180149 )   settings_api_checkoutfieldsettings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_checkoutfieldsettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.settings_api_checkoutfieldsettings_id_seq;
       public          postgres    false    298                       0    0 )   settings_api_checkoutfieldsettings_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.settings_api_checkoutfieldsettings_id_seq OWNED BY public.settings_api_checkoutfieldsettings.id;
          public          postgres    false    299            �            1259    991818    settings_api_checkoutsetting    TABLE     z  CREATE TABLE public.settings_api_checkoutsetting (
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
       public          postgres    false    233                       0    0 #   settings_api_checkoutsetting_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.settings_api_checkoutsetting_id_seq OWNED BY public.settings_api_checkoutsetting.id;
          public          postgres    false    232            4           1259    1180279    settings_api_customuser    TABLE     �  CREATE TABLE public.settings_api_customuser (
    id integer NOT NULL,
    phone character varying(100),
    role character varying(100),
    all_dashboard_section boolean,
    dashboard boolean,
    all_product_section boolean,
    create_edit_product boolean,
    delete_product boolean,
    print_label boolean,
    all_inventory_section boolean,
    update_inventory boolean,
    purchase_order boolean,
    inventory_return boolean,
    supplier boolean,
    inventory_location boolean,
    manage_inventory_transfer boolean,
    all_order_section boolean,
    process_online_order boolean,
    create_process_manual_order boolean,
    all_setup_section boolean,
    manage_payment_method boolean,
    tax boolean,
    manage_tax boolean,
    all_app_section boolean,
    low_stock_alert boolean,
    email_marketing boolean,
    other_app boolean,
    discount boolean,
    store_popup boolean,
    product_filter boolean,
    wishlist boolean,
    all_report_section boolean,
    sales_report boolean,
    finance_report boolean,
    inventory_report boolean,
    other_report boolean,
    online_store_report boolean,
    all_customer_section boolean,
    manage_customer boolean,
    all_outlet_section boolean,
    all_sales_section boolean,
    create_process_sale boolean,
    refund_sale boolean,
    apply_discount boolean,
    on_account_sale boolean,
    lay_by_sale boolean,
    void_sale boolean,
    outlet_id integer,
    user_id bigint
);
 +   DROP TABLE public.settings_api_customuser;
       public         heap    postgres    false            3           1259    1180277    settings_api_customuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_customuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.settings_api_customuser_id_seq;
       public          postgres    false    308                       0    0    settings_api_customuser_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.settings_api_customuser_id_seq OWNED BY public.settings_api_customuser.id;
          public          postgres    false    307            �            1259    991859    settings_api_deliveryarea    TABLE     %  CREATE TABLE public.settings_api_deliveryarea (
    id integer NOT NULL,
    shipping_method_id integer,
    area10_name character varying(100),
    area10_price numeric(10,2),
    area11_name character varying(100),
    area11_price numeric(10,2),
    area12_name character varying(100),
    area12_price numeric(10,2),
    area13_name character varying(100),
    area13_price numeric(10,2),
    area14_name character varying(100),
    area14_price numeric(10,2),
    area15_name character varying(100),
    area15_price numeric(10,2),
    area1_name character varying(100),
    area1_price numeric(10,2),
    area2_name character varying(100),
    area2_price numeric(10,2),
    area3_name character varying(100),
    area3_price numeric(10,2),
    area4_name character varying(100),
    area4_price numeric(10,2),
    area5_name character varying(100),
    area5_price numeric(10,2),
    area6_name character varying(100),
    area6_price numeric(10,2),
    area7_name character varying(100),
    area7_price numeric(10,2),
    area8_name character varying(100),
    area8_price numeric(10,2),
    area9_name character varying(100),
    area9_price numeric(10,2),
    price numeric(10,2),
    shipping_rate_name character varying(100),
    weight_lower_limit numeric(10,2),
    weight_upper_limit numeric(10,2)
);
 -   DROP TABLE public.settings_api_deliveryarea;
       public         heap    postgres    false            2           1259    1180234     settings_api_deliveryarea_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_deliveryarea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.settings_api_deliveryarea_id_seq;
       public          postgres    false    238                       0    0     settings_api_deliveryarea_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.settings_api_deliveryarea_id_seq OWNED BY public.settings_api_deliveryarea.id;
          public          postgres    false    306            -           1259    1180154    settings_api_freeshippingmethod    TABLE     ?  CREATE TABLE public.settings_api_freeshippingmethod (
    id integer NOT NULL,
    amount_mesurement character varying(100) NOT NULL,
    amount numeric(10,2),
    weight_mesurement character varying(100) NOT NULL,
    weight numeric(10,2),
    free_shipping boolean NOT NULL,
    instruction character varying(300)
);
 3   DROP TABLE public.settings_api_freeshippingmethod;
       public         heap    postgres    false            ,           1259    1180152 &   settings_api_freeshippingmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_freeshippingmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.settings_api_freeshippingmethod_id_seq;
       public          postgres    false    301                       0    0 &   settings_api_freeshippingmethod_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.settings_api_freeshippingmethod_id_seq OWNED BY public.settings_api_freeshippingmethod.id;
          public          postgres    false    300            �            1259    991829    settings_api_generalsetting    TABLE     �  CREATE TABLE public.settings_api_generalsetting (
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
       public          postgres    false    235                        0    0 "   settings_api_generalsetting_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.settings_api_generalsetting_id_seq OWNED BY public.settings_api_generalsetting.id;
          public          postgres    false    234            /           1259    1180165 #   settings_api_standardshippingmethod    TABLE     �   CREATE TABLE public.settings_api_standardshippingmethod (
    id integer NOT NULL,
    standard_shipping boolean NOT NULL,
    instruction character varying(300),
    name character varying(100)
);
 7   DROP TABLE public.settings_api_standardshippingmethod;
       public         heap    postgres    false            .           1259    1180163 *   settings_api_standardshippingmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_standardshippingmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.settings_api_standardshippingmethod_id_seq;
       public          postgres    false    303            !           0    0 *   settings_api_standardshippingmethod_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.settings_api_standardshippingmethod_id_seq OWNED BY public.settings_api_standardshippingmethod.id;
          public          postgres    false    302            1           1259    1180173 &   settings_api_storepickupshippingmethod    TABLE     �   CREATE TABLE public.settings_api_storepickupshippingmethod (
    id integer NOT NULL,
    store_pickup boolean NOT NULL,
    instruction character varying(300)
);
 :   DROP TABLE public.settings_api_storepickupshippingmethod;
       public         heap    postgres    false            0           1259    1180171 -   settings_api_storepickupshippingmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_storepickupshippingmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.settings_api_storepickupshippingmethod_id_seq;
       public          postgres    false    305            "           0    0 -   settings_api_storepickupshippingmethod_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.settings_api_storepickupshippingmethod_id_seq OWNED BY public.settings_api_storepickupshippingmethod.id;
          public          postgres    false    304            �            1259    991851    settings_api_taxrate    TABLE     �   CREATE TABLE public.settings_api_taxrate (
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
       public          postgres    false    237            #           0    0    settings_api_taxrate_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.settings_api_taxrate_id_seq OWNED BY public.settings_api_taxrate.id;
          public          postgres    false    236                       1259    992362    superadmin_api_adminuser    TABLE     �  CREATE TABLE public.superadmin_api_adminuser (
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
       public         heap    postgres    false                       1259    992360    superadmin_api_adminuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.superadmin_api_adminuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.superadmin_api_adminuser_id_seq;
       public          postgres    false    277            $           0    0    superadmin_api_adminuser_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.superadmin_api_adminuser_id_seq OWNED BY public.superadmin_api_adminuser.id;
          public          postgres    false    276            �            1259    991644    user_auth_user    TABLE     E  CREATE TABLE public.user_auth_user (
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
       public          postgres    false    213            %           0    0    user_auth_user_groups_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.user_auth_user_groups_id_seq OWNED BY public.user_auth_user_groups.id;
          public          postgres    false    212            �            1259    991642    user_auth_user_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.user_auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.user_auth_user_id_seq;
       public          postgres    false    211            &           0    0    user_auth_user_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.user_auth_user_id_seq OWNED BY public.user_auth_user.id;
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
       public          postgres    false    215            '           0    0 &   user_auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.user_auth_user_user_permissions_id_seq OWNED BY public.user_auth_user_user_permissions.id;
          public          postgres    false    214            �           2604    1097982    app_api_facebookpixel id    DEFAULT     �   ALTER TABLE ONLY public.app_api_facebookpixel ALTER COLUMN id SET DEFAULT nextval('public.app_api_facebookpixel_id_seq'::regclass);
 G   ALTER TABLE public.app_api_facebookpixel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    281    281            �           2604    1097993    app_api_googlead id    DEFAULT     z   ALTER TABLE ONLY public.app_api_googlead ALTER COLUMN id SET DEFAULT nextval('public.app_api_googlead_id_seq'::regclass);
 B   ALTER TABLE public.app_api_googlead ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    283    283            �           2604    1098004    app_api_googleanalytic id    DEFAULT     �   ALTER TABLE ONLY public.app_api_googleanalytic ALTER COLUMN id SET DEFAULT nextval('public.app_api_googleanalytic_id_seq'::regclass);
 H   ALTER TABLE public.app_api_googleanalytic ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    285    285            �           2604    1098015    app_api_livechat id    DEFAULT     z   ALTER TABLE ONLY public.app_api_livechat ALTER COLUMN id SET DEFAULT nextval('public.app_api_livechat_id_seq'::regclass);
 B   ALTER TABLE public.app_api_livechat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    286    287            �           2604    1089795    app_api_news id    DEFAULT     r   ALTER TABLE ONLY public.app_api_news ALTER COLUMN id SET DEFAULT nextval('public.app_api_news_id_seq'::regclass);
 >   ALTER TABLE public.app_api_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    279    279            �           2604    1098026 #   app_api_orderplacedfacebookpixel id    DEFAULT     �   ALTER TABLE ONLY public.app_api_orderplacedfacebookpixel ALTER COLUMN id SET DEFAULT nextval('public.app_api_orderplacedfacebookpixel_id_seq'::regclass);
 R   ALTER TABLE public.app_api_orderplacedfacebookpixel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    289    288    289            �           2604    991740    app_api_popup id    DEFAULT     t   ALTER TABLE ONLY public.app_api_popup ALTER COLUMN id SET DEFAULT nextval('public.app_api_popup_id_seq'::regclass);
 ?   ALTER TABLE public.app_api_popup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    991748    app_api_promocode id    DEFAULT     |   ALTER TABLE ONLY public.app_api_promocode ALTER COLUMN id SET DEFAULT nextval('public.app_api_promocode_id_seq'::regclass);
 C   ALTER TABLE public.app_api_promocode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    1114375    app_api_promocode_products id    DEFAULT     �   ALTER TABLE ONLY public.app_api_promocode_products ALTER COLUMN id SET DEFAULT nextval('public.app_api_promocode_products_id_seq'::regclass);
 L   ALTER TABLE public.app_api_promocode_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    291    291            �           2604    991603    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �           2604    991613    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �           2604    991595    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    991760    company_api_aboutus id    DEFAULT     �   ALTER TABLE ONLY public.company_api_aboutus ALTER COLUMN id SET DEFAULT nextval('public.company_api_aboutus_id_seq'::regclass);
 E   ALTER TABLE public.company_api_aboutus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    991771    company_api_companypolicy id    DEFAULT     �   ALTER TABLE ONLY public.company_api_companypolicy ALTER COLUMN id SET DEFAULT nextval('public.company_api_companypolicy_id_seq'::regclass);
 K   ALTER TABLE public.company_api_companypolicy ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    991782    company_api_faq id    DEFAULT     x   ALTER TABLE ONLY public.company_api_faq ALTER COLUMN id SET DEFAULT nextval('public.company_api_faq_id_seq'::regclass);
 A   ALTER TABLE public.company_api_faq ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    1180125    company_api_metaproperty id    DEFAULT     �   ALTER TABLE ONLY public.company_api_metaproperty ALTER COLUMN id SET DEFAULT nextval('public.company_api_metaproperty_id_seq'::regclass);
 J   ALTER TABLE public.company_api_metaproperty ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    297    297            �           2604    991793    company_api_news id    DEFAULT     z   ALTER TABLE ONLY public.company_api_news ALTER COLUMN id SET DEFAULT nextval('public.company_api_news_id_seq'::regclass);
 B   ALTER TABLE public.company_api_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    991806    company_api_termscondition id    DEFAULT     �   ALTER TABLE ONLY public.company_api_termscondition ALTER COLUMN id SET DEFAULT nextval('public.company_api_termscondition_id_seq'::regclass);
 L   ALTER TABLE public.company_api_termscondition ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    992282 "   customer_order_api_notification id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_notification ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_notification_id_seq'::regclass);
 Q   ALTER TABLE public.customer_order_api_notification ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            �           2604    992227    customer_order_api_order id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_order ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_order_id_seq'::regclass);
 J   ALTER TABLE public.customer_order_api_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            �           2604    992259    customer_order_api_orderitem id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_orderitem ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_orderitem_id_seq'::regclass);
 N   ALTER TABLE public.customer_order_api_orderitem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271    272            �           2604    992238 $   customer_order_api_paymentdetails id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_paymentdetails ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_paymentdetails_id_seq'::regclass);
 S   ALTER TABLE public.customer_order_api_paymentdetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268            �           2604    992246 #   customer_order_api_transferorder id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_transferorder ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_transferorder_id_seq'::regclass);
 R   ALTER TABLE public.customer_order_api_transferorder ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269    270            �           2604    992137    customer_profile_api_address id    DEFAULT     �   ALTER TABLE ONLY public.customer_profile_api_address ALTER COLUMN id SET DEFAULT nextval('public.customer_profile_api_address_id_seq'::regclass);
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
       public          postgres    false    203    202    203            �           2604    991574    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �           2604    991879    inventory_api_brand id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_brand ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_brand_id_seq'::regclass);
 E   ALTER TABLE public.inventory_api_brand ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    1180035     inventory_api_customermessage id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_customermessage ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_customermessage_id_seq'::regclass);
 O   ALTER TABLE public.inventory_api_customermessage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    295    295            �           2604    991892 #   inventory_api_inventory_location id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_inventory_location ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_inventory_location_id_seq'::regclass);
 R   ALTER TABLE public.inventory_api_inventory_location ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    991991 #   inventory_api_inventory_transfer id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_inventory_transfer_id_seq'::regclass);
 R   ALTER TABLE public.inventory_api_inventory_transfer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            �           2604    1155332 1   inventory_api_inventory_transfer_transfer_item id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_inventory_transfer_transfer_item_id_seq'::regclass);
 `   ALTER TABLE public.inventory_api_inventory_transfer_transfer_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    293    292    293            �           2604    991903    inventory_api_product id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_product ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_product_id_seq'::regclass);
 G   ALTER TABLE public.inventory_api_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            �           2604    991916     inventory_api_productcategory id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productcategory ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productcategory_id_seq'::regclass);
 O   ALTER TABLE public.inventory_api_productcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            �           2604    1180526 !   inventory_api_productpurchased id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productpurchased ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productpurchased_id_seq'::regclass);
 P   ALTER TABLE public.inventory_api_productpurchased ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    310    309    310            �           2604    1180537 %   inventory_api_productpurchaseditem id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productpurchaseditem_id_seq'::regclass);
 T   ALTER TABLE public.inventory_api_productpurchaseditem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    312    311    312            �           2604    1180581 (   inventory_api_productpurchasedpayment id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productpurchasedpayment_id_seq'::regclass);
 W   ALTER TABLE public.inventory_api_productpurchasedpayment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    314    313    314            �           2604    991940 #   inventory_api_productsizevariant id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productsizevariant ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productsizevariant_id_seq'::regclass);
 R   ALTER TABLE public.inventory_api_productsizevariant ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            �           2604    991929    inventory_api_supplier id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_supplier ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_supplier_id_seq'::regclass);
 H   ALTER TABLE public.inventory_api_supplier ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            �           2604    992175    pos_api_outlet id    DEFAULT     v   ALTER TABLE ONLY public.pos_api_outlet ALTER COLUMN id SET DEFAULT nextval('public.pos_api_outlet_id_seq'::regclass);
 @   ALTER TABLE public.pos_api_outlet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            �           2604    992188    pos_api_register id    DEFAULT     z   ALTER TABLE ONLY public.pos_api_register ALTER COLUMN id SET DEFAULT nextval('public.pos_api_register_id_seq'::regclass);
 B   ALTER TABLE public.pos_api_register ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            �           2604    1180151 %   settings_api_checkoutfieldsettings id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_checkoutfieldsettings ALTER COLUMN id SET DEFAULT nextval('public.settings_api_checkoutfieldsettings_id_seq'::regclass);
 T   ALTER TABLE public.settings_api_checkoutfieldsettings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    299    298            �           2604    991821    settings_api_checkoutsetting id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_checkoutsetting ALTER COLUMN id SET DEFAULT nextval('public.settings_api_checkoutsetting_id_seq'::regclass);
 N   ALTER TABLE public.settings_api_checkoutsetting ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    1180282    settings_api_customuser id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_customuser ALTER COLUMN id SET DEFAULT nextval('public.settings_api_customuser_id_seq'::regclass);
 I   ALTER TABLE public.settings_api_customuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    308    308            �           2604    1180236    settings_api_deliveryarea id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_deliveryarea ALTER COLUMN id SET DEFAULT nextval('public.settings_api_deliveryarea_id_seq'::regclass);
 K   ALTER TABLE public.settings_api_deliveryarea ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    306    238            �           2604    1180157 "   settings_api_freeshippingmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_freeshippingmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_freeshippingmethod_id_seq'::regclass);
 Q   ALTER TABLE public.settings_api_freeshippingmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    301    300    301            �           2604    991832    settings_api_generalsetting id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_generalsetting ALTER COLUMN id SET DEFAULT nextval('public.settings_api_generalsetting_id_seq'::regclass);
 M   ALTER TABLE public.settings_api_generalsetting ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    1180168 &   settings_api_standardshippingmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_standardshippingmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_standardshippingmethod_id_seq'::regclass);
 U   ALTER TABLE public.settings_api_standardshippingmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    302    303            �           2604    1180176 )   settings_api_storepickupshippingmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_storepickupshippingmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_storepickupshippingmethod_id_seq'::regclass);
 X   ALTER TABLE public.settings_api_storepickupshippingmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    304    305            �           2604    991854    settings_api_taxrate id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_taxrate ALTER COLUMN id SET DEFAULT nextval('public.settings_api_taxrate_id_seq'::regclass);
 F   ALTER TABLE public.settings_api_taxrate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    992365    superadmin_api_adminuser id    DEFAULT     �   ALTER TABLE ONLY public.superadmin_api_adminuser ALTER COLUMN id SET DEFAULT nextval('public.superadmin_api_adminuser_id_seq'::regclass);
 J   ALTER TABLE public.superadmin_api_adminuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    277    277            �           2604    991647    user_auth_user id    DEFAULT     v   ALTER TABLE ONLY public.user_auth_user ALTER COLUMN id SET DEFAULT nextval('public.user_auth_user_id_seq'::regclass);
 @   ALTER TABLE public.user_auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    991660    user_auth_user_groups id    DEFAULT     �   ALTER TABLE ONLY public.user_auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_auth_user_groups_id_seq'::regclass);
 G   ALTER TABLE public.user_auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    991668 "   user_auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_auth_user_user_permissions_id_seq'::regclass);
 Q   ALTER TABLE public.user_auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �          0    1097979    app_api_facebookpixel 
   TABLE DATA           Z   COPY public.app_api_facebookpixel (id, facebook_pixel_link, created, updated) FROM stdin;
    public          postgres    false    281   _n      �          0    1097990    app_api_googlead 
   TABLE DATA           Q   COPY public.app_api_googlead (id, google_ads_link, created, updated) FROM stdin;
    public          postgres    false    283   4p      �          0    1098001    app_api_googleanalytic 
   TABLE DATA           ]   COPY public.app_api_googleanalytic (id, google_analytics_link, created, updated) FROM stdin;
    public          postgres    false    285   Qp      �          0    1098012    app_api_livechat 
   TABLE DATA           P   COPY public.app_api_livechat (id, live_chat_link, created, updated) FROM stdin;
    public          postgres    false    287   np      �          0    1089792    app_api_news 
   TABLE DATA           P   COPY public.app_api_news (id, image1, image2, image3, popup_enable) FROM stdin;
    public          postgres    false    279   �p      �          0    1098023     app_api_orderplacedfacebookpixel 
   TABLE DATA           r   COPY public.app_api_orderplacedfacebookpixel (id, order_placed_facebook_pixel_link, created, updated) FROM stdin;
    public          postgres    false    289   �p      �          0    991737    app_api_popup 
   TABLE DATA           Q   COPY public.app_api_popup (id, image1, image2, image3, popup_enable) FROM stdin;
    public          postgres    false    219   �p      �          0    991745    app_api_promocode 
   TABLE DATA           �   COPY public.app_api_promocode (id, name, code, is_active, usage_limit, "limit", valid_from, valid_to, expire_limit, discount_type, discount, discount_order_type, created, updated, apply, orders_over) FROM stdin;
    public          postgres    false    221   Bq      �          0    1114372    app_api_promocode_products 
   TABLE DATA           R   COPY public.app_api_promocode_products (id, promocode_id, product_id) FROM stdin;
    public          postgres    false    291   _q      }          0    991600 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   |q                0    991610    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   �q      {          0    991592    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   �q      �          0    991757    company_api_aboutus 
   TABLE DATA           �   COPY public.company_api_aboutus (id, about_us_title, about_us_text, aboutus_image, aboutus_image2, aboutus_video, aboutus_video2, meta_title, meta_description, meta_keywords) FROM stdin;
    public          postgres    false    223   {      �          0    991768    company_api_companypolicy 
   TABLE DATA           K   COPY public.company_api_companypolicy (id, title, description) FROM stdin;
    public          postgres    false    225   .{      �          0    991779    company_api_faq 
   TABLE DATA           ?   COPY public.company_api_faq (id, question, answer) FROM stdin;
    public          postgres    false    227   K{      �          0    1180122    company_api_metaproperty 
   TABLE DATA           c   COPY public.company_api_metaproperty (id, meta_title, meta_description, meta_keywords) FROM stdin;
    public          postgres    false    297   h{      �          0    991790    company_api_news 
   TABLE DATA           t   COPY public.company_api_news (id, title, content, image, image2, video, video2, slug, created, updated) FROM stdin;
    public          postgres    false    229   �{      �          0    991803    company_api_termscondition 
   TABLE DATA           �   COPY public.company_api_termscondition (id, title, content, slug, meta_title, meta_description, meta_keywords, created, updated) FROM stdin;
    public          postgres    false    231   �{      �          0    992279    customer_order_api_notification 
   TABLE DATA           y   COPY public.customer_order_api_notification (id, title, description, url, created, user_from_id, user_to_id) FROM stdin;
    public          postgres    false    274   �{      �          0    992224    customer_order_api_order 
   TABLE DATA           �  COPY public.customer_order_api_order (id, order_id, order_type, status, ordered_by, email, phone, address, order_note, unit, order_tracking_number, currency, shipping_charge, other_charges, other_discount, promo_discount, total_tax, order_total, is_payment_successful, created, updated, accepted_date, shipping_start_date, completed_date, expected_delivery_date, is_fulfilled, item_count, product_list, customer_id, delivery_address_id, outlet_id, payment_id, promo_code_id, supplier_id, delivery_area_id, has_discount, separate_delivery_address, serial, balance, description, "Order_reference", register_id, sales_note, fullname, paid, sub_total, total_discount, register_total) FROM stdin;
    public          postgres    false    266   �{      �          0    992256    customer_order_api_orderitem 
   TABLE DATA           �   COPY public.customer_order_api_orderitem (id, sku, quantity, unit_price, order_id, product_id, barcode, compare_at_price, fulfilled_quantity, stock_control, size_id, product_image, product_name, size_name, size_value, discount) FROM stdin;
    public          postgres    false    272   ��      �          0    992235 !   customer_order_api_paymentdetails 
   TABLE DATA           �   COPY public.customer_order_api_paymentdetails (id, payment_method, payment_status, amount_paid, transaction_id, is_failed, created, updated, sale_status, source) FROM stdin;
    public          postgres    false    268   ��      �          0    992243     customer_order_api_transferorder 
   TABLE DATA           �   COPY public.customer_order_api_transferorder (id, to_number, due_date, reference, transfer_charge, note, created, updated, order_id, order_from_id, order_to_id) FROM stdin;
    public          postgres    false    270   ��      �          0    992134    customer_profile_api_address 
   TABLE DATA           �   COPY public.customer_profile_api_address (id, type, address1, address2, country, division, city, postal_code, created, updated, customer_id, email, first_name, last_name, phone, title, district) FROM stdin;
    public          postgres    false    260   �      �          0    992118 "   customer_profile_api_customergroup 
   TABLE DATA           ^   COPY public.customer_profile_api_customergroup (id, group_name, created, updated) FROM stdin;
    public          postgres    false    256   Ԉ      �          0    992126 +   customer_profile_api_customergroup_customer 
   TABLE DATA           o   COPY public.customer_profile_api_customergroup_customer (id, customergroup_id, customerprofile_id) FROM stdin;
    public          postgres    false    258   (�      �          0    992101 $   customer_profile_api_customerprofile 
   TABLE DATA           �   COPY public.customer_profile_api_customerprofile (id, email, username, password, title, first_name, last_name, gender, phone, customer_number, created, updated, user_id, address, company_name, designation, birthdate) FROM stdin;
    public          postgres    false    254   T�      �          0    991702    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   h�      y          0    991582    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   �      w          0    991571    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   q�      �          0    992350    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    275   Ԝ      �          0    991876    inventory_api_brand 
   TABLE DATA           �   COPY public.inventory_api_brand (id, name, description, icon_image, icon_image2, slug, meta_title, meta_description, meta_keywords, created, updated) FROM stdin;
    public          postgres    false    240   Z�      �          0    1180032    inventory_api_customermessage 
   TABLE DATA           v   COPY public.inventory_api_customermessage (id, email, phone, subject, message, created, updated, name_id) FROM stdin;
    public          postgres    false    295   ��      �          0    991889     inventory_api_inventory_location 
   TABLE DATA           �   COPY public.inventory_api_inventory_location (id, location_name, phone, is_active, is_default, address1, address2, country, division, city, postal_code, created, updated) FROM stdin;
    public          postgres    false    242   �      �          0    991988     inventory_api_inventory_transfer 
   TABLE DATA           �   COPY public.inventory_api_inventory_transfer (id, "TO_number", status, total_transfer, total_receive, due_date, created, updated, from_inventory_id, to_inventory_id, transfer_quantity) FROM stdin;
    public          postgres    false    252   ��      �          0    1155329 .   inventory_api_inventory_transfer_transfer_item 
   TABLE DATA           z   COPY public.inventory_api_inventory_transfer_transfer_item (id, inventory_transfer_id, productsizevariant_id) FROM stdin;
    public          postgres    false    293   ��      �          0    991900    inventory_api_product 
   TABLE DATA           �  COPY public.inventory_api_product (id, name, description, short_description, awaiting_stock, stock, on_hand, committed, available, sku, barcode, is_active, is_display, is_expanded, is_selected, option_values, options, enable_customer_note, is_featured, is_new, store_only, stock_control, is_require_documents, featured_image, product_image1, product_image2, product_image3, advance_price, auto_adjust_selling_price, price, weight, unit, on_sale, call_for_price, attribute, attribute2, attribute3, attribute4, attribute5, attribute6, delivery_info, meta_title, meta_description, meta_keywords, created, updated, slug, value, brand_id, category_id, tax_id, tags) FROM stdin;
    public          postgres    false    244   ��      �          0    991913    inventory_api_productcategory 
   TABLE DATA           �   COPY public.inventory_api_productcategory (id, name, descriptions, slug, meta_title, meta_description, meta_keywords, icon, created, updated) FROM stdin;
    public          postgres    false    246   �      �          0    1180523    inventory_api_productpurchased 
   TABLE DATA           �   COPY public.inventory_api_productpurchased (id, adjusment, due_date, po_number, purchase_date, received_note, received_quantity_price, reference, total_amount, total_due, total_payment, total_tax, created, updated, supplier_id) FROM stdin;
    public          postgres    false    310   ��      �          0    1180534 "   inventory_api_productpurchaseditem 
   TABLE DATA           �   COPY public.inventory_api_productpurchaseditem (id, order_quantity, received_quantity, sku, subtotal, total_received_price, total_tax, unit_price, inventory_location_id, purchase_item_id, purchased_product_id, purchased_size_id, tax_id) FROM stdin;
    public          postgres    false    312   y�      �          0    1180578 %   inventory_api_productpurchasedpayment 
   TABLE DATA           �   COPY public.inventory_api_productpurchasedpayment (id, amount, payment_date, payment_method, reference, created, updated, purchased_id) FROM stdin;
    public          postgres    false    314   ��      �          0    991937     inventory_api_productsizevariant 
   TABLE DATA           6  COPY public.inventory_api_productsizevariant (id, name, awaiting_stock, stock, on_hand, committed, available, option, value, options, sku, barcode, parent_id, "position", advance_price, auto_adjust_selling_price, cost_price, compare_at_price, price, is_selected, weight, product_id, on_sale, tags) FROM stdin;
    public          postgres    false    250   ֥      �          0    991926    inventory_api_supplier 
   TABLE DATA             COPY public.inventory_api_supplier (id, supplier_name, supplier_company_name, is_active, supplier_first_name, supplier_last_name, supplier_phone, supplier_address, supplier_address2, city, country, division, postal_code, created, updated, tax_id) FROM stdin;
    public          postgres    false    248   ��      �          0    992172    pos_api_outlet 
   TABLE DATA           :  COPY public.pos_api_outlet (id, outlet_name, location_name, email, phone, receipt_template, email_template, country_name, division, postal_code, city, address1, address2, full_address, slug, cash_management, is_active, is_default, is_deleted, selected, created, updated, inventory_location_id, tax_id) FROM stdin;
    public          postgres    false    262   6�      �          0    992185    pos_api_register 
   TABLE DATA           �   COPY public.pos_api_register (id, name, opened_at, closed_at, cash_management, is_active, is_deleted, status, created, updated, closed_by_id, opened_by_id, outlet_id) FROM stdin;
    public          postgres    false    264   S�      �          0    1180130 "   settings_api_checkoutfieldsettings 
   TABLE DATA           5  COPY public.settings_api_checkoutfieldsettings (id, checkout_from_all_country, customer_note, title, first_name, last_name, email, company_name, phone, billing_address_line1, billing_address_line2, billing_city, billing_country, billing_postal_code, billing_state, defferent_delivery_address, delivery_name, delivery_phone, delivery_address_line1, delivery_address_line2, delivery_country, delivery_city, delivery_postal_code, delivery_state, delivery_slot, time_slot, time_slot_label, customer_instruction, new_time_slot, "terms_and_condition_show_OR_hidden", terms_and_condition, terms_and_condition_label, terms_and_condition_link, "terms_and_condition_show_OR_hidden2", terms_and_condition2, terms_and_condition_label2, terms_and_condition_link2, minimum_checkout_amount_setting, minimum_checkout_amount) FROM stdin;
    public          postgres    false    298   p�      �          0    991818    settings_api_checkoutsetting 
   TABLE DATA           �   COPY public.settings_api_checkoutsetting (id, guest_checkout, create_account, seperate_delivery_address, social_login, document_label, billing_address_label, delivery_address_label) FROM stdin;
    public          postgres    false    233   ��      �          0    1180279    settings_api_customuser 
   TABLE DATA           C  COPY public.settings_api_customuser (id, phone, role, all_dashboard_section, dashboard, all_product_section, create_edit_product, delete_product, print_label, all_inventory_section, update_inventory, purchase_order, inventory_return, supplier, inventory_location, manage_inventory_transfer, all_order_section, process_online_order, create_process_manual_order, all_setup_section, manage_payment_method, tax, manage_tax, all_app_section, low_stock_alert, email_marketing, other_app, discount, store_popup, product_filter, wishlist, all_report_section, sales_report, finance_report, inventory_report, other_report, online_store_report, all_customer_section, manage_customer, all_outlet_section, all_sales_section, create_process_sale, refund_sale, apply_discount, on_account_sale, lay_by_sale, void_sale, outlet_id, user_id) FROM stdin;
    public          postgres    false    308   ��      �          0    991859    settings_api_deliveryarea 
   TABLE DATA             COPY public.settings_api_deliveryarea (id, shipping_method_id, area10_name, area10_price, area11_name, area11_price, area12_name, area12_price, area13_name, area13_price, area14_name, area14_price, area15_name, area15_price, area1_name, area1_price, area2_name, area2_price, area3_name, area3_price, area4_name, area4_price, area5_name, area5_price, area6_name, area6_price, area7_name, area7_price, area8_name, area8_price, area9_name, area9_price, price, shipping_rate_name, weight_lower_limit, weight_upper_limit) FROM stdin;
    public          postgres    false    238   ܩ      �          0    1180154    settings_api_freeshippingmethod 
   TABLE DATA           �   COPY public.settings_api_freeshippingmethod (id, amount_mesurement, amount, weight_mesurement, weight, free_shipping, instruction) FROM stdin;
    public          postgres    false    301   ��      �          0    991829    settings_api_generalsetting 
   TABLE DATA           �   COPY public.settings_api_generalsetting (id, store_name, business_name, email, phone, street, city, country, division, postal_code, currency, currency_text, product_per_page, sort_by, timezone, online, created, updated) FROM stdin;
    public          postgres    false    235   9�      �          0    1180165 #   settings_api_standardshippingmethod 
   TABLE DATA           g   COPY public.settings_api_standardshippingmethod (id, standard_shipping, instruction, name) FROM stdin;
    public          postgres    false    303   ��      �          0    1180173 &   settings_api_storepickupshippingmethod 
   TABLE DATA           _   COPY public.settings_api_storepickupshippingmethod (id, store_pickup, instruction) FROM stdin;
    public          postgres    false    305   �      �          0    991851    settings_api_taxrate 
   TABLE DATA           O   COPY public.settings_api_taxrate (id, name, tax, created, updated) FROM stdin;
    public          postgres    false    237   �      �          0    992362    superadmin_api_adminuser 
   TABLE DATA           �   COPY public.superadmin_api_adminuser (id, name, email, mobile, status, role, confirmation_sent_at, profile_image, created, updated, user_id) FROM stdin;
    public          postgres    false    277   4�      �          0    991644    user_auth_user 
   TABLE DATA           �   COPY public.user_auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_customer, is_admin, phone, address) FROM stdin;
    public          postgres    false    211   Q�      �          0    991657    user_auth_user_groups 
   TABLE DATA           F   COPY public.user_auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   �      �          0    991665    user_auth_user_user_permissions 
   TABLE DATA           U   COPY public.user_auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   <�      (           0    0    app_api_facebookpixel_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.app_api_facebookpixel_id_seq', 1, true);
          public          postgres    false    280            )           0    0    app_api_googlead_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.app_api_googlead_id_seq', 1, false);
          public          postgres    false    282            *           0    0    app_api_googleanalytic_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.app_api_googleanalytic_id_seq', 1, false);
          public          postgres    false    284            +           0    0    app_api_livechat_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.app_api_livechat_id_seq', 1, true);
          public          postgres    false    286            ,           0    0    app_api_news_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.app_api_news_id_seq', 1, false);
          public          postgres    false    278            -           0    0 '   app_api_orderplacedfacebookpixel_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.app_api_orderplacedfacebookpixel_id_seq', 1, false);
          public          postgres    false    288            .           0    0    app_api_popup_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.app_api_popup_id_seq', 2, true);
          public          postgres    false    218            /           0    0    app_api_promocode_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.app_api_promocode_id_seq', 1, false);
          public          postgres    false    220            0           0    0 !   app_api_promocode_products_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.app_api_promocode_products_id_seq', 1, false);
          public          postgres    false    290            1           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            2           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            3           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 232, true);
          public          postgres    false    204            4           0    0    company_api_aboutus_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.company_api_aboutus_id_seq', 1, false);
          public          postgres    false    222            5           0    0     company_api_companypolicy_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.company_api_companypolicy_id_seq', 1, false);
          public          postgres    false    224            6           0    0    company_api_faq_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.company_api_faq_id_seq', 1, false);
          public          postgres    false    226            7           0    0    company_api_metaproperty_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.company_api_metaproperty_id_seq', 1, true);
          public          postgres    false    296            8           0    0    company_api_news_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.company_api_news_id_seq', 1, false);
          public          postgres    false    228            9           0    0 !   company_api_termscondition_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.company_api_termscondition_id_seq', 1, false);
          public          postgres    false    230            :           0    0 &   customer_order_api_notification_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.customer_order_api_notification_id_seq', 1, false);
          public          postgres    false    273            ;           0    0    customer_order_api_order_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.customer_order_api_order_id_seq', 142, true);
          public          postgres    false    265            <           0    0 #   customer_order_api_orderitem_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.customer_order_api_orderitem_id_seq', 85, true);
          public          postgres    false    271            =           0    0 (   customer_order_api_paymentdetails_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.customer_order_api_paymentdetails_id_seq', 1, false);
          public          postgres    false    267            >           0    0 '   customer_order_api_transferorder_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.customer_order_api_transferorder_id_seq', 1, false);
          public          postgres    false    269            ?           0    0 #   customer_profile_api_address_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.customer_profile_api_address_id_seq', 25, true);
          public          postgres    false    259            @           0    0 2   customer_profile_api_customergroup_customer_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.customer_profile_api_customergroup_customer_id_seq', 8, true);
          public          postgres    false    257            A           0    0 )   customer_profile_api_customergroup_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.customer_profile_api_customergroup_id_seq', 2, true);
          public          postgres    false    255            B           0    0 +   customer_profile_api_customerprofile_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.customer_profile_api_customerprofile_id_seq', 34, true);
          public          postgres    false    253            C           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 26, true);
          public          postgres    false    216            D           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 58, true);
          public          postgres    false    202            E           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 141, true);
          public          postgres    false    200            F           0    0    inventory_api_brand_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.inventory_api_brand_id_seq', 3, true);
          public          postgres    false    239            G           0    0 $   inventory_api_customermessage_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.inventory_api_customermessage_id_seq', 1, false);
          public          postgres    false    294            H           0    0 '   inventory_api_inventory_location_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.inventory_api_inventory_location_id_seq', 2, true);
          public          postgres    false    241            I           0    0 '   inventory_api_inventory_transfer_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.inventory_api_inventory_transfer_id_seq', 1, false);
          public          postgres    false    251            J           0    0 5   inventory_api_inventory_transfer_transfer_item_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.inventory_api_inventory_transfer_transfer_item_id_seq', 1, false);
          public          postgres    false    292            K           0    0    inventory_api_product_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inventory_api_product_id_seq', 9, true);
          public          postgres    false    243            L           0    0 $   inventory_api_productcategory_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.inventory_api_productcategory_id_seq', 3, true);
          public          postgres    false    245            M           0    0 %   inventory_api_productpurchased_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.inventory_api_productpurchased_id_seq', 3, true);
          public          postgres    false    309            N           0    0 )   inventory_api_productpurchaseditem_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.inventory_api_productpurchaseditem_id_seq', 3, true);
          public          postgres    false    311            O           0    0 ,   inventory_api_productpurchasedpayment_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.inventory_api_productpurchasedpayment_id_seq', 1, false);
          public          postgres    false    313            P           0    0 '   inventory_api_productsizevariant_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.inventory_api_productsizevariant_id_seq', 55, true);
          public          postgres    false    249            Q           0    0    inventory_api_supplier_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.inventory_api_supplier_id_seq', 2, true);
          public          postgres    false    247            R           0    0    pos_api_outlet_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pos_api_outlet_id_seq', 1, false);
          public          postgres    false    261            S           0    0    pos_api_register_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pos_api_register_id_seq', 1, false);
          public          postgres    false    263            T           0    0 )   settings_api_checkoutfieldsettings_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.settings_api_checkoutfieldsettings_id_seq', 1, true);
          public          postgres    false    299            U           0    0 #   settings_api_checkoutsetting_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.settings_api_checkoutsetting_id_seq', 1, true);
          public          postgres    false    232            V           0    0    settings_api_customuser_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.settings_api_customuser_id_seq', 1, false);
          public          postgres    false    307            W           0    0     settings_api_deliveryarea_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.settings_api_deliveryarea_id_seq', 340, true);
          public          postgres    false    306            X           0    0 &   settings_api_freeshippingmethod_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.settings_api_freeshippingmethod_id_seq', 5, true);
          public          postgres    false    300            Y           0    0 "   settings_api_generalsetting_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.settings_api_generalsetting_id_seq', 1, true);
          public          postgres    false    234            Z           0    0 *   settings_api_standardshippingmethod_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.settings_api_standardshippingmethod_id_seq', 5, true);
          public          postgres    false    302            [           0    0 -   settings_api_storepickupshippingmethod_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.settings_api_storepickupshippingmethod_id_seq', 1, true);
          public          postgres    false    304            \           0    0    settings_api_taxrate_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.settings_api_taxrate_id_seq', 1, false);
          public          postgres    false    236            ]           0    0    superadmin_api_adminuser_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.superadmin_api_adminuser_id_seq', 1, false);
          public          postgres    false    276            ^           0    0    user_auth_user_groups_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.user_auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            _           0    0    user_auth_user_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.user_auth_user_id_seq', 28, true);
          public          postgres    false    210            `           0    0 &   user_auth_user_user_permissions_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.user_auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            �           2606    1097987 0   app_api_facebookpixel app_api_facebookpixel_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.app_api_facebookpixel
    ADD CONSTRAINT app_api_facebookpixel_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.app_api_facebookpixel DROP CONSTRAINT app_api_facebookpixel_pkey;
       public            postgres    false    281            �           2606    1097998 &   app_api_googlead app_api_googlead_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.app_api_googlead
    ADD CONSTRAINT app_api_googlead_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.app_api_googlead DROP CONSTRAINT app_api_googlead_pkey;
       public            postgres    false    283            �           2606    1098009 2   app_api_googleanalytic app_api_googleanalytic_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.app_api_googleanalytic
    ADD CONSTRAINT app_api_googleanalytic_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.app_api_googleanalytic DROP CONSTRAINT app_api_googleanalytic_pkey;
       public            postgres    false    285            �           2606    1098020 &   app_api_livechat app_api_livechat_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.app_api_livechat
    ADD CONSTRAINT app_api_livechat_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.app_api_livechat DROP CONSTRAINT app_api_livechat_pkey;
       public            postgres    false    287            �           2606    1089797    app_api_news app_api_news_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.app_api_news
    ADD CONSTRAINT app_api_news_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.app_api_news DROP CONSTRAINT app_api_news_pkey;
       public            postgres    false    279            �           2606    1098031 F   app_api_orderplacedfacebookpixel app_api_orderplacedfacebookpixel_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.app_api_orderplacedfacebookpixel
    ADD CONSTRAINT app_api_orderplacedfacebookpixel_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.app_api_orderplacedfacebookpixel DROP CONSTRAINT app_api_orderplacedfacebookpixel_pkey;
       public            postgres    false    289                       2606    991742     app_api_popup app_api_popup_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.app_api_popup
    ADD CONSTRAINT app_api_popup_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.app_api_popup DROP CONSTRAINT app_api_popup_pkey;
       public            postgres    false    219                       2606    991753 ,   app_api_promocode app_api_promocode_code_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.app_api_promocode
    ADD CONSTRAINT app_api_promocode_code_key UNIQUE (code);
 V   ALTER TABLE ONLY public.app_api_promocode DROP CONSTRAINT app_api_promocode_code_key;
       public            postgres    false    221                       2606    991751 (   app_api_promocode app_api_promocode_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.app_api_promocode
    ADD CONSTRAINT app_api_promocode_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.app_api_promocode DROP CONSTRAINT app_api_promocode_pkey;
       public            postgres    false    221            �           2606    1114393 Y   app_api_promocode_products app_api_promocode_produc_promocode_id_product_id_a7fc563f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_products
    ADD CONSTRAINT app_api_promocode_produc_promocode_id_product_id_a7fc563f_uniq UNIQUE (promocode_id, product_id);
 �   ALTER TABLE ONLY public.app_api_promocode_products DROP CONSTRAINT app_api_promocode_produc_promocode_id_product_id_a7fc563f_uniq;
       public            postgres    false    291    291            �           2606    1114377 :   app_api_promocode_products app_api_promocode_products_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.app_api_promocode_products
    ADD CONSTRAINT app_api_promocode_products_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.app_api_promocode_products DROP CONSTRAINT app_api_promocode_products_pkey;
       public            postgres    false    291            �           2606    991640    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    991626 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    991615 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    991605    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    991617 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    991597 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205                       2606    991765 ,   company_api_aboutus company_api_aboutus_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.company_api_aboutus
    ADD CONSTRAINT company_api_aboutus_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.company_api_aboutus DROP CONSTRAINT company_api_aboutus_pkey;
       public            postgres    false    223            
           2606    991776 8   company_api_companypolicy company_api_companypolicy_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.company_api_companypolicy
    ADD CONSTRAINT company_api_companypolicy_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.company_api_companypolicy DROP CONSTRAINT company_api_companypolicy_pkey;
       public            postgres    false    225                       2606    991787 $   company_api_faq company_api_faq_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.company_api_faq
    ADD CONSTRAINT company_api_faq_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.company_api_faq DROP CONSTRAINT company_api_faq_pkey;
       public            postgres    false    227            �           2606    1180127 6   company_api_metaproperty company_api_metaproperty_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.company_api_metaproperty
    ADD CONSTRAINT company_api_metaproperty_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.company_api_metaproperty DROP CONSTRAINT company_api_metaproperty_pkey;
       public            postgres    false    297                       2606    991798 &   company_api_news company_api_news_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_api_news
    ADD CONSTRAINT company_api_news_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_api_news DROP CONSTRAINT company_api_news_pkey;
       public            postgres    false    229                       2606    991800 *   company_api_news company_api_news_slug_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.company_api_news
    ADD CONSTRAINT company_api_news_slug_key UNIQUE (slug);
 T   ALTER TABLE ONLY public.company_api_news DROP CONSTRAINT company_api_news_slug_key;
       public            postgres    false    229                       2606    991811 :   company_api_termscondition company_api_termscondition_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.company_api_termscondition
    ADD CONSTRAINT company_api_termscondition_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.company_api_termscondition DROP CONSTRAINT company_api_termscondition_pkey;
       public            postgres    false    231                       2606    991813 >   company_api_termscondition company_api_termscondition_slug_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.company_api_termscondition
    ADD CONSTRAINT company_api_termscondition_slug_key UNIQUE (slug);
 h   ALTER TABLE ONLY public.company_api_termscondition DROP CONSTRAINT company_api_termscondition_slug_key;
       public            postgres    false    231            z           2606    992287 D   customer_order_api_notification customer_order_api_notification_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_notification
    ADD CONSTRAINT customer_order_api_notification_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.customer_order_api_notification DROP CONSTRAINT customer_order_api_notification_pkey;
       public            postgres    false    274            h           2606    992232 6   customer_order_api_order customer_order_api_order_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_order_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_order_pkey;
       public            postgres    false    266            v           2606    992261 >   customer_order_api_orderitem customer_order_api_orderitem_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_orderitem_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_orderitem_pkey;
       public            postgres    false    272            m           2606    992240 H   customer_order_api_paymentdetails customer_order_api_paymentdetails_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_paymentdetails
    ADD CONSTRAINT customer_order_api_paymentdetails_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.customer_order_api_paymentdetails DROP CONSTRAINT customer_order_api_paymentdetails_pkey;
       public            postgres    false    268            p           2606    992253 N   customer_order_api_transferorder customer_order_api_transferorder_order_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_transferorder_order_id_key UNIQUE (order_id);
 x   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_transferorder_order_id_key;
       public            postgres    false    270            s           2606    992251 F   customer_order_api_transferorder customer_order_api_transferorder_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_transferorder_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_transferorder_pkey;
       public            postgres    false    270            U           2606    992142 >   customer_profile_api_address customer_profile_api_address_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.customer_profile_api_address
    ADD CONSTRAINT customer_profile_api_address_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.customer_profile_api_address DROP CONSTRAINT customer_profile_api_address_pkey;
       public            postgres    false    260            N           2606    992151 k   customer_profile_api_customergroup_customer customer_profile_api_cus_customergroup_id_custome_48a03e56_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_cus_customergroup_id_custome_48a03e56_uniq UNIQUE (customergroup_id, customerprofile_id);
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_cus_customergroup_id_custome_48a03e56_uniq;
       public            postgres    false    258    258            R           2606    992131 \   customer_profile_api_customergroup_customer customer_profile_api_customergroup_customer_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_customergroup_customer_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_customergroup_customer_pkey;
       public            postgres    false    258            L           2606    992123 J   customer_profile_api_customergroup customer_profile_api_customergroup_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup
    ADD CONSTRAINT customer_profile_api_customergroup_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.customer_profile_api_customergroup DROP CONSTRAINT customer_profile_api_customergroup_pkey;
       public            postgres    false    256            C           2606    992111 S   customer_profile_api_customerprofile customer_profile_api_customerprofile_email_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_email_key UNIQUE (email);
 }   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_email_key;
       public            postgres    false    254            E           2606    992109 N   customer_profile_api_customerprofile customer_profile_api_customerprofile_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_pkey;
       public            postgres    false    254            G           2606    992115 U   customer_profile_api_customerprofile customer_profile_api_customerprofile_user_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_user_id_key UNIQUE (user_id);
    ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_user_id_key;
       public            postgres    false    254            J           2606    992113 V   customer_profile_api_customerprofile customer_profile_api_customerprofile_username_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_username_key UNIQUE (username);
 �   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_username_key;
       public            postgres    false    254            �           2606    991711 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    991589 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    991587 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    991579 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201                       2606    992357 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    275            !           2606    991884 ,   inventory_api_brand inventory_api_brand_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.inventory_api_brand
    ADD CONSTRAINT inventory_api_brand_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.inventory_api_brand DROP CONSTRAINT inventory_api_brand_pkey;
       public            postgres    false    240            $           2606    991886 0   inventory_api_brand inventory_api_brand_slug_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.inventory_api_brand
    ADD CONSTRAINT inventory_api_brand_slug_key UNIQUE (slug);
 Z   ALTER TABLE ONLY public.inventory_api_brand DROP CONSTRAINT inventory_api_brand_slug_key;
       public            postgres    false    240            �           2606    1180040 @   inventory_api_customermessage inventory_api_customermessage_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.inventory_api_customermessage
    ADD CONSTRAINT inventory_api_customermessage_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.inventory_api_customermessage DROP CONSTRAINT inventory_api_customermessage_pkey;
       public            postgres    false    295            �           2606    1155336 n   inventory_api_inventory_transfer_transfer_item inventory_api_inventory__inventory_transfer_id_pr_e260949b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_inventory__inventory_transfer_id_pr_e260949b_uniq UNIQUE (inventory_transfer_id, productsizevariant_id);
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_inventory__inventory_transfer_id_pr_e260949b_uniq;
       public            postgres    false    293    293            &           2606    991897 F   inventory_api_inventory_location inventory_api_inventory_location_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_location
    ADD CONSTRAINT inventory_api_inventory_location_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.inventory_api_inventory_location DROP CONSTRAINT inventory_api_inventory_location_pkey;
       public            postgres    false    242            <           2606    991995 O   inventory_api_inventory_transfer inventory_api_inventory_transfer_TO_number_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT "inventory_api_inventory_transfer_TO_number_key" UNIQUE ("TO_number");
 {   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT "inventory_api_inventory_transfer_TO_number_key";
       public            postgres    false    252            ?           2606    991993 F   inventory_api_inventory_transfer inventory_api_inventory_transfer_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT inventory_api_inventory_transfer_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT inventory_api_inventory_transfer_pkey;
       public            postgres    false    252            �           2606    1155334 b   inventory_api_inventory_transfer_transfer_item inventory_api_inventory_transfer_transfer_item_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_inventory_transfer_transfer_item_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_inventory_transfer_transfer_item_pkey;
       public            postgres    false    293            *           2606    991908 0   inventory_api_product inventory_api_product_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_product_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_product_pkey;
       public            postgres    false    244            -           2606    991910 4   inventory_api_product inventory_api_product_slug_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_product_slug_key UNIQUE (slug);
 ^   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_product_slug_key;
       public            postgres    false    244            0           2606    991921 @   inventory_api_productcategory inventory_api_productcategory_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.inventory_api_productcategory
    ADD CONSTRAINT inventory_api_productcategory_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.inventory_api_productcategory DROP CONSTRAINT inventory_api_productcategory_pkey;
       public            postgres    false    246            3           2606    991923 D   inventory_api_productcategory inventory_api_productcategory_slug_key 
   CONSTRAINT        ALTER TABLE ONLY public.inventory_api_productcategory
    ADD CONSTRAINT inventory_api_productcategory_slug_key UNIQUE (slug);
 n   ALTER TABLE ONLY public.inventory_api_productcategory DROP CONSTRAINT inventory_api_productcategory_slug_key;
       public            postgres    false    246            �           2606    1180531 B   inventory_api_productpurchased inventory_api_productpurchased_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchased
    ADD CONSTRAINT inventory_api_productpurchased_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.inventory_api_productpurchased DROP CONSTRAINT inventory_api_productpurchased_pkey;
       public            postgres    false    310            �           2606    1180539 J   inventory_api_productpurchaseditem inventory_api_productpurchaseditem_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_productpurchaseditem_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_productpurchaseditem_pkey;
       public            postgres    false    312            �           2606    1180586 P   inventory_api_productpurchasedpayment inventory_api_productpurchasedpayment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment
    ADD CONSTRAINT inventory_api_productpurchasedpayment_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment DROP CONSTRAINT inventory_api_productpurchasedpayment_pkey;
       public            postgres    false    314            8           2606    991945 F   inventory_api_productsizevariant inventory_api_productsizevariant_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productsizevariant
    ADD CONSTRAINT inventory_api_productsizevariant_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.inventory_api_productsizevariant DROP CONSTRAINT inventory_api_productsizevariant_pkey;
       public            postgres    false    250            5           2606    991934 2   inventory_api_supplier inventory_api_supplier_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.inventory_api_supplier
    ADD CONSTRAINT inventory_api_supplier_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.inventory_api_supplier DROP CONSTRAINT inventory_api_supplier_pkey;
       public            postgres    false    248            X           2606    992180 "   pos_api_outlet pos_api_outlet_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_pkey;
       public            postgres    false    262            [           2606    992182 &   pos_api_outlet pos_api_outlet_slug_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_slug_key UNIQUE (slug);
 P   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_slug_key;
       public            postgres    false    262            a           2606    992190 &   pos_api_register pos_api_register_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_pkey;
       public            postgres    false    264            �           2606    1180141 J   settings_api_checkoutfieldsettings settings_api_checkoutfieldsettings_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_checkoutfieldsettings
    ADD CONSTRAINT settings_api_checkoutfieldsettings_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.settings_api_checkoutfieldsettings DROP CONSTRAINT settings_api_checkoutfieldsettings_pkey;
       public            postgres    false    298                       2606    991826 >   settings_api_checkoutsetting settings_api_checkoutsetting_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.settings_api_checkoutsetting
    ADD CONSTRAINT settings_api_checkoutsetting_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.settings_api_checkoutsetting DROP CONSTRAINT settings_api_checkoutsetting_pkey;
       public            postgres    false    233            �           2606    1180284 4   settings_api_customuser settings_api_customuser_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.settings_api_customuser
    ADD CONSTRAINT settings_api_customuser_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.settings_api_customuser DROP CONSTRAINT settings_api_customuser_pkey;
       public            postgres    false    308            �           2606    1180286 ;   settings_api_customuser settings_api_customuser_user_id_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.settings_api_customuser
    ADD CONSTRAINT settings_api_customuser_user_id_key UNIQUE (user_id);
 e   ALTER TABLE ONLY public.settings_api_customuser DROP CONSTRAINT settings_api_customuser_user_id_key;
       public            postgres    false    308                       2606    1180226 8   settings_api_deliveryarea settings_api_deliveryarea_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.settings_api_deliveryarea
    ADD CONSTRAINT settings_api_deliveryarea_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.settings_api_deliveryarea DROP CONSTRAINT settings_api_deliveryarea_pkey;
       public            postgres    false    238            �           2606    1180162 D   settings_api_freeshippingmethod settings_api_freeshippingmethod_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_freeshippingmethod
    ADD CONSTRAINT settings_api_freeshippingmethod_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.settings_api_freeshippingmethod DROP CONSTRAINT settings_api_freeshippingmethod_pkey;
       public            postgres    false    301                       2606    991837 <   settings_api_generalsetting settings_api_generalsetting_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.settings_api_generalsetting
    ADD CONSTRAINT settings_api_generalsetting_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.settings_api_generalsetting DROP CONSTRAINT settings_api_generalsetting_pkey;
       public            postgres    false    235            �           2606    1180170 L   settings_api_standardshippingmethod settings_api_standardshippingmethod_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_standardshippingmethod
    ADD CONSTRAINT settings_api_standardshippingmethod_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.settings_api_standardshippingmethod DROP CONSTRAINT settings_api_standardshippingmethod_pkey;
       public            postgres    false    303            �           2606    1180178 R   settings_api_storepickupshippingmethod settings_api_storepickupshippingmethod_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_storepickupshippingmethod
    ADD CONSTRAINT settings_api_storepickupshippingmethod_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.settings_api_storepickupshippingmethod DROP CONSTRAINT settings_api_storepickupshippingmethod_pkey;
       public            postgres    false    305                       2606    991856 .   settings_api_taxrate settings_api_taxrate_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.settings_api_taxrate
    ADD CONSTRAINT settings_api_taxrate_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.settings_api_taxrate DROP CONSTRAINT settings_api_taxrate_pkey;
       public            postgres    false    237            �           2606    992370 6   superadmin_api_adminuser superadmin_api_adminuser_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.superadmin_api_adminuser
    ADD CONSTRAINT superadmin_api_adminuser_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.superadmin_api_adminuser DROP CONSTRAINT superadmin_api_adminuser_pkey;
       public            postgres    false    277            �           2606    991662 0   user_auth_user_groups user_auth_user_groups_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_pkey;
       public            postgres    false    213            �           2606    991673 J   user_auth_user_groups user_auth_user_groups_user_id_group_id_6887c85a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_user_id_group_id_6887c85a_uniq UNIQUE (user_id, group_id);
 t   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_user_id_group_id_6887c85a_uniq;
       public            postgres    false    213    213            �           2606    991652 "   user_auth_user user_auth_user_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.user_auth_user
    ADD CONSTRAINT user_auth_user_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.user_auth_user DROP CONSTRAINT user_auth_user_pkey;
       public            postgres    false    211            �           2606    991687 \   user_auth_user_user_permissions user_auth_user_user_perm_user_id_permission_id_4df7833e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user_perm_user_id_permission_id_4df7833e_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user_perm_user_id_permission_id_4df7833e_uniq;
       public            postgres    false    215    215            �           2606    991670 D   user_auth_user_user_permissions user_auth_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user_permissions_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user_permissions_pkey;
       public            postgres    false    215            �           2606    991654 *   user_auth_user user_auth_user_username_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.user_auth_user
    ADD CONSTRAINT user_auth_user_username_key UNIQUE (username);
 T   ALTER TABLE ONLY public.user_auth_user DROP CONSTRAINT user_auth_user_username_key;
       public            postgres    false    211                       1259    991754 $   app_api_promocode_code_a87ba6c3_like    INDEX     v   CREATE INDEX app_api_promocode_code_a87ba6c3_like ON public.app_api_promocode USING btree (code varchar_pattern_ops);
 8   DROP INDEX public.app_api_promocode_code_a87ba6c3_like;
       public            postgres    false    221            �           1259    1114405 .   app_api_promocode_products_product_id_eb3006a7    INDEX     {   CREATE INDEX app_api_promocode_products_product_id_eb3006a7 ON public.app_api_promocode_products USING btree (product_id);
 B   DROP INDEX public.app_api_promocode_products_product_id_eb3006a7;
       public            postgres    false    291            �           1259    1114404 0   app_api_promocode_products_promocode_id_0a5f44a5    INDEX        CREATE INDEX app_api_promocode_products_promocode_id_0a5f44a5 ON public.app_api_promocode_products USING btree (promocode_id);
 D   DROP INDEX public.app_api_promocode_products_promocode_id_0a5f44a5;
       public            postgres    false    291            �           1259    991641    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    991637 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    991638 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    991623 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205                       1259    991814 #   company_api_news_slug_e3340262_like    INDEX     t   CREATE INDEX company_api_news_slug_e3340262_like ON public.company_api_news USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.company_api_news_slug_e3340262_like;
       public            postgres    false    229                       1259    991815 -   company_api_termscondition_slug_7af59f12_like    INDEX     �   CREATE INDEX company_api_termscondition_slug_7af59f12_like ON public.company_api_termscondition USING btree (slug varchar_pattern_ops);
 A   DROP INDEX public.company_api_termscondition_slug_7af59f12_like;
       public            postgres    false    231            {           1259    992348 5   customer_order_api_notification_user_from_id_13ad845e    INDEX     �   CREATE INDEX customer_order_api_notification_user_from_id_13ad845e ON public.customer_order_api_notification USING btree (user_from_id);
 I   DROP INDEX public.customer_order_api_notification_user_from_id_13ad845e;
       public            postgres    false    274            |           1259    992349 3   customer_order_api_notification_user_to_id_70196d07    INDEX     �   CREATE INDEX customer_order_api_notification_user_to_id_70196d07 ON public.customer_order_api_notification USING btree (user_to_id);
 G   DROP INDEX public.customer_order_api_notification_user_to_id_70196d07;
       public            postgres    false    274            b           1259    992303 -   customer_order_api_order_customer_id_63ce65df    INDEX     y   CREATE INDEX customer_order_api_order_customer_id_63ce65df ON public.customer_order_api_order USING btree (customer_id);
 A   DROP INDEX public.customer_order_api_order_customer_id_63ce65df;
       public            postgres    false    266            c           1259    992304 5   customer_order_api_order_delivery_address_id_caf12fc3    INDEX     �   CREATE INDEX customer_order_api_order_delivery_address_id_caf12fc3 ON public.customer_order_api_order USING btree (delivery_address_id);
 I   DROP INDEX public.customer_order_api_order_delivery_address_id_caf12fc3;
       public            postgres    false    266            d           1259    1180237 2   customer_order_api_order_delivery_area_id_e1c48ff8    INDEX     �   CREATE INDEX customer_order_api_order_delivery_area_id_e1c48ff8 ON public.customer_order_api_order USING btree (delivery_area_id);
 F   DROP INDEX public.customer_order_api_order_delivery_area_id_e1c48ff8;
       public            postgres    false    266            e           1259    992305 +   customer_order_api_order_outlet_id_5bda43f3    INDEX     u   CREATE INDEX customer_order_api_order_outlet_id_5bda43f3 ON public.customer_order_api_order USING btree (outlet_id);
 ?   DROP INDEX public.customer_order_api_order_outlet_id_5bda43f3;
       public            postgres    false    266            f           1259    992335 ,   customer_order_api_order_payment_id_e20bfd31    INDEX     w   CREATE INDEX customer_order_api_order_payment_id_e20bfd31 ON public.customer_order_api_order USING btree (payment_id);
 @   DROP INDEX public.customer_order_api_order_payment_id_e20bfd31;
       public            postgres    false    266            i           1259    992336 /   customer_order_api_order_promo_code_id_2fbc7ba3    INDEX     }   CREATE INDEX customer_order_api_order_promo_code_id_2fbc7ba3 ON public.customer_order_api_order USING btree (promo_code_id);
 C   DROP INDEX public.customer_order_api_order_promo_code_id_2fbc7ba3;
       public            postgres    false    266            j           1259    1048834 -   customer_order_api_order_register_id_8221cf57    INDEX     y   CREATE INDEX customer_order_api_order_register_id_8221cf57 ON public.customer_order_api_order USING btree (register_id);
 A   DROP INDEX public.customer_order_api_order_register_id_8221cf57;
       public            postgres    false    266            k           1259    992337 -   customer_order_api_order_supplier_id_54364318    INDEX     y   CREATE INDEX customer_order_api_order_supplier_id_54364318 ON public.customer_order_api_order USING btree (supplier_id);
 A   DROP INDEX public.customer_order_api_order_supplier_id_54364318;
       public            postgres    false    266            t           1259    992333 .   customer_order_api_orderitem_order_id_5691a1fa    INDEX     {   CREATE INDEX customer_order_api_orderitem_order_id_5691a1fa ON public.customer_order_api_orderitem USING btree (order_id);
 B   DROP INDEX public.customer_order_api_orderitem_order_id_5691a1fa;
       public            postgres    false    272            w           1259    992334 0   customer_order_api_orderitem_product_id_44ffc334    INDEX        CREATE INDEX customer_order_api_orderitem_product_id_44ffc334 ON public.customer_order_api_orderitem USING btree (product_id);
 D   DROP INDEX public.customer_order_api_orderitem_product_id_44ffc334;
       public            postgres    false    272            x           1259    1048835 -   customer_order_api_orderitem_size_id_d99d89ee    INDEX     y   CREATE INDEX customer_order_api_orderitem_size_id_d99d89ee ON public.customer_order_api_orderitem USING btree (size_id);
 A   DROP INDEX public.customer_order_api_orderitem_size_id_d99d89ee;
       public            postgres    false    272            n           1259    992321 7   customer_order_api_transferorder_order_from_id_9d61289c    INDEX     �   CREATE INDEX customer_order_api_transferorder_order_from_id_9d61289c ON public.customer_order_api_transferorder USING btree (order_from_id);
 K   DROP INDEX public.customer_order_api_transferorder_order_from_id_9d61289c;
       public            postgres    false    270            q           1259    992322 5   customer_order_api_transferorder_order_to_id_0c74a8df    INDEX     �   CREATE INDEX customer_order_api_transferorder_order_to_id_0c74a8df ON public.customer_order_api_transferorder USING btree (order_to_id);
 I   DROP INDEX public.customer_order_api_transferorder_order_to_id_0c74a8df;
       public            postgres    false    270            S           1259    992169 1   customer_profile_api_address_customer_id_045d07fa    INDEX     �   CREATE INDEX customer_profile_api_address_customer_id_045d07fa ON public.customer_profile_api_address USING btree (customer_id);
 E   DROP INDEX public.customer_profile_api_address_customer_id_045d07fa;
       public            postgres    false    260            O           1259    992162 4   customer_profile_api_custo_customergroup_id_c981a60c    INDEX     �   CREATE INDEX customer_profile_api_custo_customergroup_id_c981a60c ON public.customer_profile_api_customergroup_customer USING btree (customergroup_id);
 H   DROP INDEX public.customer_profile_api_custo_customergroup_id_c981a60c;
       public            postgres    false    258            P           1259    992163 6   customer_profile_api_custo_customerprofile_id_ecfc1af3    INDEX     �   CREATE INDEX customer_profile_api_custo_customerprofile_id_ecfc1af3 ON public.customer_profile_api_customergroup_customer USING btree (customerprofile_id);
 J   DROP INDEX public.customer_profile_api_custo_customerprofile_id_ecfc1af3;
       public            postgres    false    258            A           1259    992148 8   customer_profile_api_customerprofile_email_c360b31c_like    INDEX     �   CREATE INDEX customer_profile_api_customerprofile_email_c360b31c_like ON public.customer_profile_api_customerprofile USING btree (email varchar_pattern_ops);
 L   DROP INDEX public.customer_profile_api_customerprofile_email_c360b31c_like;
       public            postgres    false    254            H           1259    992149 ;   customer_profile_api_customerprofile_username_fa6dc1f9_like    INDEX     �   CREATE INDEX customer_profile_api_customerprofile_username_fa6dc1f9_like ON public.customer_profile_api_customerprofile USING btree (username varchar_pattern_ops);
 O   DROP INDEX public.customer_profile_api_customerprofile_username_fa6dc1f9_like;
       public            postgres    false    254            �           1259    991722 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            �           1259    991723 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            }           1259    992359 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    275            �           1259    992358 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    275            "           1259    992004 &   inventory_api_brand_slug_5fda00de_like    INDEX     z   CREATE INDEX inventory_api_brand_slug_5fda00de_like ON public.inventory_api_brand USING btree (slug varchar_pattern_ops);
 :   DROP INDEX public.inventory_api_brand_slug_5fda00de_like;
       public            postgres    false    240            �           1259    1180046 .   inventory_api_customermessage_name_id_ee946ae7    INDEX     {   CREATE INDEX inventory_api_customermessage_name_id_ee946ae7 ON public.inventory_api_customermessage USING btree (name_id);
 B   DROP INDEX public.inventory_api_customermessage_name_id_ee946ae7;
       public            postgres    false    295            �           1259    1155347 9   inventory_api_inventory_tr_inventory_transfer_id_11ca4d6e    INDEX     �   CREATE INDEX inventory_api_inventory_tr_inventory_transfer_id_11ca4d6e ON public.inventory_api_inventory_transfer_transfer_item USING btree (inventory_transfer_id);
 M   DROP INDEX public.inventory_api_inventory_tr_inventory_transfer_id_11ca4d6e;
       public            postgres    false    293            �           1259    1155348 .   inventory_api_inventory_tr_product_id_f7dae728    INDEX     �   CREATE INDEX inventory_api_inventory_tr_product_id_f7dae728 ON public.inventory_api_inventory_transfer_transfer_item USING btree (productsizevariant_id);
 B   DROP INDEX public.inventory_api_inventory_tr_product_id_f7dae728;
       public            postgres    false    293            :           1259    992083 8   inventory_api_inventory_transfer_TO_number_7ba20f92_like    INDEX     �   CREATE INDEX "inventory_api_inventory_transfer_TO_number_7ba20f92_like" ON public.inventory_api_inventory_transfer USING btree ("TO_number" varchar_pattern_ops);
 N   DROP INDEX public."inventory_api_inventory_transfer_TO_number_7ba20f92_like";
       public            postgres    false    252            =           1259    992084 ;   inventory_api_inventory_transfer_from_inventory_id_83b618f2    INDEX     �   CREATE INDEX inventory_api_inventory_transfer_from_inventory_id_83b618f2 ON public.inventory_api_inventory_transfer USING btree (from_inventory_id);
 O   DROP INDEX public.inventory_api_inventory_transfer_from_inventory_id_83b618f2;
       public            postgres    false    252            @           1259    992085 9   inventory_api_inventory_transfer_to_inventory_id_e474aaf6    INDEX     �   CREATE INDEX inventory_api_inventory_transfer_to_inventory_id_e474aaf6 ON public.inventory_api_inventory_transfer USING btree (to_inventory_id);
 M   DROP INDEX public.inventory_api_inventory_transfer_to_inventory_id_e474aaf6;
       public            postgres    false    252            '           1259    992011 '   inventory_api_product_brand_id_ecf01728    INDEX     m   CREATE INDEX inventory_api_product_brand_id_ecf01728 ON public.inventory_api_product USING btree (brand_id);
 ;   DROP INDEX public.inventory_api_product_brand_id_ecf01728;
       public            postgres    false    244            (           1259    992052 *   inventory_api_product_category_id_97d8fd58    INDEX     s   CREATE INDEX inventory_api_product_category_id_97d8fd58 ON public.inventory_api_product USING btree (category_id);
 >   DROP INDEX public.inventory_api_product_category_id_97d8fd58;
       public            postgres    false    244            +           1259    992010 (   inventory_api_product_slug_f995538e_like    INDEX     ~   CREATE INDEX inventory_api_product_slug_f995538e_like ON public.inventory_api_product USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.inventory_api_product_slug_f995538e_like;
       public            postgres    false    244            .           1259    992053 %   inventory_api_product_tax_id_7a84feb6    INDEX     i   CREATE INDEX inventory_api_product_tax_id_7a84feb6 ON public.inventory_api_product USING btree (tax_id);
 9   DROP INDEX public.inventory_api_product_tax_id_7a84feb6;
       public            postgres    false    244            1           1259    992012 0   inventory_api_productcategory_slug_124b8bbd_like    INDEX     �   CREATE INDEX inventory_api_productcategory_slug_124b8bbd_like ON public.inventory_api_productcategory USING btree (slug varchar_pattern_ops);
 D   DROP INDEX public.inventory_api_productcategory_slug_124b8bbd_like;
       public            postgres    false    246            �           1259    1180571 9   inventory_api_productpurch_inventory_location_id_5b3c6e6c    INDEX     �   CREATE INDEX inventory_api_productpurch_inventory_location_id_5b3c6e6c ON public.inventory_api_productpurchaseditem USING btree (inventory_location_id);
 M   DROP INDEX public.inventory_api_productpurch_inventory_location_id_5b3c6e6c;
       public            postgres    false    312            �           1259    1180573 8   inventory_api_productpurch_purchased_product_id_82894f09    INDEX     �   CREATE INDEX inventory_api_productpurch_purchased_product_id_82894f09 ON public.inventory_api_productpurchaseditem USING btree (purchased_product_id);
 L   DROP INDEX public.inventory_api_productpurch_purchased_product_id_82894f09;
       public            postgres    false    312            �           1259    1180545 3   inventory_api_productpurchased_supplier_id_9710dd25    INDEX     �   CREATE INDEX inventory_api_productpurchased_supplier_id_9710dd25 ON public.inventory_api_productpurchased USING btree (supplier_id);
 G   DROP INDEX public.inventory_api_productpurchased_supplier_id_9710dd25;
       public            postgres    false    310            �           1259    1180572 <   inventory_api_productpurchaseditem_purchase_item_id_306c1984    INDEX     �   CREATE INDEX inventory_api_productpurchaseditem_purchase_item_id_306c1984 ON public.inventory_api_productpurchaseditem USING btree (purchase_item_id);
 P   DROP INDEX public.inventory_api_productpurchaseditem_purchase_item_id_306c1984;
       public            postgres    false    312            �           1259    1180574 =   inventory_api_productpurchaseditem_purchased_size_id_0eae197c    INDEX     �   CREATE INDEX inventory_api_productpurchaseditem_purchased_size_id_0eae197c ON public.inventory_api_productpurchaseditem USING btree (purchased_size_id);
 Q   DROP INDEX public.inventory_api_productpurchaseditem_purchased_size_id_0eae197c;
       public            postgres    false    312            �           1259    1180575 2   inventory_api_productpurchaseditem_tax_id_484f1da8    INDEX     �   CREATE INDEX inventory_api_productpurchaseditem_tax_id_484f1da8 ON public.inventory_api_productpurchaseditem USING btree (tax_id);
 F   DROP INDEX public.inventory_api_productpurchaseditem_tax_id_484f1da8;
       public            postgres    false    312            �           1259    1180592 ;   inventory_api_productpurchasedpayment_purchased_id_74bbd7b8    INDEX     �   CREATE INDEX inventory_api_productpurchasedpayment_purchased_id_74bbd7b8 ON public.inventory_api_productpurchasedpayment USING btree (purchased_id);
 O   DROP INDEX public.inventory_api_productpurchasedpayment_purchased_id_74bbd7b8;
       public            postgres    false    314            9           1259    992024 4   inventory_api_productsizevariant_product_id_36fc9be0    INDEX     �   CREATE INDEX inventory_api_productsizevariant_product_id_36fc9be0 ON public.inventory_api_productsizevariant USING btree (product_id);
 H   DROP INDEX public.inventory_api_productsizevariant_product_id_36fc9be0;
       public            postgres    false    250            6           1259    992018 &   inventory_api_supplier_tax_id_00acd6a4    INDEX     k   CREATE INDEX inventory_api_supplier_tax_id_00acd6a4 ON public.inventory_api_supplier USING btree (tax_id);
 :   DROP INDEX public.inventory_api_supplier_tax_id_00acd6a4;
       public            postgres    false    248            V           1259    992202 -   pos_api_outlet_inventory_location_id_e6e43042    INDEX     y   CREATE INDEX pos_api_outlet_inventory_location_id_e6e43042 ON public.pos_api_outlet USING btree (inventory_location_id);
 A   DROP INDEX public.pos_api_outlet_inventory_location_id_e6e43042;
       public            postgres    false    262            Y           1259    992201 !   pos_api_outlet_slug_05059a9b_like    INDEX     p   CREATE INDEX pos_api_outlet_slug_05059a9b_like ON public.pos_api_outlet USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.pos_api_outlet_slug_05059a9b_like;
       public            postgres    false    262            \           1259    992203    pos_api_outlet_tax_id_c77400bb    INDEX     [   CREATE INDEX pos_api_outlet_tax_id_c77400bb ON public.pos_api_outlet USING btree (tax_id);
 2   DROP INDEX public.pos_api_outlet_tax_id_c77400bb;
       public            postgres    false    262            ]           1259    992219 &   pos_api_register_closed_by_id_af4c20bd    INDEX     k   CREATE INDEX pos_api_register_closed_by_id_af4c20bd ON public.pos_api_register USING btree (closed_by_id);
 :   DROP INDEX public.pos_api_register_closed_by_id_af4c20bd;
       public            postgres    false    264            ^           1259    992220 &   pos_api_register_opened_by_id_fae461e8    INDEX     k   CREATE INDEX pos_api_register_opened_by_id_fae461e8 ON public.pos_api_register USING btree (opened_by_id);
 :   DROP INDEX public.pos_api_register_opened_by_id_fae461e8;
       public            postgres    false    264            _           1259    992221 #   pos_api_register_outlet_id_cb0a7d9b    INDEX     e   CREATE INDEX pos_api_register_outlet_id_cb0a7d9b ON public.pos_api_register USING btree (outlet_id);
 7   DROP INDEX public.pos_api_register_outlet_id_cb0a7d9b;
       public            postgres    false    264            �           1259    1180297 *   settings_api_customuser_outlet_id_60b0743e    INDEX     s   CREATE INDEX settings_api_customuser_outlet_id_60b0743e ON public.settings_api_customuser USING btree (outlet_id);
 >   DROP INDEX public.settings_api_customuser_outlet_id_60b0743e;
       public            postgres    false    308                       1259    1180258 5   settings_api_deliveryarea_shipping_method_id_7034b6e0    INDEX     �   CREATE INDEX settings_api_deliveryarea_shipping_method_id_7034b6e0 ON public.settings_api_deliveryarea USING btree (shipping_method_id);
 I   DROP INDEX public.settings_api_deliveryarea_shipping_method_id_7034b6e0;
       public            postgres    false    238            �           1259    992376 )   superadmin_api_adminuser_user_id_7a86dc82    INDEX     q   CREATE INDEX superadmin_api_adminuser_user_id_7a86dc82 ON public.superadmin_api_adminuser USING btree (user_id);
 =   DROP INDEX public.superadmin_api_adminuser_user_id_7a86dc82;
       public            postgres    false    277            �           1259    991685 '   user_auth_user_groups_group_id_165f3b9d    INDEX     m   CREATE INDEX user_auth_user_groups_group_id_165f3b9d ON public.user_auth_user_groups USING btree (group_id);
 ;   DROP INDEX public.user_auth_user_groups_group_id_165f3b9d;
       public            postgres    false    213            �           1259    991684 &   user_auth_user_groups_user_id_e339ec14    INDEX     k   CREATE INDEX user_auth_user_groups_user_id_e339ec14 ON public.user_auth_user_groups USING btree (user_id);
 :   DROP INDEX public.user_auth_user_groups_user_id_e339ec14;
       public            postgres    false    213            �           1259    991699 6   user_auth_user_user_permissions_permission_id_2c602bd2    INDEX     �   CREATE INDEX user_auth_user_user_permissions_permission_id_2c602bd2 ON public.user_auth_user_user_permissions USING btree (permission_id);
 J   DROP INDEX public.user_auth_user_user_permissions_permission_id_2c602bd2;
       public            postgres    false    215            �           1259    991698 0   user_auth_user_user_permissions_user_id_31fb400e    INDEX        CREATE INDEX user_auth_user_user_permissions_user_id_31fb400e ON public.user_auth_user_user_permissions USING btree (user_id);
 D   DROP INDEX public.user_auth_user_user_permissions_user_id_31fb400e;
       public            postgres    false    215            �           1259    991671 %   user_auth_user_username_59f710c9_like    INDEX     x   CREATE INDEX user_auth_user_username_59f710c9_like ON public.user_auth_user USING btree (username varchar_pattern_ops);
 9   DROP INDEX public.user_auth_user_username_59f710c9_like;
       public            postgres    false    211            �           2606    1114399 P   app_api_promocode_products app_api_promocode_pr_product_id_eb3006a7_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_products
    ADD CONSTRAINT app_api_promocode_pr_product_id_eb3006a7_fk_inventory FOREIGN KEY (product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.app_api_promocode_products DROP CONSTRAINT app_api_promocode_pr_product_id_eb3006a7_fk_inventory;
       public          postgres    false    244    291    3370            �           2606    1114394 R   app_api_promocode_products app_api_promocode_pr_promocode_id_0a5f44a5_fk_app_api_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_products
    ADD CONSTRAINT app_api_promocode_pr_promocode_id_0a5f44a5_fk_app_api_p FOREIGN KEY (promocode_id) REFERENCES public.app_api_promocode(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.app_api_promocode_products DROP CONSTRAINT app_api_promocode_pr_promocode_id_0a5f44a5_fk_app_api_p;
       public          postgres    false    291    221    3334            �           2606    991632 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3295    205    209            �           2606    991627 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    209    3300            �           2606    991618 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    203    205    3290            �           2606    992338 W   customer_order_api_notification customer_order_api_n_user_from_id_13ad845e_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_notification
    ADD CONSTRAINT customer_order_api_n_user_from_id_13ad845e_fk_user_auth FOREIGN KEY (user_from_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_notification DROP CONSTRAINT customer_order_api_n_user_from_id_13ad845e_fk_user_auth;
       public          postgres    false    3308    211    274            �           2606    992343 U   customer_order_api_notification customer_order_api_n_user_to_id_70196d07_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_notification
    ADD CONSTRAINT customer_order_api_n_user_to_id_70196d07_fk_user_auth FOREIGN KEY (user_to_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.customer_order_api_notification DROP CONSTRAINT customer_order_api_n_user_to_id_70196d07_fk_user_auth;
       public          postgres    false    3308    211    274            �           2606    992288 O   customer_order_api_order customer_order_api_o_customer_id_63ce65df_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_customer_id_63ce65df_fk_customer_ FOREIGN KEY (customer_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_customer_id_63ce65df_fk_customer_;
       public          postgres    false    266    254    3397            �           2606    992293 W   customer_order_api_order customer_order_api_o_delivery_address_id_caf12fc3_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_delivery_address_id_caf12fc3_fk_customer_ FOREIGN KEY (delivery_address_id) REFERENCES public.customer_profile_api_address(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_delivery_address_id_caf12fc3_fk_customer_;
       public          postgres    false    266    260    3413            �           2606    1180017 P   customer_order_api_orderitem customer_order_api_o_order_id_5691a1fa_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_o_order_id_5691a1fa_fk_customer_ FOREIGN KEY (order_id) REFERENCES public.customer_order_api_order(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_o_order_id_5691a1fa_fk_customer_;
       public          postgres    false    272    266    3432            �           2606    992298 M   customer_order_api_order customer_order_api_o_outlet_id_5bda43f3_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_outlet_id_5bda43f3_fk_pos_api_o FOREIGN KEY (outlet_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_outlet_id_5bda43f3_fk_pos_api_o;
       public          postgres    false    3416    266    262            �           2606    992262 N   customer_order_api_order customer_order_api_o_payment_id_e20bfd31_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_payment_id_e20bfd31_fk_customer_ FOREIGN KEY (payment_id) REFERENCES public.customer_order_api_paymentdetails(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_payment_id_e20bfd31_fk_customer_;
       public          postgres    false    3437    268    266            �           2606    992328 R   customer_order_api_orderitem customer_order_api_o_product_id_44ffc334_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_o_product_id_44ffc334_fk_inventory FOREIGN KEY (product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_o_product_id_44ffc334_fk_inventory;
       public          postgres    false    3370    272    244            �           2606    992267 Q   customer_order_api_order customer_order_api_o_promo_code_id_2fbc7ba3_fk_app_api_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_promo_code_id_2fbc7ba3_fk_app_api_p FOREIGN KEY (promo_code_id) REFERENCES public.app_api_promocode(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_promo_code_id_2fbc7ba3_fk_app_api_p;
       public          postgres    false    266    221    3334            �           2606    1048821 O   customer_order_api_order customer_order_api_o_register_id_8221cf57_fk_pos_api_r    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_register_id_8221cf57_fk_pos_api_r FOREIGN KEY (register_id) REFERENCES public.pos_api_register(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_register_id_8221cf57_fk_pos_api_r;
       public          postgres    false    266    264    3425            �           2606    1048826 O   customer_order_api_orderitem customer_order_api_o_size_id_d99d89ee_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_o_size_id_d99d89ee_fk_inventory FOREIGN KEY (size_id) REFERENCES public.inventory_api_productsizevariant(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_o_size_id_d99d89ee_fk_inventory;
       public          postgres    false    3384    250    272            �           2606    992272 O   customer_order_api_order customer_order_api_o_supplier_id_54364318_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_supplier_id_54364318_fk_inventory FOREIGN KEY (supplier_id) REFERENCES public.inventory_api_supplier(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_supplier_id_54364318_fk_inventory;
       public          postgres    false    266    248    3381            �           2606    1180253 N   customer_order_api_order customer_order_api_order_delivery_area_id_e1c48ff8_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_order_delivery_area_id_e1c48ff8_fk FOREIGN KEY (delivery_area_id) REFERENCES public.settings_api_deliveryarea(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_order_delivery_area_id_e1c48ff8_fk;
       public          postgres    false    238    3358    266            �           2606    992311 Y   customer_order_api_transferorder customer_order_api_t_order_from_id_9d61289c_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_t_order_from_id_9d61289c_fk_pos_api_o FOREIGN KEY (order_from_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_t_order_from_id_9d61289c_fk_pos_api_o;
       public          postgres    false    3416    270    262            �           2606    992306 T   customer_order_api_transferorder customer_order_api_t_order_id_98171d05_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_t_order_id_98171d05_fk_customer_ FOREIGN KEY (order_id) REFERENCES public.customer_order_api_order(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_t_order_id_98171d05_fk_customer_;
       public          postgres    false    270    3432    266            �           2606    992316 W   customer_order_api_transferorder customer_order_api_t_order_to_id_0c74a8df_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_t_order_to_id_0c74a8df_fk_pos_api_o FOREIGN KEY (order_to_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_t_order_to_id_0c74a8df_fk_pos_api_o;
       public          postgres    false    262    270    3416            �           2606    992164 S   customer_profile_api_address customer_profile_api_customer_id_045d07fa_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_address
    ADD CONSTRAINT customer_profile_api_customer_id_045d07fa_fk_customer_ FOREIGN KEY (customer_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.customer_profile_api_address DROP CONSTRAINT customer_profile_api_customer_id_045d07fa_fk_customer_;
       public          postgres    false    260    254    3397            �           2606    992152 g   customer_profile_api_customergroup_customer customer_profile_api_customergroup_id_c981a60c_fk_customer_    FK CONSTRAINT     
  ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_customergroup_id_c981a60c_fk_customer_ FOREIGN KEY (customergroup_id) REFERENCES public.customer_profile_api_customergroup(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_customergroup_id_c981a60c_fk_customer_;
       public          postgres    false    258    3404    256            �           2606    992157 i   customer_profile_api_customergroup_customer customer_profile_api_customerprofile_id_ecfc1af3_fk_customer_    FK CONSTRAINT       ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_customerprofile_id_ecfc1af3_fk_customer_ FOREIGN KEY (customerprofile_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_customerprofile_id_ecfc1af3_fk_customer_;
       public          postgres    false    254    258    3397            �           2606    992143 W   customer_profile_api_customerprofile customer_profile_api_user_id_e2c23c4c_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_user_id_e2c23c4c_fk_user_auth FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_user_id_e2c23c4c_fk_user_auth;
       public          postgres    false    3308    211    254            �           2606    991712 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    217    3290            �           2606    991717 G   django_admin_log django_admin_log_user_id_c564eba6_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_auth_user_id;
       public          postgres    false    3308    211    217            �           2606    1180041 P   inventory_api_customermessage inventory_api_custom_name_id_ee946ae7_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_customermessage
    ADD CONSTRAINT inventory_api_custom_name_id_ee946ae7_fk_customer_ FOREIGN KEY (name_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.inventory_api_customermessage DROP CONSTRAINT inventory_api_custom_name_id_ee946ae7_fk_customer_;
       public          postgres    false    3397    254    295            �           2606    992068 ]   inventory_api_inventory_transfer inventory_api_invent_from_inventory_id_83b618f2_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT inventory_api_invent_from_inventory_id_83b618f2_fk_inventory FOREIGN KEY (from_inventory_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT inventory_api_invent_from_inventory_id_83b618f2_fk_inventory;
       public          postgres    false    3366    242    252            �           2606    1155337 n   inventory_api_inventory_transfer_transfer_item inventory_api_invent_inventory_transfer_i_11ca4d6e_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_invent_inventory_transfer_i_11ca4d6e_fk_inventory FOREIGN KEY (inventory_transfer_id) REFERENCES public.inventory_api_inventory_transfer(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_invent_inventory_transfer_i_11ca4d6e_fk_inventory;
       public          postgres    false    293    252    3391            �           2606    1179961 n   inventory_api_inventory_transfer_transfer_item inventory_api_invent_productsizevariant_i_43e8a202_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_invent_productsizevariant_i_43e8a202_fk_inventory FOREIGN KEY (productsizevariant_id) REFERENCES public.inventory_api_productsizevariant(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_invent_productsizevariant_i_43e8a202_fk_inventory;
       public          postgres    false    293    250    3384            �           2606    992073 [   inventory_api_inventory_transfer inventory_api_invent_to_inventory_id_e474aaf6_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT inventory_api_invent_to_inventory_id_e474aaf6_fk_inventory FOREIGN KEY (to_inventory_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT inventory_api_invent_to_inventory_id_e474aaf6_fk_inventory;
       public          postgres    false    242    3366    252            �           2606    992005 I   inventory_api_product inventory_api_produc_brand_id_ecf01728_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_produc_brand_id_ecf01728_fk_inventory FOREIGN KEY (brand_id) REFERENCES public.inventory_api_brand(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_produc_brand_id_ecf01728_fk_inventory;
       public          postgres    false    240    244    3361            �           2606    991968 L   inventory_api_product inventory_api_produc_category_id_97d8fd58_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_produc_category_id_97d8fd58_fk_inventory FOREIGN KEY (category_id) REFERENCES public.inventory_api_productcategory(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_produc_category_id_97d8fd58_fk_inventory;
       public          postgres    false    3376    244    246            �           2606    1180546 b   inventory_api_productpurchaseditem inventory_api_produc_inventory_location_i_5b3c6e6c_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_inventory_location_i_5b3c6e6c_fk_inventory FOREIGN KEY (inventory_location_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_inventory_location_i_5b3c6e6c_fk_inventory;
       public          postgres    false    3366    312    242            �           2606    992019 V   inventory_api_productsizevariant inventory_api_produc_product_id_36fc9be0_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productsizevariant
    ADD CONSTRAINT inventory_api_produc_product_id_36fc9be0_fk_inventory FOREIGN KEY (product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productsizevariant DROP CONSTRAINT inventory_api_produc_product_id_36fc9be0_fk_inventory;
       public          postgres    false    3370    244    250            �           2606    1180551 ^   inventory_api_productpurchaseditem inventory_api_produc_purchase_item_id_306c1984_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_purchase_item_id_306c1984_fk_inventory FOREIGN KEY (purchase_item_id) REFERENCES public.inventory_api_productpurchased(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_purchase_item_id_306c1984_fk_inventory;
       public          postgres    false    310    3503    312            �           2606    1180587 ]   inventory_api_productpurchasedpayment inventory_api_produc_purchased_id_74bbd7b8_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment
    ADD CONSTRAINT inventory_api_produc_purchased_id_74bbd7b8_fk_inventory FOREIGN KEY (purchased_id) REFERENCES public.inventory_api_productpurchased(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment DROP CONSTRAINT inventory_api_produc_purchased_id_74bbd7b8_fk_inventory;
       public          postgres    false    310    314    3503            �           2606    1180556 b   inventory_api_productpurchaseditem inventory_api_produc_purchased_product_id_82894f09_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_purchased_product_id_82894f09_fk_inventory FOREIGN KEY (purchased_product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_purchased_product_id_82894f09_fk_inventory;
       public          postgres    false    244    312    3370            �           2606    1180561 _   inventory_api_productpurchaseditem inventory_api_produc_purchased_size_id_0eae197c_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_purchased_size_id_0eae197c_fk_inventory FOREIGN KEY (purchased_size_id) REFERENCES public.inventory_api_productsizevariant(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_purchased_size_id_0eae197c_fk_inventory;
       public          postgres    false    250    3384    312            �           2606    1180540 U   inventory_api_productpurchased inventory_api_produc_supplier_id_9710dd25_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchased
    ADD CONSTRAINT inventory_api_produc_supplier_id_9710dd25_fk_inventory FOREIGN KEY (supplier_id) REFERENCES public.inventory_api_supplier(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.inventory_api_productpurchased DROP CONSTRAINT inventory_api_produc_supplier_id_9710dd25_fk_inventory;
       public          postgres    false    310    3381    248            �           2606    1180566 T   inventory_api_productpurchaseditem inventory_api_produc_tax_id_484f1da8_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_tax_id_484f1da8_fk_settings_ FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_tax_id_484f1da8_fk_settings_;
       public          postgres    false    237    312    3356            �           2606    991973 G   inventory_api_product inventory_api_produc_tax_id_7a84feb6_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_produc_tax_id_7a84feb6_fk_settings_ FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_produc_tax_id_7a84feb6_fk_settings_;
       public          postgres    false    237    244    3356            �           2606    992013 H   inventory_api_supplier inventory_api_suppli_tax_id_00acd6a4_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_supplier
    ADD CONSTRAINT inventory_api_suppli_tax_id_00acd6a4_fk_settings_ FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.inventory_api_supplier DROP CONSTRAINT inventory_api_suppli_tax_id_00acd6a4_fk_settings_;
       public          postgres    false    3356    237    248            �           2606    992191 H   pos_api_outlet pos_api_outlet_inventory_location_i_e6e43042_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_inventory_location_i_e6e43042_fk_inventory FOREIGN KEY (inventory_location_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_inventory_location_i_e6e43042_fk_inventory;
       public          postgres    false    262    242    3366            �           2606    992196 H   pos_api_outlet pos_api_outlet_tax_id_c77400bb_fk_settings_api_taxrate_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_tax_id_c77400bb_fk_settings_api_taxrate_id FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_tax_id_c77400bb_fk_settings_api_taxrate_id;
       public          postgres    false    262    237    3356            �           2606    992204 D   pos_api_register pos_api_register_closed_by_id_af4c20bd_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_closed_by_id_af4c20bd_fk_customer_ FOREIGN KEY (closed_by_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_closed_by_id_af4c20bd_fk_customer_;
       public          postgres    false    254    264    3397            �           2606    992209 D   pos_api_register pos_api_register_opened_by_id_fae461e8_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_opened_by_id_fae461e8_fk_customer_ FOREIGN KEY (opened_by_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_opened_by_id_fae461e8_fk_customer_;
       public          postgres    false    3397    264    254            �           2606    992214 I   pos_api_register pos_api_register_outlet_id_cb0a7d9b_fk_pos_api_outlet_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_outlet_id_cb0a7d9b_fk_pos_api_outlet_id FOREIGN KEY (outlet_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_outlet_id_cb0a7d9b_fk_pos_api_outlet_id;
       public          postgres    false    264    262    3416            �           2606    1180287 W   settings_api_customuser settings_api_customuser_outlet_id_60b0743e_fk_pos_api_outlet_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser
    ADD CONSTRAINT settings_api_customuser_outlet_id_60b0743e_fk_pos_api_outlet_id FOREIGN KEY (outlet_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_customuser DROP CONSTRAINT settings_api_customuser_outlet_id_60b0743e_fk_pos_api_outlet_id;
       public          postgres    false    3416    308    262            �           2606    1180292 U   settings_api_customuser settings_api_customuser_user_id_a82ec8b6_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser
    ADD CONSTRAINT settings_api_customuser_user_id_a82ec8b6_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.settings_api_customuser DROP CONSTRAINT settings_api_customuser_user_id_a82ec8b6_fk_user_auth_user_id;
       public          postgres    false    211    308    3308            �           2606    1180436 W   settings_api_deliveryarea settings_api_deliver_shipping_method_id_7034b6e0_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_deliveryarea
    ADD CONSTRAINT settings_api_deliver_shipping_method_id_7034b6e0_fk_settings_ FOREIGN KEY (shipping_method_id) REFERENCES public.settings_api_standardshippingmethod(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_deliveryarea DROP CONSTRAINT settings_api_deliver_shipping_method_id_7034b6e0_fk_settings_;
       public          postgres    false    238    303    3494            �           2606    992371 W   superadmin_api_adminuser superadmin_api_adminuser_user_id_7a86dc82_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.superadmin_api_adminuser
    ADD CONSTRAINT superadmin_api_adminuser_user_id_7a86dc82_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.superadmin_api_adminuser DROP CONSTRAINT superadmin_api_adminuser_user_id_7a86dc82_fk_user_auth_user_id;
       public          postgres    false    3308    277    211            �           2606    991679 N   user_auth_user_groups user_auth_user_groups_group_id_165f3b9d_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_group_id_165f3b9d_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_group_id_165f3b9d_fk_auth_group_id;
       public          postgres    false    213    207    3300            �           2606    991674 Q   user_auth_user_groups user_auth_user_groups_user_id_e339ec14_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_user_id_e339ec14_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_user_id_e339ec14_fk_user_auth_user_id;
       public          postgres    false    211    3308    213            �           2606    991693 X   user_auth_user_user_permissions user_auth_user_user__permission_id_2c602bd2_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user__permission_id_2c602bd2_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user__permission_id_2c602bd2_fk_auth_perm;
       public          postgres    false    205    3295    215            �           2606    991688 R   user_auth_user_user_permissions user_auth_user_user__user_id_31fb400e_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user__user_id_31fb400e_fk_user_auth FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user__user_id_31fb400e_fk_user_auth;
       public          postgres    false    3308    215    211            �   �  x�eRMo�0=�_1��A�P��C�a��v���2���!�l����w��]H�6�潙�q|u��*j�X��g���;��\ջ[�e����)d~^߫6^�Y[H����f\���=/���$��G�8βk/�0��-5�����sV��F>��tT�&����v����Х�R-Q��q��m��+��
H)ֆ�˼ͺvk%q�rɛ��-%gV��.� �Rl�6¬c+$oT�U'0 /�A&�f��a�>�Õ`F|)��|�D�3���[I��bL+��Q���V6������jQ�C�j��aQ��4�XHSY���Ⱦ��}<��@�Ek|k)pv��_��~|�ùMj=���'�<�����W�4������2��J�:�C���[�w�m��wWI�$�(�)D�4Φј&q���A4��x�F4�F7���%��z53��      �      x������ � �      �      x������ � �      �      x������ � �      �   8   x�3���MLO-�/(�O)M.��r���RS�3�K��
��9c�@��+F��� 9�      �      x������ � �      �   B   x�3�L�(I-�K̉O,(��LN,����N.JM�+��/�72�7�,�53��+�K���,����� o�      �      x������ � �      �      x������ � �      }      x������ � �            x������ � �      {   K	  x��ZK��6]S��	R����5R���j�jlˑ��8�E @R��T���� ���s�g�8t���6^�c��&7��o����A�?�ǵW(b`逗��/C��k��U�u�A����O�a���a
�d�tN�;�m�
�
�]TH������i|=M�t����ͣ_ɥOAwR�+p^�t�=8�����ay?{S9Gph��J���+���o]T����_�m��s{[;��)ˏ�YƠ�v�>2�#X���1�y�!����1���k6�s�=��PB �����8!�r^yL-����=އ�x�o���u�0��~���c�i�[8�=+�Q�送�Z�Y%��?��\���J��C/ݴRL�CnZ(&��vS��G��lN�O���J%��?
 ��# �, ć����$ً�*�˰�_���n؏f����-��/?AC�Z%�� �u�V�8]��� �CV)Ux :���A#������{���r�n��&Ǭ �8�U:5�JMg��F�"�Ʉ� mV�2u����h�Eh6�VZ���h�RPL��D���b
|"�P�/�0,���&�@VWѧ��{p}3,? 7���������s8w��C��cY���)b(��dȠ"��c����Ь��k^ƻ]�s?�[orHV4��Y��bQV�J�)"���(���A~Iu�2(v�V����I��3�5!�M�ȓ�� �X���� �Um�M��09$<|�Z%d�:�pJ�Gu�\
�°BX�^L�=d���?�Qz��1B����yV�����p�޶��O����d�Rb��Φ�J�i6.#�>
���n�)&��~��y1dN|̎J�D��pJ�G��pBzɇ0u�����_��(�{4�������eb��[��x��hrELb�ͯ��6�|U@&��줴'at��H�>����G
�I/<���}��_�4t��*����d�*��!Y�ůSo!��7��M�2B�|!��F���l�Z���1�Tf�E�Z��ʐ�|īb�\�gDz><_�ui�/�h�r��e�4��zU��ҽ���In4S.Q��D��r�m�i��t���(Hz��ҒEiA?�´$aZP9n�c�Z���H���1�u'G��H�@5���AC���� ���><�y]�	�	;�X���
F�x�Ѿ�`�P��b��Hֺ����qR)���9�(=���������Z,ϔxTuO��C����ѹ�`���Ap� �i�ü�>C��gRʑ8�K@�J$}P�	t�	�����_kj�ex\M	ٓ�q8�u�&E#]DL����1�`<PN�b]�G?u7�@��af(-%HԿyJU	5uC��W��ސ#��?������s��ۨ8���۩1�ʟ����1����'�L	�F!�ջt����L	i�>���,a���H�a����G
K4:<��l_��>tSߙR"�c�$�ـ��q��#D1�<���m���_[�V�x�)!�ќ��r݀ڢ������,�B�D��e�٢��M
�R�`�u�M*���iQ� Y2
.���>��қꃊ���X\X(��V�ͅ"�],��)*�q6�b��N��f��� ]����
��*L�N���:�i�
n��D󲕟�Ad3?�p;?o��Ź�1����w3U��0����4B���Ь�#d�[�R !/C4C��q�����T�	�@g#��) e?��'���+s�DB�c\yi��^���j�+�Z�1� i��wJy/xz�'�B	�\sXEkH^�]L	nX�-J_�K ݷ3V߸K,]�3V^�K$ܺ3�����~B���rs����Fߘ����5��o��끴5!�ol��Aڒ���;|�繻�@zT�k�r݃Jт�53u��`=lf��9�S�lfq��EZ�f�g?-oSA�\i̢UԈ�����G���E"�[H��h��C�P�=��Ct�,MZ*���N=�kv�G m����#�<��H�9�q]_C�_�"����-6%����P�K�l��/E��6/���M�����#*��Y�3Ֆ!���!kːg{f�ԵeDtϗq���p��z�v���b Z�Ͳ��Mڶ�;����{�mO�뿱�[�m��?���J�~כ*�__i�
����X��*�#�	#�G����vG���~�W�I�5r�ׁ��!6u�W�0�!oJ��k�PRl&��!� �����fA����66����BF6��T{�A&�����B[ �����Շ��EQ$�cw h$y�ٸA#�;��D�V�vv�c�cr3p:+t�t��Ɩ��|W����aS���C��!3��e�� �S�      �      x������ � �      �      x������ � �      �      x������ � �      �   *   x�3�,�,�IUp�tI-N.�,(�����N-�/J����� Ü
�      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�՝]o7���_1�<_��$m�"@�	���7B,��mSg���K��TCrǱ}L@��<�5|DS��)��oǫ??�������GoWo��_�<�e�>�����^m�z�����ϋ�����
#{BZ��N.Ϸks�������b=l�����������j��|}u1l��ϙmW�ë���YW���z89<\MG�Ӌ�+��X�j�}A�Z�������Ę���˺o��2_o���O�al����ýg}��k���ǯ^�{����	�g���d8M��j;�lO���i�O���GJ�8���]���������o�޼~wk���?o�>?�w��y_y��i��^��|���q�_��\���g$����(��H���1 �PG����+8֎���AD�03ܤ:��s�2b�L�7TG1��F��O��X
.��^��+7�+mS����Ga����5�)v���Mz0Xlva��F��(��t��e�Ӎ���ݴO��	��k�i:蛾���F� �e���Tgd�7�M���d@��ԊK������vc�ь�����Q�R�M�%Ō#�a@k�V\R�=�<Ԇ,1TcqMu���Ę���`c�TGq�9/f�<Eq1���&�Q��ޏ(%տS�P+.���G��n�0O�X�3 >�Y iSŏ ���br#�aIE�ԊK����t���Ӽ�#�P.���n�]v���H���pMU�:�=���7�^t�!)�%�%.N0����:�u�؍䍐'[���Nw�9���F�Xʒ�Au��;�쌋��n<�:��tדa�s�Q�T\S�u���1�!ۖ�9�1\����,ѓ���6�q\ǻ���	���1�S�i0�(~�������??oN�c RD%��7���5�;�҂��]缞D�g$��(\������H{}���d}lx�CE͍�וf�y�GBL�Z�������+�bG��PGIE7�__��`��Ȯ!����	�/�>��a"������1�#є�
���E�RtME7�`_�!_ �TCGME7"ao��;"_}�TQt߹pR)��1BS�>��"}��Ca򘗡��"��em�d9����<���ֈQP�#�ۖy��U#�VG.�����2����Vw.�����rA�8���RSE�}�A��Jl01���QREѽ�A�"��@#^S�����]�u��	�Gr����]R�~�{&��$��7DTQtl������TQt�0��h�Ch���K4\4y�F�1qWRMӽ��%�,#�
�tI5M�9�s�^8��xI5M��9��B���LT�t�!1/IKヸ@���j��=%
�M�"%��OĒj��; &�6/P#�k��j��;!&�����!R}��������K�|�uD����3"O�$'Aj�%U4}g�ɥ�A�H�D^M5M���~�y[�����
jz�;!&��O� !�F�.������l�W�P_�^��4>�t�	9��$�O�G0ߘ�M5M����i�|"�1�#+M�T�t�	�ː��E��5m�i�߄�s	.����K��T�t�	q��f͆��|δM5M���K1��S�ۖ�k�h�M�(�ۛ�I�p��ؤ���M��:��^+�����nRM��fĝK�t3�Yg�6]RM��fD�9��8o���� m�i�㌘\Ƽ��� K�Y��ii������b���#�����䑓�՟���{�����lobf�'u�{�}�,hGv��o����%�@}m�r��:�<]�	���2�%�m��n���n�ڼ�!���KT�r�����n�7I����.Qe�Tg�,C��"�� F)-�T�r����Z�'���`"H�߈v��y�h��Q�h@�!�n?[.ч3P�{1��|Ql���[P����sǽ�_�i����4����$�k����޳@�)Ԡg`1�̭�M�74N�?9��7kv�����/�]��?�]kۿX��M�1��Je���,��B���&u���_6���O�����O�R�Ӷ���#����-U�����L�?��'d�ΆO�fG���FU{����hݴw"·�\j=�m�Qm�����Xju4�m��OY�K��;nw����v˴#�E!���%m�;=�w�����7C�[l{�����1����Kt�=�;}�3O�<�?��ݩ      �   =  x������0��s|����N|����+�=�����|� ��!�Sr�~%I��%��S�m㽐�x�o��3����E���_�P��/�P̥_L���Ǣq�i�����.�u�d����5��ͱk�t�����s�����OR�S�T�� 5>-�6~�Q:B�p�F;"'쐞8p��āgH;vw����w��&�ާ�IC�(M��@�����)hR�SФƧ�I��&�4)��A��4)��A��4��A����A����A���A���A���A��*h2^SM�k���xM4^SM��TAS�5]/�0�\�4+      �      x������ � �      �      x������ � �      �   �  x���]o� ��ɯ�~)��૪��Ej�j���I��֝m����8Q?�εTU:��� q��6���hc����1�C�ZE^�q^��������r�os��t�#�fۡ�
q!�@�r~B�	��R�oT�7��M�k��YkNww.T䶾C���qP�N��J&]�"��re>'�		$O	��_L�g�����2pE��[�08ȇ�L�.k1�mY`W�C�e�ڵ8�V[����X7,�
�l��E�+a�!�l�������C��v_p��SƟ�$Ա�}�q��&�:���}�C�o�P��]�I�t�7���G1S����l����u>6����}�� i����BN%/�^t��C܄�
�;xY���]����&0�T)O��FP����*��zP�Al}s������,OB.��c���'�H�������a����[7�[A=G���̦,I)#\Z�^8yTy�JISҪ��j�F?��'����8M�!J��ޤ�·2��+�C�Ȋ%��j ˅���:�7��&��m4��:Ϸ��p�h�;��H��s��/i�,�Z�Ď�cu�ϖ�y�8���j�?R����|�\�N#
������b1�xޖO�_��t���Y�-���D��#����"���i%��L�1����j��L�r      �   D   x�3�L/�/-0�4202�50�54V00�2��22�342105�60C�54�21�3��037�r��qqq OV�      �      x�3�4�4�2��\@Ҍ+F��� #P�      �     x��U�n�@}���UV�;�7?���i.m�6mT���;5� ���]��k�Ҁ�Ě#朝9�U�-��d2˅s��$E��G�����kW)|~�&%\_� �ƒVd,��Rqq$d�u̹�\�+�V5�h�:�̑�s@�j��~����&`�0˦���O��D��>̞�;i�w�ϦY�e���2�+�m􍼕?Om��&����M�åEJ���lR�^����1ifQ#��� %����	y�\<8�i���WL��m���ǳ����� y(ca���֨B��
�	xH����J��8�������MC����[������aRj"�+o�:R�x�'��0�zE/�W��h4��+u�,��q�r��-?@�R� �}s��U�F%�e�0T'�!�S��a�6i8��]t"���:"��<��ɔuJV��zfy1�|t����$M'�t��o�+�jK �i�[|��[ņ�EB�c��DH�� 5��B��Ы���A�bř!Ed�ЮPC�wP6�d ����YV��e�x�A����[$E�6Fbd���	ZI�K$��vk��&��O��_�^�q�N^L�����I���6\��S�,���JҮ&^H��x4m'�֖��o_�C�n��W���b!cR��kQ��w/N�%��H��u�����Ƣk:a�
ni�O�u,�:��������9��M�U�������MB�r��PO,�^��M�?-����RB�r7lO쐌�~�	tP$l�-'��h6~?^�w��j���"'      �   �  x����n�0���S9�*��hI~�=l+�c׃kˎ�,�l�hW��'EI��u������#)�$$(NO�a�2�3��~iɏEs{۬�/�_�K���办}��D&��f8b�̈́䒄!8���!G)30\�E�!�r`�1�d�r$��CM1���C��4IF���)�t̰!�D*0�)F:0�A�Y�2��m-z���y�H�{����b�߳��y��W�+�{�W�[���{9?k�c�N:�zz����s< ��I�BȔ��ʻ����h���E�ܹG�pc:dBpM�PG�|�o�-G)z�#t|M�Δ2���ʺ*���>B��W��(��͆S!�� S� �g9|<4/ˈZ�j�H�ڷ�KE�^{,��r�[��"�^@e�����IE
��-]{޻߇{�U���8�f�aϐ2� ��p&
��b� ��~���>l���0>>���	�%��z���ܶ��ؾw��z����|��e��I׷~�X���Z�����������5�!�'d!�X�^w �"�Ɗ6�k���� 3N�2�s�Y^����梹w�C3]D;�ݪ���&�O�uo?,"C�s!J�;����g�oYv����1�?��Aŧ#H�l�e�?e_��rS�;rp�O>���
Bص      y   R  x�}T�r� }�?fk�˿lU�@�PA���|���8+k�p��9ݔ�2��G-�)� 
5�{�1t6FK=�i�BS�X�F���	�E�yE����W����-�+i�p١�ؓ�z��k����#���8�ȑ��C˲�CL�ax�`�;�����j�8�IY���#Q
���u���Cl�����)��j��y~J|��:\.dW��ϺŘ�z�R�v�[a�gIa��W�ǀ8e�s�hT����7�N �1�밥��d&��������xi���P������5�A��i?}W9�˷�}�	�i���b q���0��z�<"/��b��̍� e�).E0$�	�ؐ���iRIn��l�.���~c�
���<�$�6����n��Y��N�yO'��	��=n���QT ���~��c�S�G���ў�� ��@��4��=���f��Jn�Fi|%z��T�F�D�Ce��s�C��P�7fJ�MNP]6ln3�� ����k�t�����o_�����4B}:�����u�W51s��y��O��d.������ʬX���j��B���4̏}}�Y7�O�wQ�g�W痜��G~����]M      w   S  x����n�H������"DWU�,�D���4����oU7I�Ԗ�� c��b��6��Χ[s��>/��M)U{jom}xC�����ߕ)�.1������p�$V]s<�n�����:��fED
Eo����[G���XՇ[�U��;��k{>�O���?ա9����r�Hʌ(�Q�+���������bG��R�h��r�f6��F����VοZ~��!��H�@�����m7F#���e@:F���]�}};wת�﫦��]ul���W�y+oH{��q~�3�\�=�|Aa堗H��7P�zԯ�|����dҫ�yP�/졦�t�>'ɸ��d�1�a�d��[��݋�E��6yȼ�g_+&N\J����c{z��j2�=AION��s�6�,��ax)��DR��ݤ����j�qnw�<#�R08m/����/����
w��>}�����c�#�]�ۭ=������F��(���������O��ې�����z;��u���м�p�ň�o��F�`<Ā�y|��K�=�*�������W���+���������ŏ�FQL	����v��ߍD�k�̖�K���xXS��s��ݔ�jAѪT�p^a��E�D9nwS�+ئ"8�q$Ȱ�Hn�B,ɕdy �`�])9��n՝}>b�}G*�Rji�I4M-����'�U�E��,g^@��} �r(�+p�V'���%�����'���}Ktܼ�M�E6�>33"�d7Y�K*ML��6�NY��#� �8i�#>�,�Rv��/����.
+*�P�]a�V��qL�*��JCD����u�֬���uw��N��O����D`�TR;��+�����9#Q��G:��~�'�覊G�Z�Hq����c�טa��G�[sL_-qX*,�AH���i��xJӶ`��d���`��筫wq�ax��F{�#㕶1���N
��q7��ku�Q_������ըBlP)�6�q����%(qW�s��t��Fa��2
�)
�%pK3҈T�e�3e����&�����Զu���k8S� ��4�) �Q�Yl�Q�P!EO�\�)���}��0�ǃcL�B��`�ir|�E�H����(�U��+�a�~����݌kJ%��:M>��S݇թ��u��-��8�.�eiDS�$�'��� 3�%
�q��&	.��,%f,�q� �.y�}Q`S��~.%W�����7��U7|�[갳��LR&�a(��PF�U�` ��V=�+XC2�٥6�$�Yx�m� ,M�@H+��)` ��	 �XhV9)�� ��R3 gX�D�f��Voʳm��>���=��,�w<*#�l��Ye�V���N*Yƀ�|6�k��
��<�N��4��2h��<�!�t���Q���V�JYq���g��f��F��w)��sQS�
�a2/3���v�(����v�r;�y����/X��,q��5{����(<�R����B�m��԰��4�N�d��/�Q����s��ę���6���ג��\yl
5����Mv.����v��,i׼�&�r&	U�Q
�ugP�G����@�̈́x��/ .WaZ���{��2�e� �����6��0���8p�aS��|���=�iƒZdaƫ_�T�>'s�Z��~�;���*��q%���Lۡ�l"�gv�{܂%+*�3(��	}ng�%���X���kB��>�/,�<�(�2�Y�#S�*��ى/����>I&�?�Ψ"0��-�=.����0&0��ܒ��0_bY�C�0y|nap��f�k)I����ҝo�a܎g0-�5ot��Ā�����K���ޱ̏a
�"�u�_\�e�p�`:���A��)����;PjA!SJ������)+��.er��B�-u��z��w���8���A�͙��t���<�9ђH�Q�w��0�Be?^c�\��i����ᖽ)��{����b����0���KNi"ڤ���4A�N��:6��ї���x:�5�X�q7N�#j}�?o�rƪ�6E��o��0�Đ��G��#�&��f\�>��_����m����%R�i��Ƨ�m�T+��Ydۜ��(#��ِA�_�)����W=�b�u0�����mH�|%�h;�^���9%gl	�VV�W1��
�۳	.zc��&x�q��nB����Wa~W�K�����,KJ�ʊ�.D����û�� Kc��N寧����)H\rY���`��s��D=�U���	��=o�+�0͕0��X�:��&EV)=�[���g+��hy�`w���+�D�K�{�t�;`W��d�+(������"'�ܜ>���ۚ
�$���B�'sp5�0	K�2�p��I���H���,��u�c���C�J�����'?���!��j<���M
.>����YsBW�t�	��*9��*�C�9�cW�I�J0^�y;0.���m\�.��9�0���HbX�Iڿ!�90H�˽�}��f?;8IrBm�T!�֫2� ������n��6Lo���hQ�R0���:���O���RU�z_~��Y�f�?�{c8�QV6h�R>�.����͒#�P~��ř98�T�#mZ�C#Z�Ggsu^p����;��������W,W����6�@�4PX���BgF��F~hƉ'�r�BZ��E��5�s�d�&�^\�'G��h]�[�1���m����p�q��W�K�ylNs�yi�r>mm�U��杻ir"�s��Bn�������$�P��G���u,d/��\Z��/)h�y�H�u��!�Q9���cx�g9�e���ԭk�S1��D��d8������G�=���,q�ٛ�����[��|��ow�ϩAV?b��c&�߾}�]�`      �   v  x���َ�J���O��'����C�ۜ� "���[��:�����Z1���	�}���~�Y��	��cUw��k���1�5�r���W3����j�겞��}n:O����y��qi�غ��q�[%R���;�z��m���5�.^њ@��p��Q�Sǎu����Ƨ�l�jR��+�JF�s���M��=�UF�A�j�}z���В���]*C�j{?�4)�z���.J噫�5�fu��,��X�/ ����}��
P�/ |x�P
Yz$�Gqz�ӆݑ$Տ��s!�ܬX�+���zѽ�=N�z�-t�bZ�ΆY�<�-l���H����><�}�|� 8}�u̤��������|r�aU%��G/��ٮ�NO�h��T7�_�Y��ּ} �D��Hx�"$"���4��(daەc]�iP�;�����#�{O��"k8[�q���i��x�r6>GwpԀ�f9+S�.����'Od(�N�S��>i{o�>B!���,�,�q�1�q>+�yz� �����n�88 ����9(�x�1�,j��j��?�W�����2'  ��)i�����uc��*X~�">�����Nί��`�f�mg�D���d��Xu�`�/�%��ƒ����ȯ	�p�c�K����M
A1"�X��޻Ѷ/�����+��q�/Ӝ�������i0�-l�C�\%���O�-���>�*{��M/]˕���ՠ�3ƹ�k�	����	�>�{�]�N7%� .΢���ޙ�,{�|q�=�*�F���f5,ˇS��.��y�]�Z���H*����K��m�l��Ѱu�߮����*���׿D�{��H�����ߓ����V
�t      �   �   x����
�0��s��KJ�v]ۣ���9��T���a�Ã�����x.C��YG-7cL�z c?齢�N�R�QP��j}���)5"�u��b��
�+��-@~�Lbœ�n������_�d)�}�G���Bi      �      x������ � �      �   a   x�3�,.)��K�426"c#� �
A���+[�Y�X�Y�YXZk���2��+��Q@��b�ͭ��M�,�ͰX�*����� @-C�      �      x������ � �      �      x������ � �      �   H  x����r�0@��W�ޡ
��ȏ���dd�R6/��&�ח�D�㉝��p��@Ȳ���g�_��o{��L�~Dٳv�i�Nj,iU�`�#���6" H�z�=T�A4����Z@�LԒ�*UEƺ�]=�J�xm�o����5����=n��r\�� [����ͣ�ޮ�n���^�����j��o��k�r��"6D^İ0�by�O*#8�S�	KR�P3K�KkV&jM�v� .1�W��꾭����69�9���,�2�<L:���w+�W�t�AU�!J�c��Z�8�����}� &�KG��#�K��C�b0wvk�Z'�τ39/C,h%�hNJ�Az O�̤e�滦�?��YӵM��.h;��HFq���4�W����*C�3�Ӏ/���1�r����V�"A�R$�x�݅:�\�ή���K�W&�ik�=�N���m��p���6a�M�r��=��݋�?r�,kM3��2dj�������q��E��H[۬��T͉��9�%�.�n��c*��"�mr�F���OT�����[~����4ۿ�����A�1׋^��V�*��� �r      �   o   x���1
�0D��=��$dg�z	6
j���`����q8��ng��~l����Oq���a��@'�q���Ƶ���Q�P�C�-BtRD�$��B�'���\Fs����r`F      �   �   x�͏MN�0���)�G���'�p��T�2�T,�i�4�%���Y�G
�<SP�3E��cK����>�� u�W�ЋA�5�Q>�d�V��o�ƛoD��7��[��m�Z{.S��>�2zn[/uڭܗ��U�n�r���t���yLk�}L#�gN��$g�c�kNI�C@L���X|�ט1&�Ƌ��1�q��h�����      �   0   x�3�466�440���C S=SSNC ��2b����3������� �(       �      x������ � �      �   �  x����n�0���S���|���j��VK���nBC�`H�}���ډ'X&���g��H@�ۯ�"˿�Q���|�*ԯ��;����)�~�����gv?7Uӑ�j��vܟpv_���{���ߘ6�5CV�~�ir�k0`NL`�Ē�ן�O<���}o�u�o�GJ��pn���+��/�]&�&? ̘�3M��y] xS ����X���X0W��ș��V�P�B�sh����x`����|Z|�"�yp��-"R�<�.�-����n�P��:S�:wř׹�ڮ�1n�5ȇ��x�1�>���@�X��T�LaM�e����NdoȮN$��YJ��Q+,�K�S��}��M��<��M�N�6�'�G�
N��e�0�S>Rzų�$S�REW�b�����9�*�/�"�T���	7E3�g�������[~�m&C�!uL'5�L�;%/�-��O���w�@
�$aS6��1�pE�x��?��3G!�^��'��J��Z<��9U�"/y�b��-�P��M�{��6�
�j�?E����
�j}��U�.��B�u'r�x��0���'��m.�:�.�pi��/�J��u�� �WU��б� xP(Tscw �e+��c�N���}P��/#��Rt�����j���]��      �   �   x���1
�0Eg��KB";��C�^L9]:؆\���C�B�������C�TH�R�힎�J�WX�wf-A.��Bc!,�b�a��F3[3�m{�.����B���O89S��I�0s]�(WH�q�H�8��ֶ޹����'WC��z .2Ut      �      x������ � �      �      x������ � �      �      x�3�,��J#������ �0      �      x�3�,��?����� C0�      �      x������ � �      �   �   x�ŏ��0���Sts#E��
.�q������p��Oo��L.���p��}
� ���k$� <! �Fj�g�j{�YEd��A�'�(����A���� ����eoMiD�p��#R���c�e5��R�-���#��ǋ�z���1st�ReſN�_LI�^u�,UG6��Xx��(ü�      �   �   x���1
�0Eg�=Ap�� L;I�B��"�lJ�_��=K�����
�!�)��3�!�&x�q��v7�3�ίv��셤�l�KqRa�Rc)�ۇXw�E�^D9ג�K�����n{�5"¹A�/@�^I      �   b   x�3�,��,V �D����T#�?���%��s��w	u��p��Z(YZ���Y��i���Y��Z��e�b���� R�      �   7   x�3�,�,F N�ļ��Ĕ��.�R�@�̼⒢����<Ί�*,�+F��� �k#�      �      x�3�L�L)��=... B�      �      x������ � �      �      x������ � �      �   �  x����n�:��ݧ���j���D:3�-Z(��t�Ȕ@B�������}s�ࠕd}��5��(Y�N�ߧ�� .NW��L|���mP[��5�ͬ`��z<b��_g�402�tBA�!WO� r!)gTH���`��y�ov7��3�/o��b!�H��7�*�Y᱘$�jtI�`���1֨���D�GJРf�u�Ʀ|D&N� p����7�����k���I�3{�:����Y|=:���
�$���@Ƕ��s�©5�~��`h`nP�I�"�$FW�� 0'ba�����H���`�C��s.�:7Xή ��RB#�a��!�
o���G��[�0b�1��ǜ��d��+D
&4�tJQ�G����SQ�љ6"B�K��/DF�ʪh��	 �$_|�n����u��u0���ǜ��p>�^2Q�c�B&HA4��.�7�-�xs����y>�������ՄV^�|4�f�m��7]l���]K�w�l���M�Eho��!;|K*���ԤQ:�bѕTC�<'&T�&�<](�g�M"&�K�b�������V���j����3{M��[�G��=j��	ޚO�nլvV�/B�JoK�G�$��T�"]*�6���Ri>m�f�[���z��6�a�!��������lo�/�{=�0�0��7ݭ�����m�Ƞ��Ř�J��)��W9�˞�+��f;,t��c����נ&��Bu�^瑋Qc�"/��^��i=x���$q�$�nKTU�i�.b���z�D���vQ����j�����B�S)����bS�ݮޮ6߉=�ܯ�$�Z��(tNm%Ѿ-�H%+SM��%�W�8�����wtv��?n b@�!(�d�\<�#���n ��Cf0�	"(������,���@���$z�"��:���_��7��$��ċ���	����}e���`���*��
0�`5n@�!��I�e�E:�:\N��%w�H���w�_Pf 3 �OqFЩE' "���Ja�my|`*h��O] ��qFm8�4�(W1E>�߾�Q���T�M��Ģo�`i�ϗO��
D�}��TcK��8�:�����/j �q���?u�
�,�W��,�J3+�e�Wu���!��/��~��^���ܝ�;�CՊ`\��q[����뭵x���sg�V�=�1���}Iz�=�w>*H�~�������� 8�ջ      �      x������ � �      �      x������ � �     