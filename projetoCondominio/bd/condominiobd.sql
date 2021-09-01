PGDMP                         y            condominiobd    11.12    11.12                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16437    condominiobd    DATABASE     �   CREATE DATABASE condominiobd WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE condominiobd;
             postgres    false            �            1259    16438    proprietario    TABLE     u  CREATE TABLE public.proprietario (
    codigo bigint NOT NULL,
    apto character varying(255),
    bairro character varying(255),
    bloco character varying(255),
    cep character varying(255),
    cidade character varying(255),
    complemento character varying(255),
    cpf character varying(255),
    data_cadastro character varying(255),
    email character varying(255),
    endereco character varying(255),
    estado character varying(255),
    nome character varying(255),
    numero character varying(255),
    pesquisa character varying(255),
    telefone character varying(255),
    tipo character varying(255)
);
     DROP TABLE public.proprietario;
       public         postgres    false            �            1259    16454    seq_proprietario    SEQUENCE     y   CREATE SEQUENCE public.seq_proprietario
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seq_proprietario;
       public       postgres    false            �            1259    16456    seq_usuario    SEQUENCE     t   CREATE SEQUENCE public.seq_usuario
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.seq_usuario;
       public       postgres    false            �            1259    16446    usuario    TABLE     �   CREATE TABLE public.usuario (
    codigo bigint NOT NULL,
    documento character varying(255),
    nome character varying(255),
    observacao character varying(255),
    pesquisa character varying(255),
    tipo character varying(255)
);
    DROP TABLE public.usuario;
       public         postgres    false                      0    16438    proprietario 
   TABLE DATA               �   COPY public.proprietario (codigo, apto, bairro, bloco, cep, cidade, complemento, cpf, data_cadastro, email, endereco, estado, nome, numero, pesquisa, telefone, tipo) FROM stdin;
    public       postgres    false    196   G                 0    16446    usuario 
   TABLE DATA               V   COPY public.usuario (codigo, documento, nome, observacao, pesquisa, tipo) FROM stdin;
    public       postgres    false    197   d                  0    0    seq_proprietario    SEQUENCE SET     >   SELECT pg_catalog.setval('public.seq_proprietario', 5, true);
            public       postgres    false    198                       0    0    seq_usuario    SEQUENCE SET     9   SELECT pg_catalog.setval('public.seq_usuario', 3, true);
            public       postgres    false    199            �
           2606    16445    proprietario proprietario_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.proprietario
    ADD CONSTRAINT proprietario_pkey PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.proprietario DROP CONSTRAINT proprietario_pkey;
       public         postgres    false    196            �
           2606    16453    usuario usuario_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (codigo);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    197                  x������ � �            x������ � �     