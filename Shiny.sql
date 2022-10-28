--
-- PostgreSQL database dump
--

-- Dumped from database version 11.17 (Debian 11.17-astra.se1)
-- Dumped by pg_dump version 14.2

-- Started on 2022-10-28 17:12:58

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET escape_string_warning = off;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 24186)
-- Name: Lab1; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "Lab1";


SET default_tablespace = '';

--
-- TOC entry 219 (class 1259 OID 24297)
-- Name: agent; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".agent (
    id_agent integer NOT NULL,
    title character varying
);


--
-- TOC entry 213 (class 1259 OID 24199)
-- Name: agent_priority_history; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".agent_priority_history (
    id_ag_pr_his integer NOT NULL,
    id_agent integer,
    change_date date,
    priority_value integer
);


--
-- TOC entry 226 (class 1259 OID 26826)
-- Name: agent_type; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".agent_type (
    id_agent_type integer NOT NULL,
    title character varying,
    image character varying
);


--
-- TOC entry 224 (class 1259 OID 25889)
-- Name: material; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".material (
    id_material integer NOT NULL,
    title character varying,
    countin_pack integer,
    countin_stock real,
    min_count character varying,
    description character varying,
    cost numeric,
    image character varying,
    id_material_type integer,
    unit character varying
);


--
-- TOC entry 223 (class 1259 OID 25355)
-- Name: material_count_history; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".material_count_history (
    id_mat_count_his integer NOT NULL,
    id_material integer,
    change_date date,
    count_value real
);


--
-- TOC entry 217 (class 1259 OID 24254)
-- Name: material_supplier; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".material_supplier (
    id_mat integer NOT NULL,
    id_sup integer NOT NULL
);


--
-- TOC entry 215 (class 1259 OID 24232)
-- Name: material_type; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".material_type (
    id_mat_type integer NOT NULL,
    title text,
    defected_percent real
);


--
-- TOC entry 225 (class 1259 OID 26732)
-- Name: product; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".product (
    id_product integer NOT NULL,
    title text,
    id_product_type integer,
    article_number character varying,
    description character varying,
    image character varying,
    production_person_count integer,
    production_workshop_number integer,
    min_cost_for_agent numeric
);


--
-- TOC entry 214 (class 1259 OID 24205)
-- Name: product_cost_history; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".product_cost_history (
    id_pr_cost_his integer NOT NULL,
    id_product integer,
    change_date date,
    cost_value character varying
);


--
-- TOC entry 218 (class 1259 OID 24279)
-- Name: product_material; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".product_material (
    id_product integer NOT NULL,
    id_material integer NOT NULL,
    count real
);


--
-- TOC entry 221 (class 1259 OID 25291)
-- Name: product_sale; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".product_sale (
    id_pro_sale integer NOT NULL,
    id_agent integer,
    id_product integer,
    sale_date date,
    product_count integer
);


--
-- TOC entry 222 (class 1259 OID 25346)
-- Name: product_type; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".product_type (
    id_pro_type integer NOT NULL,
    title text,
    defected_percent real
);


--
-- TOC entry 220 (class 1259 OID 25265)
-- Name: shop; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".shop (
    id_shop integer NOT NULL,
    title text,
    address character varying,
    id_agent integer
);


--
-- TOC entry 216 (class 1259 OID 24246)
-- Name: supplier; Type: TABLE; Schema: Lab1; Owner: -
--

CREATE TABLE "Lab1".supplier (
    id_sup integer NOT NULL,
    title text,
    inn character varying,
    start_date date,
    quality_rating integer,
    supplier_type character varying
);


--
-- TOC entry 3090 (class 0 OID 24297)
-- Dependencies: 219
-- Data for Name: agent; Type: TABLE DATA; Schema: Lab1; Owner: -
--



--
-- TOC entry 3084 (class 0 OID 24199)
-- Dependencies: 213
-- Data for Name: agent_priority_history; Type: TABLE DATA; Schema: Lab1; Owner: -
--



--
-- TOC entry 3097 (class 0 OID 26826)
-- Dependencies: 226
-- Data for Name: agent_type; Type: TABLE DATA; Schema: Lab1; Owner: -
--



--
-- TOC entry 3095 (class 0 OID 25889)
-- Dependencies: 224
-- Data for Name: material; Type: TABLE DATA; Schema: Lab1; Owner: -
--

