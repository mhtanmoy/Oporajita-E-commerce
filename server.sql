PGDMP         2                z            aporajita_tumi    13.5    13.4 �   U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    28451    aporajita_tumi    DATABASE     c   CREATE DATABASE aporajita_tumi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE aporajita_tumi;
                postgres    false            �            1259    28739    app_api_facebookpixel    TABLE     �   CREATE TABLE public.app_api_facebookpixel (
    id bigint NOT NULL,
    facebook_pixel_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 )   DROP TABLE public.app_api_facebookpixel;
       public         heap    postgres    false            �            1259    28737    app_api_facebookpixel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_facebookpixel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.app_api_facebookpixel_id_seq;
       public          postgres    false    235            Y           0    0    app_api_facebookpixel_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.app_api_facebookpixel_id_seq OWNED BY public.app_api_facebookpixel.id;
          public          postgres    false    234            �            1259    28750    app_api_googlead    TABLE     �   CREATE TABLE public.app_api_googlead (
    id bigint NOT NULL,
    google_ads_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public.app_api_googlead;
       public         heap    postgres    false            �            1259    28748    app_api_googlead_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_googlead_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.app_api_googlead_id_seq;
       public          postgres    false    237            Z           0    0    app_api_googlead_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.app_api_googlead_id_seq OWNED BY public.app_api_googlead.id;
          public          postgres    false    236            �            1259    28761    app_api_googleanalytic    TABLE     �   CREATE TABLE public.app_api_googleanalytic (
    id bigint NOT NULL,
    google_analytics_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 *   DROP TABLE public.app_api_googleanalytic;
       public         heap    postgres    false            �            1259    28759    app_api_googleanalytic_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_googleanalytic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.app_api_googleanalytic_id_seq;
       public          postgres    false    239            [           0    0    app_api_googleanalytic_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.app_api_googleanalytic_id_seq OWNED BY public.app_api_googleanalytic.id;
          public          postgres    false    238            �            1259    28772    app_api_livechat    TABLE     �   CREATE TABLE public.app_api_livechat (
    id bigint NOT NULL,
    live_chat_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public.app_api_livechat;
       public         heap    postgres    false            �            1259    28770    app_api_livechat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_livechat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.app_api_livechat_id_seq;
       public          postgres    false    241            \           0    0    app_api_livechat_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.app_api_livechat_id_seq OWNED BY public.app_api_livechat.id;
          public          postgres    false    240            �            1259    28783    app_api_news    TABLE     �   CREATE TABLE public.app_api_news (
    id bigint NOT NULL,
    image1 character varying(100),
    image2 character varying(100),
    image3 character varying(100),
    popup_enable boolean
);
     DROP TABLE public.app_api_news;
       public         heap    postgres    false            �            1259    28781    app_api_news_id_seq    SEQUENCE     |   CREATE SEQUENCE public.app_api_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.app_api_news_id_seq;
       public          postgres    false    243            ]           0    0    app_api_news_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.app_api_news_id_seq OWNED BY public.app_api_news.id;
          public          postgres    false    242            �            1259    28791     app_api_orderplacedfacebookpixel    TABLE     �   CREATE TABLE public.app_api_orderplacedfacebookpixel (
    id bigint NOT NULL,
    order_placed_facebook_pixel_link text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 4   DROP TABLE public.app_api_orderplacedfacebookpixel;
       public         heap    postgres    false            �            1259    28789 '   app_api_orderplacedfacebookpixel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_orderplacedfacebookpixel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.app_api_orderplacedfacebookpixel_id_seq;
       public          postgres    false    245            ^           0    0 '   app_api_orderplacedfacebookpixel_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.app_api_orderplacedfacebookpixel_id_seq OWNED BY public.app_api_orderplacedfacebookpixel.id;
          public          postgres    false    244            �            1259    28802    app_api_popup    TABLE     �   CREATE TABLE public.app_api_popup (
    id bigint NOT NULL,
    image1 character varying(100),
    image2 character varying(100),
    image3 character varying(100),
    popup_enable boolean
);
 !   DROP TABLE public.app_api_popup;
       public         heap    postgres    false            �            1259    28800    app_api_popup_id_seq    SEQUENCE     }   CREATE SEQUENCE public.app_api_popup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.app_api_popup_id_seq;
       public          postgres    false    247            _           0    0    app_api_popup_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.app_api_popup_id_seq OWNED BY public.app_api_popup.id;
          public          postgres    false    246            �            1259    28810    app_api_promocode    TABLE     �  CREATE TABLE public.app_api_promocode (
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
    orders_over numeric(8,2),
    apply character varying(80),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    CONSTRAINT app_api_promocode_limit_check CHECK (("limit" >= 0))
);
 %   DROP TABLE public.app_api_promocode;
       public         heap    postgres    false            :           1259    53128    app_api_promocode_collection    TABLE     �   CREATE TABLE public.app_api_promocode_collection (
    id bigint NOT NULL,
    promocode_id bigint NOT NULL,
    productcategory_id integer NOT NULL
);
 0   DROP TABLE public.app_api_promocode_collection;
       public         heap    postgres    false            9           1259    53126 #   app_api_promocode_collection_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_promocode_collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.app_api_promocode_collection_id_seq;
       public          postgres    false    314            `           0    0 #   app_api_promocode_collection_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.app_api_promocode_collection_id_seq OWNED BY public.app_api_promocode_collection.id;
          public          postgres    false    313            �            1259    28808    app_api_promocode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_promocode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.app_api_promocode_id_seq;
       public          postgres    false    249            a           0    0    app_api_promocode_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.app_api_promocode_id_seq OWNED BY public.app_api_promocode.id;
          public          postgres    false    248            <           1259    53136    app_api_promocode_product    TABLE     �   CREATE TABLE public.app_api_promocode_product (
    id bigint NOT NULL,
    promocode_id bigint NOT NULL,
    product_id integer NOT NULL
);
 -   DROP TABLE public.app_api_promocode_product;
       public         heap    postgres    false            ;           1259    53134     app_api_promocode_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_api_promocode_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.app_api_promocode_product_id_seq;
       public          postgres    false    316            b           0    0     app_api_promocode_product_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.app_api_promocode_product_id_seq OWNED BY public.app_api_promocode_product.id;
          public          postgres    false    315            �            1259    28483 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    28481    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            c           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    28493    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    28491    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            d           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    28475    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    28473    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            e           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    28866    company_api_aboutus    TABLE     �  CREATE TABLE public.company_api_aboutus (
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
       public         heap    postgres    false            �            1259    28864    company_api_aboutus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_aboutus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.company_api_aboutus_id_seq;
       public          postgres    false    251            f           0    0    company_api_aboutus_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.company_api_aboutus_id_seq OWNED BY public.company_api_aboutus.id;
          public          postgres    false    250            �            1259    28877    company_api_companypolicy    TABLE     �   CREATE TABLE public.company_api_companypolicy (
    id bigint NOT NULL,
    title character varying(200),
    description text NOT NULL
);
 -   DROP TABLE public.company_api_companypolicy;
       public         heap    postgres    false            �            1259    28875     company_api_companypolicy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_companypolicy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.company_api_companypolicy_id_seq;
       public          postgres    false    253            g           0    0     company_api_companypolicy_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.company_api_companypolicy_id_seq OWNED BY public.company_api_companypolicy.id;
          public          postgres    false    252            �            1259    28888    company_api_faq    TABLE        CREATE TABLE public.company_api_faq (
    id bigint NOT NULL,
    question character varying(200),
    answer text NOT NULL
);
 #   DROP TABLE public.company_api_faq;
       public         heap    postgres    false            �            1259    28886    company_api_faq_id_seq    SEQUENCE        CREATE SEQUENCE public.company_api_faq_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.company_api_faq_id_seq;
       public          postgres    false    255            h           0    0    company_api_faq_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.company_api_faq_id_seq OWNED BY public.company_api_faq.id;
          public          postgres    false    254                       1259    28899    company_api_metaproperty    TABLE     �   CREATE TABLE public.company_api_metaproperty (
    id integer NOT NULL,
    meta_title character varying(100),
    meta_description character varying(200),
    meta_keywords character varying(100)
);
 ,   DROP TABLE public.company_api_metaproperty;
       public         heap    postgres    false                        1259    28897    company_api_metaproperty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_metaproperty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.company_api_metaproperty_id_seq;
       public          postgres    false    257            i           0    0    company_api_metaproperty_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.company_api_metaproperty_id_seq OWNED BY public.company_api_metaproperty.id;
          public          postgres    false    256                       1259    28907    company_api_news    TABLE     }  CREATE TABLE public.company_api_news (
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
       public         heap    postgres    false                       1259    28905    company_api_news_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.company_api_news_id_seq;
       public          postgres    false    259            j           0    0    company_api_news_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.company_api_news_id_seq OWNED BY public.company_api_news.id;
          public          postgres    false    258                       1259    28920    company_api_termscondition    TABLE     {  CREATE TABLE public.company_api_termscondition (
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
       public         heap    postgres    false                       1259    28918 !   company_api_termscondition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_api_termscondition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.company_api_termscondition_id_seq;
       public          postgres    false    261            k           0    0 !   company_api_termscondition_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.company_api_termscondition_id_seq OWNED BY public.company_api_termscondition.id;
          public          postgres    false    260            #           1259    29155    customer_order_api_notification    TABLE     ,  CREATE TABLE public.customer_order_api_notification (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text,
    url character varying(200) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_from_id bigint NOT NULL,
    user_to_id bigint NOT NULL
);
 3   DROP TABLE public.customer_order_api_notification;
       public         heap    postgres    false            "           1259    29153 &   customer_order_api_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.customer_order_api_notification_id_seq;
       public          postgres    false    291            l           0    0 &   customer_order_api_notification_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.customer_order_api_notification_id_seq OWNED BY public.customer_order_api_notification.id;
          public          postgres    false    290            %           1259    29166    customer_order_api_order    TABLE     �  CREATE TABLE public.customer_order_api_order (
    id integer NOT NULL,
    order_id character varying(100),
    order_type character varying(100) NOT NULL,
    "Order_reference" character varying(50) NOT NULL,
    status character varying(30) NOT NULL,
    ordered_by character varying(20),
    fullname character varying(200),
    email character varying(100),
    phone character varying(20),
    address text,
    order_note text,
    unit integer,
    order_tracking_number integer,
    serial character varying(40),
    separate_delivery_address boolean NOT NULL,
    currency character varying(100) NOT NULL,
    has_discount boolean NOT NULL,
    shipping_charge numeric(10,2),
    other_charges numeric(10,2),
    other_discount numeric(10,2),
    promo_discount numeric(10,2),
    total_tax numeric(10,2) NOT NULL,
    order_total numeric(10,2) NOT NULL,
    sub_total numeric(10,2),
    paid numeric(10,2),
    total_discount numeric(10,2),
    is_payment_successful boolean NOT NULL,
    accepted_date timestamp with time zone,
    shipping_start_date timestamp with time zone,
    completed_date timestamp with time zone,
    expected_delivery_date timestamp with time zone,
    is_fulfilled boolean NOT NULL,
    item_count integer,
    product_list text,
    balance numeric(10,2) NOT NULL,
    description text,
    sales_note text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    customer_id integer,
    delivery_address_id integer,
    delivery_area_id integer,
    outlet_id integer,
    promo_code_id bigint,
    register_id integer,
    supplier_id integer,
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
       public         heap    postgres    false            $           1259    29164    customer_order_api_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.customer_order_api_order_id_seq;
       public          postgres    false    293            m           0    0    customer_order_api_order_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.customer_order_api_order_id_seq OWNED BY public.customer_order_api_order.id;
          public          postgres    false    292            '           1259    29177    customer_order_api_orderitem    TABLE       CREATE TABLE public.customer_order_api_orderitem (
    id integer NOT NULL,
    product_name character varying(100),
    size_name character varying(100),
    size_value character varying(100),
    barcode character varying(200),
    compare_at_price numeric(10,2),
    sku character varying(200),
    quantity integer,
    fulfilled_quantity integer,
    stock_control boolean,
    unit_price numeric(8,2),
    discount numeric(8,2),
    order_id integer,
    product_id integer,
    size_id integer,
    awaiting_stock integer
);
 0   DROP TABLE public.customer_order_api_orderitem;
       public         heap    postgres    false            &           1259    29175 #   customer_order_api_orderitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_orderitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.customer_order_api_orderitem_id_seq;
       public          postgres    false    295            n           0    0 #   customer_order_api_orderitem_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.customer_order_api_orderitem_id_seq OWNED BY public.customer_order_api_orderitem.id;
          public          postgres    false    294            6           1259    44961    customer_order_api_pathaotoken    TABLE        CREATE TABLE public.customer_order_api_pathaotoken (
    id integer NOT NULL,
    access_token text,
    refresh_token text
);
 2   DROP TABLE public.customer_order_api_pathaotoken;
       public         heap    postgres    false            5           1259    44959 %   customer_order_api_pathaotoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_pathaotoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.customer_order_api_pathaotoken_id_seq;
       public          postgres    false    310            o           0    0 %   customer_order_api_pathaotoken_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.customer_order_api_pathaotoken_id_seq OWNED BY public.customer_order_api_pathaotoken.id;
          public          postgres    false    309            )           1259    29196     customer_order_api_transferorder    TABLE     �  CREATE TABLE public.customer_order_api_transferorder (
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
       public         heap    postgres    false            (           1259    29194 '   customer_order_api_transferorder_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_api_transferorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.customer_order_api_transferorder_id_seq;
       public          postgres    false    297            p           0    0 '   customer_order_api_transferorder_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.customer_order_api_transferorder_id_seq OWNED BY public.customer_order_api_transferorder.id;
          public          postgres    false    296                       1259    28968    customer_profile_api_address    TABLE     �  CREATE TABLE public.customer_profile_api_address (
    id integer NOT NULL,
    type character varying(50),
    email character varying(55),
    title character varying(10) NOT NULL,
    first_name character varying(150),
    last_name character varying(150),
    phone character varying(50),
    address1 character varying(200),
    address2 character varying(200),
    country character varying(100),
    division character varying(100),
    city character varying(50),
    postal_code character varying(50),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    customer_id integer NOT NULL,
    district character varying(100)
);
 0   DROP TABLE public.customer_profile_api_address;
       public         heap    postgres    false                       1259    28966 #   customer_profile_api_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_profile_api_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.customer_profile_api_address_id_seq;
       public          postgres    false    269            q           0    0 #   customer_profile_api_address_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.customer_profile_api_address_id_seq OWNED BY public.customer_profile_api_address.id;
          public          postgres    false    268            	           1259    28952 "   customer_profile_api_customergroup    TABLE     �   CREATE TABLE public.customer_profile_api_customergroup (
    id integer NOT NULL,
    group_name character varying(150),
    created timestamp with time zone,
    updated timestamp with time zone
);
 6   DROP TABLE public.customer_profile_api_customergroup;
       public         heap    postgres    false                       1259    28960 +   customer_profile_api_customergroup_customer    TABLE     �   CREATE TABLE public.customer_profile_api_customergroup_customer (
    id bigint NOT NULL,
    customergroup_id integer NOT NULL,
    customerprofile_id integer NOT NULL
);
 ?   DROP TABLE public.customer_profile_api_customergroup_customer;
       public         heap    postgres    false            
           1259    28958 2   customer_profile_api_customergroup_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_profile_api_customergroup_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.customer_profile_api_customergroup_customer_id_seq;
       public          postgres    false    267            r           0    0 2   customer_profile_api_customergroup_customer_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.customer_profile_api_customergroup_customer_id_seq OWNED BY public.customer_profile_api_customergroup_customer.id;
          public          postgres    false    266                       1259    28950 )   customer_profile_api_customergroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_profile_api_customergroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.customer_profile_api_customergroup_id_seq;
       public          postgres    false    265            s           0    0 )   customer_profile_api_customergroup_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.customer_profile_api_customergroup_id_seq OWNED BY public.customer_profile_api_customergroup.id;
          public          postgres    false    264                       1259    28935 $   customer_profile_api_customerprofile    TABLE     �  CREATE TABLE public.customer_profile_api_customerprofile (
    id integer NOT NULL,
    email character varying(55),
    username character varying(50),
    password character varying(50),
    title character varying(10),
    first_name character varying(150),
    last_name character varying(150),
    company_name character varying(150),
    designation character varying(50),
    gender character varying(10),
    phone character varying(50),
    customer_number character varying(50),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    address text,
    user_id bigint,
    birthdate date
);
 8   DROP TABLE public.customer_profile_api_customerprofile;
       public         heap    postgres    false                       1259    28933 +   customer_profile_api_customerprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_profile_api_customerprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.customer_profile_api_customerprofile_id_seq;
       public          postgres    false    263            t           0    0 +   customer_profile_api_customerprofile_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.customer_profile_api_customerprofile_id_seq OWNED BY public.customer_profile_api_customerprofile.id;
          public          postgres    false    262            �            1259    28585    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    28583    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            u           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            �            1259    28465    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    28463    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            v           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    28454    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    28452    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            w           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ,           1259    29414    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    28609    inventory_api_brand    TABLE     �  CREATE TABLE public.inventory_api_brand (
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
       public         heap    postgres    false            �            1259    28607    inventory_api_brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.inventory_api_brand_id_seq;
       public          postgres    false    219            x           0    0    inventory_api_brand_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.inventory_api_brand_id_seq OWNED BY public.inventory_api_brand.id;
          public          postgres    false    218            �            1259    28630    inventory_api_customermessage    TABLE     ;  CREATE TABLE public.inventory_api_customermessage (
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
       public         heap    postgres    false            �            1259    28628 $   inventory_api_customermessage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_customermessage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.inventory_api_customermessage_id_seq;
       public          postgres    false    221            y           0    0 $   inventory_api_customermessage_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.inventory_api_customermessage_id_seq OWNED BY public.inventory_api_customermessage.id;
          public          postgres    false    220            �            1259    28641     inventory_api_inventory_location    TABLE       CREATE TABLE public.inventory_api_inventory_location (
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
       public         heap    postgres    false            �            1259    28639 '   inventory_api_inventory_location_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_inventory_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.inventory_api_inventory_location_id_seq;
       public          postgres    false    223            z           0    0 '   inventory_api_inventory_location_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.inventory_api_inventory_location_id_seq OWNED BY public.inventory_api_inventory_location.id;
          public          postgres    false    222            �            1259    28652     inventory_api_inventory_transfer    TABLE     �  CREATE TABLE public.inventory_api_inventory_transfer (
    id integer NOT NULL,
    "TO_number" character varying(50) NOT NULL,
    status character varying(20) NOT NULL,
    total_transfer integer,
    total_receive integer,
    due_date date,
    transfer_quantity integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    from_inventory_id integer NOT NULL,
    to_inventory_id integer NOT NULL
);
 4   DROP TABLE public.inventory_api_inventory_transfer;
       public         heap    postgres    false            �            1259    28650 '   inventory_api_inventory_transfer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_inventory_transfer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.inventory_api_inventory_transfer_id_seq;
       public          postgres    false    225            {           0    0 '   inventory_api_inventory_transfer_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.inventory_api_inventory_transfer_id_seq OWNED BY public.inventory_api_inventory_transfer.id;
          public          postgres    false    224            +           1259    29359 .   inventory_api_inventory_transfer_transfer_item    TABLE     �   CREATE TABLE public.inventory_api_inventory_transfer_transfer_item (
    id bigint NOT NULL,
    inventory_transfer_id integer NOT NULL,
    productsizevariant_id integer NOT NULL
);
 B   DROP TABLE public.inventory_api_inventory_transfer_transfer_item;
       public         heap    postgres    false            *           1259    29357 5   inventory_api_inventory_transfer_transfer_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_inventory_transfer_transfer_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.inventory_api_inventory_transfer_transfer_item_id_seq;
       public          postgres    false    299            |           0    0 5   inventory_api_inventory_transfer_transfer_item_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.inventory_api_inventory_transfer_transfer_item_id_seq OWNED BY public.inventory_api_inventory_transfer_transfer_item.id;
          public          postgres    false    298            �            1259    28662    inventory_api_product    TABLE     ;  CREATE TABLE public.inventory_api_product (
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
       public         heap    postgres    false            �            1259    28660    inventory_api_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.inventory_api_product_id_seq;
       public          postgres    false    227            }           0    0    inventory_api_product_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.inventory_api_product_id_seq OWNED BY public.inventory_api_product.id;
          public          postgres    false    226            �            1259    28675    inventory_api_productcategory    TABLE     �  CREATE TABLE public.inventory_api_productcategory (
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
       public         heap    postgres    false            �            1259    28673 $   inventory_api_productcategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.inventory_api_productcategory_id_seq;
       public          postgres    false    229            ~           0    0 $   inventory_api_productcategory_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.inventory_api_productcategory_id_seq OWNED BY public.inventory_api_productcategory.id;
          public          postgres    false    228            0           1259    36649    inventory_api_productpurchased    TABLE     �  CREATE TABLE public.inventory_api_productpurchased (
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
       public         heap    postgres    false            /           1259    36647 %   inventory_api_productpurchased_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productpurchased_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.inventory_api_productpurchased_id_seq;
       public          postgres    false    304                       0    0 %   inventory_api_productpurchased_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.inventory_api_productpurchased_id_seq OWNED BY public.inventory_api_productpurchased.id;
          public          postgres    false    303            2           1259    36660 "   inventory_api_productpurchaseditem    TABLE     �  CREATE TABLE public.inventory_api_productpurchaseditem (
    id integer NOT NULL,
    order_quantity integer,
    received_quantity integer,
    sku character varying(50),
    subtotal numeric(10,2),
    total_received_price numeric(10,2),
    total_tax numeric(10,2),
    cost_price numeric(10,2),
    inventory_location_id integer,
    purchase_item_id integer,
    purchased_product_id integer,
    purchased_size_id integer,
    tax_id bigint
);
 6   DROP TABLE public.inventory_api_productpurchaseditem;
       public         heap    postgres    false            1           1259    36658 )   inventory_api_productpurchaseditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productpurchaseditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.inventory_api_productpurchaseditem_id_seq;
       public          postgres    false    306            �           0    0 )   inventory_api_productpurchaseditem_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.inventory_api_productpurchaseditem_id_seq OWNED BY public.inventory_api_productpurchaseditem.id;
          public          postgres    false    305            4           1259    36726 %   inventory_api_productpurchasedpayment    TABLE     g  CREATE TABLE public.inventory_api_productpurchasedpayment (
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
       public         heap    postgres    false            3           1259    36724 ,   inventory_api_productpurchasedpayment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productpurchasedpayment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.inventory_api_productpurchasedpayment_id_seq;
       public          postgres    false    308            �           0    0 ,   inventory_api_productpurchasedpayment_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.inventory_api_productpurchasedpayment_id_seq OWNED BY public.inventory_api_productpurchasedpayment.id;
          public          postgres    false    307            �            1259    28710     inventory_api_productsizevariant    TABLE        CREATE TABLE public.inventory_api_productsizevariant (
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
       public         heap    postgres    false            �            1259    28708 '   inventory_api_productsizevariant_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_productsizevariant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.inventory_api_productsizevariant_id_seq;
       public          postgres    false    231            �           0    0 '   inventory_api_productsizevariant_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.inventory_api_productsizevariant_id_seq OWNED BY public.inventory_api_productsizevariant.id;
          public          postgres    false    230            �            1259    28721    inventory_api_supplier    TABLE     �  CREATE TABLE public.inventory_api_supplier (
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
       public         heap    postgres    false            �            1259    28719    inventory_api_supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_api_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.inventory_api_supplier_id_seq;
       public          postgres    false    233            �           0    0    inventory_api_supplier_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.inventory_api_supplier_id_seq OWNED BY public.inventory_api_supplier.id;
          public          postgres    false    232                       1259    29006    pos_api_outlet    TABLE     �  CREATE TABLE public.pos_api_outlet (
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
       public         heap    postgres    false                       1259    29004    pos_api_outlet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pos_api_outlet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pos_api_outlet_id_seq;
       public          postgres    false    271            �           0    0    pos_api_outlet_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pos_api_outlet_id_seq OWNED BY public.pos_api_outlet.id;
          public          postgres    false    270                       1259    29019    pos_api_register    TABLE     �  CREATE TABLE public.pos_api_register (
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
       public         heap    postgres    false                       1259    29017    pos_api_register_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pos_api_register_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pos_api_register_id_seq;
       public          postgres    false    273            �           0    0    pos_api_register_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pos_api_register_id_seq OWNED BY public.pos_api_register.id;
          public          postgres    false    272                       1259    29052 "   settings_api_checkoutfieldsettings    TABLE     �  CREATE TABLE public.settings_api_checkoutfieldsettings (
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
    billing_city character varying(100),
    billing_address_line2 character varying(100),
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
       public         heap    postgres    false                       1259    29050 )   settings_api_checkoutfieldsettings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_checkoutfieldsettings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.settings_api_checkoutfieldsettings_id_seq;
       public          postgres    false    275            �           0    0 )   settings_api_checkoutfieldsettings_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.settings_api_checkoutfieldsettings_id_seq OWNED BY public.settings_api_checkoutfieldsettings.id;
          public          postgres    false    274                       1259    29063    settings_api_checkoutsetting    TABLE     z  CREATE TABLE public.settings_api_checkoutsetting (
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
       public         heap    postgres    false                       1259    29061 #   settings_api_checkoutsetting_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_checkoutsetting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.settings_api_checkoutsetting_id_seq;
       public          postgres    false    277            �           0    0 #   settings_api_checkoutsetting_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.settings_api_checkoutsetting_id_seq OWNED BY public.settings_api_checkoutsetting.id;
          public          postgres    false    276            H           1259    53323    settings_api_customuser    TABLE     �  CREATE TABLE public.settings_api_customuser (
    id integer NOT NULL,
    confirmation_sent_at timestamp with time zone NOT NULL,
    confirmed_at timestamp with time zone,
    confirmation boolean NOT NULL,
    contact character varying(20),
    email character varying(40),
    full_name character varying(100),
    password character varying(100),
    is_all_outlet boolean NOT NULL,
    selected boolean NOT NULL,
    user_id bigint
);
 +   DROP TABLE public.settings_api_customuser;
       public         heap    postgres    false            G           1259    53321    settings_api_customuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_customuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.settings_api_customuser_id_seq;
       public          postgres    false    328            �           0    0    settings_api_customuser_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.settings_api_customuser_id_seq OWNED BY public.settings_api_customuser.id;
          public          postgres    false    327            J           1259    53331 "   settings_api_customuser_operations    TABLE     �   CREATE TABLE public.settings_api_customuser_operations (
    id bigint NOT NULL,
    customuser_id integer NOT NULL,
    operation_id integer NOT NULL
);
 6   DROP TABLE public.settings_api_customuser_operations;
       public         heap    postgres    false            I           1259    53329 )   settings_api_customuser_operations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_customuser_operations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.settings_api_customuser_operations_id_seq;
       public          postgres    false    330            �           0    0 )   settings_api_customuser_operations_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.settings_api_customuser_operations_id_seq OWNED BY public.settings_api_customuser_operations.id;
          public          postgres    false    329            L           1259    53339    settings_api_customuser_outlet    TABLE     �   CREATE TABLE public.settings_api_customuser_outlet (
    id bigint NOT NULL,
    customuser_id integer NOT NULL,
    outlet_id integer NOT NULL
);
 2   DROP TABLE public.settings_api_customuser_outlet;
       public         heap    postgres    false            K           1259    53337 %   settings_api_customuser_outlet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_customuser_outlet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.settings_api_customuser_outlet_id_seq;
       public          postgres    false    332            �           0    0 %   settings_api_customuser_outlet_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.settings_api_customuser_outlet_id_seq OWNED BY public.settings_api_customuser_outlet.id;
          public          postgres    false    331            N           1259    53347    settings_api_customuser_roles    TABLE     �   CREATE TABLE public.settings_api_customuser_roles (
    id bigint NOT NULL,
    customuser_id integer NOT NULL,
    role_id integer NOT NULL
);
 1   DROP TABLE public.settings_api_customuser_roles;
       public         heap    postgres    false            M           1259    53345 $   settings_api_customuser_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_customuser_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.settings_api_customuser_roles_id_seq;
       public          postgres    false    334            �           0    0 $   settings_api_customuser_roles_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.settings_api_customuser_roles_id_seq OWNED BY public.settings_api_customuser_roles.id;
          public          postgres    false    333            !           1259    29117    settings_api_deliveryarea    TABLE     #  CREATE TABLE public.settings_api_deliveryarea (
    id integer NOT NULL,
    shipping_rate_name character varying(100),
    weight_lower_limit numeric(10,2),
    weight_upper_limit numeric(10,2),
    price numeric(10,2),
    shipping_method_id integer,
    country character varying(100)
);
 -   DROP TABLE public.settings_api_deliveryarea;
       public         heap    postgres    false                        1259    29115     settings_api_deliveryarea_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_deliveryarea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.settings_api_deliveryarea_id_seq;
       public          postgres    false    289            �           0    0     settings_api_deliveryarea_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.settings_api_deliveryarea_id_seq OWNED BY public.settings_api_deliveryarea.id;
          public          postgres    false    288                       1259    29071    settings_api_freeshippingmethod    TABLE     ?  CREATE TABLE public.settings_api_freeshippingmethod (
    id integer NOT NULL,
    amount_mesurement character varying(100) NOT NULL,
    amount numeric(10,2),
    weight_mesurement character varying(100) NOT NULL,
    weight numeric(10,2),
    free_shipping boolean NOT NULL,
    instruction character varying(300)
);
 3   DROP TABLE public.settings_api_freeshippingmethod;
       public         heap    postgres    false                       1259    29069 &   settings_api_freeshippingmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_freeshippingmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.settings_api_freeshippingmethod_id_seq;
       public          postgres    false    279            �           0    0 &   settings_api_freeshippingmethod_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.settings_api_freeshippingmethod_id_seq OWNED BY public.settings_api_freeshippingmethod.id;
          public          postgres    false    278                       1259    29082    settings_api_generalsetting    TABLE     �  CREATE TABLE public.settings_api_generalsetting (
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
       public         heap    postgres    false                       1259    29080 "   settings_api_generalsetting_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_generalsetting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.settings_api_generalsetting_id_seq;
       public          postgres    false    281            �           0    0 "   settings_api_generalsetting_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.settings_api_generalsetting_id_seq OWNED BY public.settings_api_generalsetting.id;
          public          postgres    false    280            >           1259    53269    settings_api_operation    TABLE       CREATE TABLE public.settings_api_operation (
    id integer NOT NULL,
    name character varying(100),
    display_text character varying(150),
    description text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    resource_id integer
);
 *   DROP TABLE public.settings_api_operation;
       public         heap    postgres    false            =           1259    53267    settings_api_operation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_operation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.settings_api_operation_id_seq;
       public          postgres    false    318            �           0    0    settings_api_operation_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.settings_api_operation_id_seq OWNED BY public.settings_api_operation.id;
          public          postgres    false    317            @           1259    53280    settings_api_paymentmethod    TABLE     �   CREATE TABLE public.settings_api_paymentmethod (
    id integer NOT NULL,
    description text,
    cash_on boolean NOT NULL
);
 .   DROP TABLE public.settings_api_paymentmethod;
       public         heap    postgres    false            ?           1259    53278 !   settings_api_paymentmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_paymentmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.settings_api_paymentmethod_id_seq;
       public          postgres    false    320            �           0    0 !   settings_api_paymentmethod_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.settings_api_paymentmethod_id_seq OWNED BY public.settings_api_paymentmethod.id;
          public          postgres    false    319            F           1259    53310    settings_api_permissionrole    TABLE     �   CREATE TABLE public.settings_api_permissionrole (
    id integer NOT NULL,
    name character varying(100),
    operation_id integer,
    role_id integer,
    user_id bigint
);
 /   DROP TABLE public.settings_api_permissionrole;
       public         heap    postgres    false            E           1259    53308 "   settings_api_permissionrole_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_permissionrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.settings_api_permissionrole_id_seq;
       public          postgres    false    326            �           0    0 "   settings_api_permissionrole_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.settings_api_permissionrole_id_seq OWNED BY public.settings_api_permissionrole.id;
          public          postgres    false    325            8           1259    44976    settings_api_regeionaldetails    TABLE     �   CREATE TABLE public.settings_api_regeionaldetails (
    id integer NOT NULL,
    region_name character varying(100),
    region_price numeric(10,2),
    delivery_area_id integer
);
 1   DROP TABLE public.settings_api_regeionaldetails;
       public         heap    postgres    false            7           1259    44974 $   settings_api_regeionaldetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_regeionaldetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.settings_api_regeionaldetails_id_seq;
       public          postgres    false    312            �           0    0 $   settings_api_regeionaldetails_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.settings_api_regeionaldetails_id_seq OWNED BY public.settings_api_regeionaldetails.id;
          public          postgres    false    311            B           1259    53291    settings_api_resource    TABLE     �   CREATE TABLE public.settings_api_resource (
    id integer NOT NULL,
    name character varying(100),
    description text,
    selected boolean NOT NULL
);
 )   DROP TABLE public.settings_api_resource;
       public         heap    postgres    false            A           1259    53289    settings_api_resource_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_resource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.settings_api_resource_id_seq;
       public          postgres    false    322            �           0    0    settings_api_resource_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.settings_api_resource_id_seq OWNED BY public.settings_api_resource.id;
          public          postgres    false    321            D           1259    53302    settings_api_role    TABLE     �   CREATE TABLE public.settings_api_role (
    id integer NOT NULL,
    name character varying(100),
    pos_manager boolean NOT NULL,
    pos_cashier boolean NOT NULL,
    ecommerce_staff boolean NOT NULL
);
 %   DROP TABLE public.settings_api_role;
       public         heap    postgres    false            C           1259    53300    settings_api_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.settings_api_role_id_seq;
       public          postgres    false    324            �           0    0    settings_api_role_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.settings_api_role_id_seq OWNED BY public.settings_api_role.id;
          public          postgres    false    323                       1259    29093 #   settings_api_standardshippingmethod    TABLE     �   CREATE TABLE public.settings_api_standardshippingmethod (
    id integer NOT NULL,
    standard_shipping boolean NOT NULL,
    instruction character varying(300),
    name character varying(100)
);
 7   DROP TABLE public.settings_api_standardshippingmethod;
       public         heap    postgres    false                       1259    29091 *   settings_api_standardshippingmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_standardshippingmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.settings_api_standardshippingmethod_id_seq;
       public          postgres    false    283            �           0    0 *   settings_api_standardshippingmethod_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.settings_api_standardshippingmethod_id_seq OWNED BY public.settings_api_standardshippingmethod.id;
          public          postgres    false    282                       1259    29101 &   settings_api_storepickupshippingmethod    TABLE     �   CREATE TABLE public.settings_api_storepickupshippingmethod (
    id integer NOT NULL,
    store_pickup boolean NOT NULL,
    instruction character varying(300)
);
 :   DROP TABLE public.settings_api_storepickupshippingmethod;
       public         heap    postgres    false                       1259    29099 -   settings_api_storepickupshippingmethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_storepickupshippingmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.settings_api_storepickupshippingmethod_id_seq;
       public          postgres    false    285            �           0    0 -   settings_api_storepickupshippingmethod_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.settings_api_storepickupshippingmethod_id_seq OWNED BY public.settings_api_storepickupshippingmethod.id;
          public          postgres    false    284                       1259    29109    settings_api_taxrate    TABLE     �   CREATE TABLE public.settings_api_taxrate (
    id bigint NOT NULL,
    name character varying(100),
    tax numeric(5,2),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 (   DROP TABLE public.settings_api_taxrate;
       public         heap    postgres    false                       1259    29107    settings_api_taxrate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_api_taxrate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.settings_api_taxrate_id_seq;
       public          postgres    false    287            �           0    0    settings_api_taxrate_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.settings_api_taxrate_id_seq OWNED BY public.settings_api_taxrate.id;
          public          postgres    false    286            .           1259    29426    superadmin_api_adminuser    TABLE     �  CREATE TABLE public.superadmin_api_adminuser (
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
       public         heap    postgres    false            -           1259    29424    superadmin_api_adminuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.superadmin_api_adminuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.superadmin_api_adminuser_id_seq;
       public          postgres    false    302            �           0    0    superadmin_api_adminuser_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.superadmin_api_adminuser_id_seq OWNED BY public.superadmin_api_adminuser.id;
          public          postgres    false    301            �            1259    28527    user_auth_user    TABLE     E  CREATE TABLE public.user_auth_user (
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
       public         heap    postgres    false            �            1259    28540    user_auth_user_groups    TABLE     �   CREATE TABLE public.user_auth_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 )   DROP TABLE public.user_auth_user_groups;
       public         heap    postgres    false            �            1259    28538    user_auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.user_auth_user_groups_id_seq;
       public          postgres    false    213            �           0    0    user_auth_user_groups_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.user_auth_user_groups_id_seq OWNED BY public.user_auth_user_groups.id;
          public          postgres    false    212            �            1259    28525    user_auth_user_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.user_auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.user_auth_user_id_seq;
       public          postgres    false    211            �           0    0    user_auth_user_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.user_auth_user_id_seq OWNED BY public.user_auth_user.id;
          public          postgres    false    210            �            1259    28548    user_auth_user_user_permissions    TABLE     �   CREATE TABLE public.user_auth_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 3   DROP TABLE public.user_auth_user_user_permissions;
       public         heap    postgres    false            �            1259    28546 &   user_auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.user_auth_user_user_permissions_id_seq;
       public          postgres    false    215            �           0    0 &   user_auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.user_auth_user_user_permissions_id_seq OWNED BY public.user_auth_user_user_permissions.id;
          public          postgres    false    214            �           2604    28742    app_api_facebookpixel id    DEFAULT     �   ALTER TABLE ONLY public.app_api_facebookpixel ALTER COLUMN id SET DEFAULT nextval('public.app_api_facebookpixel_id_seq'::regclass);
 G   ALTER TABLE public.app_api_facebookpixel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    28753    app_api_googlead id    DEFAULT     z   ALTER TABLE ONLY public.app_api_googlead ALTER COLUMN id SET DEFAULT nextval('public.app_api_googlead_id_seq'::regclass);
 B   ALTER TABLE public.app_api_googlead ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    28764    app_api_googleanalytic id    DEFAULT     �   ALTER TABLE ONLY public.app_api_googleanalytic ALTER COLUMN id SET DEFAULT nextval('public.app_api_googleanalytic_id_seq'::regclass);
 H   ALTER TABLE public.app_api_googleanalytic ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    28775    app_api_livechat id    DEFAULT     z   ALTER TABLE ONLY public.app_api_livechat ALTER COLUMN id SET DEFAULT nextval('public.app_api_livechat_id_seq'::regclass);
 B   ALTER TABLE public.app_api_livechat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    28786    app_api_news id    DEFAULT     r   ALTER TABLE ONLY public.app_api_news ALTER COLUMN id SET DEFAULT nextval('public.app_api_news_id_seq'::regclass);
 >   ALTER TABLE public.app_api_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    28794 #   app_api_orderplacedfacebookpixel id    DEFAULT     �   ALTER TABLE ONLY public.app_api_orderplacedfacebookpixel ALTER COLUMN id SET DEFAULT nextval('public.app_api_orderplacedfacebookpixel_id_seq'::regclass);
 R   ALTER TABLE public.app_api_orderplacedfacebookpixel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    28805    app_api_popup id    DEFAULT     t   ALTER TABLE ONLY public.app_api_popup ALTER COLUMN id SET DEFAULT nextval('public.app_api_popup_id_seq'::regclass);
 ?   ALTER TABLE public.app_api_popup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    28813    app_api_promocode id    DEFAULT     |   ALTER TABLE ONLY public.app_api_promocode ALTER COLUMN id SET DEFAULT nextval('public.app_api_promocode_id_seq'::regclass);
 C   ALTER TABLE public.app_api_promocode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    249    249            �           2604    53131    app_api_promocode_collection id    DEFAULT     �   ALTER TABLE ONLY public.app_api_promocode_collection ALTER COLUMN id SET DEFAULT nextval('public.app_api_promocode_collection_id_seq'::regclass);
 N   ALTER TABLE public.app_api_promocode_collection ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    314    313    314            �           2604    53139    app_api_promocode_product id    DEFAULT     �   ALTER TABLE ONLY public.app_api_promocode_product ALTER COLUMN id SET DEFAULT nextval('public.app_api_promocode_product_id_seq'::regclass);
 K   ALTER TABLE public.app_api_promocode_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    315    316    316            �           2604    28486    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    28496    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �           2604    28478    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    28869    company_api_aboutus id    DEFAULT     �   ALTER TABLE ONLY public.company_api_aboutus ALTER COLUMN id SET DEFAULT nextval('public.company_api_aboutus_id_seq'::regclass);
 E   ALTER TABLE public.company_api_aboutus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            �           2604    28880    company_api_companypolicy id    DEFAULT     �   ALTER TABLE ONLY public.company_api_companypolicy ALTER COLUMN id SET DEFAULT nextval('public.company_api_companypolicy_id_seq'::regclass);
 K   ALTER TABLE public.company_api_companypolicy ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253            �           2604    28891    company_api_faq id    DEFAULT     x   ALTER TABLE ONLY public.company_api_faq ALTER COLUMN id SET DEFAULT nextval('public.company_api_faq_id_seq'::regclass);
 A   ALTER TABLE public.company_api_faq ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    255    255            �           2604    28902    company_api_metaproperty id    DEFAULT     �   ALTER TABLE ONLY public.company_api_metaproperty ALTER COLUMN id SET DEFAULT nextval('public.company_api_metaproperty_id_seq'::regclass);
 J   ALTER TABLE public.company_api_metaproperty ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    257    257            �           2604    28910    company_api_news id    DEFAULT     z   ALTER TABLE ONLY public.company_api_news ALTER COLUMN id SET DEFAULT nextval('public.company_api_news_id_seq'::regclass);
 B   ALTER TABLE public.company_api_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    259    259            �           2604    28923    company_api_termscondition id    DEFAULT     �   ALTER TABLE ONLY public.company_api_termscondition ALTER COLUMN id SET DEFAULT nextval('public.company_api_termscondition_id_seq'::regclass);
 L   ALTER TABLE public.company_api_termscondition ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    261    261            �           2604    29158 "   customer_order_api_notification id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_notification ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_notification_id_seq'::regclass);
 Q   ALTER TABLE public.customer_order_api_notification ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    290    291            �           2604    29169    customer_order_api_order id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_order ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_order_id_seq'::regclass);
 J   ALTER TABLE public.customer_order_api_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    293    293            �           2604    29180    customer_order_api_orderitem id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_orderitem ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_orderitem_id_seq'::regclass);
 N   ALTER TABLE public.customer_order_api_orderitem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    295    294    295            �           2604    44964 !   customer_order_api_pathaotoken id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_pathaotoken ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_pathaotoken_id_seq'::regclass);
 P   ALTER TABLE public.customer_order_api_pathaotoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    310    310            �           2604    29199 #   customer_order_api_transferorder id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_api_transferorder ALTER COLUMN id SET DEFAULT nextval('public.customer_order_api_transferorder_id_seq'::regclass);
 R   ALTER TABLE public.customer_order_api_transferorder ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    297    297            �           2604    28971    customer_profile_api_address id    DEFAULT     �   ALTER TABLE ONLY public.customer_profile_api_address ALTER COLUMN id SET DEFAULT nextval('public.customer_profile_api_address_id_seq'::regclass);
 N   ALTER TABLE public.customer_profile_api_address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    269    269            �           2604    28955 %   customer_profile_api_customergroup id    DEFAULT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup ALTER COLUMN id SET DEFAULT nextval('public.customer_profile_api_customergroup_id_seq'::regclass);
 T   ALTER TABLE public.customer_profile_api_customergroup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264    265            �           2604    28963 .   customer_profile_api_customergroup_customer id    DEFAULT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer ALTER COLUMN id SET DEFAULT nextval('public.customer_profile_api_customergroup_customer_id_seq'::regclass);
 ]   ALTER TABLE public.customer_profile_api_customergroup_customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    266    267            �           2604    28938 '   customer_profile_api_customerprofile id    DEFAULT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile ALTER COLUMN id SET DEFAULT nextval('public.customer_profile_api_customerprofile_id_seq'::regclass);
 V   ALTER TABLE public.customer_profile_api_customerprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    263    263            �           2604    28588    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    28468    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �           2604    28457    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �           2604    28612    inventory_api_brand id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_brand ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_brand_id_seq'::regclass);
 E   ALTER TABLE public.inventory_api_brand ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    28633     inventory_api_customermessage id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_customermessage ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_customermessage_id_seq'::regclass);
 O   ALTER TABLE public.inventory_api_customermessage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    28644 #   inventory_api_inventory_location id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_inventory_location ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_inventory_location_id_seq'::regclass);
 R   ALTER TABLE public.inventory_api_inventory_location ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    28655 #   inventory_api_inventory_transfer id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_inventory_transfer_id_seq'::regclass);
 R   ALTER TABLE public.inventory_api_inventory_transfer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    29362 1   inventory_api_inventory_transfer_transfer_item id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_inventory_transfer_transfer_item_id_seq'::regclass);
 `   ALTER TABLE public.inventory_api_inventory_transfer_transfer_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    299    298    299            �           2604    28665    inventory_api_product id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_product ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_product_id_seq'::regclass);
 G   ALTER TABLE public.inventory_api_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    28678     inventory_api_productcategory id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productcategory ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productcategory_id_seq'::regclass);
 O   ALTER TABLE public.inventory_api_productcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    36652 !   inventory_api_productpurchased id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productpurchased ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productpurchased_id_seq'::regclass);
 P   ALTER TABLE public.inventory_api_productpurchased ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    304    304            �           2604    36663 %   inventory_api_productpurchaseditem id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productpurchaseditem_id_seq'::regclass);
 T   ALTER TABLE public.inventory_api_productpurchaseditem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    306    306            �           2604    36729 (   inventory_api_productpurchasedpayment id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productpurchasedpayment_id_seq'::regclass);
 W   ALTER TABLE public.inventory_api_productpurchasedpayment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    308    308            �           2604    28713 #   inventory_api_productsizevariant id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_productsizevariant ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_productsizevariant_id_seq'::regclass);
 R   ALTER TABLE public.inventory_api_productsizevariant ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    28724    inventory_api_supplier id    DEFAULT     �   ALTER TABLE ONLY public.inventory_api_supplier ALTER COLUMN id SET DEFAULT nextval('public.inventory_api_supplier_id_seq'::regclass);
 H   ALTER TABLE public.inventory_api_supplier ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    29009    pos_api_outlet id    DEFAULT     v   ALTER TABLE ONLY public.pos_api_outlet ALTER COLUMN id SET DEFAULT nextval('public.pos_api_outlet_id_seq'::regclass);
 @   ALTER TABLE public.pos_api_outlet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270    271            �           2604    29022    pos_api_register id    DEFAULT     z   ALTER TABLE ONLY public.pos_api_register ALTER COLUMN id SET DEFAULT nextval('public.pos_api_register_id_seq'::regclass);
 B   ALTER TABLE public.pos_api_register ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    273    273            �           2604    29055 %   settings_api_checkoutfieldsettings id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_checkoutfieldsettings ALTER COLUMN id SET DEFAULT nextval('public.settings_api_checkoutfieldsettings_id_seq'::regclass);
 T   ALTER TABLE public.settings_api_checkoutfieldsettings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    274    275            �           2604    29066    settings_api_checkoutsetting id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_checkoutsetting ALTER COLUMN id SET DEFAULT nextval('public.settings_api_checkoutsetting_id_seq'::regclass);
 N   ALTER TABLE public.settings_api_checkoutsetting ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    277    277            �           2604    53326    settings_api_customuser id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_customuser ALTER COLUMN id SET DEFAULT nextval('public.settings_api_customuser_id_seq'::regclass);
 I   ALTER TABLE public.settings_api_customuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    328    327    328            �           2604    53334 %   settings_api_customuser_operations id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_customuser_operations ALTER COLUMN id SET DEFAULT nextval('public.settings_api_customuser_operations_id_seq'::regclass);
 T   ALTER TABLE public.settings_api_customuser_operations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    330    329    330            �           2604    53342 !   settings_api_customuser_outlet id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_customuser_outlet ALTER COLUMN id SET DEFAULT nextval('public.settings_api_customuser_outlet_id_seq'::regclass);
 P   ALTER TABLE public.settings_api_customuser_outlet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    332    331    332            �           2604    53350     settings_api_customuser_roles id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_customuser_roles ALTER COLUMN id SET DEFAULT nextval('public.settings_api_customuser_roles_id_seq'::regclass);
 O   ALTER TABLE public.settings_api_customuser_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    333    334    334            �           2604    29120    settings_api_deliveryarea id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_deliveryarea ALTER COLUMN id SET DEFAULT nextval('public.settings_api_deliveryarea_id_seq'::regclass);
 K   ALTER TABLE public.settings_api_deliveryarea ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    289    289            �           2604    29074 "   settings_api_freeshippingmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_freeshippingmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_freeshippingmethod_id_seq'::regclass);
 Q   ALTER TABLE public.settings_api_freeshippingmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    279    279            �           2604    29085    settings_api_generalsetting id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_generalsetting ALTER COLUMN id SET DEFAULT nextval('public.settings_api_generalsetting_id_seq'::regclass);
 M   ALTER TABLE public.settings_api_generalsetting ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    281    281            �           2604    53272    settings_api_operation id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_operation ALTER COLUMN id SET DEFAULT nextval('public.settings_api_operation_id_seq'::regclass);
 H   ALTER TABLE public.settings_api_operation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    318    317    318            �           2604    53283    settings_api_paymentmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_paymentmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_paymentmethod_id_seq'::regclass);
 L   ALTER TABLE public.settings_api_paymentmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    319    320    320            �           2604    53313    settings_api_permissionrole id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_permissionrole ALTER COLUMN id SET DEFAULT nextval('public.settings_api_permissionrole_id_seq'::regclass);
 M   ALTER TABLE public.settings_api_permissionrole ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    325    326    326            �           2604    44979     settings_api_regeionaldetails id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_regeionaldetails ALTER COLUMN id SET DEFAULT nextval('public.settings_api_regeionaldetails_id_seq'::regclass);
 O   ALTER TABLE public.settings_api_regeionaldetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    312    312            �           2604    53294    settings_api_resource id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_resource ALTER COLUMN id SET DEFAULT nextval('public.settings_api_resource_id_seq'::regclass);
 G   ALTER TABLE public.settings_api_resource ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    322    321    322            �           2604    53305    settings_api_role id    DEFAULT     |   ALTER TABLE ONLY public.settings_api_role ALTER COLUMN id SET DEFAULT nextval('public.settings_api_role_id_seq'::regclass);
 C   ALTER TABLE public.settings_api_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    323    324    324            �           2604    29096 &   settings_api_standardshippingmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_standardshippingmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_standardshippingmethod_id_seq'::regclass);
 U   ALTER TABLE public.settings_api_standardshippingmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    283    283            �           2604    29104 )   settings_api_storepickupshippingmethod id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_storepickupshippingmethod ALTER COLUMN id SET DEFAULT nextval('public.settings_api_storepickupshippingmethod_id_seq'::regclass);
 X   ALTER TABLE public.settings_api_storepickupshippingmethod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    285    285            �           2604    29112    settings_api_taxrate id    DEFAULT     �   ALTER TABLE ONLY public.settings_api_taxrate ALTER COLUMN id SET DEFAULT nextval('public.settings_api_taxrate_id_seq'::regclass);
 F   ALTER TABLE public.settings_api_taxrate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    286    287            �           2604    29429    superadmin_api_adminuser id    DEFAULT     �   ALTER TABLE ONLY public.superadmin_api_adminuser ALTER COLUMN id SET DEFAULT nextval('public.superadmin_api_adminuser_id_seq'::regclass);
 J   ALTER TABLE public.superadmin_api_adminuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    302    301    302            �           2604    28530    user_auth_user id    DEFAULT     v   ALTER TABLE ONLY public.user_auth_user ALTER COLUMN id SET DEFAULT nextval('public.user_auth_user_id_seq'::regclass);
 @   ALTER TABLE public.user_auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    28543    user_auth_user_groups id    DEFAULT     �   ALTER TABLE ONLY public.user_auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_auth_user_groups_id_seq'::regclass);
 G   ALTER TABLE public.user_auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �           2604    28551 "   user_auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_auth_user_user_permissions_id_seq'::regclass);
 Q   ALTER TABLE public.user_auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �          0    28739    app_api_facebookpixel 
   TABLE DATA           Z   COPY public.app_api_facebookpixel (id, facebook_pixel_link, created, updated) FROM stdin;
    public          postgres    false    235   �      �          0    28750    app_api_googlead 
   TABLE DATA           Q   COPY public.app_api_googlead (id, google_ads_link, created, updated) FROM stdin;
    public          postgres    false    237   ;�      �          0    28761    app_api_googleanalytic 
   TABLE DATA           ]   COPY public.app_api_googleanalytic (id, google_analytics_link, created, updated) FROM stdin;
    public          postgres    false    239   X�      �          0    28772    app_api_livechat 
   TABLE DATA           P   COPY public.app_api_livechat (id, live_chat_link, created, updated) FROM stdin;
    public          postgres    false    241   u�      �          0    28783    app_api_news 
   TABLE DATA           P   COPY public.app_api_news (id, image1, image2, image3, popup_enable) FROM stdin;
    public          postgres    false    243   ��      �          0    28791     app_api_orderplacedfacebookpixel 
   TABLE DATA           r   COPY public.app_api_orderplacedfacebookpixel (id, order_placed_facebook_pixel_link, created, updated) FROM stdin;
    public          postgres    false    245   ��      �          0    28802    app_api_popup 
   TABLE DATA           Q   COPY public.app_api_popup (id, image1, image2, image3, popup_enable) FROM stdin;
    public          postgres    false    247   ��      �          0    28810    app_api_promocode 
   TABLE DATA           �   COPY public.app_api_promocode (id, name, code, is_active, usage_limit, "limit", valid_from, valid_to, expire_limit, discount_type, discount, discount_order_type, orders_over, apply, created, updated) FROM stdin;
    public          postgres    false    249   ��      >          0    53128    app_api_promocode_collection 
   TABLE DATA           \   COPY public.app_api_promocode_collection (id, promocode_id, productcategory_id) FROM stdin;
    public          postgres    false    314   !�      @          0    53136    app_api_promocode_product 
   TABLE DATA           Q   COPY public.app_api_promocode_product (id, promocode_id, product_id) FROM stdin;
    public          postgres    false    316   >�      �          0    28483 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   [�      �          0    28493    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   x�      �          0    28475    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ��      �          0    28866    company_api_aboutus 
   TABLE DATA           �   COPY public.company_api_aboutus (id, about_us_title, about_us_text, aboutus_image, aboutus_image2, aboutus_video, aboutus_video2, meta_title, meta_description, meta_keywords) FROM stdin;
    public          postgres    false    251   &�                0    28877    company_api_companypolicy 
   TABLE DATA           K   COPY public.company_api_companypolicy (id, title, description) FROM stdin;
    public          postgres    false    253   C�                0    28888    company_api_faq 
   TABLE DATA           ?   COPY public.company_api_faq (id, question, answer) FROM stdin;
    public          postgres    false    255   `�                0    28899    company_api_metaproperty 
   TABLE DATA           c   COPY public.company_api_metaproperty (id, meta_title, meta_description, meta_keywords) FROM stdin;
    public          postgres    false    257   }�                0    28907    company_api_news 
   TABLE DATA           t   COPY public.company_api_news (id, title, content, image, image2, video, video2, slug, created, updated) FROM stdin;
    public          postgres    false    259   ��      	          0    28920    company_api_termscondition 
   TABLE DATA           �   COPY public.company_api_termscondition (id, title, content, slug, meta_title, meta_description, meta_keywords, created, updated) FROM stdin;
    public          postgres    false    261   ��      '          0    29155    customer_order_api_notification 
   TABLE DATA           y   COPY public.customer_order_api_notification (id, title, description, url, created, user_from_id, user_to_id) FROM stdin;
    public          postgres    false    291   ��      )          0    29166    customer_order_api_order 
   TABLE DATA           G  COPY public.customer_order_api_order (id, order_id, order_type, "Order_reference", status, ordered_by, fullname, email, phone, address, order_note, unit, order_tracking_number, serial, separate_delivery_address, currency, has_discount, shipping_charge, other_charges, other_discount, promo_discount, total_tax, order_total, sub_total, paid, total_discount, is_payment_successful, accepted_date, shipping_start_date, completed_date, expected_delivery_date, is_fulfilled, item_count, product_list, balance, description, sales_note, created, updated, customer_id, delivery_address_id, delivery_area_id, outlet_id, promo_code_id, register_id, supplier_id, register_total, amount, payment_method, payment_status, reference, pathao_area_id, pathao_city_id, pathao_zone_id, pathao_instruction, pathao_item_description, pathao_status) FROM stdin;
    public          postgres    false    293   ��      +          0    29177    customer_order_api_orderitem 
   TABLE DATA           �   COPY public.customer_order_api_orderitem (id, product_name, size_name, size_value, barcode, compare_at_price, sku, quantity, fulfilled_quantity, stock_control, unit_price, discount, order_id, product_id, size_id, awaiting_stock) FROM stdin;
    public          postgres    false    295   �      :          0    44961    customer_order_api_pathaotoken 
   TABLE DATA           Y   COPY public.customer_order_api_pathaotoken (id, access_token, refresh_token) FROM stdin;
    public          postgres    false    310   �      -          0    29196     customer_order_api_transferorder 
   TABLE DATA           �   COPY public.customer_order_api_transferorder (id, to_number, due_date, reference, transfer_charge, note, created, updated, order_id, order_from_id, order_to_id) FROM stdin;
    public          postgres    false    297   �                0    28968    customer_profile_api_address 
   TABLE DATA           �   COPY public.customer_profile_api_address (id, type, email, title, first_name, last_name, phone, address1, address2, country, division, city, postal_code, created, updated, customer_id, district) FROM stdin;
    public          postgres    false    269                   0    28952 "   customer_profile_api_customergroup 
   TABLE DATA           ^   COPY public.customer_profile_api_customergroup (id, group_name, created, updated) FROM stdin;
    public          postgres    false    265   4                0    28960 +   customer_profile_api_customergroup_customer 
   TABLE DATA           o   COPY public.customer_profile_api_customergroup_customer (id, customergroup_id, customerprofile_id) FROM stdin;
    public          postgres    false    267   �                0    28935 $   customer_profile_api_customerprofile 
   TABLE DATA           �   COPY public.customer_profile_api_customerprofile (id, email, username, password, title, first_name, last_name, company_name, designation, gender, phone, customer_number, created, updated, address, user_id, birthdate) FROM stdin;
    public          postgres    false    263   �      �          0    28585    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   �      �          0    28465    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   L      �          0    28454    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   �      0          0    29414    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    300   M"      �          0    28609    inventory_api_brand 
   TABLE DATA           �   COPY public.inventory_api_brand (id, name, description, icon_image, icon_image2, slug, meta_title, meta_description, meta_keywords, created, updated) FROM stdin;
    public          postgres    false    219   �$      �          0    28630    inventory_api_customermessage 
   TABLE DATA           v   COPY public.inventory_api_customermessage (id, email, phone, subject, message, created, updated, name_id) FROM stdin;
    public          postgres    false    221   �$      �          0    28641     inventory_api_inventory_location 
   TABLE DATA           �   COPY public.inventory_api_inventory_location (id, location_name, phone, is_active, is_default, address1, address2, country, division, city, postal_code, created, updated) FROM stdin;
    public          postgres    false    223   �$      �          0    28652     inventory_api_inventory_transfer 
   TABLE DATA           �   COPY public.inventory_api_inventory_transfer (id, "TO_number", status, total_transfer, total_receive, due_date, transfer_quantity, created, updated, from_inventory_id, to_inventory_id) FROM stdin;
    public          postgres    false    225   R%      /          0    29359 .   inventory_api_inventory_transfer_transfer_item 
   TABLE DATA           z   COPY public.inventory_api_inventory_transfer_transfer_item (id, inventory_transfer_id, productsizevariant_id) FROM stdin;
    public          postgres    false    299   o%      �          0    28662    inventory_api_product 
   TABLE DATA           �  COPY public.inventory_api_product (id, name, description, short_description, awaiting_stock, stock, on_hand, committed, available, sku, barcode, is_active, is_display, is_expanded, is_selected, option_values, options, enable_customer_note, is_featured, is_new, store_only, stock_control, is_require_documents, featured_image, product_image1, product_image2, product_image3, advance_price, auto_adjust_selling_price, price, weight, unit, on_sale, call_for_price, attribute, attribute2, attribute3, attribute4, attribute5, attribute6, delivery_info, meta_title, meta_description, meta_keywords, created, updated, slug, value, brand_id, category_id, tax_id, tags, compare_at_price, cost_price) FROM stdin;
    public          postgres    false    227   �%      �          0    28675    inventory_api_productcategory 
   TABLE DATA           �   COPY public.inventory_api_productcategory (id, name, descriptions, slug, meta_title, meta_description, meta_keywords, icon, created, updated) FROM stdin;
    public          postgres    false    229   �)      4          0    36649    inventory_api_productpurchased 
   TABLE DATA           !  COPY public.inventory_api_productpurchased (id, adjusment, due_date, po_number, purchase_date, received_note, received_quantity_price, reference, total_amount, total_due, total_payment, total_tax, created, updated, supplier_id, order_total, other_amount, other_charge, status) FROM stdin;
    public          postgres    false    304   :*      6          0    36660 "   inventory_api_productpurchaseditem 
   TABLE DATA           �   COPY public.inventory_api_productpurchaseditem (id, order_quantity, received_quantity, sku, subtotal, total_received_price, total_tax, cost_price, inventory_location_id, purchase_item_id, purchased_product_id, purchased_size_id, tax_id) FROM stdin;
    public          postgres    false    306   �,      8          0    36726 %   inventory_api_productpurchasedpayment 
   TABLE DATA           �   COPY public.inventory_api_productpurchasedpayment (id, amount, payment_date, payment_method, reference, created, updated, purchased_id, due) FROM stdin;
    public          postgres    false    308   .      �          0    28710     inventory_api_productsizevariant 
   TABLE DATA           6  COPY public.inventory_api_productsizevariant (id, name, awaiting_stock, stock, on_hand, committed, available, option, value, options, sku, barcode, parent_id, "position", advance_price, auto_adjust_selling_price, cost_price, compare_at_price, price, is_selected, weight, product_id, on_sale, tags) FROM stdin;
    public          postgres    false    231   (.      �          0    28721    inventory_api_supplier 
   TABLE DATA             COPY public.inventory_api_supplier (id, supplier_name, supplier_company_name, is_active, supplier_first_name, supplier_last_name, supplier_phone, supplier_address, supplier_address2, city, country, division, postal_code, created, updated, tax_id) FROM stdin;
    public          postgres    false    233   �0                0    29006    pos_api_outlet 
   TABLE DATA           :  COPY public.pos_api_outlet (id, outlet_name, location_name, email, phone, receipt_template, email_template, country_name, division, postal_code, city, address1, address2, full_address, slug, cash_management, is_active, is_default, is_deleted, selected, created, updated, inventory_location_id, tax_id) FROM stdin;
    public          postgres    false    271   .1                0    29019    pos_api_register 
   TABLE DATA           �   COPY public.pos_api_register (id, name, opened_at, closed_at, cash_management, is_active, is_deleted, status, created, updated, closed_by_id, opened_by_id, outlet_id) FROM stdin;
    public          postgres    false    273   �1                0    29052 "   settings_api_checkoutfieldsettings 
   TABLE DATA           5  COPY public.settings_api_checkoutfieldsettings (id, checkout_from_all_country, customer_note, title, first_name, last_name, email, company_name, phone, billing_address_line1, billing_city, billing_address_line2, billing_country, billing_postal_code, billing_state, defferent_delivery_address, delivery_name, delivery_phone, delivery_address_line1, delivery_address_line2, delivery_country, delivery_city, delivery_postal_code, delivery_state, delivery_slot, time_slot, time_slot_label, customer_instruction, new_time_slot, "terms_and_condition_show_OR_hidden", terms_and_condition, terms_and_condition_label, terms_and_condition_link, "terms_and_condition_show_OR_hidden2", terms_and_condition2, terms_and_condition_label2, terms_and_condition_link2, minimum_checkout_amount_setting, minimum_checkout_amount) FROM stdin;
    public          postgres    false    275   �1                0    29063    settings_api_checkoutsetting 
   TABLE DATA           �   COPY public.settings_api_checkoutsetting (id, guest_checkout, create_account, seperate_delivery_address, social_login, document_label, billing_address_label, delivery_address_label) FROM stdin;
    public          postgres    false    277   2      L          0    53323    settings_api_customuser 
   TABLE DATA           �   COPY public.settings_api_customuser (id, confirmation_sent_at, confirmed_at, confirmation, contact, email, full_name, password, is_all_outlet, selected, user_id) FROM stdin;
    public          postgres    false    328   @2      N          0    53331 "   settings_api_customuser_operations 
   TABLE DATA           ]   COPY public.settings_api_customuser_operations (id, customuser_id, operation_id) FROM stdin;
    public          postgres    false    330   ]2      P          0    53339    settings_api_customuser_outlet 
   TABLE DATA           V   COPY public.settings_api_customuser_outlet (id, customuser_id, outlet_id) FROM stdin;
    public          postgres    false    332   z2      R          0    53347    settings_api_customuser_roles 
   TABLE DATA           S   COPY public.settings_api_customuser_roles (id, customuser_id, role_id) FROM stdin;
    public          postgres    false    334   �2      %          0    29117    settings_api_deliveryarea 
   TABLE DATA           �   COPY public.settings_api_deliveryarea (id, shipping_rate_name, weight_lower_limit, weight_upper_limit, price, shipping_method_id, country) FROM stdin;
    public          postgres    false    289   �2                0    29071    settings_api_freeshippingmethod 
   TABLE DATA           �   COPY public.settings_api_freeshippingmethod (id, amount_mesurement, amount, weight_mesurement, weight, free_shipping, instruction) FROM stdin;
    public          postgres    false    279   �2                0    29082    settings_api_generalsetting 
   TABLE DATA           �   COPY public.settings_api_generalsetting (id, store_name, business_name, email, phone, street, city, country, division, postal_code, currency, currency_text, product_per_page, sort_by, timezone, online, created, updated) FROM stdin;
    public          postgres    false    281   G3      B          0    53269    settings_api_operation 
   TABLE DATA           t   COPY public.settings_api_operation (id, name, display_text, description, created, updated, resource_id) FROM stdin;
    public          postgres    false    318   d3      D          0    53280    settings_api_paymentmethod 
   TABLE DATA           N   COPY public.settings_api_paymentmethod (id, description, cash_on) FROM stdin;
    public          postgres    false    320   F6      J          0    53310    settings_api_permissionrole 
   TABLE DATA           _   COPY public.settings_api_permissionrole (id, name, operation_id, role_id, user_id) FROM stdin;
    public          postgres    false    326   �6      <          0    44976    settings_api_regeionaldetails 
   TABLE DATA           h   COPY public.settings_api_regeionaldetails (id, region_name, region_price, delivery_area_id) FROM stdin;
    public          postgres    false    312   �6      F          0    53291    settings_api_resource 
   TABLE DATA           P   COPY public.settings_api_resource (id, name, description, selected) FROM stdin;
    public          postgres    false    322   �7      H          0    53302    settings_api_role 
   TABLE DATA           `   COPY public.settings_api_role (id, name, pos_manager, pos_cashier, ecommerce_staff) FROM stdin;
    public          postgres    false    324   8                0    29093 #   settings_api_standardshippingmethod 
   TABLE DATA           g   COPY public.settings_api_standardshippingmethod (id, standard_shipping, instruction, name) FROM stdin;
    public          postgres    false    283   l8      !          0    29101 &   settings_api_storepickupshippingmethod 
   TABLE DATA           _   COPY public.settings_api_storepickupshippingmethod (id, store_pickup, instruction) FROM stdin;
    public          postgres    false    285   �8      #          0    29109    settings_api_taxrate 
   TABLE DATA           O   COPY public.settings_api_taxrate (id, name, tax, created, updated) FROM stdin;
    public          postgres    false    287   �8      2          0    29426    superadmin_api_adminuser 
   TABLE DATA           �   COPY public.superadmin_api_adminuser (id, name, email, mobile, status, role, confirmation_sent_at, profile_image, created, updated, user_id) FROM stdin;
    public          postgres    false    302   29      �          0    28527    user_auth_user 
   TABLE DATA           �   COPY public.user_auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_customer, is_admin, phone, address) FROM stdin;
    public          postgres    false    211   O9      �          0    28540    user_auth_user_groups 
   TABLE DATA           F   COPY public.user_auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   n>      �          0    28548    user_auth_user_user_permissions 
   TABLE DATA           U   COPY public.user_auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   �>      �           0    0    app_api_facebookpixel_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.app_api_facebookpixel_id_seq', 1, false);
          public          postgres    false    234            �           0    0    app_api_googlead_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.app_api_googlead_id_seq', 1, false);
          public          postgres    false    236            �           0    0    app_api_googleanalytic_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.app_api_googleanalytic_id_seq', 1, false);
          public          postgres    false    238            �           0    0    app_api_livechat_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.app_api_livechat_id_seq', 1, false);
          public          postgres    false    240            �           0    0    app_api_news_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.app_api_news_id_seq', 1, false);
          public          postgres    false    242            �           0    0 '   app_api_orderplacedfacebookpixel_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.app_api_orderplacedfacebookpixel_id_seq', 1, false);
          public          postgres    false    244            �           0    0    app_api_popup_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.app_api_popup_id_seq', 1, true);
          public          postgres    false    246            �           0    0 #   app_api_promocode_collection_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.app_api_promocode_collection_id_seq', 1, false);
          public          postgres    false    313            �           0    0    app_api_promocode_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.app_api_promocode_id_seq', 12, true);
          public          postgres    false    248            �           0    0     app_api_promocode_product_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.app_api_promocode_product_id_seq', 1, false);
          public          postgres    false    315            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 240, true);
          public          postgres    false    204            �           0    0    company_api_aboutus_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.company_api_aboutus_id_seq', 1, false);
          public          postgres    false    250            �           0    0     company_api_companypolicy_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.company_api_companypolicy_id_seq', 1, false);
          public          postgres    false    252            �           0    0    company_api_faq_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.company_api_faq_id_seq', 1, false);
          public          postgres    false    254            �           0    0    company_api_metaproperty_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.company_api_metaproperty_id_seq', 1, true);
          public          postgres    false    256            �           0    0    company_api_news_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.company_api_news_id_seq', 1, false);
          public          postgres    false    258            �           0    0 !   company_api_termscondition_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.company_api_termscondition_id_seq', 1, false);
          public          postgres    false    260            �           0    0 &   customer_order_api_notification_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.customer_order_api_notification_id_seq', 1, false);
          public          postgres    false    290            �           0    0    customer_order_api_order_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.customer_order_api_order_id_seq', 73, true);
          public          postgres    false    292            �           0    0 #   customer_order_api_orderitem_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.customer_order_api_orderitem_id_seq', 99, true);
          public          postgres    false    294            �           0    0 %   customer_order_api_pathaotoken_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_api_pathaotoken_id_seq', 1, true);
          public          postgres    false    309            �           0    0 '   customer_order_api_transferorder_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.customer_order_api_transferorder_id_seq', 1, false);
          public          postgres    false    296            �           0    0 #   customer_profile_api_address_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.customer_profile_api_address_id_seq', 1, false);
          public          postgres    false    268            �           0    0 2   customer_profile_api_customergroup_customer_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.customer_profile_api_customergroup_customer_id_seq', 5, true);
          public          postgres    false    266            �           0    0 )   customer_profile_api_customergroup_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.customer_profile_api_customergroup_id_seq', 1, true);
          public          postgres    false    264            �           0    0 +   customer_profile_api_customerprofile_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.customer_profile_api_customerprofile_id_seq', 25, true);
          public          postgres    false    262            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);
          public          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 60, true);
          public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 87, true);
          public          postgres    false    200            �           0    0    inventory_api_brand_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.inventory_api_brand_id_seq', 1, false);
          public          postgres    false    218            �           0    0 $   inventory_api_customermessage_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.inventory_api_customermessage_id_seq', 1, false);
          public          postgres    false    220            �           0    0 '   inventory_api_inventory_location_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.inventory_api_inventory_location_id_seq', 2, true);
          public          postgres    false    222            �           0    0 '   inventory_api_inventory_transfer_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.inventory_api_inventory_transfer_id_seq', 1, false);
          public          postgres    false    224            �           0    0 5   inventory_api_inventory_transfer_transfer_item_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.inventory_api_inventory_transfer_transfer_item_id_seq', 1, false);
          public          postgres    false    298            �           0    0    inventory_api_product_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.inventory_api_product_id_seq', 30, true);
          public          postgres    false    226            �           0    0 $   inventory_api_productcategory_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.inventory_api_productcategory_id_seq', 3, true);
          public          postgres    false    228            �           0    0 %   inventory_api_productpurchased_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.inventory_api_productpurchased_id_seq', 22, true);
          public          postgres    false    303            �           0    0 )   inventory_api_productpurchaseditem_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.inventory_api_productpurchaseditem_id_seq', 31, true);
          public          postgres    false    305            �           0    0 ,   inventory_api_productpurchasedpayment_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.inventory_api_productpurchasedpayment_id_seq', 1, false);
          public          postgres    false    307            �           0    0 '   inventory_api_productsizevariant_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.inventory_api_productsizevariant_id_seq', 32, true);
          public          postgres    false    230            �           0    0    inventory_api_supplier_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.inventory_api_supplier_id_seq', 2, true);
          public          postgres    false    232            �           0    0    pos_api_outlet_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pos_api_outlet_id_seq', 2, true);
          public          postgres    false    270            �           0    0    pos_api_register_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pos_api_register_id_seq', 1, false);
          public          postgres    false    272            �           0    0 )   settings_api_checkoutfieldsettings_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.settings_api_checkoutfieldsettings_id_seq', 1, true);
          public          postgres    false    274            �           0    0 #   settings_api_checkoutsetting_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.settings_api_checkoutsetting_id_seq', 1, true);
          public          postgres    false    276            �           0    0    settings_api_customuser_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.settings_api_customuser_id_seq', 1, false);
          public          postgres    false    327            �           0    0 )   settings_api_customuser_operations_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.settings_api_customuser_operations_id_seq', 1, false);
          public          postgres    false    329            �           0    0 %   settings_api_customuser_outlet_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.settings_api_customuser_outlet_id_seq', 1, false);
          public          postgres    false    331            �           0    0 $   settings_api_customuser_roles_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.settings_api_customuser_roles_id_seq', 1, false);
          public          postgres    false    333            �           0    0     settings_api_deliveryarea_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.settings_api_deliveryarea_id_seq', 48, true);
          public          postgres    false    288            �           0    0 &   settings_api_freeshippingmethod_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.settings_api_freeshippingmethod_id_seq', 1, true);
          public          postgres    false    278            �           0    0 "   settings_api_generalsetting_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.settings_api_generalsetting_id_seq', 1, false);
          public          postgres    false    280            �           0    0    settings_api_operation_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.settings_api_operation_id_seq', 40, true);
          public          postgres    false    317            �           0    0 !   settings_api_paymentmethod_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.settings_api_paymentmethod_id_seq', 1, true);
          public          postgres    false    319            �           0    0 "   settings_api_permissionrole_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.settings_api_permissionrole_id_seq', 1, false);
          public          postgres    false    325            �           0    0 $   settings_api_regeionaldetails_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.settings_api_regeionaldetails_id_seq', 13, true);
          public          postgres    false    311            �           0    0    settings_api_resource_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.settings_api_resource_id_seq', 11, true);
          public          postgres    false    321            �           0    0    settings_api_role_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.settings_api_role_id_seq', 3, true);
          public          postgres    false    323            �           0    0 *   settings_api_standardshippingmethod_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.settings_api_standardshippingmethod_id_seq', 38, true);
          public          postgres    false    282            �           0    0 -   settings_api_storepickupshippingmethod_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.settings_api_storepickupshippingmethod_id_seq', 1, true);
          public          postgres    false    284            �           0    0    settings_api_taxrate_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.settings_api_taxrate_id_seq', 2, true);
          public          postgres    false    286            �           0    0    superadmin_api_adminuser_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.superadmin_api_adminuser_id_seq', 1, false);
          public          postgres    false    301            �           0    0    user_auth_user_groups_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.user_auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            �           0    0    user_auth_user_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.user_auth_user_id_seq', 27, true);
          public          postgres    false    210            �           0    0 &   user_auth_user_user_permissions_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.user_auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            J           2606    28747 0   app_api_facebookpixel app_api_facebookpixel_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.app_api_facebookpixel
    ADD CONSTRAINT app_api_facebookpixel_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.app_api_facebookpixel DROP CONSTRAINT app_api_facebookpixel_pkey;
       public            postgres    false    235            L           2606    28758 &   app_api_googlead app_api_googlead_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.app_api_googlead
    ADD CONSTRAINT app_api_googlead_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.app_api_googlead DROP CONSTRAINT app_api_googlead_pkey;
       public            postgres    false    237            N           2606    28769 2   app_api_googleanalytic app_api_googleanalytic_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.app_api_googleanalytic
    ADD CONSTRAINT app_api_googleanalytic_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.app_api_googleanalytic DROP CONSTRAINT app_api_googleanalytic_pkey;
       public            postgres    false    239            P           2606    28780 &   app_api_livechat app_api_livechat_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.app_api_livechat
    ADD CONSTRAINT app_api_livechat_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.app_api_livechat DROP CONSTRAINT app_api_livechat_pkey;
       public            postgres    false    241            R           2606    28788    app_api_news app_api_news_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.app_api_news
    ADD CONSTRAINT app_api_news_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.app_api_news DROP CONSTRAINT app_api_news_pkey;
       public            postgres    false    243            T           2606    28799 F   app_api_orderplacedfacebookpixel app_api_orderplacedfacebookpixel_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.app_api_orderplacedfacebookpixel
    ADD CONSTRAINT app_api_orderplacedfacebookpixel_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.app_api_orderplacedfacebookpixel DROP CONSTRAINT app_api_orderplacedfacebookpixel_pkey;
       public            postgres    false    245            V           2606    28807     app_api_popup app_api_popup_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.app_api_popup
    ADD CONSTRAINT app_api_popup_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.app_api_popup DROP CONSTRAINT app_api_popup_pkey;
       public            postgres    false    247            Y           2606    28818 ,   app_api_promocode app_api_promocode_code_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.app_api_promocode
    ADD CONSTRAINT app_api_promocode_code_key UNIQUE (code);
 V   ALTER TABLE ONLY public.app_api_promocode DROP CONSTRAINT app_api_promocode_code_key;
       public            postgres    false    249            �           2606    53143 \   app_api_promocode_collection app_api_promocode_collec_promocode_id_productcate_f48f1582_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_collection
    ADD CONSTRAINT app_api_promocode_collec_promocode_id_productcate_f48f1582_uniq UNIQUE (promocode_id, productcategory_id);
 �   ALTER TABLE ONLY public.app_api_promocode_collection DROP CONSTRAINT app_api_promocode_collec_promocode_id_productcate_f48f1582_uniq;
       public            postgres    false    314    314            �           2606    53133 >   app_api_promocode_collection app_api_promocode_collection_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.app_api_promocode_collection
    ADD CONSTRAINT app_api_promocode_collection_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.app_api_promocode_collection DROP CONSTRAINT app_api_promocode_collection_pkey;
       public            postgres    false    314            [           2606    28816 (   app_api_promocode app_api_promocode_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.app_api_promocode
    ADD CONSTRAINT app_api_promocode_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.app_api_promocode DROP CONSTRAINT app_api_promocode_pkey;
       public            postgres    false    249            �           2606    53141 8   app_api_promocode_product app_api_promocode_product_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.app_api_promocode_product
    ADD CONSTRAINT app_api_promocode_product_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.app_api_promocode_product DROP CONSTRAINT app_api_promocode_product_pkey;
       public            postgres    false    316            �           2606    53157 Y   app_api_promocode_product app_api_promocode_product_promocode_id_product_id_7915f41d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_product
    ADD CONSTRAINT app_api_promocode_product_promocode_id_product_id_7915f41d_uniq UNIQUE (promocode_id, product_id);
 �   ALTER TABLE ONLY public.app_api_promocode_product DROP CONSTRAINT app_api_promocode_product_promocode_id_product_id_7915f41d_uniq;
       public            postgres    false    316    316                       2606    28523    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207                       2606    28509 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209                       2606    28498 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            	           2606    28488    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207                       2606    28500 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205                       2606    28480 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ]           2606    28874 ,   company_api_aboutus company_api_aboutus_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.company_api_aboutus
    ADD CONSTRAINT company_api_aboutus_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.company_api_aboutus DROP CONSTRAINT company_api_aboutus_pkey;
       public            postgres    false    251            _           2606    28885 8   company_api_companypolicy company_api_companypolicy_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.company_api_companypolicy
    ADD CONSTRAINT company_api_companypolicy_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.company_api_companypolicy DROP CONSTRAINT company_api_companypolicy_pkey;
       public            postgres    false    253            a           2606    28896 $   company_api_faq company_api_faq_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.company_api_faq
    ADD CONSTRAINT company_api_faq_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.company_api_faq DROP CONSTRAINT company_api_faq_pkey;
       public            postgres    false    255            c           2606    28904 6   company_api_metaproperty company_api_metaproperty_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.company_api_metaproperty
    ADD CONSTRAINT company_api_metaproperty_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.company_api_metaproperty DROP CONSTRAINT company_api_metaproperty_pkey;
       public            postgres    false    257            e           2606    28915 &   company_api_news company_api_news_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_api_news
    ADD CONSTRAINT company_api_news_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_api_news DROP CONSTRAINT company_api_news_pkey;
       public            postgres    false    259            h           2606    28917 *   company_api_news company_api_news_slug_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.company_api_news
    ADD CONSTRAINT company_api_news_slug_key UNIQUE (slug);
 T   ALTER TABLE ONLY public.company_api_news DROP CONSTRAINT company_api_news_slug_key;
       public            postgres    false    259            j           2606    28928 :   company_api_termscondition company_api_termscondition_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.company_api_termscondition
    ADD CONSTRAINT company_api_termscondition_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.company_api_termscondition DROP CONSTRAINT company_api_termscondition_pkey;
       public            postgres    false    261            m           2606    28930 >   company_api_termscondition company_api_termscondition_slug_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.company_api_termscondition
    ADD CONSTRAINT company_api_termscondition_slug_key UNIQUE (slug);
 h   ALTER TABLE ONLY public.company_api_termscondition DROP CONSTRAINT company_api_termscondition_slug_key;
       public            postgres    false    261            �           2606    29163 D   customer_order_api_notification customer_order_api_notification_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_notification
    ADD CONSTRAINT customer_order_api_notification_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.customer_order_api_notification DROP CONSTRAINT customer_order_api_notification_pkey;
       public            postgres    false    291            �           2606    29174 6   customer_order_api_order customer_order_api_order_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_order_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_order_pkey;
       public            postgres    false    293            �           2606    29185 >   customer_order_api_orderitem customer_order_api_orderitem_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_orderitem_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_orderitem_pkey;
       public            postgres    false    295            �           2606    44969 B   customer_order_api_pathaotoken customer_order_api_pathaotoken_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_pathaotoken
    ADD CONSTRAINT customer_order_api_pathaotoken_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.customer_order_api_pathaotoken DROP CONSTRAINT customer_order_api_pathaotoken_pkey;
       public            postgres    false    310            �           2606    29206 N   customer_order_api_transferorder customer_order_api_transferorder_order_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_transferorder_order_id_key UNIQUE (order_id);
 x   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_transferorder_order_id_key;
       public            postgres    false    297            �           2606    29204 F   customer_order_api_transferorder customer_order_api_transferorder_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_transferorder_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_transferorder_pkey;
       public            postgres    false    297            �           2606    28976 >   customer_profile_api_address customer_profile_api_address_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.customer_profile_api_address
    ADD CONSTRAINT customer_profile_api_address_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.customer_profile_api_address DROP CONSTRAINT customer_profile_api_address_pkey;
       public            postgres    false    269            {           2606    28985 k   customer_profile_api_customergroup_customer customer_profile_api_cus_customergroup_id_custome_48a03e56_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_cus_customergroup_id_custome_48a03e56_uniq UNIQUE (customergroup_id, customerprofile_id);
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_cus_customergroup_id_custome_48a03e56_uniq;
       public            postgres    false    267    267                       2606    28965 \   customer_profile_api_customergroup_customer customer_profile_api_customergroup_customer_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_customergroup_customer_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_customergroup_customer_pkey;
       public            postgres    false    267            y           2606    28957 J   customer_profile_api_customergroup customer_profile_api_customergroup_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customergroup
    ADD CONSTRAINT customer_profile_api_customergroup_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.customer_profile_api_customergroup DROP CONSTRAINT customer_profile_api_customergroup_pkey;
       public            postgres    false    265            p           2606    28945 S   customer_profile_api_customerprofile customer_profile_api_customerprofile_email_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_email_key UNIQUE (email);
 }   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_email_key;
       public            postgres    false    263            r           2606    28943 N   customer_profile_api_customerprofile customer_profile_api_customerprofile_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_pkey;
       public            postgres    false    263            t           2606    28949 U   customer_profile_api_customerprofile customer_profile_api_customerprofile_user_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_user_id_key UNIQUE (user_id);
    ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_user_id_key;
       public            postgres    false    263            w           2606    28947 V   customer_profile_api_customerprofile customer_profile_api_customerprofile_username_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_customerprofile_username_key UNIQUE (username);
 �   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_customerprofile_username_key;
       public            postgres    false    263            #           2606    28594 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    28472 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    28470 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    28462 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    29421 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    300            &           2606    28617 ,   inventory_api_brand inventory_api_brand_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.inventory_api_brand
    ADD CONSTRAINT inventory_api_brand_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.inventory_api_brand DROP CONSTRAINT inventory_api_brand_pkey;
       public            postgres    false    219            )           2606    28619 0   inventory_api_brand inventory_api_brand_slug_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.inventory_api_brand
    ADD CONSTRAINT inventory_api_brand_slug_key UNIQUE (slug);
 Z   ALTER TABLE ONLY public.inventory_api_brand DROP CONSTRAINT inventory_api_brand_slug_key;
       public            postgres    false    219            ,           2606    28638 @   inventory_api_customermessage inventory_api_customermessage_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.inventory_api_customermessage
    ADD CONSTRAINT inventory_api_customermessage_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.inventory_api_customermessage DROP CONSTRAINT inventory_api_customermessage_pkey;
       public            postgres    false    221            �           2606    29392 n   inventory_api_inventory_transfer_transfer_item inventory_api_inventory__inventory_transfer_id_pr_6b838323_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_inventory__inventory_transfer_id_pr_6b838323_uniq UNIQUE (inventory_transfer_id, productsizevariant_id);
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_inventory__inventory_transfer_id_pr_6b838323_uniq;
       public            postgres    false    299    299            .           2606    28649 F   inventory_api_inventory_location inventory_api_inventory_location_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_location
    ADD CONSTRAINT inventory_api_inventory_location_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.inventory_api_inventory_location DROP CONSTRAINT inventory_api_inventory_location_pkey;
       public            postgres    false    223            1           2606    28659 O   inventory_api_inventory_transfer inventory_api_inventory_transfer_TO_number_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT "inventory_api_inventory_transfer_TO_number_key" UNIQUE ("TO_number");
 {   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT "inventory_api_inventory_transfer_TO_number_key";
       public            postgres    false    225            4           2606    28657 F   inventory_api_inventory_transfer inventory_api_inventory_transfer_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT inventory_api_inventory_transfer_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT inventory_api_inventory_transfer_pkey;
       public            postgres    false    225            �           2606    29364 b   inventory_api_inventory_transfer_transfer_item inventory_api_inventory_transfer_transfer_item_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_inventory_transfer_transfer_item_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_inventory_transfer_transfer_item_pkey;
       public            postgres    false    299            9           2606    28670 0   inventory_api_product inventory_api_product_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_product_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_product_pkey;
       public            postgres    false    227            <           2606    28672 4   inventory_api_product inventory_api_product_slug_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_product_slug_key UNIQUE (slug);
 ^   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_product_slug_key;
       public            postgres    false    227            ?           2606    28683 @   inventory_api_productcategory inventory_api_productcategory_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.inventory_api_productcategory
    ADD CONSTRAINT inventory_api_productcategory_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.inventory_api_productcategory DROP CONSTRAINT inventory_api_productcategory_pkey;
       public            postgres    false    229            B           2606    28685 D   inventory_api_productcategory inventory_api_productcategory_slug_key 
   CONSTRAINT        ALTER TABLE ONLY public.inventory_api_productcategory
    ADD CONSTRAINT inventory_api_productcategory_slug_key UNIQUE (slug);
 n   ALTER TABLE ONLY public.inventory_api_productcategory DROP CONSTRAINT inventory_api_productcategory_slug_key;
       public            postgres    false    229            �           2606    36657 B   inventory_api_productpurchased inventory_api_productpurchased_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchased
    ADD CONSTRAINT inventory_api_productpurchased_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.inventory_api_productpurchased DROP CONSTRAINT inventory_api_productpurchased_pkey;
       public            postgres    false    304            �           2606    36665 J   inventory_api_productpurchaseditem inventory_api_productpurchaseditem_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_productpurchaseditem_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_productpurchaseditem_pkey;
       public            postgres    false    306            �           2606    36734 P   inventory_api_productpurchasedpayment inventory_api_productpurchasedpayment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment
    ADD CONSTRAINT inventory_api_productpurchasedpayment_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment DROP CONSTRAINT inventory_api_productpurchasedpayment_pkey;
       public            postgres    false    308            D           2606    28718 F   inventory_api_productsizevariant inventory_api_productsizevariant_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productsizevariant
    ADD CONSTRAINT inventory_api_productsizevariant_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.inventory_api_productsizevariant DROP CONSTRAINT inventory_api_productsizevariant_pkey;
       public            postgres    false    231            G           2606    28729 2   inventory_api_supplier inventory_api_supplier_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.inventory_api_supplier
    ADD CONSTRAINT inventory_api_supplier_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.inventory_api_supplier DROP CONSTRAINT inventory_api_supplier_pkey;
       public            postgres    false    233            �           2606    29014 "   pos_api_outlet pos_api_outlet_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_pkey;
       public            postgres    false    271            �           2606    29016 &   pos_api_outlet pos_api_outlet_slug_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_slug_key UNIQUE (slug);
 P   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_slug_key;
       public            postgres    false    271            �           2606    29024 &   pos_api_register pos_api_register_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_pkey;
       public            postgres    false    273            �           2606    29060 J   settings_api_checkoutfieldsettings settings_api_checkoutfieldsettings_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_checkoutfieldsettings
    ADD CONSTRAINT settings_api_checkoutfieldsettings_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.settings_api_checkoutfieldsettings DROP CONSTRAINT settings_api_checkoutfieldsettings_pkey;
       public            postgres    false    275            �           2606    29068 >   settings_api_checkoutsetting settings_api_checkoutsetting_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.settings_api_checkoutsetting
    ADD CONSTRAINT settings_api_checkoutsetting_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.settings_api_checkoutsetting DROP CONSTRAINT settings_api_checkoutsetting_pkey;
       public            postgres    false    277            �           2606    53379 b   settings_api_customuser_operations settings_api_customuser__customuser_id_operation__cdc10257_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_operations
    ADD CONSTRAINT settings_api_customuser__customuser_id_operation__cdc10257_uniq UNIQUE (customuser_id, operation_id);
 �   ALTER TABLE ONLY public.settings_api_customuser_operations DROP CONSTRAINT settings_api_customuser__customuser_id_operation__cdc10257_uniq;
       public            postgres    false    330    330            �           2606    53393 ]   settings_api_customuser_outlet settings_api_customuser__customuser_id_outlet_id_a6e17684_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_outlet
    ADD CONSTRAINT settings_api_customuser__customuser_id_outlet_id_a6e17684_uniq UNIQUE (customuser_id, outlet_id);
 �   ALTER TABLE ONLY public.settings_api_customuser_outlet DROP CONSTRAINT settings_api_customuser__customuser_id_outlet_id_a6e17684_uniq;
       public            postgres    false    332    332                       2606    53407 Z   settings_api_customuser_roles settings_api_customuser__customuser_id_role_id_c2605b78_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_roles
    ADD CONSTRAINT settings_api_customuser__customuser_id_role_id_c2605b78_uniq UNIQUE (customuser_id, role_id);
 �   ALTER TABLE ONLY public.settings_api_customuser_roles DROP CONSTRAINT settings_api_customuser__customuser_id_role_id_c2605b78_uniq;
       public            postgres    false    334    334            �           2606    53336 J   settings_api_customuser_operations settings_api_customuser_operations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_operations
    ADD CONSTRAINT settings_api_customuser_operations_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.settings_api_customuser_operations DROP CONSTRAINT settings_api_customuser_operations_pkey;
       public            postgres    false    330            �           2606    53344 B   settings_api_customuser_outlet settings_api_customuser_outlet_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_outlet
    ADD CONSTRAINT settings_api_customuser_outlet_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.settings_api_customuser_outlet DROP CONSTRAINT settings_api_customuser_outlet_pkey;
       public            postgres    false    332            �           2606    53328 4   settings_api_customuser settings_api_customuser_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.settings_api_customuser
    ADD CONSTRAINT settings_api_customuser_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.settings_api_customuser DROP CONSTRAINT settings_api_customuser_pkey;
       public            postgres    false    328                       2606    53352 @   settings_api_customuser_roles settings_api_customuser_roles_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.settings_api_customuser_roles
    ADD CONSTRAINT settings_api_customuser_roles_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.settings_api_customuser_roles DROP CONSTRAINT settings_api_customuser_roles_pkey;
       public            postgres    false    334            �           2606    29125 8   settings_api_deliveryarea settings_api_deliveryarea_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.settings_api_deliveryarea
    ADD CONSTRAINT settings_api_deliveryarea_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.settings_api_deliveryarea DROP CONSTRAINT settings_api_deliveryarea_pkey;
       public            postgres    false    289            �           2606    29079 D   settings_api_freeshippingmethod settings_api_freeshippingmethod_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_freeshippingmethod
    ADD CONSTRAINT settings_api_freeshippingmethod_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.settings_api_freeshippingmethod DROP CONSTRAINT settings_api_freeshippingmethod_pkey;
       public            postgres    false    279            �           2606    29090 <   settings_api_generalsetting settings_api_generalsetting_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.settings_api_generalsetting
    ADD CONSTRAINT settings_api_generalsetting_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.settings_api_generalsetting DROP CONSTRAINT settings_api_generalsetting_pkey;
       public            postgres    false    281            �           2606    53277 2   settings_api_operation settings_api_operation_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.settings_api_operation
    ADD CONSTRAINT settings_api_operation_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.settings_api_operation DROP CONSTRAINT settings_api_operation_pkey;
       public            postgres    false    318            �           2606    53288 :   settings_api_paymentmethod settings_api_paymentmethod_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.settings_api_paymentmethod
    ADD CONSTRAINT settings_api_paymentmethod_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.settings_api_paymentmethod DROP CONSTRAINT settings_api_paymentmethod_pkey;
       public            postgres    false    320            �           2606    53315 <   settings_api_permissionrole settings_api_permissionrole_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.settings_api_permissionrole
    ADD CONSTRAINT settings_api_permissionrole_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.settings_api_permissionrole DROP CONSTRAINT settings_api_permissionrole_pkey;
       public            postgres    false    326            �           2606    44981 @   settings_api_regeionaldetails settings_api_regeionaldetails_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.settings_api_regeionaldetails
    ADD CONSTRAINT settings_api_regeionaldetails_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.settings_api_regeionaldetails DROP CONSTRAINT settings_api_regeionaldetails_pkey;
       public            postgres    false    312            �           2606    53299 0   settings_api_resource settings_api_resource_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.settings_api_resource
    ADD CONSTRAINT settings_api_resource_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.settings_api_resource DROP CONSTRAINT settings_api_resource_pkey;
       public            postgres    false    322            �           2606    53307 (   settings_api_role settings_api_role_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.settings_api_role
    ADD CONSTRAINT settings_api_role_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.settings_api_role DROP CONSTRAINT settings_api_role_pkey;
       public            postgres    false    324            �           2606    29098 L   settings_api_standardshippingmethod settings_api_standardshippingmethod_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_standardshippingmethod
    ADD CONSTRAINT settings_api_standardshippingmethod_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.settings_api_standardshippingmethod DROP CONSTRAINT settings_api_standardshippingmethod_pkey;
       public            postgres    false    283            �           2606    29106 R   settings_api_storepickupshippingmethod settings_api_storepickupshippingmethod_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_storepickupshippingmethod
    ADD CONSTRAINT settings_api_storepickupshippingmethod_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.settings_api_storepickupshippingmethod DROP CONSTRAINT settings_api_storepickupshippingmethod_pkey;
       public            postgres    false    285            �           2606    29114 .   settings_api_taxrate settings_api_taxrate_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.settings_api_taxrate
    ADD CONSTRAINT settings_api_taxrate_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.settings_api_taxrate DROP CONSTRAINT settings_api_taxrate_pkey;
       public            postgres    false    287            �           2606    29434 6   superadmin_api_adminuser superadmin_api_adminuser_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.superadmin_api_adminuser
    ADD CONSTRAINT superadmin_api_adminuser_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.superadmin_api_adminuser DROP CONSTRAINT superadmin_api_adminuser_pkey;
       public            postgres    false    302                       2606    28545 0   user_auth_user_groups user_auth_user_groups_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_pkey;
       public            postgres    false    213                       2606    28556 J   user_auth_user_groups user_auth_user_groups_user_id_group_id_6887c85a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_user_id_group_id_6887c85a_uniq UNIQUE (user_id, group_id);
 t   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_user_id_group_id_6887c85a_uniq;
       public            postgres    false    213    213                       2606    28535 "   user_auth_user user_auth_user_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.user_auth_user
    ADD CONSTRAINT user_auth_user_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.user_auth_user DROP CONSTRAINT user_auth_user_pkey;
       public            postgres    false    211                       2606    28570 \   user_auth_user_user_permissions user_auth_user_user_perm_user_id_permission_id_4df7833e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user_perm_user_id_permission_id_4df7833e_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user_perm_user_id_permission_id_4df7833e_uniq;
       public            postgres    false    215    215                       2606    28553 D   user_auth_user_user_permissions user_auth_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user_permissions_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user_permissions_pkey;
       public            postgres    false    215                       2606    28537 *   user_auth_user user_auth_user_username_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.user_auth_user
    ADD CONSTRAINT user_auth_user_username_key UNIQUE (username);
 T   ALTER TABLE ONLY public.user_auth_user DROP CONSTRAINT user_auth_user_username_key;
       public            postgres    false    211            W           1259    28819 $   app_api_promocode_code_a87ba6c3_like    INDEX     v   CREATE INDEX app_api_promocode_code_a87ba6c3_like ON public.app_api_promocode USING btree (code varchar_pattern_ops);
 8   DROP INDEX public.app_api_promocode_code_a87ba6c3_like;
       public            postgres    false    249            �           1259    53155 8   app_api_promocode_collection_productcategory_id_1e198169    INDEX     �   CREATE INDEX app_api_promocode_collection_productcategory_id_1e198169 ON public.app_api_promocode_collection USING btree (productcategory_id);
 L   DROP INDEX public.app_api_promocode_collection_productcategory_id_1e198169;
       public            postgres    false    314            �           1259    53154 2   app_api_promocode_collection_promocode_id_72d72f65    INDEX     �   CREATE INDEX app_api_promocode_collection_promocode_id_72d72f65 ON public.app_api_promocode_collection USING btree (promocode_id);
 F   DROP INDEX public.app_api_promocode_collection_promocode_id_72d72f65;
       public            postgres    false    314            �           1259    53169 -   app_api_promocode_product_product_id_67b435ea    INDEX     y   CREATE INDEX app_api_promocode_product_product_id_67b435ea ON public.app_api_promocode_product USING btree (product_id);
 A   DROP INDEX public.app_api_promocode_product_product_id_67b435ea;
       public            postgres    false    316            �           1259    53168 /   app_api_promocode_product_promocode_id_fb9e6883    INDEX     }   CREATE INDEX app_api_promocode_product_promocode_id_fb9e6883 ON public.app_api_promocode_product USING btree (promocode_id);
 C   DROP INDEX public.app_api_promocode_product_promocode_id_fb9e6883;
       public            postgres    false    316                       1259    28524    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            
           1259    28520 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209                       1259    28521 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209                        1259    28506 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            f           1259    28931 #   company_api_news_slug_e3340262_like    INDEX     t   CREATE INDEX company_api_news_slug_e3340262_like ON public.company_api_news USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.company_api_news_slug_e3340262_like;
       public            postgres    false    259            k           1259    28932 -   company_api_termscondition_slug_7af59f12_like    INDEX     �   CREATE INDEX company_api_termscondition_slug_7af59f12_like ON public.company_api_termscondition USING btree (slug varchar_pattern_ops);
 A   DROP INDEX public.company_api_termscondition_slug_7af59f12_like;
       public            postgres    false    261            �           1259    29300 5   customer_order_api_notification_user_from_id_13ad845e    INDEX     �   CREATE INDEX customer_order_api_notification_user_from_id_13ad845e ON public.customer_order_api_notification USING btree (user_from_id);
 I   DROP INDEX public.customer_order_api_notification_user_from_id_13ad845e;
       public            postgres    false    291            �           1259    29301 3   customer_order_api_notification_user_to_id_70196d07    INDEX     �   CREATE INDEX customer_order_api_notification_user_to_id_70196d07 ON public.customer_order_api_notification USING btree (user_to_id);
 G   DROP INDEX public.customer_order_api_notification_user_to_id_70196d07;
       public            postgres    false    291            �           1259    29292 -   customer_order_api_order_customer_id_63ce65df    INDEX     y   CREATE INDEX customer_order_api_order_customer_id_63ce65df ON public.customer_order_api_order USING btree (customer_id);
 A   DROP INDEX public.customer_order_api_order_customer_id_63ce65df;
       public            postgres    false    293            �           1259    29293 5   customer_order_api_order_delivery_address_id_caf12fc3    INDEX     �   CREATE INDEX customer_order_api_order_delivery_address_id_caf12fc3 ON public.customer_order_api_order USING btree (delivery_address_id);
 I   DROP INDEX public.customer_order_api_order_delivery_address_id_caf12fc3;
       public            postgres    false    293            �           1259    29294 2   customer_order_api_order_delivery_area_id_e1c48ff8    INDEX     �   CREATE INDEX customer_order_api_order_delivery_area_id_e1c48ff8 ON public.customer_order_api_order USING btree (delivery_area_id);
 F   DROP INDEX public.customer_order_api_order_delivery_area_id_e1c48ff8;
       public            postgres    false    293            �           1259    29295 +   customer_order_api_order_outlet_id_5bda43f3    INDEX     u   CREATE INDEX customer_order_api_order_outlet_id_5bda43f3 ON public.customer_order_api_order USING btree (outlet_id);
 ?   DROP INDEX public.customer_order_api_order_outlet_id_5bda43f3;
       public            postgres    false    293            �           1259    29297 /   customer_order_api_order_promo_code_id_2fbc7ba3    INDEX     }   CREATE INDEX customer_order_api_order_promo_code_id_2fbc7ba3 ON public.customer_order_api_order USING btree (promo_code_id);
 C   DROP INDEX public.customer_order_api_order_promo_code_id_2fbc7ba3;
       public            postgres    false    293            �           1259    29298 -   customer_order_api_order_register_id_8221cf57    INDEX     y   CREATE INDEX customer_order_api_order_register_id_8221cf57 ON public.customer_order_api_order USING btree (register_id);
 A   DROP INDEX public.customer_order_api_order_register_id_8221cf57;
       public            postgres    false    293            �           1259    29299 -   customer_order_api_order_supplier_id_54364318    INDEX     y   CREATE INDEX customer_order_api_order_supplier_id_54364318 ON public.customer_order_api_order USING btree (supplier_id);
 A   DROP INDEX public.customer_order_api_order_supplier_id_54364318;
       public            postgres    false    293            �           1259    29289 .   customer_order_api_orderitem_order_id_5691a1fa    INDEX     {   CREATE INDEX customer_order_api_orderitem_order_id_5691a1fa ON public.customer_order_api_orderitem USING btree (order_id);
 B   DROP INDEX public.customer_order_api_orderitem_order_id_5691a1fa;
       public            postgres    false    295            �           1259    29290 0   customer_order_api_orderitem_product_id_44ffc334    INDEX        CREATE INDEX customer_order_api_orderitem_product_id_44ffc334 ON public.customer_order_api_orderitem USING btree (product_id);
 D   DROP INDEX public.customer_order_api_orderitem_product_id_44ffc334;
       public            postgres    false    295            �           1259    29291 -   customer_order_api_orderitem_size_id_d99d89ee    INDEX     y   CREATE INDEX customer_order_api_orderitem_size_id_d99d89ee ON public.customer_order_api_orderitem USING btree (size_id);
 A   DROP INDEX public.customer_order_api_orderitem_size_id_d99d89ee;
       public            postgres    false    295            �           1259    29287 7   customer_order_api_transferorder_order_from_id_9d61289c    INDEX     �   CREATE INDEX customer_order_api_transferorder_order_from_id_9d61289c ON public.customer_order_api_transferorder USING btree (order_from_id);
 K   DROP INDEX public.customer_order_api_transferorder_order_from_id_9d61289c;
       public            postgres    false    297            �           1259    29288 5   customer_order_api_transferorder_order_to_id_0c74a8df    INDEX     �   CREATE INDEX customer_order_api_transferorder_order_to_id_0c74a8df ON public.customer_order_api_transferorder USING btree (order_to_id);
 I   DROP INDEX public.customer_order_api_transferorder_order_to_id_0c74a8df;
       public            postgres    false    297            �           1259    29003 1   customer_profile_api_address_customer_id_045d07fa    INDEX     �   CREATE INDEX customer_profile_api_address_customer_id_045d07fa ON public.customer_profile_api_address USING btree (customer_id);
 E   DROP INDEX public.customer_profile_api_address_customer_id_045d07fa;
       public            postgres    false    269            |           1259    28996 4   customer_profile_api_custo_customergroup_id_c981a60c    INDEX     �   CREATE INDEX customer_profile_api_custo_customergroup_id_c981a60c ON public.customer_profile_api_customergroup_customer USING btree (customergroup_id);
 H   DROP INDEX public.customer_profile_api_custo_customergroup_id_c981a60c;
       public            postgres    false    267            }           1259    28997 6   customer_profile_api_custo_customerprofile_id_ecfc1af3    INDEX     �   CREATE INDEX customer_profile_api_custo_customerprofile_id_ecfc1af3 ON public.customer_profile_api_customergroup_customer USING btree (customerprofile_id);
 J   DROP INDEX public.customer_profile_api_custo_customerprofile_id_ecfc1af3;
       public            postgres    false    267            n           1259    28982 8   customer_profile_api_customerprofile_email_c360b31c_like    INDEX     �   CREATE INDEX customer_profile_api_customerprofile_email_c360b31c_like ON public.customer_profile_api_customerprofile USING btree (email varchar_pattern_ops);
 L   DROP INDEX public.customer_profile_api_customerprofile_email_c360b31c_like;
       public            postgres    false    263            u           1259    28983 ;   customer_profile_api_customerprofile_username_fa6dc1f9_like    INDEX     �   CREATE INDEX customer_profile_api_customerprofile_username_fa6dc1f9_like ON public.customer_profile_api_customerprofile USING btree (username varchar_pattern_ops);
 O   DROP INDEX public.customer_profile_api_customerprofile_username_fa6dc1f9_like;
       public            postgres    false    263            !           1259    28605 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            $           1259    28606 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            �           1259    29423 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    300            �           1259    29422 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    300            '           1259    28730 &   inventory_api_brand_slug_5fda00de_like    INDEX     z   CREATE INDEX inventory_api_brand_slug_5fda00de_like ON public.inventory_api_brand USING btree (slug varchar_pattern_ops);
 :   DROP INDEX public.inventory_api_brand_slug_5fda00de_like;
       public            postgres    false    219            *           1259    29405 .   inventory_api_customermessage_name_id_ee946ae7    INDEX     {   CREATE INDEX inventory_api_customermessage_name_id_ee946ae7 ON public.inventory_api_customermessage USING btree (name_id);
 B   DROP INDEX public.inventory_api_customermessage_name_id_ee946ae7;
       public            postgres    false    221            �           1259    29403 9   inventory_api_inventory_tr_inventory_transfer_id_11ca4d6e    INDEX     �   CREATE INDEX inventory_api_inventory_tr_inventory_transfer_id_11ca4d6e ON public.inventory_api_inventory_transfer_transfer_item USING btree (inventory_transfer_id);
 M   DROP INDEX public.inventory_api_inventory_tr_inventory_transfer_id_11ca4d6e;
       public            postgres    false    299            �           1259    29404 9   inventory_api_inventory_tr_productsizevariant_id_43e8a202    INDEX     �   CREATE INDEX inventory_api_inventory_tr_productsizevariant_id_43e8a202 ON public.inventory_api_inventory_transfer_transfer_item USING btree (productsizevariant_id);
 M   DROP INDEX public.inventory_api_inventory_tr_productsizevariant_id_43e8a202;
       public            postgres    false    299            /           1259    28731 8   inventory_api_inventory_transfer_TO_number_7ba20f92_like    INDEX     �   CREATE INDEX "inventory_api_inventory_transfer_TO_number_7ba20f92_like" ON public.inventory_api_inventory_transfer USING btree ("TO_number" varchar_pattern_ops);
 N   DROP INDEX public."inventory_api_inventory_transfer_TO_number_7ba20f92_like";
       public            postgres    false    225            2           1259    29389 ;   inventory_api_inventory_transfer_from_inventory_id_83b618f2    INDEX     �   CREATE INDEX inventory_api_inventory_transfer_from_inventory_id_83b618f2 ON public.inventory_api_inventory_transfer USING btree (from_inventory_id);
 O   DROP INDEX public.inventory_api_inventory_transfer_from_inventory_id_83b618f2;
       public            postgres    false    225            5           1259    29390 9   inventory_api_inventory_transfer_to_inventory_id_e474aaf6    INDEX     �   CREATE INDEX inventory_api_inventory_transfer_to_inventory_id_e474aaf6 ON public.inventory_api_inventory_transfer USING btree (to_inventory_id);
 M   DROP INDEX public.inventory_api_inventory_transfer_to_inventory_id_e474aaf6;
       public            postgres    false    225            6           1259    29386 '   inventory_api_product_brand_id_ecf01728    INDEX     m   CREATE INDEX inventory_api_product_brand_id_ecf01728 ON public.inventory_api_product USING btree (brand_id);
 ;   DROP INDEX public.inventory_api_product_brand_id_ecf01728;
       public            postgres    false    227            7           1259    29387 *   inventory_api_product_category_id_97d8fd58    INDEX     s   CREATE INDEX inventory_api_product_category_id_97d8fd58 ON public.inventory_api_product USING btree (category_id);
 >   DROP INDEX public.inventory_api_product_category_id_97d8fd58;
       public            postgres    false    227            :           1259    28732 (   inventory_api_product_slug_f995538e_like    INDEX     ~   CREATE INDEX inventory_api_product_slug_f995538e_like ON public.inventory_api_product USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.inventory_api_product_slug_f995538e_like;
       public            postgres    false    227            =           1259    29388 %   inventory_api_product_tax_id_7a84feb6    INDEX     i   CREATE INDEX inventory_api_product_tax_id_7a84feb6 ON public.inventory_api_product USING btree (tax_id);
 9   DROP INDEX public.inventory_api_product_tax_id_7a84feb6;
       public            postgres    false    227            @           1259    28733 0   inventory_api_productcategory_slug_124b8bbd_like    INDEX     �   CREATE INDEX inventory_api_productcategory_slug_124b8bbd_like ON public.inventory_api_productcategory USING btree (slug varchar_pattern_ops);
 D   DROP INDEX public.inventory_api_productcategory_slug_124b8bbd_like;
       public            postgres    false    229            �           1259    36697 9   inventory_api_productpurch_inventory_location_id_5b3c6e6c    INDEX     �   CREATE INDEX inventory_api_productpurch_inventory_location_id_5b3c6e6c ON public.inventory_api_productpurchaseditem USING btree (inventory_location_id);
 M   DROP INDEX public.inventory_api_productpurch_inventory_location_id_5b3c6e6c;
       public            postgres    false    306            �           1259    36699 8   inventory_api_productpurch_purchased_product_id_82894f09    INDEX     �   CREATE INDEX inventory_api_productpurch_purchased_product_id_82894f09 ON public.inventory_api_productpurchaseditem USING btree (purchased_product_id);
 L   DROP INDEX public.inventory_api_productpurch_purchased_product_id_82894f09;
       public            postgres    false    306            �           1259    36671 3   inventory_api_productpurchased_supplier_id_9710dd25    INDEX     �   CREATE INDEX inventory_api_productpurchased_supplier_id_9710dd25 ON public.inventory_api_productpurchased USING btree (supplier_id);
 G   DROP INDEX public.inventory_api_productpurchased_supplier_id_9710dd25;
       public            postgres    false    304            �           1259    36698 <   inventory_api_productpurchaseditem_purchase_item_id_306c1984    INDEX     �   CREATE INDEX inventory_api_productpurchaseditem_purchase_item_id_306c1984 ON public.inventory_api_productpurchaseditem USING btree (purchase_item_id);
 P   DROP INDEX public.inventory_api_productpurchaseditem_purchase_item_id_306c1984;
       public            postgres    false    306            �           1259    36700 =   inventory_api_productpurchaseditem_purchased_size_id_0eae197c    INDEX     �   CREATE INDEX inventory_api_productpurchaseditem_purchased_size_id_0eae197c ON public.inventory_api_productpurchaseditem USING btree (purchased_size_id);
 Q   DROP INDEX public.inventory_api_productpurchaseditem_purchased_size_id_0eae197c;
       public            postgres    false    306            �           1259    36701 2   inventory_api_productpurchaseditem_tax_id_484f1da8    INDEX     �   CREATE INDEX inventory_api_productpurchaseditem_tax_id_484f1da8 ON public.inventory_api_productpurchaseditem USING btree (tax_id);
 F   DROP INDEX public.inventory_api_productpurchaseditem_tax_id_484f1da8;
       public            postgres    false    306            �           1259    36740 ;   inventory_api_productpurchasedpayment_purchased_id_74bbd7b8    INDEX     �   CREATE INDEX inventory_api_productpurchasedpayment_purchased_id_74bbd7b8 ON public.inventory_api_productpurchasedpayment USING btree (purchased_id);
 O   DROP INDEX public.inventory_api_productpurchasedpayment_purchased_id_74bbd7b8;
       public            postgres    false    308            E           1259    29381 4   inventory_api_productsizevariant_product_id_36fc9be0    INDEX     �   CREATE INDEX inventory_api_productsizevariant_product_id_36fc9be0 ON public.inventory_api_productsizevariant USING btree (product_id);
 H   DROP INDEX public.inventory_api_productsizevariant_product_id_36fc9be0;
       public            postgres    false    231            H           1259    29380 &   inventory_api_supplier_tax_id_00acd6a4    INDEX     k   CREATE INDEX inventory_api_supplier_tax_id_00acd6a4 ON public.inventory_api_supplier USING btree (tax_id);
 :   DROP INDEX public.inventory_api_supplier_tax_id_00acd6a4;
       public            postgres    false    233            �           1259    29031 -   pos_api_outlet_inventory_location_id_e6e43042    INDEX     y   CREATE INDEX pos_api_outlet_inventory_location_id_e6e43042 ON public.pos_api_outlet USING btree (inventory_location_id);
 A   DROP INDEX public.pos_api_outlet_inventory_location_id_e6e43042;
       public            postgres    false    271            �           1259    29030 !   pos_api_outlet_slug_05059a9b_like    INDEX     p   CREATE INDEX pos_api_outlet_slug_05059a9b_like ON public.pos_api_outlet USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.pos_api_outlet_slug_05059a9b_like;
       public            postgres    false    271            �           1259    29413    pos_api_outlet_tax_id_c77400bb    INDEX     [   CREATE INDEX pos_api_outlet_tax_id_c77400bb ON public.pos_api_outlet USING btree (tax_id);
 2   DROP INDEX public.pos_api_outlet_tax_id_c77400bb;
       public            postgres    false    271            �           1259    29047 &   pos_api_register_closed_by_id_af4c20bd    INDEX     k   CREATE INDEX pos_api_register_closed_by_id_af4c20bd ON public.pos_api_register USING btree (closed_by_id);
 :   DROP INDEX public.pos_api_register_closed_by_id_af4c20bd;
       public            postgres    false    273            �           1259    29048 &   pos_api_register_opened_by_id_fae461e8    INDEX     k   CREATE INDEX pos_api_register_opened_by_id_fae461e8 ON public.pos_api_register USING btree (opened_by_id);
 :   DROP INDEX public.pos_api_register_opened_by_id_fae461e8;
       public            postgres    false    273            �           1259    29049 #   pos_api_register_outlet_id_cb0a7d9b    INDEX     e   CREATE INDEX pos_api_register_outlet_id_cb0a7d9b ON public.pos_api_register USING btree (outlet_id);
 7   DROP INDEX public.pos_api_register_outlet_id_cb0a7d9b;
       public            postgres    false    273            �           1259    53390 9   settings_api_customuser_operations_customuser_id_58c1944c    INDEX     �   CREATE INDEX settings_api_customuser_operations_customuser_id_58c1944c ON public.settings_api_customuser_operations USING btree (customuser_id);
 M   DROP INDEX public.settings_api_customuser_operations_customuser_id_58c1944c;
       public            postgres    false    330            �           1259    53391 8   settings_api_customuser_operations_operation_id_744043ec    INDEX     �   CREATE INDEX settings_api_customuser_operations_operation_id_744043ec ON public.settings_api_customuser_operations USING btree (operation_id);
 L   DROP INDEX public.settings_api_customuser_operations_operation_id_744043ec;
       public            postgres    false    330            �           1259    53404 5   settings_api_customuser_outlet_customuser_id_8a8a3323    INDEX     �   CREATE INDEX settings_api_customuser_outlet_customuser_id_8a8a3323 ON public.settings_api_customuser_outlet USING btree (customuser_id);
 I   DROP INDEX public.settings_api_customuser_outlet_customuser_id_8a8a3323;
       public            postgres    false    332            �           1259    53405 1   settings_api_customuser_outlet_outlet_id_76e30f7c    INDEX     �   CREATE INDEX settings_api_customuser_outlet_outlet_id_76e30f7c ON public.settings_api_customuser_outlet USING btree (outlet_id);
 E   DROP INDEX public.settings_api_customuser_outlet_outlet_id_76e30f7c;
       public            postgres    false    332                       1259    53418 4   settings_api_customuser_roles_customuser_id_3d8613b7    INDEX     �   CREATE INDEX settings_api_customuser_roles_customuser_id_3d8613b7 ON public.settings_api_customuser_roles USING btree (customuser_id);
 H   DROP INDEX public.settings_api_customuser_roles_customuser_id_3d8613b7;
       public            postgres    false    334                       1259    53419 .   settings_api_customuser_roles_role_id_fc491733    INDEX     {   CREATE INDEX settings_api_customuser_roles_role_id_fc491733 ON public.settings_api_customuser_roles USING btree (role_id);
 B   DROP INDEX public.settings_api_customuser_roles_role_id_fc491733;
       public            postgres    false    334            �           1259    53377 (   settings_api_customuser_user_id_a82ec8b6    INDEX     o   CREATE INDEX settings_api_customuser_user_id_a82ec8b6 ON public.settings_api_customuser USING btree (user_id);
 <   DROP INDEX public.settings_api_customuser_user_id_a82ec8b6;
       public            postgres    false    328            �           1259    29141 5   settings_api_deliveryarea_shipping_method_id_7034b6e0    INDEX     �   CREATE INDEX settings_api_deliveryarea_shipping_method_id_7034b6e0 ON public.settings_api_deliveryarea USING btree (shipping_method_id);
 I   DROP INDEX public.settings_api_deliveryarea_shipping_method_id_7034b6e0;
       public            postgres    false    289            �           1259    53371 +   settings_api_operation_resource_id_083604c3    INDEX     u   CREATE INDEX settings_api_operation_resource_id_083604c3 ON public.settings_api_operation USING btree (resource_id);
 ?   DROP INDEX public.settings_api_operation_resource_id_083604c3;
       public            postgres    false    318            �           1259    53368 1   settings_api_permissionrole_operation_id_55abec82    INDEX     �   CREATE INDEX settings_api_permissionrole_operation_id_55abec82 ON public.settings_api_permissionrole USING btree (operation_id);
 E   DROP INDEX public.settings_api_permissionrole_operation_id_55abec82;
       public            postgres    false    326            �           1259    53369 ,   settings_api_permissionrole_role_id_faf47404    INDEX     w   CREATE INDEX settings_api_permissionrole_role_id_faf47404 ON public.settings_api_permissionrole USING btree (role_id);
 @   DROP INDEX public.settings_api_permissionrole_role_id_faf47404;
       public            postgres    false    326            �           1259    53370 ,   settings_api_permissionrole_user_id_d5316e5e    INDEX     w   CREATE INDEX settings_api_permissionrole_user_id_d5316e5e ON public.settings_api_permissionrole USING btree (user_id);
 @   DROP INDEX public.settings_api_permissionrole_user_id_d5316e5e;
       public            postgres    false    326            �           1259    44987 7   settings_api_regeionaldetails_delivery_area_id_51615c76    INDEX     �   CREATE INDEX settings_api_regeionaldetails_delivery_area_id_51615c76 ON public.settings_api_regeionaldetails USING btree (delivery_area_id);
 K   DROP INDEX public.settings_api_regeionaldetails_delivery_area_id_51615c76;
       public            postgres    false    312            �           1259    29440 )   superadmin_api_adminuser_user_id_7a86dc82    INDEX     q   CREATE INDEX superadmin_api_adminuser_user_id_7a86dc82 ON public.superadmin_api_adminuser USING btree (user_id);
 =   DROP INDEX public.superadmin_api_adminuser_user_id_7a86dc82;
       public            postgres    false    302                       1259    28568 '   user_auth_user_groups_group_id_165f3b9d    INDEX     m   CREATE INDEX user_auth_user_groups_group_id_165f3b9d ON public.user_auth_user_groups USING btree (group_id);
 ;   DROP INDEX public.user_auth_user_groups_group_id_165f3b9d;
       public            postgres    false    213                       1259    28567 &   user_auth_user_groups_user_id_e339ec14    INDEX     k   CREATE INDEX user_auth_user_groups_user_id_e339ec14 ON public.user_auth_user_groups USING btree (user_id);
 :   DROP INDEX public.user_auth_user_groups_user_id_e339ec14;
       public            postgres    false    213                       1259    28582 6   user_auth_user_user_permissions_permission_id_2c602bd2    INDEX     �   CREATE INDEX user_auth_user_user_permissions_permission_id_2c602bd2 ON public.user_auth_user_user_permissions USING btree (permission_id);
 J   DROP INDEX public.user_auth_user_user_permissions_permission_id_2c602bd2;
       public            postgres    false    215                        1259    28581 0   user_auth_user_user_permissions_user_id_31fb400e    INDEX        CREATE INDEX user_auth_user_user_permissions_user_id_31fb400e ON public.user_auth_user_user_permissions USING btree (user_id);
 D   DROP INDEX public.user_auth_user_user_permissions_user_id_31fb400e;
       public            postgres    false    215                       1259    28554 %   user_auth_user_username_59f710c9_like    INDEX     x   CREATE INDEX user_auth_user_username_59f710c9_like ON public.user_auth_user USING btree (username varchar_pattern_ops);
 9   DROP INDEX public.user_auth_user_username_59f710c9_like;
       public            postgres    false    211            ;           2606    53149 Z   app_api_promocode_collection app_api_promocode_co_productcategory_id_1e198169_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_collection
    ADD CONSTRAINT app_api_promocode_co_productcategory_id_1e198169_fk_inventory FOREIGN KEY (productcategory_id) REFERENCES public.inventory_api_productcategory(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.app_api_promocode_collection DROP CONSTRAINT app_api_promocode_co_productcategory_id_1e198169_fk_inventory;
       public          postgres    false    4159    314    229            <           2606    53144 T   app_api_promocode_collection app_api_promocode_co_promocode_id_72d72f65_fk_app_api_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_collection
    ADD CONSTRAINT app_api_promocode_co_promocode_id_72d72f65_fk_app_api_p FOREIGN KEY (promocode_id) REFERENCES public.app_api_promocode(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.app_api_promocode_collection DROP CONSTRAINT app_api_promocode_co_promocode_id_72d72f65_fk_app_api_p;
       public          postgres    false    314    4187    249            =           2606    53163 O   app_api_promocode_product app_api_promocode_pr_product_id_67b435ea_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_product
    ADD CONSTRAINT app_api_promocode_pr_product_id_67b435ea_fk_inventory FOREIGN KEY (product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.app_api_promocode_product DROP CONSTRAINT app_api_promocode_pr_product_id_67b435ea_fk_inventory;
       public          postgres    false    316    227    4153            >           2606    53158 Q   app_api_promocode_product app_api_promocode_pr_promocode_id_fb9e6883_fk_app_api_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_api_promocode_product
    ADD CONSTRAINT app_api_promocode_pr_promocode_id_fb9e6883_fk_app_api_p FOREIGN KEY (promocode_id) REFERENCES public.app_api_promocode(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.app_api_promocode_product DROP CONSTRAINT app_api_promocode_pr_promocode_id_fb9e6883_fk_app_api_p;
       public          postgres    false    249    316    4187                       2606    28515 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    4100    205    209                       2606    28510 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    207    4105                       2606    28501 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    4095    203            !           2606    29277 W   customer_order_api_notification customer_order_api_n_user_from_id_13ad845e_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_notification
    ADD CONSTRAINT customer_order_api_n_user_from_id_13ad845e_fk_user_auth FOREIGN KEY (user_from_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_notification DROP CONSTRAINT customer_order_api_n_user_from_id_13ad845e_fk_user_auth;
       public          postgres    false    291    211    4113            "           2606    29282 U   customer_order_api_notification customer_order_api_n_user_to_id_70196d07_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_notification
    ADD CONSTRAINT customer_order_api_n_user_to_id_70196d07_fk_user_auth FOREIGN KEY (user_to_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.customer_order_api_notification DROP CONSTRAINT customer_order_api_n_user_to_id_70196d07_fk_user_auth;
       public          postgres    false    4113    291    211            #           2606    29237 O   customer_order_api_order customer_order_api_o_customer_id_63ce65df_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_customer_id_63ce65df_fk_customer_ FOREIGN KEY (customer_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_customer_id_63ce65df_fk_customer_;
       public          postgres    false    293    263    4210            $           2606    29242 W   customer_order_api_order customer_order_api_o_delivery_address_id_caf12fc3_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_delivery_address_id_caf12fc3_fk_customer_ FOREIGN KEY (delivery_address_id) REFERENCES public.customer_profile_api_address(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_delivery_address_id_caf12fc3_fk_customer_;
       public          postgres    false    293    4226    269            %           2606    29247 T   customer_order_api_order customer_order_api_o_delivery_area_id_e1c48ff8_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_delivery_area_id_e1c48ff8_fk_settings_ FOREIGN KEY (delivery_area_id) REFERENCES public.settings_api_deliveryarea(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_delivery_area_id_e1c48ff8_fk_settings_;
       public          postgres    false    293    4254    289            *           2606    29222 P   customer_order_api_orderitem customer_order_api_o_order_id_5691a1fa_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_o_order_id_5691a1fa_fk_customer_ FOREIGN KEY (order_id) REFERENCES public.customer_order_api_order(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_o_order_id_5691a1fa_fk_customer_;
       public          postgres    false    4265    295    293            &           2606    29252 M   customer_order_api_order customer_order_api_o_outlet_id_5bda43f3_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_outlet_id_5bda43f3_fk_pos_api_o FOREIGN KEY (outlet_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_outlet_id_5bda43f3_fk_pos_api_o;
       public          postgres    false    293    271    4229            +           2606    29227 R   customer_order_api_orderitem customer_order_api_o_product_id_44ffc334_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_o_product_id_44ffc334_fk_inventory FOREIGN KEY (product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_o_product_id_44ffc334_fk_inventory;
       public          postgres    false    227    4153    295            '           2606    29262 Q   customer_order_api_order customer_order_api_o_promo_code_id_2fbc7ba3_fk_app_api_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_promo_code_id_2fbc7ba3_fk_app_api_p FOREIGN KEY (promo_code_id) REFERENCES public.app_api_promocode(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_promo_code_id_2fbc7ba3_fk_app_api_p;
       public          postgres    false    293    4187    249            (           2606    29267 O   customer_order_api_order customer_order_api_o_register_id_8221cf57_fk_pos_api_r    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_register_id_8221cf57_fk_pos_api_r FOREIGN KEY (register_id) REFERENCES public.pos_api_register(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_register_id_8221cf57_fk_pos_api_r;
       public          postgres    false    293    4238    273            ,           2606    29232 O   customer_order_api_orderitem customer_order_api_o_size_id_d99d89ee_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_orderitem
    ADD CONSTRAINT customer_order_api_o_size_id_d99d89ee_fk_inventory FOREIGN KEY (size_id) REFERENCES public.inventory_api_productsizevariant(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_orderitem DROP CONSTRAINT customer_order_api_o_size_id_d99d89ee_fk_inventory;
       public          postgres    false    231    295    4164            )           2606    29272 O   customer_order_api_order customer_order_api_o_supplier_id_54364318_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_order
    ADD CONSTRAINT customer_order_api_o_supplier_id_54364318_fk_inventory FOREIGN KEY (supplier_id) REFERENCES public.inventory_api_supplier(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.customer_order_api_order DROP CONSTRAINT customer_order_api_o_supplier_id_54364318_fk_inventory;
       public          postgres    false    233    4167    293            .           2606    29212 Y   customer_order_api_transferorder customer_order_api_t_order_from_id_9d61289c_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_t_order_from_id_9d61289c_fk_pos_api_o FOREIGN KEY (order_from_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_t_order_from_id_9d61289c_fk_pos_api_o;
       public          postgres    false    297    4229    271            -           2606    29207 T   customer_order_api_transferorder customer_order_api_t_order_id_98171d05_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_t_order_id_98171d05_fk_customer_ FOREIGN KEY (order_id) REFERENCES public.customer_order_api_order(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_t_order_id_98171d05_fk_customer_;
       public          postgres    false    4265    297    293            /           2606    29217 W   customer_order_api_transferorder customer_order_api_t_order_to_id_0c74a8df_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_api_transferorder
    ADD CONSTRAINT customer_order_api_t_order_to_id_0c74a8df_fk_pos_api_o FOREIGN KEY (order_to_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_order_api_transferorder DROP CONSTRAINT customer_order_api_t_order_to_id_0c74a8df_fk_pos_api_o;
       public          postgres    false    271    4229    297                       2606    28998 S   customer_profile_api_address customer_profile_api_customer_id_045d07fa_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_address
    ADD CONSTRAINT customer_profile_api_customer_id_045d07fa_fk_customer_ FOREIGN KEY (customer_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.customer_profile_api_address DROP CONSTRAINT customer_profile_api_customer_id_045d07fa_fk_customer_;
       public          postgres    false    263    4210    269                       2606    28986 g   customer_profile_api_customergroup_customer customer_profile_api_customergroup_id_c981a60c_fk_customer_    FK CONSTRAINT     
  ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_customergroup_id_c981a60c_fk_customer_ FOREIGN KEY (customergroup_id) REFERENCES public.customer_profile_api_customergroup(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_customergroup_id_c981a60c_fk_customer_;
       public          postgres    false    265    267    4217                       2606    28991 i   customer_profile_api_customergroup_customer customer_profile_api_customerprofile_id_ecfc1af3_fk_customer_    FK CONSTRAINT       ALTER TABLE ONLY public.customer_profile_api_customergroup_customer
    ADD CONSTRAINT customer_profile_api_customerprofile_id_ecfc1af3_fk_customer_ FOREIGN KEY (customerprofile_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_profile_api_customergroup_customer DROP CONSTRAINT customer_profile_api_customerprofile_id_ecfc1af3_fk_customer_;
       public          postgres    false    267    263    4210                       2606    28977 W   customer_profile_api_customerprofile customer_profile_api_user_id_e2c23c4c_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_profile_api_customerprofile
    ADD CONSTRAINT customer_profile_api_user_id_e2c23c4c_fk_user_auth FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.customer_profile_api_customerprofile DROP CONSTRAINT customer_profile_api_user_id_e2c23c4c_fk_user_auth;
       public          postgres    false    263    211    4113                       2606    28595 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    217    4095    203                       2606    28600 G   django_admin_log django_admin_log_user_id_c564eba6_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_auth_user_id;
       public          postgres    false    211    217    4113                       2606    29365 P   inventory_api_customermessage inventory_api_custom_name_id_ee946ae7_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_customermessage
    ADD CONSTRAINT inventory_api_custom_name_id_ee946ae7_fk_customer_ FOREIGN KEY (name_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.inventory_api_customermessage DROP CONSTRAINT inventory_api_custom_name_id_ee946ae7_fk_customer_;
       public          postgres    false    221    4210    263                       2606    29347 ]   inventory_api_inventory_transfer inventory_api_invent_from_inventory_id_83b618f2_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT inventory_api_invent_from_inventory_id_83b618f2_fk_inventory FOREIGN KEY (from_inventory_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT inventory_api_invent_from_inventory_id_83b618f2_fk_inventory;
       public          postgres    false    223    225    4142            0           2606    29393 n   inventory_api_inventory_transfer_transfer_item inventory_api_invent_inventory_transfer_i_11ca4d6e_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_invent_inventory_transfer_i_11ca4d6e_fk_inventory FOREIGN KEY (inventory_transfer_id) REFERENCES public.inventory_api_inventory_transfer(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_invent_inventory_transfer_i_11ca4d6e_fk_inventory;
       public          postgres    false    4148    225    299            1           2606    29398 n   inventory_api_inventory_transfer_transfer_item inventory_api_invent_productsizevariant_i_43e8a202_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item
    ADD CONSTRAINT inventory_api_invent_productsizevariant_i_43e8a202_fk_inventory FOREIGN KEY (productsizevariant_id) REFERENCES public.inventory_api_productsizevariant(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer_transfer_item DROP CONSTRAINT inventory_api_invent_productsizevariant_i_43e8a202_fk_inventory;
       public          postgres    false    231    4164    299                       2606    29352 [   inventory_api_inventory_transfer inventory_api_invent_to_inventory_id_e474aaf6_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_inventory_transfer
    ADD CONSTRAINT inventory_api_invent_to_inventory_id_e474aaf6_fk_inventory FOREIGN KEY (to_inventory_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_inventory_transfer DROP CONSTRAINT inventory_api_invent_to_inventory_id_e474aaf6_fk_inventory;
       public          postgres    false    225    4142    223                       2606    29332 I   inventory_api_product inventory_api_produc_brand_id_ecf01728_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_produc_brand_id_ecf01728_fk_inventory FOREIGN KEY (brand_id) REFERENCES public.inventory_api_brand(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_produc_brand_id_ecf01728_fk_inventory;
       public          postgres    false    219    227    4134                       2606    29337 L   inventory_api_product inventory_api_produc_category_id_97d8fd58_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_produc_category_id_97d8fd58_fk_inventory FOREIGN KEY (category_id) REFERENCES public.inventory_api_productcategory(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_produc_category_id_97d8fd58_fk_inventory;
       public          postgres    false    4159    227    229            4           2606    36672 b   inventory_api_productpurchaseditem inventory_api_produc_inventory_location_i_5b3c6e6c_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_inventory_location_i_5b3c6e6c_fk_inventory FOREIGN KEY (inventory_location_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_inventory_location_i_5b3c6e6c_fk_inventory;
       public          postgres    false    306    223    4142                       2606    29307 V   inventory_api_productsizevariant inventory_api_produc_product_id_36fc9be0_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productsizevariant
    ADD CONSTRAINT inventory_api_produc_product_id_36fc9be0_fk_inventory FOREIGN KEY (product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productsizevariant DROP CONSTRAINT inventory_api_produc_product_id_36fc9be0_fk_inventory;
       public          postgres    false    227    231    4153            5           2606    36677 ^   inventory_api_productpurchaseditem inventory_api_produc_purchase_item_id_306c1984_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_purchase_item_id_306c1984_fk_inventory FOREIGN KEY (purchase_item_id) REFERENCES public.inventory_api_productpurchased(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_purchase_item_id_306c1984_fk_inventory;
       public          postgres    false    4294    304    306            9           2606    36735 ]   inventory_api_productpurchasedpayment inventory_api_produc_purchased_id_74bbd7b8_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment
    ADD CONSTRAINT inventory_api_produc_purchased_id_74bbd7b8_fk_inventory FOREIGN KEY (purchased_id) REFERENCES public.inventory_api_productpurchased(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchasedpayment DROP CONSTRAINT inventory_api_produc_purchased_id_74bbd7b8_fk_inventory;
       public          postgres    false    4294    308    304            6           2606    36682 b   inventory_api_productpurchaseditem inventory_api_produc_purchased_product_id_82894f09_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_purchased_product_id_82894f09_fk_inventory FOREIGN KEY (purchased_product_id) REFERENCES public.inventory_api_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_purchased_product_id_82894f09_fk_inventory;
       public          postgres    false    306    227    4153            7           2606    36687 _   inventory_api_productpurchaseditem inventory_api_produc_purchased_size_id_0eae197c_fk_inventory    FK CONSTRAINT       ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_purchased_size_id_0eae197c_fk_inventory FOREIGN KEY (purchased_size_id) REFERENCES public.inventory_api_productsizevariant(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_purchased_size_id_0eae197c_fk_inventory;
       public          postgres    false    4164    306    231            3           2606    36666 U   inventory_api_productpurchased inventory_api_produc_supplier_id_9710dd25_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchased
    ADD CONSTRAINT inventory_api_produc_supplier_id_9710dd25_fk_inventory FOREIGN KEY (supplier_id) REFERENCES public.inventory_api_supplier(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.inventory_api_productpurchased DROP CONSTRAINT inventory_api_produc_supplier_id_9710dd25_fk_inventory;
       public          postgres    false    304    233    4167            8           2606    36692 T   inventory_api_productpurchaseditem inventory_api_produc_tax_id_484f1da8_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_productpurchaseditem
    ADD CONSTRAINT inventory_api_produc_tax_id_484f1da8_fk_settings_ FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.inventory_api_productpurchaseditem DROP CONSTRAINT inventory_api_produc_tax_id_484f1da8_fk_settings_;
       public          postgres    false    4252    287    306                       2606    29342 G   inventory_api_product inventory_api_produc_tax_id_7a84feb6_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_product
    ADD CONSTRAINT inventory_api_produc_tax_id_7a84feb6_fk_settings_ FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.inventory_api_product DROP CONSTRAINT inventory_api_produc_tax_id_7a84feb6_fk_settings_;
       public          postgres    false    227    4252    287                       2606    29302 H   inventory_api_supplier inventory_api_suppli_tax_id_00acd6a4_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_api_supplier
    ADD CONSTRAINT inventory_api_suppli_tax_id_00acd6a4_fk_settings_ FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.inventory_api_supplier DROP CONSTRAINT inventory_api_suppli_tax_id_00acd6a4_fk_settings_;
       public          postgres    false    287    233    4252                       2606    29025 H   pos_api_outlet pos_api_outlet_inventory_location_i_e6e43042_fk_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_inventory_location_i_e6e43042_fk_inventory FOREIGN KEY (inventory_location_id) REFERENCES public.inventory_api_inventory_location(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_inventory_location_i_e6e43042_fk_inventory;
       public          postgres    false    223    271    4142                       2606    29408 H   pos_api_outlet pos_api_outlet_tax_id_c77400bb_fk_settings_api_taxrate_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_outlet
    ADD CONSTRAINT pos_api_outlet_tax_id_c77400bb_fk_settings_api_taxrate_id FOREIGN KEY (tax_id) REFERENCES public.settings_api_taxrate(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.pos_api_outlet DROP CONSTRAINT pos_api_outlet_tax_id_c77400bb_fk_settings_api_taxrate_id;
       public          postgres    false    4252    271    287                       2606    29032 D   pos_api_register pos_api_register_closed_by_id_af4c20bd_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_closed_by_id_af4c20bd_fk_customer_ FOREIGN KEY (closed_by_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_closed_by_id_af4c20bd_fk_customer_;
       public          postgres    false    4210    263    273                       2606    29037 D   pos_api_register pos_api_register_opened_by_id_fae461e8_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_opened_by_id_fae461e8_fk_customer_ FOREIGN KEY (opened_by_id) REFERENCES public.customer_profile_api_customerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_opened_by_id_fae461e8_fk_customer_;
       public          postgres    false    263    273    4210                       2606    29042 I   pos_api_register pos_api_register_outlet_id_cb0a7d9b_fk_pos_api_outlet_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pos_api_register
    ADD CONSTRAINT pos_api_register_outlet_id_cb0a7d9b_fk_pos_api_outlet_id FOREIGN KEY (outlet_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.pos_api_register DROP CONSTRAINT pos_api_register_outlet_id_cb0a7d9b_fk_pos_api_outlet_id;
       public          postgres    false    273    4229    271            H           2606    53408 V   settings_api_customuser_roles settings_api_customu_customuser_id_3d8613b7_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_roles
    ADD CONSTRAINT settings_api_customu_customuser_id_3d8613b7_fk_settings_ FOREIGN KEY (customuser_id) REFERENCES public.settings_api_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_customuser_roles DROP CONSTRAINT settings_api_customu_customuser_id_3d8613b7_fk_settings_;
       public          postgres    false    4338    334    328            D           2606    53380 [   settings_api_customuser_operations settings_api_customu_customuser_id_58c1944c_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_operations
    ADD CONSTRAINT settings_api_customu_customuser_id_58c1944c_fk_settings_ FOREIGN KEY (customuser_id) REFERENCES public.settings_api_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_customuser_operations DROP CONSTRAINT settings_api_customu_customuser_id_58c1944c_fk_settings_;
       public          postgres    false    4338    328    330            F           2606    53394 W   settings_api_customuser_outlet settings_api_customu_customuser_id_8a8a3323_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_outlet
    ADD CONSTRAINT settings_api_customu_customuser_id_8a8a3323_fk_settings_ FOREIGN KEY (customuser_id) REFERENCES public.settings_api_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_customuser_outlet DROP CONSTRAINT settings_api_customu_customuser_id_8a8a3323_fk_settings_;
       public          postgres    false    332    4338    328            E           2606    53385 Z   settings_api_customuser_operations settings_api_customu_operation_id_744043ec_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_operations
    ADD CONSTRAINT settings_api_customu_operation_id_744043ec_fk_settings_ FOREIGN KEY (operation_id) REFERENCES public.settings_api_operation(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_customuser_operations DROP CONSTRAINT settings_api_customu_operation_id_744043ec_fk_settings_;
       public          postgres    false    4324    318    330            G           2606    53399 S   settings_api_customuser_outlet settings_api_customu_outlet_id_76e30f7c_fk_pos_api_o    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_outlet
    ADD CONSTRAINT settings_api_customu_outlet_id_76e30f7c_fk_pos_api_o FOREIGN KEY (outlet_id) REFERENCES public.pos_api_outlet(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.settings_api_customuser_outlet DROP CONSTRAINT settings_api_customu_outlet_id_76e30f7c_fk_pos_api_o;
       public          postgres    false    271    332    4229            I           2606    53413 P   settings_api_customuser_roles settings_api_customu_role_id_fc491733_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser_roles
    ADD CONSTRAINT settings_api_customu_role_id_fc491733_fk_settings_ FOREIGN KEY (role_id) REFERENCES public.settings_api_role(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.settings_api_customuser_roles DROP CONSTRAINT settings_api_customu_role_id_fc491733_fk_settings_;
       public          postgres    false    334    4331    324            C           2606    53372 U   settings_api_customuser settings_api_customuser_user_id_a82ec8b6_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_customuser
    ADD CONSTRAINT settings_api_customuser_user_id_a82ec8b6_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.settings_api_customuser DROP CONSTRAINT settings_api_customuser_user_id_a82ec8b6_fk_user_auth_user_id;
       public          postgres    false    211    328    4113                        2606    29136 W   settings_api_deliveryarea settings_api_deliver_shipping_method_id_7034b6e0_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_deliveryarea
    ADD CONSTRAINT settings_api_deliver_shipping_method_id_7034b6e0_fk_settings_ FOREIGN KEY (shipping_method_id) REFERENCES public.settings_api_standardshippingmethod(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_deliveryarea DROP CONSTRAINT settings_api_deliver_shipping_method_id_7034b6e0_fk_settings_;
       public          postgres    false    4248    283    289            ?           2606    53316 M   settings_api_operation settings_api_operati_resource_id_083604c3_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_operation
    ADD CONSTRAINT settings_api_operati_resource_id_083604c3_fk_settings_ FOREIGN KEY (resource_id) REFERENCES public.settings_api_resource(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.settings_api_operation DROP CONSTRAINT settings_api_operati_resource_id_083604c3_fk_settings_;
       public          postgres    false    4329    322    318            @           2606    53353 S   settings_api_permissionrole settings_api_permiss_operation_id_55abec82_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_permissionrole
    ADD CONSTRAINT settings_api_permiss_operation_id_55abec82_fk_settings_ FOREIGN KEY (operation_id) REFERENCES public.settings_api_operation(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.settings_api_permissionrole DROP CONSTRAINT settings_api_permiss_operation_id_55abec82_fk_settings_;
       public          postgres    false    4324    318    326            A           2606    53358 N   settings_api_permissionrole settings_api_permiss_role_id_faf47404_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_permissionrole
    ADD CONSTRAINT settings_api_permiss_role_id_faf47404_fk_settings_ FOREIGN KEY (role_id) REFERENCES public.settings_api_role(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.settings_api_permissionrole DROP CONSTRAINT settings_api_permiss_role_id_faf47404_fk_settings_;
       public          postgres    false    4331    324    326            B           2606    53363 N   settings_api_permissionrole settings_api_permiss_user_id_d5316e5e_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_permissionrole
    ADD CONSTRAINT settings_api_permiss_user_id_d5316e5e_fk_user_auth FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.settings_api_permissionrole DROP CONSTRAINT settings_api_permiss_user_id_d5316e5e_fk_user_auth;
       public          postgres    false    326    4113    211            :           2606    44982 Y   settings_api_regeionaldetails settings_api_regeion_delivery_area_id_51615c76_fk_settings_    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings_api_regeionaldetails
    ADD CONSTRAINT settings_api_regeion_delivery_area_id_51615c76_fk_settings_ FOREIGN KEY (delivery_area_id) REFERENCES public.settings_api_deliveryarea(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.settings_api_regeionaldetails DROP CONSTRAINT settings_api_regeion_delivery_area_id_51615c76_fk_settings_;
       public          postgres    false    289    4254    312            2           2606    29435 W   superadmin_api_adminuser superadmin_api_adminuser_user_id_7a86dc82_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.superadmin_api_adminuser
    ADD CONSTRAINT superadmin_api_adminuser_user_id_7a86dc82_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.superadmin_api_adminuser DROP CONSTRAINT superadmin_api_adminuser_user_id_7a86dc82_fk_user_auth_user_id;
       public          postgres    false    211    302    4113            
           2606    28562 N   user_auth_user_groups user_auth_user_groups_group_id_165f3b9d_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_group_id_165f3b9d_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_group_id_165f3b9d_fk_auth_group_id;
       public          postgres    false    4105    213    207            	           2606    28557 Q   user_auth_user_groups user_auth_user_groups_user_id_e339ec14_fk_user_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_groups
    ADD CONSTRAINT user_auth_user_groups_user_id_e339ec14_fk_user_auth_user_id FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.user_auth_user_groups DROP CONSTRAINT user_auth_user_groups_user_id_e339ec14_fk_user_auth_user_id;
       public          postgres    false    4113    213    211                       2606    28576 X   user_auth_user_user_permissions user_auth_user_user__permission_id_2c602bd2_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user__permission_id_2c602bd2_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user__permission_id_2c602bd2_fk_auth_perm;
       public          postgres    false    4100    215    205                       2606    28571 R   user_auth_user_user_permissions user_auth_user_user__user_id_31fb400e_fk_user_auth    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_auth_user_user_permissions
    ADD CONSTRAINT user_auth_user_user__user_id_31fb400e_fk_user_auth FOREIGN KEY (user_id) REFERENCES public.user_auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.user_auth_user_user_permissions DROP CONSTRAINT user_auth_user_user__user_id_31fb400e_fk_user_auth;
       public          postgres    false    211    4113    215            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3��4�=... 	tn      �   #  x���]o�0���_��	����w�E_vW)�J�c�\�_?;iY
ZZMD�ɛď�����i�/�{���@�2�=���Wf�|�N�ɗ� ���d4ʦ���|A �O'Y���f�� ��l�Lǋl8ɖ_�����cЎ+'�Z(4��+���z5B2>��~����a��O����~��$��"<�!������[K�������&�PNr���/QϪ��7Ə;|�8��bT1&�h��U�#A�b�}����)�EVE�^�6���x��똡�<���P�
x��#y^EI�W���21���;֮iS�,��+UpӪ@�ԃ�FѲ��P����,�߀�a�w��Og}j�tZTІ������Yw�Sz��~��D�^�)����ʪK���EY3['B�2�jPՆ��A��d�8Rn��%[tuUcP#(�_<.�X��&;����FP�.�^W��� ��x(Jƀg�U�d<�6Yv��1p��LHʥ��_ bD'u�@)��_쥜��w���+�?>}��&�1���h�*4itG�(�e��      >      x������ � �      @      x������ � �      �      x������ � �      �      x������ � �      �   �	  x���[��8E��Ux��߽���P�J��l�-���Y}S@��t�GE��sQ�$4�����m��is�Λ�̯�*���ܵ�,k����y ��l<x.Â )�z��8��:�P<��u|<��V��5(��9 �;������ݫ�@zw^���y/����>�s2�~1RY�aw���<���mq�n���C�zGxh)�ֺ����-��E��hD{������;�We���*�~�`}T����P��^�
�?��y>��w�_>e�` �)p��c�g��Pޫ�t��^�����O���*v�|� ����p$�4;|ʑ&<g��퓎����,���.��u�W�@��{�!;h���&3h���~J��:,��>O.i�Wq���:&Cey��* 3b{�
�1�FZ��6��(�B�z��]6�2�^9!{�֤��{/hV3aq�cM�Ӹ�9SQi��a�l!12�.�A�dd�r,3i��8b�f�mZ����N�Ď�-�P��}dP���
�?1O�h͞i>sQQ��e) v�ȣ��k̘d
�w���b3.õ�Zue(�6q'��'��į [��FT�$P��޿�k:��/�=�"��<Zv�R�l%"�YF&�
�mM�eD���$&#����t��3�%�������B�E���H�E6	�"
L={>���x��}�������8�[,j�ԵX��-#��my�Ȩ�ŢCmת=�E۶�G6���bbQ��(��xXTg�	��������GEEe�/�$��d'$��d'$�ImC�NH���:5EQ� ���0�����I�@x?x^3�mq�-�Jvb�e���3��|3�3)f(�e�ɪ��i�y(��>.���2���|Va�a.���� Ҭo�\���r?�\�Tә� 镗r�95�Y^�Q��&��ZjN�d�����(Z�)m>Z+M�Uu��֪�hU��Ek�Q��4uz�Nϣ{��>�ey�¬�d�+'�����^Ũ����ڸ�3���E��ʰ��OA�.e����Q�I0��QU�Dw�λ����/�;�61@���"-�h��4FP� ��D9+[�{"��jR	TU.2UaXAU�1��M�c������c�փ��i��'ms��jt�c)ئ��r4�M��y�_F��4T���A�+2�t��~�A�cP���F�����:�6���U�ar#��{h�6)�=$���Ii�I��PJj�B���$�yv��eA�#FL�
���i�k��8]���YUV�RF~=
��i&��?kD��욇��XV���ʵ� �,�~2Ƣ�AMnX��g0͂��p���
?��6O�e��EC�S���L:�!�ؐM�3�=ߘ�-`ތm?}c�6�oLT��٢�­�a���7�Ȣ�U�d�6�(`U��P�bT�f��<�u�k�����:��NECez��)�qR��wj��@��3 ]؜����ԧ͉�y�p���w�
7�{����H�[b���:9��u�8&U��L��汸���|J�
�p��o�վ�"5�!X��3$�!�v}g���;#���_n�1>�k���X�M��������`/ܫ��l��O�����e������6�E˭���z�lL���Ο!��H��35����30��צ���hi�!�똣a�J�l��5*Ѱۑ�,K���q?�63mc�)��ɵ�]�3]��C����h�3aVW���8�����=�=\���S7����e%���8T�����̂�j���:���|Yw�EK;�]6`�@Y����V����^ ���+W%^���k�E����S�9���V]����0յi$Fe�Q�f���K���cX���|�,d-�򁈲&[��oD��,���^OJ+lʼ=*���'�=+�l;O =,�����^�4�zPFD��2goMٓ������[k��-o-9z{kK���L�o�?�EG��_�il�	!�	���'�� <TC�Oj30 ]��9N���*�\�u�qqgϠ�6	t��3��H�<�JC$��t������;"Z��},��᱑��x�țf���Ld�zl �쩞�M�����.�|�/k��-QS�`�ԛ��2������Q3�[�/_��Y��í�Z>�^���c�=����*�)�U�`��i��u����0N�"��񮓶M�y�-��P�4�֓�V7��6	�J���:]}�o~�d���Bp,>@J	00�= �
o`�� J����_+��ng?���&56S	~KT��$*��"��b�h�Aq0o�cr���=�Tt]�؁�\x�ZợhxeZ�WEA~Cf�����qX�v�؅�y��>2"�b���4mjt�Е��G��-+�l�"y�+y�K��%�m fT�7�^����e�//z�      �      x������ � �            x������ � �            x������ � �            x�3��,LJ�������� ��            x������ � �      	      x������ � �      '      x������ � �      )   �  x��\Iw�F>C���0]�;}�{2~��~���%H H�ZB��_?�h��.A�8�@6(�_m_-��~>�~::���;����7��Ǉ�>�������O���޽��$�<���Œe��-�4�3�fFG�(99}��L�.�����4����r}��s�E�y�yԵ)�Zgd�O��&�Rx9�!���t3P��ƀ����[Uү��/ϻ?��ͻ7?|�>�9~���ǎS�0- ��{{�&@�iy���<-�)eo9I.�3�_�8I*�q0�Y#�1��T��v���/��C�@ϸ������*v媙��������������}���Oo��!���N3���18#Aհ۬v��r"���N��5��|����u��F�:~B
͹���)'�C8�^�L���i#�i�X�
C�`J�݀��<'GX
E�����6����I���݃_n���)�mW�HQ�p��+�'���.��θ�1���<['W,��Ζקg��U�e}��r^(��J�sO���µx&�F(T���A�@���A�~H�N�[��������ż#�&yz�ʒ8���.W	�h���K2v�JX������e/Wt�ײ(�x���������`/��|9&�+^�UO���~)v����<�ϔ��%^�7���{U�֠��U���8:=���W=n��e�p�|SX	��g6�a�̄$�5�;��C�<�"C�dH:,�"ɐh�̳%)1l9I��zyZ>����G��܇4���F"l64�&<��;��tl�����t܎���� �uv���Xp�����4���h�>� `f��mP\wxx��.v¢D�*������=�30[֗���;�\�L*���4��4�ʶߖ/�;T=>S{�R*ȥ�f�bЖ�#���q���&�'׷W)K��/�������캗�q���<i��^�@�$��7�Բ�*�MC�b����<�!��I�6�Vp��16�Za���8\ ةz�f��(t8���@ WcQ���
+���'a��t���d�aC�4�B;��z8a�?ɭ:l�	hц�m:V�#�Bsq��[ˊ�%�"OoP�nYQ*iP�OJ2*y���lQ���nv�{7�&,tFJ���U6%!0�6�K)P?�� @��ge+�Ww�lE�%<l�8��m��]!�a+8\�l����!��A)�.Y�֍�J;�>m�*�,��!.y�޾c���bîv�����}Q��T]��Q{).�pq�i���
�|o��4H�e��41XT!����w"�A�QL�����D�k�����4PfB�� Mߧ��e@.�z��Q���b�z<� P�Ha������w�O�d�|�}IX��~B]�c� �j��ʪ�����ރ�멑�7,���~� ���Ě��W����v����i(�{{0���a��uL�)��mW�D��cy/~�=z�o���O�xR�3Vʘz���:��v쩑���Ҩ�P1�B��VW�#�d'r����9�+�����ε��nx0�	�k'��0r��Y:��U��D9`����|����Ѫ�6n
@����}. B��*}�Xc�$�|8���w/�i_��J#��a�~�n.���Q.��D����eTK�4]��<������������H��ܑ� %�C>S�Ͻ����[@-���Ow@BD�J(1�cKG�}E@�*��
y����с��j�GpzR'o/42G�NU���-�l��Ó���v l$�_K;�3I�k�]l?�K��ݝ\;ŨR�e�H#�(?˓���o�*�0��[��!z�ym?�L	i�X̢��x�8���~�r1٣.-�M��p����:9g�h�|��%�����QᩐE0*�S!��vk���j3�6j^�!H�m^%��<	'���]���z��Jc�P�W�5�C�5-P�L�@��4�Ĩ�Ə����]�^\D�A��4��(���\�V�P��l_�w�(���5���ʵE�ip���
��ҷ��`9��8Ll? VE����詊w ���2�Ty?I��ڡ{qٽ|Ur?(�Ӯ��B쬖8	Â�_)�)�b�������t�n7��ӗ��.l����"J�^l]ٶ۵�YO$hq/�nuvy����cQ� �"��/�2FC�E	�|Ĝ�}8+W�\���5M�<M|�����M�/ai����b�%Y��I��,���i^~$�|:K�C�0Y$,�p�� ?�(7��ͪ+J�~�-V����0���QS_� �
w�(��K���=V���3虆����sB�d�6%���W�M#:���"jǅꖜ��\(0Sx�z`P!0(�ĝ��-@�������,y�!9�JX����p���-�|���h9����eP���
�@�9�KV��rI�@ �-,ID^*m�����AX�~a��ǚC�LH,缶�Y����'�L�ؠ�u�� cL����l��?
���ݎ6�����l�\.���vv�R�b��$}�Nn�.ҳ�s���e�J`�W���΄�Yje\Op1d���\T X
�&vS�,hڐB�06l���K�$��� 0����M�T΢�	:V����4�9��W�p-u5ț圝\�K:����b#�'t�=xB1E��4#�����Qeax��*Z��s"(�X����H��*�Ke��Ϛ�?�I�(1X�9Y���"Mʼk�&��M�ĿF|_���w�!c'o���x����=H��Y;��Gآ���AT&��l�窔S� &5-������y��\^Y�� ?!�6F޷6 b�l��ۑ��k:$����~=�upb�S¨���J��#��&ֵ�q���W��8�������@�Ev��|��{�����$F�B���,�lt �zC
ݮՠ�%)-;?_-Yq�`�������?�{:��V����j�h�8Qó��&K�fN-�/��Sթ��(2�I�Ap�#K�xِ�8"�GH�*=�����P��n_ޥ��=��/!�|�� �!ϫ��>���u���Q�5�{8J�:A遰��l�m8P�����)u9_[�n������ �VS��N](Dae�a�����;�����`�d�媊�bT��w�o�uC�P�炐km?#�!��	��ƴ�x��Pon�8-��ɩ�hzM�3i��wQ�ڔ7+�ZU�ZWr��
�2���/�k�&�ݱPRY=�	틋C��|�E���p����6FהDQ�).۶J���|=�Z�P��|4����}�)��<e�C�3���^�e�ٶW�>�f}��7%�O�w)d�}�!������C�����LpJ�cݠ+���JT����o��&;� d�yѽ��0���-��Vz>UEӛ]�dJ�f$c+}�l�����_թUw��O{��@N	~�X�S����\3I����
k	�)]��O9��'ZYdE���9�/&	�7����^����׺��c�F��B�ѐ���M����U~X� c��z�P�ŀ��O[E�WB	uG÷o7���74}����Ǖ;m?ٖO��H⑂N�M��+���h��z�<RP��
����z[髽��j�uߵ�ټfE|
�I]V&�>T� �UT��	�*3�g���nk��n������UCB��h�j���{�=����B�m��:�UA�b��[]T&�0�G����~�}[�#T�� �A���-6Xne�$e]��L�a(�����}h�[��ʙ'6_��ݟXǆ�Y�ye�{��@�	��#��Y;.U���U_r�C��
����W���G��}8����ѻ.��/��Ȇ��	%#�����@b�]/<f�x�d��r�o����,��iv�F�EV����b|�����Y���0� �����P��5���
Dj��d,�'d(A�6�j�_��N��<��B�׾��$�%���|�2)�C�*Ъjxq���?�!��\�L��9>88�f���      +     x����n1Eך���޶�t-��ƭ��@h�i�~})�P��-91��1%�����ͧ��Y{�w`����1~���{b�'�b��F�r�bNƏT��6���g�"��DK�m�x|����/a�1|Yx#6}�D�RM�����kL�2"�@�)�����{��8�ӈڀ������A�?��%-���tD����>�����@rp�}ݽ��J��G��'E``��茸s����a������
�B�a6�w������}�ϝ�"0$9�" �N"�E����B�t�NP)��q"c�!M����D�޺D�5qI�Z�	@fh^���(���!:"W����޼���dV��}�b��J�#ؕ�Z��R�� (IUSi��������X�Q���KEg-(��aP�'���RS���Y�.��Z�.=���"5�b<s�q8wĢ���K��e�B��(����g���[D��`ߦ����U��\a_��cLAA�ÙN��yE㛕���dwz�[��֖�N��u�;��ܾ�v�������`��Z�be�6�LZ'yǞv�is:��n�L!�RagX�H�i�h���s�7�0{�OT8�`7L�*D
�jaQ�Zq+C\n���h>����������e��M{�����e�΄�ٛ�%�_��k�t~&�`��;��}��a�E�S�XW$6�{d�$7G̹q17�!'I]�������f����v���JR^Вp ��&������?�-jF��+��K`&dO@��O��)��M�4�K R      :   3  x�R�n�J}����z_C����])�l 0������䮪�U�_�5~�^g�d���z�1ٙ����,��:�&�3�˄%���j��p����*Ϭ�;�MJ���F��&�;�l�M��+�t*`ռ�M�t��X建�җBUWu�K5�N��G�m�U�:T�$��OԶs�<jI�i^��~��{qN�S�������9T�ɮ�$��;4Y��7��eڥ� ���Fs\5�=_�i9����e�Iԛ�M��<AY����p��6����29W먣�X�-R���E֛̅:ai^��_!�@-�f�{D�O���Ŭ`��\���
��b���ѪK��Y����m�P�h�x~jWǟ������"n~����K�V�J���$��P���E�C�3v��۠����o����աGf��н}��u}y�~���m�?����r®�*�<���C�y��mA:�V
��N�0K�v�t$F�-/���i:�c�n^���s���贰Z�o��}���}�V�۔�<����n~Ɵ�I�/��6mZ��{__�u8�j��չ?G���v�gT������Ҍ��u���������^g+�A;؟�O��_�[�voK����$�4ٝ�,/=	?03f���g	y7���,)	�w�V�~�T�[1��h'����~4�o�
���f��߽�M/M����	�����N���~]i��O�k�&?*��GF���Iz�N���d�C�ƓkL�rz[��i��F��|/��Om��-O�W��>����yrOu����$���g8~���{�m��ӓd������3��z���[;����Q��<����i�g����f�������Č�fP�w��`�cka�ıl=����r>P� �h`� �	�0�,��8�a��8�=��`�D@
 �A0�]0��9O�$��N�����C ���x�<��X��j��
+a�r���P�!��1�	rA8�)�aI=4��#� e�aJ}�
{Ls�c����@�Lt=�Yi��@�4�a�A�ȯaT@,�	-�\g�f�s���p����" �I����,��K�� ���c�=�^����($�iCt�17O)���&�z`�lb��L;*��Z<�"RC��g�kJ�4ȱ@b�@H �9�	B	̩��� XJ�\�(�4�#�%3	$$6�KpzF��H��� ��W�,�<3ZK ��[�8��!# ������ީ7��eL�����F�^�e G�`�-K�eu@�Xbe����LX��\���?���q�0
      -      x������ � �            x������ � �         A   x�3�L,N,�4202�50�50R00�2��2��31�050�60@�51�24�3�442�r��qqq ��            x�3�4�4��2Q�\1z\\\           ;  x���]s�6��ů�}��ѷ�`�$mg�٦��^���8�&~}�dl��211>/�}$	X�=yܭ�I���h�}l",��S@!Y}}�c���(.@�b�#P�!\r>�j��������Y�~Zfy�%O-�N�{+���\�W�1���^x{q�����=��Ĩ"�i9`]����ZzkY���CߗB�*���6FIr�v��R�S��򮪲�o�UR<��o~R�踋9D�V�:�:���#�ʈ�v�I���>CK��c.h����P��n&�xS9m��Xg��v�-������QҠV���`X�a������'������^��0���V�͗e����m�
OL����*�o�춌�O��G//�kt__�N?^1Y]y�1�'Yh�tPڪ��4(�������S����4�J�Ę��X���U��O?����@� ��{�o��_7/_^߇E� *k� V�j�\��*"�٪HA�]���Γ�v
�݇/������m���<<Z�~h�G�Z\i����I�c����r�r����~?��y��;�� \�"�#[(����h�mvwo�͇�t�~2s�78@V�B6���R�Z,��"-&�]�|x��)��\,�����C�~8Ky��*Qp{���d�>�B�Q���s����,�ĩz��#^�E�c�"!5:�6�Z ׍q(�PWa���,���:��Xe_��n5�a`nS������G��1�)�����q�W���.][���Ѕz	���ᐬ��Q�E���ϫE"�귇@7�#���/��F�B
�)q��6T)E�%-8�36��FCSG�����}2�֯-�&�~Ϭ��?�?��ǔ�7Iw��h@Շ��[�RG�K��uTi����!�3�|9�y�ɗ�%Y|}{ڿV�ݟo�.�s@);9����1�� #���2�Q�؜s0�)D�?g�����
{+=����~^u���.��5t�@au����I�ӭd�?��>�(m� ��'O9��'&ݴ�S���
tOմ͇���ð�i&ˤ��G�������Ca}߄��sđTѡh�47z�.r�am�F��?���h      �   D   x�3�4202�50�52Q00�2��25�3� 
jprqt�RbJJj���Bumm,���!W� ��2      �   e  x�}U[��0�F�ي�$�.[5�`\1�k��0�_�Y\��$���˒�ҝ�3K�я�gj�m��w&C=�xȬ�>�4�ÿPf�7�� gtN��r&S7��C׳#k��wW�C:��y�����z� ���G�(��S@"��!D�����;�H��M�Iq$�O 䏜�؁(�x�Ǝ��9tc9��(zՇ;�����t���R�\1��u˥��Ji��� ?e�r�䗪�8�H`.��yJ��;����H�'Kk�s���U��D�������Ɔ�6����V��c�ǧ�Oȯ�t0��T�(�C��-�YÁb:���k�5��0qy6��S� E�(,�4D�lYn��Ƅ8������B�-���Z�b�8�V�˞�{�����jICQ�%�8�Y����Y�׉yJe�љ�1�T)�ʨ�<�#�|�k��~T�"�sn���Rfʹu��x#z8�d�QcQ��s��ʎ�� /3�嶉 �����n���:���ky�4��c)ހ��jҼ=әJv^0e:X�j�5Pn*�b�(�{(�v�>C�Ke_{�L:iZ���I�N��,��p �SL�o�s�&��L�� ��m�      �   |  x����n���ӧ���6DRԏ�� �'u��I��tv�~(�q��i݋���/��Hv��44�a�:7��R
���m}ءB���ҫ��v���g��)���J����}6���
O�S}l�Q�L@Ѯ���p���
=���>M_����^.mw��X�?ա9}����g�'���E^�c�~�h��qf��9%��p��pYG
$ ��9�P_���}����a=1�Q;7A���?׶��#�SR��0 �?1��g}h���/U��V5}��ձ�\�f}[��h�&�[M�9fã� &��2�	��:QxC�Q}w=o�`�v`R.@u=K����w�fr\Ϗ�����Iˀ�]����mѠO,�ŵ���19�'"߷c{�y�7F�0���5*�n tA+�+pw�!Ad�~��~�?���ݯ*M��X@�w��S]@�۟v���}r3Q���m��^W�|~���V����x�O����G�t!���������{{h�!�������]���q�w�f��Ǧ�� cM*54����-�s�h�-��w�vҩd�Q�r]|�֋ʥ7���<]Xu���Hg���Yʓ�h�$c�|�YY�ʃ��H��\�<bUlȔ,��&�e�c*ð(TI%���_��BAWX0�&-��H
���,�J_*.�N=���s�E�RZ�f"�W�R"A#�M���б�=�=�����{W�H��7��u�16+�m9�f�R��U4cd!cw�{UrL:HR2ũ�ӊ$C�z#���,i���#F�qc��4L��h��=���S���j�>�<I��C����~+��S��4�~��9�.Q����G!kz��eH$�����Wp��R�q!%H�!�[�/��:��q��5�ЫlK,D��"b��+2v�$����lIһ�rұ~f��d#����X��ȶJ�����W��Ơ*���Q��IH�d##2wV�"ٞdɱu)K��:�z0aP���A.j��S��cLpf���8�i��\Ӏ�V��s�'�=���1z�@�'����(8X���_u��rc��9l��%;�W1?9.�"J��țt�k�V
 H�G�3M/��T��eɅj�b�XXc��j�\���1�:��>K��F�K�v�Ψ'�;���1�˷�~�ڣ��&.��0ƒTa�LL��{Ql�$��?y�R�7��T�=��ߺy���߉6,�IKRN��cV�>����H�
�1>�@���n�!1������*�Oz���I3���_�F���ԑ̊��#��ZP��0h\���،}:т�+��0i���d����\娶b�@b�'ν�J->����0 ��+�U�E[��s�v�c���6�6�#�>�L]	F�%5br�F�1���\<5�d�ǐ�[g!��Q	(cz��0�rM��L1�%M�|�����fr�A� =���"g�N+W5���9B�C�sn�%��oҴ�
R�Ǭ�yiN��F����0��a ��~h�<�u�GM��5�#K>s�2a�%,���"kE�n3ƣ�	�̜o�T�7���Ӿ�p�G�+��8�P]�̸�16��*F.x��.W1͍�Ø/w��q�W#3H�N���\�9ƭc����]�b�3��G�c�f��ٶ'�b�(��������x.      0   1  x���I��@  ���s�����,7�`lVc�m	�4��;�OF��K>�zB�u�g��7b��<h�
�/6���60
��D����uF�ue�gZQ����Ֆ�LQzB���;N��]��/���� Ex`o��!�ܹ����i��/*�Ţ�����$�S�3�%�M�w��\k��}��id��3�ᙟ�q:�DX4-�Kb;u�Օ�1�jh^N�����,m�"�t+����v�#'�9����`c.D�,p��ˢ��tyc�2�c xP�	n�HD�~ ���eL窉�<7q6�a���PԈ��d3���{�ӭi���1�F ��o�C�m��:e�\�kQE	�U�ʡ{�=wӓ��G��T�}b�"��qm	YN8_K�Rh8ʍ�s��j�*n��mM��P#�����R�(󣽯�h9�:J,�w���{�Z�{4j������{_ފ�ï�Fߪ�s�;ľC^XB�<���P��3|	5��.C �g��0l�f�AU��C�#T���c���,� ,��{��B1���/����c%��?C�a�;��$,����,�=�s�Z�~L@�      �      x������ � �      �      x������ � �      �   z   x����
�0Dϛ��^vG�����ЫW)BIA��Ez��,��cg��=�ֲ��E����� �V:�"7擪硑d��j�^:�Rz��2�x?F�]��5pRH�Q�����cp�m/s5�      �      x������ � �      /      x������ � �      �   #  x����n�F���O��b���3h���E��A{@�EJ�mQ
Eٖ�>�KR�,��R�G,E�7����:��c�i �ᒱ�~3�1ڻ��1H�x����_>��X�"��$Bg�2�RPҁ�)~w|T�0�k��u��`O����כ�>�����%
�PӅ����u�j���ͻu�*��v���M�z䋪m�z�ۼ��-(������h���<�����a�˛�@�*�f��A��~N���2m2�Rp�B��b�lo=�1���&D��j�φ����Nw��l�y�mW\�M��~yw_��z~���]&�fBe�S���WѽGUR<�Tu��Sn��M[u��8�c?�|����GD����Cſc��r�C&!�*Ep�+��.�6��C`�h�4_���l�؆��r�� 	�a���?��1�ED`B�@d�	�ci�2�Y����x��a��)�f�j��S���6�K�mWm9���KtRZ��m�	���*_�mJ�6&}�.U��^�^x�f����7�o;��l�c����cSn�oG��P��~T��:��vv��*�@�5
���I��RcQ I夦�/�^��.t�����K�!EF�
	DCDq�ܯ���;^����p� �hx�	���C�)fy1K������� o���xvy}���L�`rh�N���aXe23T�E�0F8��q�ӢAt�A�P�n*ʹdx �����\d*�V������[��n�I�ѷ�~��ћ鹨r��..�N(ݩ;��eC䨻U�,��;9D��+om�U��G�<+f�9I�E	:�JѮ��N��H%�e��"���L�Tk!@��2(�U{�qޔy�t����U��m��`a�~fq.4��V$����1!1*�)�R�6�m�/V�)�eRS9)�yZY��S��d�E�W]��H�p�$�o��'W��p����V�(�W]���mۇ�$��v�oڤ-7ޮ/<������MY֛Ū���O[�~M�s;		�ZB�#Th�q'�-�)�eL��n��x`��)��������ϻ      �   k   x�}�;
�0���%a�m>$��6A���E�Uo`j�;�:msݦY�k ��X$C�p.!8�,�?���P�,��_׷�-%.,E�K�!�)|hDl��i�O/u*�      4   �  x������0Ek�+�&��W���~��A�I��(Y�84�`m���3��1N0����Ϗ��q�y����?���L_�*��P�7U�?�[�)�fUH$�龪(�����͏���ŦgHG���]��O�U��u���|{?�t}q��w�c�[/}���')�T�l�ją��N�����'C8Z&�1qF�ԧ������+����W�^~��c����L�Չ2%�`^����LX9�ɰV�a���w�xU��ذ���V�%����/o"w�
��-��
��19F�ۦJ�%Ö^�F� F!���j�[Ah��t�f�,�m�����%B��]Ŵ��xh��5x�Y\�Lͻ��,��x!�pLs��轏�nS�_[���Z� ���V�JN#��ݩ����{`�������F��]��x��򵮱�C��i��Q�^mE8R�v���5�w���u�������]}�/�����MU�Į�,��-xiU�׼�:��'q�Ж�xi���-��,�j@�_c�m���z��u�65�0n�,��[<SSf�R�*����njh�DH`�G�M�!��(�r|�&n:�nAc�x*������T4wU9�z1^ԃ"Qj�����Ad܂~�����+zr      6     x���k�� F�Ő>(�&�
f�븅���h"����Z	D^~&��@v$P�ܱ�R.��4`����oG�m��F��� �m����U�@�k?��h��d�Z������5�	Ҟ��e�t���Lx�������"rny;�+�6�e!�&qZ��$֯b6��7�;��$�^=�:�����:���>���������8~S���i�w_9�;́�R8*�w�fGu�|nN_狖8��-x{�|���-�EO\)�kخ˞e���O�+���2�R      8      x������ � �      �   i  x����n�0E��W�܀×ȥ���65����N��;|IC;V��D�q8�\^J����������]ˀs���R�x�ri�LM,�_ �.<N�q����
X����p)�U�$��Bg�<e?�9��I�ǿa�۱�����J@�����7xjt��X�$
4�@Ay&��O.恝�)���ƶ�91Z����T�&��X9����n���#ج!���eԹ�ZFMz������KGnT W(U��������K�c��۝I�����Fyguc�����4t�uP�#aE����aY�u��]_|z��>�&]p QGo�_PO/�oD��$ӥL`��|������������0׫ӡ}Bv%R�!���,{%��\����SXu�!Y�����B�Kn�9���j��Wl�&��.mzJ��A��>]2�lM�Lm�[fB��偏�ʦ�mH�JI��;��H�z]�~#�1�l��O�`G1(��3�5]{<_օ&֧]�\��]s�W�M�7�SC;5Ţ�Pig��зv���8(9����[k�b��!!��uvg������1t������4�b�͌T��2����<ҏ�_f�UU�՞�      �   }   x�3�,.)��K�Q%h|�)###]#]#s##+#c+K=Sscm��f`Y.#��҂����"C���܂ļJ �.�i�	�Lt�M�ͭ�-����,55���q��qqq F�A�         �   x�}�1�0Eg��Q��@ډ��t�hA$F%��]���<<[z�8]C>��x������1$y�H0u��o�oO��<
���T����5�֮���^�;��=�8���S�ԇ`���4��M���O��n�f�N
!��A            x������ � �         $   x�3�,��"��O?G��(�&W� ���            x�3�,�LCNN�=... ��      L      x������ � �      N      x������ � �      P      x������ � �      R      x������ � �      %   6   x�31�,I-.Q0�4�30�4� *Ə�)1/='1%�8Ð�ĂX�1z\\\ �.�         =   x�3�truq��p��4500�30��q����%�E�UU��
i)i� ����� ��@            x������ � �      B   �  x���Mo� ���+�W������V%�T)U�n�^*Y��`N���b0x�T�n�/�<<S�J^��$M��i/���]X�"+�����3�U7y}�U�u�����,��nK�J�5iHGu�K��V�֚�M(lD�
�a��B�;��*�K�u��0'�f�C�MGE��懌��5�bD!J�g���� �V��#��1k4�H��s7��Ar�xy'���,5�=�����*2v��O��k*�J�{Ѽ�=OK��aJ��Z�-[���h�R� L][�g����<�y0&���v��}����W���x6�ל�>�.�飳�����+���|�o$>dl=N�99E���2�y�	=B�ș�����9�7˟8.����@g�h��x�w����)Bk`¾��s����}��+����(��7�3��� �L�_n��&/	�����Vܥv7�$�24o;���zK�MY���2M�e<�� 9+	&��W�N�*wd?g�Q���@9�-1�j/��k>;����l`��CS�*@v�J��8���_�iP[���L�������ʹ��=��L������`1�[X��/m&�@�2*~�p�%9��q��b�2Vaܰe��9�mD�V���$��w3��b��t6�&>NyX��CM�6�u����!��q��f?�{<���&��ׂ�cOf�$�*<���}�������B����      D   �   x�U�1�@k����$E�Hi.>'X9ld| ~@i���V���n�S��ج9�;V��Z`��7���������Ԋ'��V�����X��(\ea�`��'��(z��������P�g��*e�jd
����b�Ez�)�/p,Bi      J      x������ � �      <   {   x�3���+�LIUp��,)IL��K�441�30�41�2��"l�e��_Z���� &m�Oڜ����\����)��)�F�0!CC΀�����T�����d9#N��rCd!c���!P��$���� �9C      F      x�Eͻ!�����Ft��F���Hk�2F��!���
�v��L�h]�_؉nj�Qؗk�Xb/
��]�ú�R�,�k�1����>�v�ŉ"Kn��PR�'I��È'i�a�����'�O�gJ��$+�      H   D   x�3��V�M�KLO-�,�L�L�2�9'gd��@�\Ɯ������Eɩ
�%�ii ��%\1z\\\ �$�            x�32�,��tJ�K�ILI-������� B[�      !      x�3�L�,J��J�VH�HIKa�=... o�      #   Y   x�}�!�0Pݞb~���R�v�`0��	1���Է'(),�H��tifM��0�q�2���q�����k�u�:ǁz��53�I�      2      x������ � �      �     x���[o�:ǟ�O�C��ߝDZ�a������Z�Ȑ��KB(�O.%�)P�E��������A�P�	F�������к�f2�j�h�f C�o �����I�I���!(-B��G@�\�3��} ���bW.��I�2��k�
I�@�!�IF_�.�3�:6xV��T����|,�mռ,���h����0�3;���� 8�G.S"M�HP#Ky勹��&����aЄD��r��=�J?
��ďQ| �^f!�p�`��'k2�X������6	�0���l0���q���f��~,C��ҟbq׿��џҴ ��X�|B��_�t�l	<���V��7��R>c�9rQ	�*
� ����Q��wK�`��μ_��2��s�^b�l����"`^�-��G<�w��;	D�����q�v�.��P~�T�E�F�1�Ǥ�Vo~�&=�g��#R�T�Y Ἱ����5:~��+N�k�P,ש<�F�p��޸;�*�a�!NΈǉ�d/73�;���R��0p.S ~H"gv����l:vo�`���R8'�i�sI�}R��v���7$4��;)$� �������0[KF��@��i�d47�I���P�F6��DB��D��!�v'#Iq�n���r��$�`:�Ro��v�d�X�&,S5Y��`B	W��`�\�h%��ށ� �w�3G�B�5p���?3)ר�	'GS�8�l��`>�8#�_�K��5Vf@x�oGvmٓQ���c=J�"�]���X.#켋��^��­��@:/S/�+������<�-?�ϝ���M������2<�	]0���s����K���1zY/�Us�Az�z�q덼\Iu�
QbΎ�0�>�n��|G��}�m������Y��7˼\w1*���FG����e��
����dTl����p�4��D'0Sx����4`Uv�'U�(��t	<	z�^Q����1~��^+���p=�aB� �
ݶ6�h���oE��+��(�zi\y����re����<c�I��8�ǳ�+���W;���Y��O�M���M`��m^aR��W��e���CǠ�FѮݏ��W]���7)����0�aR�1b������;���xX�����*|m�����T0�t�{�Y}���1)F���1{h|����O��VQ�&�Ͻ-��Rwu��5�\g��w�̂X�HE}����, �u��˅���n�v�ޮoqz�Q饮��,��ߕ���sx@ٗ�,
��GA5'�G�$Co*7�~kWWW�0.<      �      x������ � �      �      x������ � �     