--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2023-12-31 12:33:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16513)
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id integer NOT NULL,
    is_selectable boolean DEFAULT false NOT NULL
);


ALTER TABLE public.games OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16512)
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.games_id_seq OWNER TO postgres;

--
-- TOC entry 4853 (class 0 OID 0)
-- Dependencies: 215
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- TOC entry 4699 (class 2604 OID 16516)
-- Name: games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- TOC entry 4847 (class 0 OID 16513)
-- Dependencies: 216
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (id, is_selectable) FROM stdin;
10	t
80	t
300	t
20	t
30	t
40	t
50	t
60	t
70	t
130	f
220	f
340	f
240	t
280	f
360	t
320	t
380	f
4000	t
6910	t
6920	f
400	f
420	f
500	t
32380	t
550	t
620	t
24240	t
105450	t
202970	t
212910	f
220700	f
8870	f
105430	f
250740	t
242760	t
218620	t
233840	t
252950	t
235900	f
225840	t
258180	f
304050	t
215080	t
238010	f
221380	t
730	t
292120	f
292140	f
346010	t
345350	f
362890	t
372360	t
374320	t
257400	f
381210	t
388410	f
389730	t
397900	t
311210	t
363890	f
410850	f
280790	t
429660	t
431960	f
438100	t
266840	t
538100	t
555160	f
574050	t
648800	t
215280	t
629520	f
739630	t
742120	f
337000	f
595520	f
637650	t
813780	t
858820	t
945360	t
738540	t
342180	t
1072420	t
1097150	t
1104380	f
1104450	t
760620	f
203160	t
1273710	t
1281630	t
260750	f
260770	f
1283190	f
1295510	f
1322650	f
1041720	f
1364390	f
1435790	t
1476970	t
1533390	t
740130	f
1245620	t
2021210	f
1938090	t
570	t
558990	f
105600	t
107100	f
222730	f
252410	f
269770	t
311720	f
315460	t
345370	f
351730	f
356040	f
363970	f
365450	f
365670	f
219740	f
322330	t
395520	f
398030	t
409690	f
413150	t
421040	f
423880	f
431730	f
433340	f
434480	f
444440	f
455400	t
457140	f
461560	f
497640	f
502770	f
513450	f
571310	f
588430	f
599140	f
606150	f
610080	f
613100	f
623840	f
654440	f
656350	f
664180	f
665490	f
666140	f
705120	f
712730	f
736260	f
737520	f
743130	f
751780	f
757320	f
861540	f
876650	t
881100	f
938560	f
979120	f
1005450	f
1026820	f
1037020	f
1062520	t
1084600	t
1281930	t
1291340	f
1296360	t
1337760	f
1338330	f
1345860	f
1369340	f
1564560	f
1599600	t
1621690	t
264710	f
1637320	f
1970460	f
2291760	f
17410	f
6840	t
19680	f
70600	t
91310	f
203140	f
219890	f
238960	t
223710	t
265630	t
264380	f
238210	t
239070	t
249990	t
251570	t
251170	t
221910	f
238430	t
22330	f
108600	t
22320	f
221100	t
269210	t
272060	f
222880	t
288160	f
296470	t
299740	t
912290	f
301560	f
95400	t
304930	t
291480	t
315430	t
316480	t
318430	f
318690	f
326960	f
223650	f
329380	f
331470	f
334070	f
319630	f
345650	f
100	f
346250	f
346290	f
351800	f
351920	f
7670	f
8850	t
409710	f
409720	f
359310	f
1020470	f
374900	f
377590	f
380600	t
383580	f
387860	f
402890	f
414700	f
425580	f
435120	f
453720	t
456750	f
477160	t
480650	t
311240	f
518060	t
517910	f
518790	t
522470	f
527450	t
489830	f
532110	f
544920	t
557600	f
559650	t
562810	t
438740	t
572890	t
582500	t
594650	f
770720	f
578080	t
629760	t
633360	f
427290	f
653530	f
655790	t
657200	t
677160	t
682960	f
688020	t
698780	f
466240	t
587860	f
744190	f
760160	t
790740	f
792220	t
794800	t
797190	f
252490	t
700580	f
809960	t
813820	t
878760	f
815370	t
433850	t
439700	f
823130	f
834910	f
852110	f
865360	f
728880	f
895400	f
909080	f
942970	f
950700	f
962130	f
977570	f
992490	f
450390	f
204880	f
1045080	f
1050000	f
1057750	f
1073910	f
1094060	f
1119730	f
1120320	f
1145960	f
1172470	f
1190970	f
707010	f
678960	f
1085660	f
1206620	f
397540	f
555000	f
442070	f
1274570	f
1281800	f
1289310	f
1292940	f
1096570	f
1301720	f
1076280	f
1316700	f
1341290	f
1361000	f
1361320	f
1363770	f
1374290	f
826940	f
1388880	f
1404210	f
1426210	f
1483780	f
1515210	f
1553120	f
1580150	f
1604030	f
231430	f
1180660	f
424840	f
1661260	f
1695840	f
1782210	f
1790490	f
1794680	f
1062830	f
1818450	f
534380	f
1888430	f
1925320	f
1931950	f
1943950	f
2098350	f
2075730	f
2209150	f
2291850	f
493540	f
582660	f
2296990	f
6980	f
11230	t
1250	t
35420	t
41000	t
564310	t
24960	t
43110	f
50300	t
55100	t
92800	f
55150	t
96100	f
3830	f
55230	t
202200	f
67370	f
204340	t
201700	f
207610	f
211600	f
211740	f
12750	f
70400	f
70420	f
203510	f
204630	f
204360	t
219150	f
41010	f
41050	t
41060	t
41070	t
111600	t
201480	f
227780	t
57690	f
218740	t
219950	f
223470	f
71230	f
71240	f
71250	f
71260	f
205950	f
228280	t
11020	t
206210	t
211500	t
218230	t
1083500	t
230410	t
236390	t
238070	f
242720	t
223750	t
224260	t
225260	t
230050	f
3910	t
204450	f
234650	f
65930	f
35450	t
206190	f
239450	f
233130	f
255520	t
212480	t
261180	t
263280	f
263980	f
264200	f
268870	t
8930	t
271590	t
57300	f
239200	f
274190	t
274230	f
274290	f
282800	t
285310	f
285330	f
290930	f
238460	t
301520	t
301640	t
63380	t
224600	t
227700	f
312990	t
247080	t
317360	t
229810	t
6880	f
8190	f
10090	f
42700	t
42710	t
321040	f
323320	f
238320	f
214490	f
333930	t
339400	f
355180	f
255710	f
21690	t
367520	f
329050	f
376570	t
386360	f
858460	f
291550	f
295790	f
391540	f
24010	f
411560	f
225540	f
423230	f
422970	f
427270	f
427520	f
436820	f
244930	f
4560	f
4570	f
4580	f
4700	f
4760	f
4770	f
9310	f
9340	f
9450	f
20540	f
34270	f
228200	f
457420	f
470220	f
471710	f
488310	f
327030	f
273350	f
289070	f
520440	f
544750	f
550040	f
252850	f
3900	f
3990	f
8800	f
16810	f
34440	f
34450	f
34460	f
601150	f
602960	f
607260	f
611670	f
620980	f
9480	f
305050	f
677620	f
323580	f
234670	f
495140	f
543870	f
700330	f
707030	f
321400	f
716260	f
38400	f
744900	f
791930	f
837380	f
203770	f
843200	f
232050	f
310950	f
304390	f
654310	f
638070	f
1009850	f
728740	f
1094420	f
1150690	f
546560	f
1145360	f
359550	f
623990	f
1113000	f
1030840	f
1324780	f
1358140	f
1378990	f
257420	f
1514840	f
1593030	f
1599660	f
1259790	f
1466860	f
1384160	f
1240440	f
1792250	f
1816670	f
1817230	f
1818750	f
1920480	f
1677740	f
1966720	f
346110	f
407530	f
552500	f
2212330	f
1364780	f
43160	f
1627720	f
1272080	f
1778820	f
440	f
630	f
17520	f
259080	f
1017900	t
1128810	t
671860	t
814380	f
49520	t
102700	f
208030	f
208090	t
212070	t
212800	f
238260	t
209870	t
214420	t
248570	t
250600	f
271290	f
286100	f
219700	t
235340	t
246280	f
253710	t
232910	t
244210	t
107410	t
260410	f
266430	t
211820	t
367540	f
270170	f
281990	t
282440	t
285580	t
293540	t
302830	t
305260	t
302380	f
244630	t
227940	t
315640	f
317470	t
293500	f
297210	f
17580	t
312150	t
41300	t
274170	f
261640	t
338000	f
297130	f
361630	f
370360	f
375900	t
382490	t
383840	f
384180	t
386010	t
386940	t
412470	t
421020	t
444090	t
596350	f
449140	t
533690	f
548430	t
302590	t
571740	t
575820	t
639650	f
643270	f
386180	t
706990	t
427460	f
504370	t
884660	t
892970	t
931690	f
879160	t
1070580	t
1128000	t
1273440	t
1335200	t
1086940	t
282660	t
2400	t
2420	f
2430	f
444640	f
444200	t
859570	t
714010	f
1238860	t
1407200	t
1928420	t
674020	t
24740	t
48190	t
42680	t
42690	f
202170	f
47790	t
47830	t
262280	t
213670	f
253030	f
349040	t
503820	f
518030	f
493340	f
582010	t
592580	t
219640	t
641990	t
880940	t
633230	t
996770	t
1506830	t
32430	f
212500	t
287450	t
367500	f
331600	t
414530	t
445980	t
459220	t
493840	t
502280	f
292030	f
601510	t
678950	t
356190	f
905370	t
918570	t
933110	t
1042550	t
1089090	t
1137460	f
690640	t
1174180	t
1201240	t
1226470	t
1048540	f
1372110	t
1225330	t
1449850	t
1593500	f
1607250	t
1490890	t
1599340	t
1446780	t
1294660	t
990080	f
2343650	t
13560	f
13570	f
13580	f
33220	t
102600	f
108710	f
207210	f
205100	f
6900	f
214510	t
203290	t
241640	f
44350	t
237110	t
235600	t
250180	t
253230	t
265930	t
268850	f
278360	f
239160	f
235210	f
285160	t
286940	t
222900	t
298240	t
298260	f
312610	t
316790	f
241930	f
307690	f
330760	f
331360	t
339610	t
342480	t
348790	f
287290	t
356310	t
357500	t
359350	f
359800	f
363440	f
365300	f
366250	t
366260	t
382850	f
261570	f
387290	f
391460	t
391720	f
406150	f
239140	t
429180	f
442120	t
448830	f
460950	f
468560	t
302670	t
423950	f
496640	f
506610	f
513650	f
528230	t
529110	f
530700	t
307780	t
311730	t
287700	t
311340	f
542310	f
550650	t
436520	t
568810	f
576500	f
506540	t
624910	f
627690	f
394230	t
655550	t
673070	f
674940	t
683320	f
684300	t
589360	f
22350	t
731490	f
735580	f
476600	t
476620	t
755790	t
587620	f
797410	t
845070	f
863550	t
878670	f
758330	f
412020	f
1449560	f
955050	f
1178830	f
961440	f
996580	f
343710	f
1049410	t
1057090	f
431930	t
1144200	t
310560	t
1249200	f
287630	f
289690	t
628950	f
1313860	t
1190460	f
351510	t
1252330	t
757310	f
1817070	f
2281730	t
383270	f
1500	f
1510	f
1520	t
1530	t
45740	t
215670	f
218510	t
227260	f
233450	f
234940	f
247020	t
245470	f
232010	f
267920	f
267980	f
270090	f
271860	f
275490	f
283290	f
283310	f
283390	f
283430	f
284930	f
284950	f
1058200	f
285010	f
1005240	f
285050	f
285130	f
286570	t
287120	f
287140	t
289090	f
292370	f
292390	f
292410	t
292570	t
292620	f
292630	f
297020	f
299260	f
299500	t
301690	f
301700	f
301750	f
306350	f
308000	f
313140	f
313740	f
206420	t
317280	f
319180	t
321150	f
326120	f
338550	f
339800	f
341160	f
341800	t
342380	f
344130	f
344230	f
344300	f
345220	f
346950	f
350810	f
354920	f
355430	f
355920	f
359580	f
361620	f
375200	f
377680	f
385710	f
400370	f
402180	f
407330	f
407980	f
410900	t
414580	f
421700	f
426000	f
427470	f
470450	f
487220	f
517000	f
521500	f
539670	f
575510	f
581520	f
585550	f
617670	f
630100	t
667420	f
670430	f
675940	f
707320	f
710780	f
711560	f
368420	f
113020	t
15700	f
719120	f
727480	f
731230	f
743640	f
745710	f
745740	f
756190	f
756440	f
756880	f
757170	f
758920	f
767170	f
770350	f
776190	f
777020	f
777050	f
778590	f
782300	f
788510	f
796440	f
796480	f
806140	f
824190	f
825970	f
837290	f
841020	f
930210	f
1238680	f
1305420	t
408900	t
1451940	f
1623880	f
2064870	t
202990	f
2289970	t
1482620	t
\.


--
-- TOC entry 4854 (class 0 OID 0)
-- Dependencies: 215
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_id_seq', 643, true);


--
-- TOC entry 4702 (class 2606 OID 16519)
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


-- Completed on 2023-12-31 12:33:52

--
-- PostgreSQL database dump complete
--