INSERT INTO "Lab1".material VALUES (1, 'Резина для зимы 0x3', 4, 726, '46', NULL, 37293, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (2, 'Резина для зимы 1x0', 5, 929, '48', NULL, 43046, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (3, 'Резина для зимы 1x3', 9, 84, '50', NULL, 27823, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (4, 'Резина для зимы 2x3', 3, 344, '12', NULL, 53323, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (5, 'Резина для зимы 3x1', 9, 690, '24', NULL, 25844, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (6, 'Резина для зимы 3x3', 2, 275, '28', NULL, 31356, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (7, 'Резина для лета 0x1', 9, 127, '17', NULL, 23936, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (8, 'Резина для лета 0x2', 4, 753, '33', NULL, 9069, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (9, 'Резина для лета 1x0', 5, 234, '32', NULL, 25499, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (10, 'Резина для лета 2x1', 2, 561, '39', NULL, 47610, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (11, 'Резина для лета 2x2', 2, 542, '20', NULL, 54298, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (12, 'Резина для лета 3x3', 6, 652, '28', NULL, 6764, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (13, 'Резина для льда 0x1', 5, 964, '34', NULL, 53394, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (14, 'Резина для льда 0x2', 2, 816, '21', NULL, 48785, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (15, 'Резина для льда 1x3', 2, 286, '39', NULL, 23551, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (16, 'Резина для льда 2x0', 6, 86, '8', NULL, 24767, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (17, 'Резина для льда 3x3', 7, 909, '35', NULL, 23174, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (18, 'Резина для пустыни 0x3', 8, 761, '7', NULL, 8094, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (19, 'Резина для пустыни 1x1', 6, 120, '21', NULL, 11642, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (20, 'Резина для пустыни 1x2', 9, 496, '36', NULL, 24876, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (21, 'Резина для пустыни 1x3', 5, 222, '9', NULL, 21546, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (22, 'Резина для пустыни 2x0', 5, 769, '14', NULL, 17425, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (23, 'Резина для пустыни 2x1', 10, 918, '12', NULL, 34518, NULL, 1, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (24, 'Резина для пустыни 2x3', 5, 103, '38', NULL, 55679, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (25, 'Резина для пустыни 3x2', 1, 931, '43', NULL, 5854, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (26, 'Резина для пустыни 3x3', 9, 840, '11', NULL, 5144, NULL, 1, ' метр');
INSERT INTO "Lab1".material VALUES (27, 'Шипы для зимы 0x1', 3, 255, '25', NULL, 6484, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (28, 'Шипы для зимы 2x0', 3, 466, '8', NULL, 34841, NULL, 2, ' штук');
INSERT INTO "Lab1".material VALUES (29, 'Шипы для зимы 3x0', 6, 192, '48', NULL, 9260, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (30, 'Шипы для зимы 3x3', 4, 652, '33', NULL, 15159, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (31, 'Шипы для лета 0x1', 2, 974, '35', NULL, 28825, NULL, 2, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (32, 'Шипы для лета 2x0', 1, 68, '43', NULL, 8206, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (33, 'Шипы для лета 2x2', 4, 15, '10', NULL, 44506, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (34, 'Шипы для лета 3x1', 6, 184, '40', NULL, 51974, NULL, 2, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (35, 'Шипы для лета 3x2', 1, 547, '11', NULL, 43288, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (36, 'Шипы для льда 0x0', 2, 585, '37', NULL, 21188, NULL, 2, ' килограммрамм');
INSERT INTO "Lab1".material VALUES (37, 'Шипы для льда 0x1', 2, 147, '8', NULL, 49557, NULL, 2, ' штук');
INSERT INTO "Lab1".material VALUES (38, 'Шипы для льда 1x0', 10, 914, '22', NULL, 25538, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (39, 'Шипы для льда 1x1', 7, 335, '33', NULL, 48279, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (40, 'Шипы для льда 2x0', 4, 214, '15', NULL, 17996, NULL, 2, ' штук');
INSERT INTO "Lab1".material VALUES (41, 'Шипы для льда 2x1', 10, 634, '25', NULL, 23287, NULL, 2, ' штук');
INSERT INTO "Lab1".material VALUES (42, 'Шипы для льда 2x2', 1, 479, '22', NULL, 13077, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (43, 'Шипы для льда 2x3', 10, 237, '7', NULL, 27105, NULL, 2, ' штук');
INSERT INTO "Lab1".material VALUES (44, 'Шипы для льда 3x0', 9, 885, '5', NULL, 52272, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (45, 'Шипы для льда 3x1', 8, 123, '43', NULL, 42668, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (46, 'Шипы для льда 3x2', 3, 470, '26', NULL, 6511, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (47, 'Шипы для пустыни 0x1', 4, 612, '24', NULL, 55689, NULL, 2, ' штук');
INSERT INTO "Lab1".material VALUES (48, 'Шипы для пустыни 0x2', 4, 792, '46', NULL, 8571, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (49, 'Шипы для пустыни 3x1', 4, 37, '43', NULL, 27104, NULL, 2, ' грамм');
INSERT INTO "Lab1".material VALUES (50, 'Шипы для пустыни 3x2', 2, 923, '19', NULL, 28748, NULL, 2, ' грамм');


--
-- TOC entry 3094 (class 0 OID 25355)
-- Dependencies: 223
-- Data for Name: material_count_history; Type: TABLE DATA; Schema: Lab1; Owner: -
--



--
-- TOC entry 3088 (class 0 OID 24254)
-- Dependencies: 217
-- Data for Name: material_supplier; Type: TABLE DATA; Schema: Lab1; Owner: -
--



--
-- TOC entry 3086 (class 0 OID 24232)
-- Dependencies: 215
-- Data for Name: material_type; Type: TABLE DATA; Schema: Lab1; Owner: -
--

INSERT INTO "Lab1".material_type VALUES (1, 'Резина', 0);
INSERT INTO "Lab1".material_type VALUES (2, 'Шипы', 0);


--
-- TOC entry 3096 (class 0 OID 26732)
-- Dependencies: 225
-- Data for Name: product; Type: TABLE DATA; Schema: Lab1; Owner: -
--

INSERT INTO "Lab1".product VALUES (1, 'Диск R15 Лето', 1, '347427', '0', '0', 1, 1, 5071);
INSERT INTO "Lab1".product VALUES (2, 'Диск R16 Кованый', 1, '440075', '0', '0', 3, 9, 9068);
INSERT INTO "Lab1".product VALUES (3, 'Диск R16 Лето', 1, '251201', '0', '0', 3, 10, 8149);
INSERT INTO "Lab1".product VALUES (4, 'Диск R16 Липучка', 1, '435703', '0', '0', 5, 2, 9934);
INSERT INTO "Lab1".product VALUES (5, 'Диск R17 Зима', 1, '343841', '0', '0', 3, 9, 12768);
INSERT INTO "Lab1".product VALUES (6, 'Диск R17 Лето', 1, '400508', '0', '0', 1, 4, 12941);
INSERT INTO "Lab1".product VALUES (7, 'Диск R17 Липучка', 1, '282569', '0', '0', 5, 5, 12356);
INSERT INTO "Lab1".product VALUES (8, 'Диск R18 Зима', 1, '255211', '0', '0', 1, 6, 13239);
INSERT INTO "Lab1".product VALUES (9, 'Диск R18 Лето', 1, '317858', '0', '0', 5, 3, 8435);
INSERT INTO "Lab1".product VALUES (10, 'Диск R19 Зима', 1, '358851', '0', '0', 5, 6, 5695);
INSERT INTO "Lab1".product VALUES (11, 'Диск R19 Лето', 1, '243152', '0', '0', 1, 9, 6264);
INSERT INTO "Lab1".product VALUES (12, 'Диск R19 Липучка', 1, '318661', '0', '0', 1, 6, 5544);
INSERT INTO "Lab1".product VALUES (13, 'Диск R20 Зима', 1, '252453', '0', '0', 4, 9, 14526);
INSERT INTO "Lab1".product VALUES (14, 'Диск R20 Лето', 1, '300047', '0', '0', 3, 10, 10323);
INSERT INTO "Lab1".product VALUES (15, 'Диск R20 Липучка', 1, '447543', '0', '0', 4, 8, 11661);
INSERT INTO "Lab1".product VALUES (16, 'Диск R21 Зима', 1, '250714', '0', '0', 5, 5, 8762);
INSERT INTO "Lab1".product VALUES (17, 'Диск R21 Кованый', 1, '299085', '0', '0', 3, 3, 4757);
INSERT INTO "Lab1".product VALUES (18, 'Диск R21 Лето', 1, '449834', '0', '0', 4, 8, 2698);
INSERT INTO "Lab1".product VALUES (19, 'Диск R22 Зима', 1, '453650', '0', '0', 5, 3, 11459);
INSERT INTO "Lab1".product VALUES (20, 'Диск R22 Кованый', 1, '388520', '0', '0', 3, 2, 7498);
INSERT INTO "Lab1".product VALUES (21, 'Диск R22 Лето', 1, '406411', '0', '0', 2, 4, 2904);
INSERT INTO "Lab1".product VALUES (22, 'Диск R22 Липучка', 1, '418286', '0', '0', 4, 2, 10670);
INSERT INTO "Lab1".product VALUES (23, 'Запаска R14 Зима', 2, '440993', '0', '0', 5, 2, 6020);
INSERT INTO "Lab1".product VALUES (24, 'Запаска R14 Кованый', 2, '412235', '0', '0', 4, 6, 12891);
INSERT INTO "Lab1".product VALUES (25, 'Запаска R14 Лето', 2, '448396', '0', '0', 1, 5, 12878);
INSERT INTO "Lab1".product VALUES (26, 'Запаска R15 Зима', 2, '251241', '0', '0', 3, 10, 3874);
INSERT INTO "Lab1".product VALUES (27, 'Запаска R15 Кованый', 2, '327657', '0', '0', 2, 8, 8667);
INSERT INTO "Lab1".product VALUES (28, 'Запаска R15 Лето', 2, '348910', '0', '0', 1, 9, 4969);
INSERT INTO "Lab1".product VALUES (29, 'Запаска R15 Липучка', 2, '237228', '0', '0', 3, 8, 5510);
INSERT INTO "Lab1".product VALUES (30, 'Запаска R16 Зима', 2, '394413', '0', '0', 3, 10, 12679);
INSERT INTO "Lab1".product VALUES (31, 'Запаска R16 Кованый', 2, '432234', '0', '0', 3, 7, 13556);
INSERT INTO "Lab1".product VALUES (32, 'Запаска R17 Кованый', 2, '372287', '0', '0', 5, 3, 5808);
INSERT INTO "Lab1".product VALUES (33, 'Запаска R17 Лето', 2, '331576', '0', '0', 3, 8, 4803);
INSERT INTO "Lab1".product VALUES (34, 'Запаска R17 Липучка', 2, '327883', '0', '0', 2, 2, 12332);
INSERT INTO "Lab1".product VALUES (35, 'Запаска R18 Лето', 2, '305509', '0', '0', 1, 3, 5192);
INSERT INTO "Lab1".product VALUES (36, 'Запаска R18 Липучка', 2, '279256', '0', '0', 4, 5, 9759);
INSERT INTO "Lab1".product VALUES (37, 'Запаска R19 Зима', 2, '254860', '0', '0', 2, 5, 5568);
INSERT INTO "Lab1".product VALUES (38, 'Запаска R19 Кованый', 2, '390434', '0', '0', 5, 8, 14258);
INSERT INTO "Lab1".product VALUES (39, 'Запаска R19 Лето', 2, '283112', '0', '0', 3, 4, 3362);
INSERT INTO "Lab1".product VALUES (40, 'Запаска R19 Липучка', 2, '438383', '0', '0', 3, 1, 12000);
INSERT INTO "Lab1".product VALUES (41, 'Запаска R20 Зима', 2, '241577', '0', '0', 2, 6, 9125);
INSERT INTO "Lab1".product VALUES (42, 'Запаска R20 Кованый', 2, '249737', '0', '0', 5, 5, 7509);
INSERT INTO "Lab1".product VALUES (43, 'Запаска R20 Липучка', 2, '335226', '0', '0', 1, 2, 9988);
INSERT INTO "Lab1".product VALUES (44, 'Запаска R21 Зима', 2, '365509', '0', '0', 5, 6, 14556);
INSERT INTO "Lab1".product VALUES (45, 'Запаска R21 Лето', 2, '299112', '0', '0', 2, 8, 3694);
INSERT INTO "Lab1".product VALUES (46, 'Запаска R21 Липучка', 2, '247470', '0', '0', 1, 2, 10139);
INSERT INTO "Lab1".product VALUES (47, 'Запаска R22 Зима', 2, '268886', '0', '0', 3, 2, 13471);
INSERT INTO "Lab1".product VALUES (48, 'Запаска R22 Кованый', 2, '341800', '0', '0', 2, 4, 5447);
INSERT INTO "Lab1".product VALUES (49, 'Запаска R22 Липучка', 2, '328305', '0', '0', 2, 1, 10116);
INSERT INTO "Lab1".product VALUES (50, 'Запаска R23 Зима', 2, '394768', '0', '0', 1, 9, 13019);
INSERT INTO "Lab1".product VALUES (51, 'Колесо R14 Кованый', 3, '429265', NULL, NULL, 3, 6, 11838);
INSERT INTO "Lab1".product VALUES (52, 'Колесо R15 Кованый', 3, '376388', NULL, NULL, 3, 4, 9439);
INSERT INTO "Lab1".product VALUES (53, 'Колесо R16 Лето', 3, '337577', NULL, NULL, 1, 9, 10161);
INSERT INTO "Lab1".product VALUES (54, 'Колесо R16 Липучка', 3, '263261', NULL, NULL, 4, 1, 14521);
INSERT INTO "Lab1".product VALUES (55, 'Колесо R17 Зима', 3, '381949', NULL, NULL, 4, 6, 5902);
INSERT INTO "Lab1".product VALUES (56, 'Колесо R17 Лето', 3, '332936', NULL, NULL, 2, 1, 11145);
INSERT INTO "Lab1".product VALUES (57, 'Колесо R17 Липучка', 3, '281537', NULL, NULL, 1, 2, 4365);
INSERT INTO "Lab1".product VALUES (58, 'Колесо R18 Зима', 3, '387609', NULL, NULL, 1, 4, 3445);
INSERT INTO "Lab1".product VALUES (59, 'Колесо R18 Кованый', 3, '241659', NULL, NULL, 4, 10, 11509);
INSERT INTO "Lab1".product VALUES (60, 'Колесо R18 Лето', 3, '412238', NULL, NULL, 2, 7, 13892);
INSERT INTO "Lab1".product VALUES (61, 'Колесо R18 Липучка', 3, '332858', NULL, NULL, 3, 7, 14804);
INSERT INTO "Lab1".product VALUES (62, 'Колесо R19 Лето', 3, '298778', NULL, NULL, 1, 10, 7493);
INSERT INTO "Lab1".product VALUES (63, 'Колесо R19 Липучка', 3, '440973', NULL, NULL, 4, 4, 8439);
INSERT INTO "Lab1".product VALUES (64, 'Колесо R20 Зима', 3, '427198', NULL, NULL, 4, 10, 2397);
INSERT INTO "Lab1".product VALUES (65, 'Колесо R20 Кованый', 3, '445217', NULL, NULL, 3, 10, 9569);
INSERT INTO "Lab1".product VALUES (66, 'Колесо R20 Лето', 3, '434626', NULL, NULL, 5, 8, 11959);
INSERT INTO "Lab1".product VALUES (67, 'Колесо R20 Липучка', 3, '363664', NULL, NULL, 1, 8, 12681);
INSERT INTO "Lab1".product VALUES (68, 'Колесо R21 Лето', 3, '276905', NULL, NULL, 1, 2, 10343);
INSERT INTO "Lab1".product VALUES (69, 'Колесо R21 Липучка', 3, '403378', NULL, NULL, 3, 10, 3626);
INSERT INTO "Lab1".product VALUES (70, 'Шина R14 Кованый', 4, '274477', NULL, NULL, 5, 5, 9527);
INSERT INTO "Lab1".product VALUES (71, 'Шина R14 Лето', 4, '330951', NULL, NULL, 4, 7, 6786);
INSERT INTO "Lab1".product VALUES (72, 'Шина R14 Липучка', 4, '331598', NULL, NULL, 4, 1, 13879);
INSERT INTO "Lab1".product VALUES (73, 'Шина R15 Зима', 4, '312952', NULL, NULL, 2, 5, 4039);
INSERT INTO "Lab1".product VALUES (74, 'Шина R15 Кованый', 4, '274665', NULL, NULL, 2, 10, 13101);
INSERT INTO "Lab1".product VALUES (75, 'Шина R15 Липучка', 4, '349418', NULL, NULL, 1, 4, 6393);
INSERT INTO "Lab1".product VALUES (76, 'Шина R16 Зима', 4, '300433', NULL, NULL, 4, 2, 2570);
INSERT INTO "Lab1".product VALUES (77, 'Шина R16 Кованый', 4, '421321', NULL, NULL, 1, 2, 14691);
INSERT INTO "Lab1".product VALUES (78, 'Шина R16 Лето', 4, '437927', NULL, NULL, 3, 6, 7181);
INSERT INTO "Lab1".product VALUES (79, 'Шина R16 Липучка', 4, '320970', NULL, NULL, 1, 2, 2264);
INSERT INTO "Lab1".product VALUES (80, 'Шина R17 Зима', 4, '291319', NULL, NULL, 2, 4, 6426);
INSERT INTO "Lab1".product VALUES (81, 'Шина R17 Кованый', 4, '299692', NULL, NULL, 3, 10, 11463);
INSERT INTO "Lab1".product VALUES (82, 'Шина R17 Лето', 4, '354738', NULL, NULL, 2, 10, 11329);
INSERT INTO "Lab1".product VALUES (83, 'Шина R17 Липучка', 4, '280863', NULL, NULL, 4, 8, 11695);
INSERT INTO "Lab1".product VALUES (84, 'Шина R18 Зима', 4, '444280', NULL, NULL, 4, 6, 13168);
INSERT INTO "Lab1".product VALUES (85, 'Шина R18 Кованый', 4, '275809', NULL, NULL, 4, 10, 3258);
INSERT INTO "Lab1".product VALUES (86, 'Шина R18 Лето', 4, '425463', NULL, NULL, 4, 10, 11625);
INSERT INTO "Lab1".product VALUES (87, 'Шина R18 Липучка', 4, '319450', NULL, NULL, 3, 6, 4951);
INSERT INTO "Lab1".product VALUES (88, 'Шина R19 Зима', 4, '444141', NULL, NULL, 2, 8, 2741);
INSERT INTO "Lab1".product VALUES (89, 'Шина R19 Кованый', 4, '291359', NULL, NULL, 5, 10, 14682);
INSERT INTO "Lab1".product VALUES (90, 'Шина R19 Лето', 4, '335030', NULL, NULL, 4, 10, 4870);
INSERT INTO "Lab1".product VALUES (91, 'Шина R19 Липучка', 4, '341034', NULL, NULL, 1, 5, 13063);
INSERT INTO "Lab1".product VALUES (92, 'Шина R20 Кованый', 4, '330937', NULL, NULL, 3, 1, 10928);
INSERT INTO "Lab1".product VALUES (93, 'Шина R20 Липучка', 4, '348553', NULL, NULL, 2, 2, 3508);
INSERT INTO "Lab1".product VALUES (94, 'Шина R21 Зима', 4, '398710', NULL, NULL, 2, 2, 9378);
INSERT INTO "Lab1".product VALUES (95, 'Шина R21 Кованый', 4, '329576', NULL, NULL, 2, 2, 7989);
INSERT INTO "Lab1".product VALUES (96, 'Шина R21 Лето', 4, '266521', NULL, NULL, 4, 1, 10561);
INSERT INTO "Lab1".product VALUES (97, 'Шина R21 Липучка', 4, '308647', NULL, NULL, 4, 6, 12830);
INSERT INTO "Lab1".product VALUES (98, 'Шина R22 Зима', 4, '382661', NULL, NULL, 1, 2, 10373);
INSERT INTO "Lab1".product VALUES (99, 'Шина R22 Кованый', 4, '416324', NULL, NULL, 2, 8, 13841);
INSERT INTO "Lab1".product VALUES (100, 'Шина R22 Лето', 4, '406784', NULL, NULL, 3, 5, 14692);


--
-- TOC entry 3085 (class 0 OID 24205)
-- Dependencies: 214
-- Data for Name: product_cost_history; Type: TABLE DATA; Schema: Lab1; Owner: -
--



--
-- TOC entry 3089 (class 0 OID 24279)
-- Dependencies: 218
-- Data for Name: product_material; Type: TABLE DATA; Schema: Lab1; Owner: -
--

INSERT INTO "Lab1".product_material VALUES (2, 50, 16);
INSERT INTO "Lab1".product_material VALUES (2, 33, 18);
INSERT INTO "Lab1".product_material VALUES (2, 34, 13);
INSERT INTO "Lab1".product_material VALUES (6, 37, 15);
INSERT INTO "Lab1".product_material VALUES (7, 21, 11);
INSERT INTO "Lab1".product_material VALUES (7, 39, 8);
INSERT INTO "Lab1".product_material VALUES (7, 45, 4);
INSERT INTO "Lab1".product_material VALUES (7, 20, 5);
INSERT INTO "Lab1".product_material VALUES (8, 34, 19);
INSERT INTO "Lab1".product_material VALUES (10, 40, 2);
INSERT INTO "Lab1".product_material VALUES (10, 9, 9);
INSERT INTO "Lab1".product_material VALUES (10, 41, 8);
INSERT INTO "Lab1".product_material VALUES (11, 40, 5);
INSERT INTO "Lab1".product_material VALUES (11, 12, 8);
INSERT INTO "Lab1".product_material VALUES (15, 46, 14);
INSERT INTO "Lab1".product_material VALUES (19, 1, 8);
INSERT INTO "Lab1".product_material VALUES (19, 17, 11);
INSERT INTO "Lab1".product_material VALUES (19, 39, 8);
INSERT INTO "Lab1".product_material VALUES (20, 12, 1);
INSERT INTO "Lab1".product_material VALUES (21, 5, 3);
INSERT INTO "Lab1".product_material VALUES (22, 14, 14);
INSERT INTO "Lab1".product_material VALUES (22, 5, 10);
INSERT INTO "Lab1".product_material VALUES (22, 38, 4);
INSERT INTO "Lab1".product_material VALUES (24, 36, 1);
INSERT INTO "Lab1".product_material VALUES (24, 46, 9);
INSERT INTO "Lab1".product_material VALUES (24, 4, 18);
INSERT INTO "Lab1".product_material VALUES (24, 1, 11);
INSERT INTO "Lab1".product_material VALUES (24, 33, 15);
INSERT INTO "Lab1".product_material VALUES (24, 12, 6);
INSERT INTO "Lab1".product_material VALUES (24, 5, 16);
INSERT INTO "Lab1".product_material VALUES (25, 25, 7);
INSERT INTO "Lab1".product_material VALUES (29, 46, 19);
INSERT INTO "Lab1".product_material VALUES (29, 34, 10);
INSERT INTO "Lab1".product_material VALUES (30, 10, 4);
INSERT INTO "Lab1".product_material VALUES (30, 18, 3);
INSERT INTO "Lab1".product_material VALUES (33, 30, 5);
INSERT INTO "Lab1".product_material VALUES (34, 32, 9);
INSERT INTO "Lab1".product_material VALUES (34, 9, 14);
INSERT INTO "Lab1".product_material VALUES (35, 35, 13);
INSERT INTO "Lab1".product_material VALUES (35, 27, 13);
INSERT INTO "Lab1".product_material VALUES (35, 33, 8);
INSERT INTO "Lab1".product_material VALUES (40, 5, 6);
INSERT INTO "Lab1".product_material VALUES (39, 42, 11);
INSERT INTO "Lab1".product_material VALUES (39, 8, 8);
INSERT INTO "Lab1".product_material VALUES (39, 18, 13);
INSERT INTO "Lab1".product_material VALUES (45, 2, 4);
INSERT INTO "Lab1".product_material VALUES (45, 20, 19);
INSERT INTO "Lab1".product_material VALUES (49, 32, 8);
INSERT INTO "Lab1".product_material VALUES (53, 1, 14);
INSERT INTO "Lab1".product_material VALUES (53, 49, 11);
INSERT INTO "Lab1".product_material VALUES (53, 2, 2);
INSERT INTO "Lab1".product_material VALUES (56, 36, 4);
INSERT INTO "Lab1".product_material VALUES (56, 11, 3);
INSERT INTO "Lab1".product_material VALUES (56, 14, 5);
INSERT INTO "Lab1".product_material VALUES (56, 3, 20);
INSERT INTO "Lab1".product_material VALUES (58, 40, 5);
INSERT INTO "Lab1".product_material VALUES (58, 1, 10);
INSERT INTO "Lab1".product_material VALUES (58, 48, 14);
INSERT INTO "Lab1".product_material VALUES (59, 35, 16);
INSERT INTO "Lab1".product_material VALUES (59, 11, 8);
INSERT INTO "Lab1".product_material VALUES (59, 47, 20);
INSERT INTO "Lab1".product_material VALUES (60, 11, 4);
INSERT INTO "Lab1".product_material VALUES (60, 10, 10);
INSERT INTO "Lab1".product_material VALUES (60, 38, 9);
INSERT INTO "Lab1".product_material VALUES (61, 31, 12);
INSERT INTO "Lab1".product_material VALUES (61, 6, 5);
INSERT INTO "Lab1".product_material VALUES (61, 34, 14);
INSERT INTO "Lab1".product_material VALUES (61, 20, 6);
INSERT INTO "Lab1".product_material VALUES (63, 50, 5);
INSERT INTO "Lab1".product_material VALUES (63, 8, 15);
INSERT INTO "Lab1".product_material VALUES (63, 24, 5);
INSERT INTO "Lab1".product_material VALUES (66, 15, 14);
INSERT INTO "Lab1".product_material VALUES (70, 37, 14);
INSERT INTO "Lab1".product_material VALUES (70, 4, 9);
INSERT INTO "Lab1".product_material VALUES (70, 47, 10);
INSERT INTO "Lab1".product_material VALUES (70, 7, 14);
INSERT INTO "Lab1".product_material VALUES (71, 48, 12);
INSERT INTO "Lab1".product_material VALUES (72, 32, 9);
INSERT INTO "Lab1".product_material VALUES (72, 6, 3);
INSERT INTO "Lab1".product_material VALUES (72, 31, 10);
INSERT INTO "Lab1".product_material VALUES (72, 3, 3);
INSERT INTO "Lab1".product_material VALUES (75, 4, 2);
INSERT INTO "Lab1".product_material VALUES (82, 40, 6);
INSERT INTO "Lab1".product_material VALUES (84, 2, 14);
INSERT INTO "Lab1".product_material VALUES (84, 23, 9);
INSERT INTO "Lab1".product_material VALUES (91, 25, 13);
INSERT INTO "Lab1".product_material VALUES (91, 21, 19);
INSERT INTO "Lab1".product_material VALUES (91, 2, 5);
INSERT INTO "Lab1".product_material VALUES (91, 34, 12);
INSERT INTO "Lab1".product_material VALUES (92, 8, 11);
INSERT INTO "Lab1".product_material VALUES (92, 20, 5);
INSERT INTO "Lab1".product_material VALUES (94, 25, 3);
INSERT INTO "Lab1".product_material VALUES (94, 37, 4);
INSERT INTO "Lab1".product_material VALUES (96, 4, 3);
INSERT INTO "Lab1".product_material VALUES (96, 3, 11);
INSERT INTO "Lab1".product_material VALUES (97, 32, 16);
INSERT INTO "Lab1".product_material VALUES (97, 31, 13);
INSERT INTO "Lab1".product_material VALUES (97, 22, 2);
INSERT INTO "Lab1".product_material VALUES (97, 20, 18);
INSERT INTO "Lab1".product_material VALUES (100, 19, 14);


--
-- TOC entry 3092 (class 0 OID 25291)
-- Dependencies: 221
-- Data for Name: product_sale; Type: TABLE DATA; Schema: Lab1; Owner: -
--



--
-- TOC entry 3093 (class 0 OID 25346)
-- Dependencies: 222
-- Data for Name: product_type; Type: TABLE DATA; Schema: Lab1; Owner: -
--

INSERT INTO "Lab1".product_type VALUES (1, 'Диск', 0);
INSERT INTO "Lab1".product_type VALUES (2, 'Запаска', 0);
INSERT INTO "Lab1".product_type VALUES (3, 'Колесо', 0);
INSERT INTO "Lab1".product_type VALUES (4, 'Шина', 0);


--
-- TOC entry 3091 (class 0 OID 25265)
-- Dependencies: 220
-- Data for Name: shop; Type: TABLE DATA; Schema: Lab1; Owner: -
--



--
-- TOC entry 3087 (class 0 OID 24246)
-- Dependencies: 216
-- Data for Name: supplier; Type: TABLE DATA; Schema: Lab1; Owner: -
--



--
-- TOC entry 2934 (class 2606 OID 26837)
-- Name: agent agent_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".agent
    ADD CONSTRAINT agent_pk PRIMARY KEY (id_agent);


--
-- TOC entry 2922 (class 2606 OID 24203)
-- Name: agent_priority_history agent_priority_history_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".agent_priority_history
    ADD CONSTRAINT agent_priority_history_pk PRIMARY KEY (id_ag_pr_his);


--
-- TOC entry 2948 (class 2606 OID 26833)
-- Name: agent_type agent_type_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".agent_type
    ADD CONSTRAINT agent_type_pk PRIMARY KEY (id_agent_type);


--
-- TOC entry 2942 (class 2606 OID 25359)
-- Name: material_count_history material_count_history_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".material_count_history
    ADD CONSTRAINT material_count_history_pk PRIMARY KEY (id_mat_count_his);


--
-- TOC entry 2944 (class 2606 OID 25916)
-- Name: material material_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".material
    ADD CONSTRAINT material_pk PRIMARY KEY (id_material);


--
-- TOC entry 2930 (class 2606 OID 24260)
-- Name: material_supplier material_supplier_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".material_supplier
    ADD CONSTRAINT material_supplier_pk PRIMARY KEY (id_mat, id_sup);


--
-- TOC entry 2926 (class 2606 OID 24239)
-- Name: material_type material_type_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".material_type
    ADD CONSTRAINT material_type_pk PRIMARY KEY (id_mat_type);


--
-- TOC entry 2924 (class 2606 OID 24212)
-- Name: product_cost_history product_cost_history_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product_cost_history
    ADD CONSTRAINT product_cost_history_pk PRIMARY KEY (id_pr_cost_his);


--
-- TOC entry 2932 (class 2606 OID 24285)
-- Name: product_material product_material_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product_material
    ADD CONSTRAINT product_material_pk PRIMARY KEY (id_product, id_material);


--
-- TOC entry 2946 (class 2606 OID 26739)
-- Name: product product_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product
    ADD CONSTRAINT product_pk PRIMARY KEY (id_product);


--
-- TOC entry 2938 (class 2606 OID 25295)
-- Name: product_sale product_sale_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product_sale
    ADD CONSTRAINT product_sale_pk PRIMARY KEY (id_pro_sale);


--
-- TOC entry 2940 (class 2606 OID 25353)
-- Name: product_type product_type_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product_type
    ADD CONSTRAINT product_type_pk PRIMARY KEY (id_pro_type);


--
-- TOC entry 2936 (class 2606 OID 25272)
-- Name: shop shop_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".shop
    ADD CONSTRAINT shop_pk PRIMARY KEY (id_shop);


--
-- TOC entry 2928 (class 2606 OID 24253)
-- Name: supplier supplier_pk; Type: CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".supplier
    ADD CONSTRAINT supplier_pk PRIMARY KEY (id_sup);


--
-- TOC entry 2955 (class 2606 OID 26860)
-- Name: agent agent_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".agent
    ADD CONSTRAINT agent_fk FOREIGN KEY (id_agent) REFERENCES "Lab1".agent_type(id_agent_type);


--
-- TOC entry 2949 (class 2606 OID 26855)
-- Name: agent_priority_history agent_priority_history_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".agent_priority_history
    ADD CONSTRAINT agent_priority_history_fk FOREIGN KEY (id_agent) REFERENCES "Lab1".agent(id_agent);


--
-- TOC entry 2962 (class 2606 OID 26980)
-- Name: agent_type agent_type_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".agent_type
    ADD CONSTRAINT agent_type_fk FOREIGN KEY (id_agent_type) REFERENCES "Lab1".agent(id_agent);


--
-- TOC entry 2959 (class 2606 OID 26907)
-- Name: material_count_history material_count_history_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".material_count_history
    ADD CONSTRAINT material_count_history_fk FOREIGN KEY (id_material) REFERENCES "Lab1".material(id_material);


--
-- TOC entry 2960 (class 2606 OID 26929)
-- Name: material material_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".material
    ADD CONSTRAINT material_fk FOREIGN KEY (id_material_type) REFERENCES "Lab1".material_type(id_mat_type);


--
-- TOC entry 2952 (class 2606 OID 26967)
-- Name: material_supplier material_supplie1r_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".material_supplier
    ADD CONSTRAINT material_supplie1r_fk FOREIGN KEY (id_sup) REFERENCES "Lab1".supplier(id_sup);


--
-- TOC entry 2951 (class 2606 OID 26962)
-- Name: material_supplier material_supplier_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".material_supplier
    ADD CONSTRAINT material_supplier_fk FOREIGN KEY (id_mat) REFERENCES "Lab1".material(id_material);


--
-- TOC entry 2950 (class 2606 OID 26890)
-- Name: product_cost_history product_cost_history_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product_cost_history
    ADD CONSTRAINT product_cost_history_fk FOREIGN KEY (id_product) REFERENCES "Lab1".product(id_product);


--
-- TOC entry 2961 (class 2606 OID 26885)
-- Name: product product_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product
    ADD CONSTRAINT product_fk FOREIGN KEY (id_product_type) REFERENCES "Lab1".product_type(id_pro_type);


--
-- TOC entry 2954 (class 2606 OID 26912)
-- Name: product_material product_material_f2k; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product_material
    ADD CONSTRAINT product_material_f2k FOREIGN KEY (id_material) REFERENCES "Lab1".material(id_material);


--
-- TOC entry 2953 (class 2606 OID 26895)
-- Name: product_material product_material_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product_material
    ADD CONSTRAINT product_material_fk FOREIGN KEY (id_product) REFERENCES "Lab1".product(id_product);


--
-- TOC entry 2958 (class 2606 OID 26875)
-- Name: product_sale product_sale_1fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product_sale
    ADD CONSTRAINT product_sale_1fk FOREIGN KEY (id_product) REFERENCES "Lab1".product(id_product);


--
-- TOC entry 2957 (class 2606 OID 26870)
-- Name: product_sale product_sale_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".product_sale
    ADD CONSTRAINT product_sale_fk FOREIGN KEY (id_agent) REFERENCES "Lab1".agent(id_agent);


--
-- TOC entry 2956 (class 2606 OID 26865)
-- Name: shop shop_fk; Type: FK CONSTRAINT; Schema: Lab1; Owner: -
--

ALTER TABLE ONLY "Lab1".shop
    ADD CONSTRAINT shop_fk FOREIGN KEY (id_agent) REFERENCES "Lab1".agent(id_agent);


-- Completed on 2022-10-28 17:13:04

--
-- PostgreSQL database dump complete
--

