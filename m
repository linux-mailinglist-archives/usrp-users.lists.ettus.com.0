Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FE3B155C
	for <lists+usrp-users@lfdr.de>; Thu, 12 Sep 2019 22:25:27 +0200 (CEST)
Received: from [::1] (port=46540 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i8Veb-0006U3-PK; Thu, 12 Sep 2019 16:25:21 -0400
Received: from llmx3.ll.mit.edu ([129.55.12.49]:46788)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <prvs=4158004b29=blapointe@ll.mit.edu>)
 id 1i8VeX-0006Oc-Hj
 for usrp-users@lists.ettus.com; Thu, 12 Sep 2019 16:25:17 -0400
Received: from LLE2K16-MBX03.mitll.ad.local (LLE2K16-MBX03.mitll.ad.local) by
 llmx3.ll.mit.edu (unknown) with ESMTPS id x8CKOaJB043429 for
 <usrp-users@lists.ettus.com>; Thu, 12 Sep 2019 16:24:36 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: random phase offset when trying to synchronize two USRP N210s
Thread-Index: AdVpp+Bg3Ogn1G/VT/Wf8rdtwzmgOw==
Date: Thu, 12 Sep 2019 20:24:35 +0000
Message-ID: <f92fd3dd86ba40709538d0c0ab69d60f@ll.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.1.84]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-12_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909120211
Subject: [USRP-users] random phase offset when trying to synchronize two
 USRP N210s
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Lapointe,
 Benjamin - 0333 - MITLL via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Lapointe, Benjamin - 0333 - MITLL" <blapointe@ll.mit.edu>
Content-Type: multipart/mixed; boundary="===============4391499091483628522=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4391499091483628522==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0577_01D56986.8FE2FE90"

------=_NextPart_000_0577_01D56986.8FE2FE90
Content-Type: multipart/mixed;
	boundary="----=_NextPart_001_0578_01D56986.8FE2FE90"


------=_NextPart_001_0578_01D56986.8FE2FE90
Content-Type: multipart/alternative;
	boundary="----=_NextPart_002_0579_01D56986.8FE2FE90"


------=_NextPart_002_0579_01D56986.8FE2FE90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I am trying to synchronize two USRP N210 devices, one for TX and one for RX.
I've followed all of the instructions in the "Synchronizing the Device Time"
and "Align CORDICs in the DSP" seconds of the manual
(https://files.ettus.com/manual/page_sync.html); however, I'm still not
getting complete success.  

 

I can synchronize the two devices only if I use a center frequency of 0 Hz,
as shown in the attached cf_0e6.jpg.  If I use a center frequency of 10e6 Hz
for both TX and RX then there is a phase change between program runs, as
shown in the attached cf_10e6.jpg.  Each screenshot shows five recordings
spaced 20 seconds apart for two runs of the program.    

 

Should these results be expected?  

-          If so, can someone explain why there is a random phase offset
when using a non-zero center frequency. 

-          If not, what am I doing wrong?  I can share my code if that
helps. 

 

I also tried following the instructions in the "Align Los in the front-end
(SBX, UBX)", but that didn't help.  I didn't think it would help since I'm
using LFTX and LFRX boards.  

 

My hardware setup:

Transmitter: N210 with a LFTX and GPSDO

Receiver: N210 with a LFRX and GPSDO

 

Any help/feedback would be greatly appreciated,

Thanks!

-Ben


------=_NextPart_002_0579_01D56986.8FE2FE90
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:2002537208;
	mso-list-type:hybrid;
	mso-list-template-ids:161523100 -1091287438 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p class=3DMsoNormal>I am trying to =
synchronize two USRP N210 devices, one for TX and one for RX.&nbsp; =
I&#8217;ve followed all of the instructions in the &#8220;Synchronizing =
the Device Time&#8221; and &#8220;Align CORDICs in the DSP&#8221; =
seconds of the manual (<a =
href=3D"https://files.ettus.com/manual/page_sync.html">https://files.ettu=
s.com/manual/page_sync.html</a>); however, I&#8217;m still not getting =
complete success.&nbsp; <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I can =
synchronize the two devices only if I use a center frequency of 0 Hz, as =
shown in the attached cf_0e6.jpg.&nbsp; If I use a center frequency of =
10e6 Hz for both TX and RX then there is a phase change between program =
runs, as shown in the attached cf_10e6.jpg.&nbsp; Each screenshot shows =
five recordings spaced 20 seconds apart for two runs of the =
program.&nbsp; &nbsp;&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Should these =
results be expected?&nbsp; <o:p></o:p></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span style=3D'mso-list:Ignore'>-<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span><![endif]>If so, can someone explain why there is a random =
phase offset when using a non-zero center frequency. <o:p></o:p></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><span style=3D'mso-list:Ignore'>-<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span><![endif]>If not, what am I doing wrong?&nbsp; I can share =
my code if that helps. <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I also tried =
following the instructions in the &#8220;Align Los in the front-end =
(SBX, UBX)&#8221;, but that didn&#8217;t help.&nbsp; I didn&#8217;t =
think it would help since I&#8217;m using LFTX and LFRX boards.&nbsp; =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>My hardware setup:<o:p></o:p></p><p =
class=3DMsoNormal>Transmitter: N210 with a LFTX and =
GPSDO<o:p></o:p></p><p class=3DMsoNormal>Receiver: N210 with a LFRX and =
GPSDO<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Any help/feedback would be greatly =
appreciated,<o:p></o:p></p><p class=3DMsoNormal>Thanks!<o:p></o:p></p><p =
class=3DMsoNormal>-Ben<o:p></o:p></p></div></body></html>
------=_NextPart_002_0579_01D56986.8FE2FE90--

------=_NextPart_001_0578_01D56986.8FE2FE90
Content-Type: image/jpeg;
	name="cf_10e6.jpg"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="cf_10e6.jpg"

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsK
CwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQU
FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCAF3AeQDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9K6wf
Hni+28A+C9b8R3cMlzBpdpJdGCEfvJSqkhF/2mOFGeMmt6uZ+Jfg8/ED4f8AiDw6l19il1Kzkt4r
rbuEMhHyOV7gNgkd8YoAyPBfjvW77xdfeFvFOk2Ol6zFYQ6pAdNvWuYZYHd42XLxowdHTB4wQ6kH
qBF4j+Ks2i/FTwp4Oh0C9lg1ieaGfWJl8q2iZLSW4VI88ysfK5KjavQndxVLRfCvjN/GGoeMdWtN
Bg1o6ZbaTaWFnfzyweWJjLcSvK0CsCdwCoEOPLGW+c7d3xl4NvfEPjbwDrFtLbpa6Bf3N1dJKzB3
WSyngUIACCd0qk5I4B78EA4nVvjrfD4xXngnTZfB0H2K5tbWSPXNfa0v7h5YkmYW9usL+ZhJFx8w
ycjtmvUfFHjDQfBGmjUfEet6doGnmQRC71S7jtot5BIXe5AycHjPY15t8QPht4s8ZLr+gLF4dj8O
6xqVpenVVZ4b+2SIws48lYis0oMPySmVSA4yP3YDdN48/wCSifB3/saLj/0x6pQBV/4aM+E//RT/
AAb/AOFBaf8Axyj/AIaM+E//AEU/wb/4UFp/8cr2yigDxP8A4aM+E/8A0U/wb/4UFp/8co/4aM+E
/wD0U/wb/wCFBaf/AByvbKKAPE/+GjPhP/0U/wAG/wDhQWn/AMco/wCGjPhP/wBFP8G/+FBaf/HK
9sooA8T/AOGjPhP/ANFP8G/+FBaf/HKP+GjPhP8A9FP8G/8AhQWn/wAcr2yigDxP/hoz4T/9FP8A
Bv8A4UFp/wDHKP8Ahoz4T/8ART/Bv/hQWn/xyvbKKAPE/wDhoz4T/wDRT/Bv/hQWn/xyj/hoz4T/
APRT/Bv/AIUFp/8AHK9M8D+EIfA+i3OnQXElyk2p6hqZeQAENd3k10y8dlacqPZRXQUAeJ/8NGfC
f/op/g3/AMKC0/8AjlH/AA0Z8J/+in+Df/CgtP8A45XtlFAHif8Aw0Z8J/8Aop/g3/woLT/45R/w
0Z8J/wDop/g3/wAKC0/+OV7ZRQB4n/w0Z8J/+in+Df8AwoLT/wCOUf8ADRnwn/6Kf4N/8KC0/wDj
le2UUAeJ/wDDRnwn/wCin+Df/CgtP/jlH/DRnwn/AOin+Df/AAoLT/45XtlFAHif/DRnwn/6Kf4N
/wDCgtP/AI5R/wANGfCf/op/g3/woLT/AOOV6Z448IQ+ONFttOnuJLZIdT0/Uw8YBJa0vIbpV57M
0AU+zGugoA8T/wCGjPhP/wBFP8G/+FBaf/HKP+GjPhP/ANFP8G/+FBaf/HK9sooA8T/4aM+E/wD0
U/wb/wCFBaf/AByj/hoz4T/9FP8ABv8A4UFp/wDHK9sooA8T/wCGjPhP/wBFP8G/+FBaf/HKP+Gj
PhP/ANFP8G/+FBaf/HK9sooA8T/4aM+E/wD0U/wb/wCFBaf/AByj/hoz4T/9FP8ABv8A4UFp/wDH
K9sooA8T/wCGjPhP/wBFP8G/+FBaf/HKP+GjPhP/ANFP8G/+FBaf/HK9srn7LwhDZePtZ8UrcSNc
alpljpj25A2IttLdyKwPXLG8YH/cHrQB5n/w0Z8J/wDop/g3/wAKC0/+OUf8NGfCf/op/g3/AMKC
0/8Ajle2UUAeJ/8ADRnwn/6Kf4N/8KC0/wDjlH/DRnwn/wCin+Df/CgtP/jle2UUAeJ/8NGfCf8A
6Kf4N/8ACgtP/jlH/DRnwn/6Kf4N/wDCgtP/AI5XtlFAHif/AA0Z8J/+in+Df/CgtP8A45VOb49f
CW4uPNk+KXg0jso1+0H/ALUr3iigDxP/AIaM+E//AEU/wb/4UFp/8co/4aM+E/8A0U/wb/4UFp/8
cr2yigDw1f2hPhTGoVfir4QAAwP+J/Z//F05P2hvhQsgc/FPwe5AIG7xBZ98ej+1eofD3whD8PfA
Phrwtb3El3b6HpltpkdxKAHlWGJYwxA4BIXPHrXQUAeHzftDfCiTay/FHwYrqchv7ftD+H+spj/t
DfCuUBX+KfgopkEhddtBn2/1te50UAeJ/wDDRnwn/wCin+Df/CgtP/jlN/4aI+Em7d/ws3wXn1/t
+0/+OV7dRQB4in7RHwnjJx8UPBu087f+EgtOP/IlK/7RPwlkXDfE3wWw9Dr9of8A2pXttFAHhz/t
B/CRkAT4neDIypyrLr9pwf8Av5T5P2iPhPJCyf8AC0PBgLDGf7ftP/jle3UUAeFt+0J8K23Fvin4
L3HbjGu2mBg5/wCetX9E+OXw31rUodP074i+E9T1G8lEcFrZ6zbSSyucAKiLISxPoK9F8TeEIfEu
teE9RluJIX8Pam+pxIgBErNZ3Nrtb0G26ZuO6iuR/aK/5J3Y/wDY0eG//T5Y0AdNRRRQAUUUUAFF
FFABXC+PP+SifB3/ALGi4/8ATHqld1XC+PP+SifB3/saLj/0x6pQB7FRRRQAUUUUAFFFFABRRRQA
UUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABR
RRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFeY/tFf8k7sf+xo8N/+nyxr06vMf2iv+Sd2
P/Y0eG//AE+WNAHTUUUUAFFFFABRRRQAVwvjz/konwd/7Gi4/wDTHqld1XC+PP8Akonwd/7Gi4/9
MeqUAexUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUA
FFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABXmP7RX
/JO7H/saPDf/AKfLGvTq8x/aK/5J3Y/9jR4b/wDT5Y0AdNRRRQAUUUUAFFc/448ZWngPw++qXUE9
2TPDaW9nahTNc3E0qxRRJuIGWd1GSQAMkkAE1W8DeOk8Zf2tbTaZdaJq+k3Itb7Trxo2eNmjWRGV
o2ZXRkdSGB9QcEEAA6muF8ef8lE+Dv8A2NFx/wCmPVKdp3xe0PWPilP4FsBcXWo21hNe3F2sRFtG
YpYo2hEh4aQGZSQudvQ4JxTfHn/JRPg7/wBjRcf+mPVKAPYqKKKACiiigAooooAKKKKACiiigAoo
ooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiii
gAooooAKKKKACiiigAooooAKKKKACiiigArzH9or/kndj/2NHhv/ANPljXp1eY/tFf8AJO7H/saP
Df8A6fLGgDpqKKKACiiigDhvjB4e1PXvDNjLo1qL/UtK1ax1WOx8xYzcrBOjyRKzEKrMgfaWIXdt
yQMkZPgXTdesfF3ivxPfeHLuxPiLUbW3SxkubdpbW1gt9n2iXZIyfM+/5EZ22lDjO4L6fRQBwd54
Z1KX47aP4hS2zo9v4bvrCS58xflnkurSRE253HKxSHIGBt5OSM5/xf8ADOj+MPFnwl0jXtKsdb0m
48UTedYalbJcQS7dF1Nl3RuCpwyqwyOCAe1emVwvjz/konwd/wCxouP/AEx6pQB6pomh6b4a0m20
vSNPtdK0y1Ty4LOxhWGGJf7qIoAUewFXqKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoo
ooAKKKwvHHjPTPh74T1PxDq83k2FhCZXPdvRR7k4H4+lKTUVdgcj8XPjZpXwruNJtrmaD7RdzxiV
Zd58uEtgkBATubDbc4UbWJPGD6UrCRQykMrDIIOQRXwf4sv59X0XXPEfjE2kWu6+PIggvgxOlwyb
NkUKoA32gjy5CWO2JRErZZ0z9S/s6+M5PGnwn0aW6O3U7FP7PvI8jKSxfLg++AM9Oc8DpXl4bEyq
1XzJpPbt1WnfZ3s3qjuxGEeHhGbldvRq6912TSfqnfX5aHplFFFeqcIUUUUAFFFFABRRRQAUUUUA
FVb/AFSz0uHzb27gs4v79xIqL+ZNWq+d/HfhW9+PnxYuNHttZudD0Hw7Eq3lzZAefK7Mw8uNj8qN
lXySGwET5eQRjUqOnypK7k7LWyvZvV2dlZPo+1iox5r62tq+um2iur6tLdb6tI9euPih4YhnW3h1
WK/u5OIrexBneVsfdXbkEn61wHin4qeOtB1ODWZvC8OmeCLSZRetcsZL2SJjjzAoIEZUHO0B84xu
Ga9A8D/DLw58O7Yx6LpyQ3DrtmvZiZbmbpnfK2WIyM4zgHoBW3rWkwa9pF5p1yMwXMTRNxyMjqPc
dfwrmnTxUk3GoovoktL9m3dteii/Q1jOnHRx5l9zt5JOyfq5ItwzJcRJLE6yRuoZXQ5DA8gg9xT6
8i+AviO4s49U8Baqx/tPw8222LZzLZk4TqSTsPydvl2eteu100aqrU1Uj1/Dun5p6PzRnODpycX/
AMP2fo1qvIK8k/aL+LzfDLwxbWem3LQ+JNYl8iyMUImkgQEeZOIyMORlVVT953QYIzXqWpalbaPp
11f3sy21naxNPPNIcLHGoLMx9gATXxNYw3/7RHx7srzUVZLWSaO7WzL4+x6fDI3kxsMfekaOSQ/7
YQjK8UV5+zpOS3ei9fy0XfS9k9zTDxjKpea92Ku/0X/bzsu9rtbHrfgn9pxfDyHSfiTBfadfQkhN
W/s11SZFAG6aOPd5bk5ztyvPaukvv2qPBUd2ltZNe3xflLhrdoLcj18yQDjPHAPQ16na+H9LsrGS
yt9Ns4LOQbXt4oEWNh6FQMGvFvEHwNn8C3l1q3gkyppUmXufD8ESSBQEbmGOT93JyR+6fBxwkkfQ
4+xxUoWhUTl2dk35KVuVP1il5rqnUoOd6sXGP927t5tO7t6XfZdvXPBPjCx8deG7XWdPdHt5ty/J
IsgDKxUjcOCOMg9wQe9btfK37KPj61tPFWu+HEYRadq076lYRgsI45CSJURX+ZRuV+G5UCIdSa+q
avD1fawu91o+/wA/Puuj0CtSdGo6bd7de63T+a1CiiiukxCiiigAooooAKKKKACvEv2kPh74WuNJ
0vxXL4a0eTxRD4m8Nxxa29hEb2Nf7Zsk2rPt3gbWZcA9GI6Gvba8x/aK/wCSd2P/AGNHhv8A9Plj
QB01FFFABRRRQAUUUUAFcL48/wCSifB3/saLj/0x6pXdVwvjz/konwd/7Gi4/wDTHqlAHsVFFFAB
RRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFfInxt+Id18UvibYeF9Bt5tUsdLudlvawF
WW+vl6udxxsiwcMwKAhmJIBU+2fHzxjrPh/w1aaN4YtJL7xP4glNlZRRdVG3Mj56KFU/ePCgk9qh
+A/wH074N6M8srx6l4ovkH2/UsHAGc+TFnlYwfxY/M3YDknT+sz5J/BHf+89+Vdl1b9LO+qunW9l
LmhrJbdk+7XVr7K2vq9FZ5tr+z5aQ/DHxLpl+YtQ8S61p0sEt4AWSBjl0jh35basuHLN88j5dyWI
x5h+x142263c6XMWRNYtUvEjYHInUMJF5/iLR3DnP95B7D62r4j16xf4Z/HDVUswtu1lrhu7dABv
eG9CSKAecR/aFjjyf78g4ox0nywrJfA7WXZ2Vl03UYrsmzXCxuqtHdyXN3blHX5tpzuz7coqtp2o
Q6rp9re2zb7e5iWaNvVWAIP5GrNdSaaujnCiiimAUUUUAFFFFABRRRQBg+OvEsfhHwnqeqySLG0E
LeWWxjzDwufbJGfYGuI/Zt0WW0+HKa3dZa98RXD6qzPy3lPhYBnv+6VG+rt9TzP7ReqSeLPEHhj4
eWTt52q3aC42EgrGQTIcgZ+WFZT/AMCU9q92traKzt4reCNYoIkEccaDAVQMAAegFccf3mIlLpBc
q9XaUvw5LPvzLua/DTX97X5K6X48115RfYlooorsMj5++PsFx8NfG2gfEzTYWkS1fydShhHzTQEb
ZF68koAwzwDEPWvedP1C21awtr2zmS5tLmJZoZozlZEYAqwPcEEGsnxz4Xi8ZeFdQ0mUKTPGfLL9
A45Un2z19ia+ePgf8Yj8P/DOv+CdWhabVtDkC6HaSSYkvVmlEcNsCR95ZnVM9g44AQ1zUaco4l0Y
/b1X+L7S+atJf9vtl1KkVRdSX2N/8L2fyej/AMUEjp/2jvF66tPD4OguWtrKEC/1u7QkeTEg8xUz
0JAXzCp7iBW4mqz+y/4RNrpup+Jbi1NrPfyeXBbnOLeLZH+6UdtipDEf9qBj358w1mwuNXitdMuJ
I9a1DXpje30y52XVqk0asAOcR3V00UYXtCIB/BX1j4Z0RPDmgWOmrIZjbxBXmYYMr9Xc+7MSx9zX
NzrFYnmjrCGi8+7/AO3pL1XIk9jqqQeGoRoS0nL3peXSMf8At3X/ALeu1uadFFFekcR8S/Ebw+fh
f8aNWktm+zRQ3aeIbNjuCpb3DBLliR12TKsoXPSE8DOT9i+F9cTxJoFlqKoYmmT95Eescikq6H/d
YMPwrx/9p7QbeGLw74qlt/Ohs7htOv1VNzPa3A2kAY5YsPLXsDMTTv2c/EUljHeeGryZZZLWVrVZ
AwO+SJFw3qfNg8qTP8TJOa8+bdHFtvaav+Nn/wCTa/8AcTyOt/vMLCa3pvkfpvD5JPl9Ue50UUV6
ByBRRRQAUUUUAFFFFABXmP7RX/JO7H/saPDf/p8sa9OrzH9or/kndj/2NHhv/wBPljQB01FFFABR
RRQAUUUUAFcL48/5KJ8Hf+xouP8A0x6pXdVwvjz/AJKJ8Hf+xouP/THqlAHsVFFFABRRRQAUUUUA
FFFFABRRRQAUUUUAFFFFABRRRQAUUUUAcIJP7X+NRRSJItF0T5hn7k1zMMceuy3PPufw7uuG+GzN
qmq+MNcYki81ZrWAg5Uw26rECPq4kP4iu5rmw/vQ5+7b+V9PwsRHa4V80ftReDUuPG3h7VFUw/2x
Yz6E9zGcMs2fMtee2JCz57CM19L15f8AtI+HpNe+E+pywM8dzpbx6kksSgvGsTZlZQf4hEZMV0Sp
OvCVFbyVl6/ZfylZm1Ot9WqQr/yu79Ptf+S3Qn7PPjH/AISrwHCki7J7cBimRhVcklRg9EkEsQ6f
6noK9Rr5p+B/iRNN8e3cKqIbLUmS7jjVtyRR3a+YEBHXy7mOVOe9yK+lq4cFVVWimv68vl8Pqma4
mj9XrTpdn+G6/AKKKK7znCiiigAooooAKiurqKxtZrieRYoIUMkkjdFUDJJ+gqWvJP2mvH0fgf4b
3QJxLeAr1/gXBYfiSifRzWdSpGlCVSeyTfnp28+3mHLKbUIfE2kvVuy/E474Gxz/ABG+M3irxxd8
2umL/Z9pGRnE8oVpDns0cSxx+4c+lfRleb/s8eCZPAfwj0Gyuo3j1K5i+33olGHE0x3sre6gqn/A
K9IqaNOVGmoT+Ld/4m7y+V27eVjSpKMpN03eOy9Fom/NpXfndhRRRWxmFfGv7WXhS18O/EjRvEsb
SJFuW5vY7THn/Zy2ycpxwcHIbPyly2QQDX2VXxx8ZtaXxX8TPFDzW809rA9v4etUjIPmcSNI4AbB
2MLsMPvAbSRwMceM93DyqRV5Rs4pdZXsl6NNp/3Wzow13iIRW2vN5Rs7v1WnL2lys9E+DOnjxp4z
uvE7rstJytxbW6gBIbWEtDZoMdQzG5l/3Ut+OAR9B15H+y5cC++Eun3Enli/VjZXMcS7ViNsBbog
HYeXEjYHGXJ7165TwsIwppw2e3p0fq1q+7bfUmtKc6spVFZ327W0t8rBRRRXWYmD488Mjxl4N1jR
d/lSXlsyRTbQTFLjMcgB7q4Vh7gV8qeBdUu4tS8P6rbRjT5rpholxBIQDBqFuWkslZhnAKu1of7x
dh2r7Jr5h+IPg/7L8RfFXh9LiS0XxDAupafPG3zRXQDyKUHAyskVyfXdcR89K5MbFSoe0f8Ay7d/
Pll7sreezXZq514Nr2zoz+GqrfNXlF/Jc3q2j6P0HWIPEGjWepWx/c3MSyAHqueqn3ByD7g1fry7
4B+L38UeH70TL5dwkouJYsACOSTInUD0FzHc49V2noRXqNa0ZOUE3vs/VaO3l2OS0otxlutPuCii
itgCiiigAooooAK87+POny6p4CtYYCnmJ4g0O52uwXcsOq2kzgZ77I2wK9ErwX9prxs2l6h4M8PW
1w0F3qGrWv8Aq3COC86xoQT65cfUrWNar7GDna+yS7tuyXzbSLhTdWSgna/Xslq38km/kepUUUVs
QFVNX1az0HSb3U9RuY7PT7KB7m4uJThIo0Us7sewABP4Vbrh/jh4dvvFnwh8W6Tplt9s1C506VYL
XIHnuBuEeTx82NvPHPNAF7wZ8StG8dXF5baeL62vbSOKaWz1Oxms5xFJu8uUJKqko2xwGHdWBwQR
VTVvjB4Z0XxQ2hXVxdC5juILO4uo7KZ7S2uJ9phhlnC+WjvvjwrH/lomcb1zyOi64+tfFbUvGsWj
+ILbRLbQLXS9t3o9zBPPcSXLOQkLoJGEasu5wu0bzhvlbHJ+MdF1VrP4ieC4tF1Z9T8SeJ7S+sL+
2sJZLRrdxaFpnuAvlxmLyJQVdg37tdoO9cgHq2rfGLQ9J8YyeGRZa7qGpRNCk7aZot1d29uZQCgl
mjjKJwQx3EYByeKTx5/yUT4O/wDY0XH/AKY9Uryr4gaFNb+MPFF34a07xtYeP7zWbCWyuoJbw6Rc
oI7eMyP5f+iiIRROrrP8+UOOWjz6H8X/AA/a+KfFnwl0u9lvobafxRNvk02/nsZxt0XU2G2aB0kT
kDO1hkZByCQQD3SiqOiaPB4f0m2061kupbe3TYj313LdzEf7csrNI592Ymr1ABRRRQAUUUUAFFFF
ABRRRQAUUUUAFFFFABRRRQAVR1zVo9B0XUNTmGYbO3kuXA4yqKWP6Cr1cN8ZnabwLPpcaF5tYubf
S0UA4xNKqPnHIGwuSR0xWNaThTlKO9vxJk7Jst/CXT5tN+G/h+O5XZdTWwup1wARJMTK+cd9znJ7
nNddSKoVQqgAAYAHalrSMVCKjHZDSskgqC+sodSsbi0uUEtvcRtFIjDIZWBBB/A1PRV3tqgaurM+
JtHtJtJa2g3gajo1/P4auHwWH7yT/R5s9s3sBkyeAB2zX2XoerQ69o1jqVv/AKi7gSdAeoDKDg+4
zXzT8Z/DcsfxE8U6RCvkDxHpf9oWtx2+1RxEjGe6G0H43Q7kV7D8C/E0XijwDbXMMfkxFhNHCRgx
xzItwiY7BVmCf8Arzox9ji6kEtG7rtaXvpL0bnc7Kr9rh6FZ725X6xdrv1s36HodFFFegcgUUUUA
FFFFABXyz8XLdvit+0d4X8HgPNptnKt1ecjYIYV3upH912byzkddvOOn1FcXEdrbyzzMEijUu7Ho
FAyTXz3+zTZ/8JV8QPH/AI3uVDz+cmkQuesZ/wBfcKOehaSH/viuWt79SnS6X5n6R1X/AJO4X8jW
m+Xmn2Vl6y0+/l52vNeVz6IooorqMgooooAzfEmuQeGfDuqaxdEC20+1lu5SxwAkaF2ycHHAPavk
D4eaTeeJvFfhqzvAyXF35+oX+zlluLr91IQeo8yG31CTJ5HnHjkivd/2mNfudK+HsNhYqJb7VL+G
BIdoJkRCZnXkgAMIvLyc8yAYJYCuM/Z10WK78da/qUR820sB9gtZidxe3gC2sBJ9Q8N+O/3/AK1w
4yTbpUI9byfp8K/9Km/+3bnVQXLSr1n2UF/29rNfdys0P2b71vD3jDx74MnZQ1vdJqUCtgM+7MMx
x1wGiQ/8Dr32vn3xYB4C/ag8Naxu8my11G06dlHBMq4jXH/XaJDn/br6CqsJ7tP2X8jcfRLWK/8A
AHEzq6tT/mSfq9pP5zUgooorsMQryL9obQ55NP0HxBZO0N7p16kHmK235ZnTytxyPlFzHas3P3Va
vXayfFnh6Dxb4X1bRblmSDULWS2Z0OGXepG4HsRnI+laQ5W+Wfwu6fo9H+BEnOK56fxRaa9U7r8U
eF/BnWrfS/ivrVtCfL0/WPLvrVXbBC3UImijx/sG3uQfQvivoqvi/Q/Et5pXirR9Zv4hBqVrc3em
3sEeRsuEcXrHA5wZI76BTgfKx7Gvs9WEihlIZWGQQcgivJwSlTUqE946elrxt/5Lf5no4zllV9rT
+GaUl6Nfn1Fooor0jhCiiigAooooAK+GfiZcTfFD4wtrgeQ6d4a17w+8Z7CSbWrKGJeOzReY3PcH
jvX1v8WvEyeE/h/rF80nlOYTCjYyVLcFh/ujLf8AAa+VfC/wvtl+CulePb5tTg1rVvGWg3UcEeqX
MVr5B1yzjjV7ZJBDLwXZTIrEbgQQQMctT360Idryf/pMV82215wNqfuwnP0ivV6t/JR5X5TPrGii
iuoxCiiigAooooAK4Xx5/wAlE+Dv/Y0XH/pj1Su6rhfHn/JRPg7/ANjRcf8Apj1SgD2KiiigAooo
oAKKKKACiiigAooooAKKKKACiiigAooooAK4bxZcPqHxJ8FaQgDxw/atWuFI6LHH5MZ6c/PcdPUA
13NcRoJOrfFTxPfHPlaba22lxbT8pZg08mff54xx6VzVteWD6tfhr+hMuh29FFFdJQUUUUAeLftK
Ws+m2XhvxRawCaXS7zypB/EyvtkjUf71xBbJz2c1kfs5ahFofibxJ4WR98VvPOLcg5BiEgniYccA
x3iqAcnEPpxXq/xR0GXxL8Pdf0+3Cm7e0eS23DIE6fPEfwdVNfNvwy1qPSfGvhvUoP3Vnd2UADS8
kpbStaqevBa1u1mPsgNefjXyVKNb1j6W96/q4uaOuh72Hr0v5XGa/wDSZfJJL5s+u6KKK9A5Aooo
oAKKKKAOK+Muvp4d+G+t3Lvt3w+R7lW4fHvs3H8Kwf2ZfD82g/BnQpLpcXuqeZqs7EYJM7mRMj1E
ZjH4Vyn7Wt9PqOh6F4Vs3b7XrN4luix/eDSMsSn6bXl/75r3bT7GDS9PtrK2Ty7a2iWGJB/CqgAD
8hXLD3q85fypR+b96X3r2b/pGm1Nebv8lpF/e5r+mWKKKK6jMKKKKAPm/wDaC8WLbfECC4LbrPwp
pU2ozJuwGkIEoPT70ckNkfTFx61337O/hJ/CfgXyJjvuBL9nkb/ppEAk2PY3AuGA7Bsc9a8B17WI
PEmsajrMkwkXxFr8RWPcWD2lsn2p1255MlnDZjA6MTjOa+uPB+lS6H4W0qynO65it0E7Y+9KRmRv
xYsfxrgbdTGzXSHu+jirfc3Kf3HXP93haMOsrzf/AG98P/kunyPHv2vNDnuPAtnrNmGF7pk/mxOv
VWUiRT+cQH/Aq9n8N65B4o8O6VrNrn7LqNpFdxZ67JEDr+hFZvxG0MeI/A+s2GzzGeAui/3mT51H
4lQPxrz79lHXHvvha2kzOXm0G/uNNyzZYxhhJEevTZIqj2WtI3hiZR6SV16xdpfg4fd6mOjpX6p/
hJaL5OMn/wBvHstFFFdZkFFFFAHyD8ZtLbwp8RfGRitgySLaeJrWJAcPJC29kxwPmKXjN1Jz7mvp
T4Y6gL/wTpyef9pa0U2bTZyZPLOxZP8AgahX/wCBV5p+0Vo8Fr4k8Ia/IirFI8uk3cuMYikUuWJ/
2YluQAT1kPrU37L+synw/caLdjy7qyVYWjZgW327NaNn32QW7n/ruPWvPqfu8bfpNJ/hyyb+cF/4
Edfx4OnLrCUov5+8vkk0j2+iiivQOQKKKKACiiigD5x/bK1S8vvD+i+FtLCtqWrXUdvCjybQ0kri
KNffdmQc9AT15Fdh8adDtfDPwc8P6RZJ5dnYeIPC9rCvoiazYKP0FcrcLH8QP2sLCFl82z8O2st6
dwypZAIUHsRLI7Adymexruv2iv8Akndj/wBjR4b/APT5Y1x4d88qtTvK3yhpb5T5/vN6i5YU4+XN
85dfnBQOmooorsMAooooAKKKKACuF8ef8lE+Dv8A2NFx/wCmPVK7quF8ef8AJRPg7/2NFx/6Y9Uo
A9iooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACuJ+Eu668PX+ruoVtX1O6vV6ZMZkKRn
I6/u40wfTHTpWp8RNbk8OeBdf1KHd9ot7KVofLGWMm0hAPfcRVzwno58PeFtH0ttu6ys4bdtvTKI
FP6iuZ+9XX91fm9PyZP2jWooorpKCiiigAr4t1LTV8OeJL7SndlXSPEDW7TbSqR290ptiPTEdtNY
txzk5J6Y+0q+ZP2gPCYufiJd2bytDZ+KdEkgwoHMqfI7cc5L/wBmqPoa5sYlLCzcteVqdu/K9V/4
C5HXgpKOLgpbTUoP0kr/AIyil8z6G8K6s2u+G9M1BxtluLdHlX+7Jgb1/Bsj8K1a8w/Z98WN4q8F
iaXC3EhW+eNRwjXC+bKv/AZzcJgdNmOoNen1dFt01zbrR+q0f4nJZx92W60CiiitgCiioL28j0+z
nupjiKGNpHP+yoyf0FNJt2Qm1FXZ8/61/wAV5+1ZodltaS08PwSXsg/h/drsjJ9xNM3/AHz7V9D1
89fsx2U2veLPHni+7iYPNcpp0DsSR8uZZsE9cvIufdfavoWuLCPnpe1/nbl8m/d/8k5V8jaqnGSg
/spL0e8l/wCBuQUUUV2GQVyHxa1yXw/8PdXntZ1tb64RLC0mcgCO4uHWCJznsHkU/Qdq6+vFf2ib
mXWL7wp4Vhcr9unkuZmVsbVBSAFvZftLTAcEm2ODwa0hJU37SSuopv1sr2+drETg6tqUXZyajftz
O1/le55h4A0GLWPHHhrSbaB106xsbZjETjYbpmuNh4/gtbYQEcYDqDywI+ua8D/Z7tU1/wAS674k
8vZHcXV1dQpj5UV5RaxqPYJYsw9rjPRhXvlePl8X7Lnlq3/w7+6Tkj0cdNTxM+VWS0S7W/4NxCAw
IIyK+bPgsG8BftEeMfC7nyrTVbX7VAjA48yB9qhfcxSbj7AV9KV80/H2X/hXfxo8DeNYwqQfbEju
3YZxE6mCZvfEbJjPcA101/dlTq9pJfKXu/cm1J/4Tmp3blBdU/w9/wC98vKv8R9LUUUV1mQUUUUA
edftBaImtfCfW2dDJ9gVNQ2gZJWJg8ij/ejDr/wKvKfhLrT6X8UN88n/ACFlhvpGByGkmiFvdD0w
Lm2th/wMkk8Y+lbyzi1CzntZ1DwTxtFIp7qwwR+Rr4z0OO40W50GAvsv9Lv7rQGbI3FyfMtmIP8A
fv7U4z68da4McmoU6seja9brmiv/AAKC+868L78a9Hq4qS/7cev33S+R9pUVT0fUo9Z0my1CH/U3
cCTpn+6yhh+hq5XdFqSTWxyBRRRTAKr6hexabY3N3OdsFvG0sh9FUEn9BViuA+OviRfDPwx1i5Zi
Gkj8oAfxA8uPxRXrOpUjRhKrPaKbfold/gHLKbUKfxPRer0X4nn37LdnLrOs+P8Axbc7mmvNQTTl
LjvCpeVgSOQzzH/vj2rsv2iv+Sd2P/Y0eG//AE+WNP8A2b/Dj+Gfgr4Xhl3G5u7b+0JmcYcvOxlw
3HUBwv8AwGmftFf8k7sf+xo8N/8Ap8sayw1KVGjCnP4ktfX7X3u7N68oTqydP4dl/hWkfwSOmooo
rpMAooooAKKKKACuF8ef8lE+Dv8A2NFx/wCmPVK2bX4h+GL7xTN4at9f06bX4d3maalypnXABYbc
5yAykjqAQT1rG8ef8lE+Dv8A2NFx/wCmPVKAPYqKKKACiiigAooooAKKKKACiiigAooooAKKKKAC
iisPxb430LwLprX+vapb6bbAHBmb5nwM4VerH2ANTKSirydkBk/Epmul8OaQj4fUdZtgycZaOEm4
cfTEP612VeX+F9Y1T4k+PbDXToGoaL4a0q1uBaXGogQy3s8pQbhCTuEYjDEFgMlx6EV6hWFJXlKo
+u3ov+DcXqFFFFdIwooooAK8e/aV0+aHw7ofiG0XN1pGox856rL8ka9en2kWrE+iV7DXNfErw7L4
r8Aa/pVsP9NuLOT7K2cbLhRuhbPYrIEOfatKajKXJPaWj9Ho/wAGZ1JShH2kFeUbSXrF3X4o8h+A
N9DovjLWtEhkLWbTzm1J/jglIvLc+nPnXnTslfQdfH/gnxAmneJPDmuwAww3FgvBGCv2SX5VYc4I
0+5mJ6njFfYFePl8pKn7OejX6e797cW/meljoxjiZSg7xlaSfdPr99wooor1DhCuA+OviJfDXwx1
i4L7Glj8kZOAQeXBPYbFf1rv6+dv2urybWrXw14Osw8l1rF7HAETjDSOERs9sAS8kcda5MXKUaE3
D4mrL/FL3Y/+TNGtGEalWMJ/C3r/AIVrL/yVNnc/s0+Gm8M/Bnw+JoPs93qEbalcDoS0zF1yO2EK
DHbaAeRXqFQWNjBpljb2drGIba3jWKKNeiooAUD6ACp66oxjBKENlovRbESlKpJznu9X6vV/iFFF
FMkK+W/jJ4lk/wCFieLdWt1MjaFpi2NpsYDddGMqqLnjL/2jIM9N1vg4KV9QzTJbxPLK6xxopZnc
4Cgckk9hXxla37axNY6lcW7tJrGtPrs8e0ljDaxyXsGVxwBPcJAVPPyANkDNcuNcVhZRltNxi+6V
+Zteij+J14G31qM5bQUp/cuW3/k116H0Z8C/C48LeCVtRIJjHILQTDpILdFtt44HDtC0nv5hPevR
Ky/C+j/8I/4b0zTS3mNa20cLSHq7BQGY+5OT+NalaUVJQXNu9X6vV/icd29ZbsK8Z/as8JJ4p+GM
pKgvbyghu43cLj/gYj/KvZqyPF2jDxB4Y1TTtoZri3dEz2fGVP4MAfworUfrFKVG9uZNX7X6+q3R
UakqMlViruLTt3s72+ezMn4S+Kv+E2+GfhnW2kMs13YxNOx/57Bdsv8A4+rV1teFfsk6yW8I694d
kcmXRdUk8uMjGyCYCVP/AB4y/lXutOjW+sU41rW5knbtdXt8ti6lNUZypxd0m0n3S2fz3CiiitTM
K+TfjFod3o/xB8ZwadEou7q3t/EOnueD9sgPmQgcY4a3vHP+9X1lXh/7Q1nHpfiHwf4jcfuY5ZbG
4bssbL5jseO0CXajqf3vHNYYiMqmHqKHxJcy8nH3v0a+Z04Sp7LFUpva9vXm91fK7T+R3Pwh1y31
nwhGLZt0MMhMOOnkSqJ4CM848qWMcjsa7evCf2cbuXSpr7QJxte0a4sHGcASW02VAA4H+j3NsOCe
I/avdqzws4zpLl26em8f/JbGNSn7Gcqf8ra/y/AKKKK6yAr55/a0uJNfi8MeDLeSRJtavobZvL/g
82QIr/QKJu1fQ1fO0n/Fdftb2CZaS08O2c92cjK5VRAqn3EksrD/AHT71x4r3oxpfzSS+S96S+cI
yNqL5Z8/8qb9HtF/+BuJ9C28EdrBHDEgjijUIiKMBVAwAK81/aK/5J3Y/wDY0eG//T5Y16dXmP7R
X/JO7H/saPDf/p8sa7DE6aiiigAooooAKKKKAPl3w7qFpc23gPwpbXMP/Cb6b48v73UNP3A3cEYn
vZJ7iReWWOSKZcSH5WE6AH5gK9n+Iimbxp8KbdGME8/iWZIrpMGS3YaPqTF0BypJVWT5lYYckAMF
I7uuF8ef8lE+Dv8A2NFx/wCmPVKicVOLi+vZtfitSoycXdHoX/COap/0NWp/9+LT/wCM1G3hbUmk
DnxZqwI7CK1A/Lya6SiuP6lS7y/8Dn/8kb/WJ9l/4DH/ACOcfwvqUhyfFeqj/dith/KGo5PCeps2
V8V6oB7pAT+kYrp6KFgqS1Tl/wCBz/8Akhe2l2X/AIDH/I5mPwvq0X3fFeoH/eggb+aUTeG9bkj2
p4tvUPr9ktz/AO066ain9Spd5f8Agc//AJIaxE1sl/4DH/I53/hHdY/6Gq9/8Bbb/wCN1E/hXVpN
2fFeojd12wwD+ScV09FL6lSfWX/gc/8A5IXt59l/4DH/ACOai8K6lGoz4q1QsOAfLtz+hjOfxp0n
hrV2+54t1JfrbWh/9o10dFP6lSta8v8AwOf/AMkL20t7L7l/kc2vhnV9rB/FuotkY4t7Vf5RU5/C
VzIoB8Ta0Mf3XgH8oq6Kij6nT7y/8Dn/APJB7aW1l9y/yOVbwXfwpi18V6ujZzm4MUw/IoPesa98
K/EFXDWfji3kQf8ALObSo0P/AH0N3t2r0OisqmX0qis5TXpUmv8A24XtZdEvuX+R5lpvhf4j314F
1bxVb2Nmi4ZrFElllPOcZhjEf8J539CPetWP4P6Emstq7S6jNqjDab2S8fzscnAccqOTwCBXcUUR
y6gl795/4pOX5sPbT3VvuS/JHK3XghrW2lk0XVL7T9SI+W4nuXuVbrgMkhZcc9gD71wKftDf8IXr
H9j/ABH0qTw9NnCavao0ljL15I5aMHgD7y9csMGvaK5vx14B0j4haJNpuq26Sq6MiSFAzJnr16g4
GR0OK0WF9i+bC2j3j9l/ds/NfNSK9tzfxU359fx0fo/ROO5tabqlnrVjDfafdwX9lMu6K5tpFkjk
HqrKSCPpVqvjvw/4L1r9mL4jaVKl9KnhG4vkhvkaRvJeOQGMSk5wdhYMdwZ12n5tp+b7Erqp1VUv
o4tbp9HvutGuzW/kROnyWcZKUXs1f8U9YvutbdG1ZhRRRWpkFFFFAHxzq1lB4J8R6zZTpHa2fh/x
Gt3hTgCwuT5VwccYVba5tlx0468V9UeBL2W+8I6Y053XMMX2advWWImOQ/8AfSNXhfx48JwSfE5Y
3t0a08V6NLp1y23BLL8g5xyzSSWS89ox6V3X7OfiaXxF4N3XTBrxkiuptvAErL5c4xj/AJ+ILj8/
xrz5fu8dP+973q5K7+SlGX3nXJc2DoT/AJbwflb4f/JVf5nrFFFFegcgV83Xyf8ACwP2udMhMclx
Y+HbaW8ck4QFQIkB91mZmA/Hsa+h9U1BNJ0u8vpeY7aF5m5xwqkn+VeA/sr6W+r+IvHvjC6jYz3F
6mmRO3AHlqHm2j0Z3B78r7GuOt71WlT83L5RX6SlBm9L3VOfZW+ctLfOCmfRFFFFdhgFFFFAHCfH
DWf7G+F2ubZvs819GumxSZwVa4dYdw91EhbODgKSRgGvDvhro/8AbPxC0yzFv9mjsbO1gaDPEbTy
PqN3GcH+BordPpIB03Cu/wD2kbxdWn8KeFRISmoXTXF3Cg+Y26gQsSf4dv2jzB0JMJwflNUv2bbN
tYvNX8TTJiW/luL4ZYtta4l2Bcn0gs7ZuOB5hx1OfPxnv1aNHyb/APAny2f/AG7GX3nVR93DV6n8
zjD7lzNr1Umn6HvVFFFegcoUUUUAfOvw+YeBf2oPEWhlzHaa5ZNJFHjAaWJhIg/CKVx+FfRVfO37
Qjf8IV8U/APjMOYYYbyOK5cDpEW8qU/iko/KvomuPDe77Sn/ACyf/k3v/cua3yN6msYT7xS/8B93
77RTfrcKKKK7DAK8++POkx6p8L9XlkjaRdP2aiyrnLRwuHlUY5+aMSLx/er0Gobyzi1CzntZ1DwT
xtFIp7qwwR+RrSnJQmpNXRnUi5wcYuzPmH4datJoPxMtnuJg41CG0uyykbWmiZtOvWz3zJLbN6Yj
r6kr4xhs7rT7fR0aTbdaXqjaHcylip23CvaBm/7e7d5ucD7p9K+vvD+rLr2g6dqSrtF3bxz7f7u5
QSPwzj8K8bBxdGU8O94tx9XF20/7d5T1MdJVakcRFWVSMZel1t91jQooor1TzyvqF7Fptjc3c52w
W8bSyH0VQSf0FeDfst2cusa38QPFtzuaa81CPTlLjvCpeVlPozzH8U9q9C+OviMeGfhnq9wTgyp5
PXGVIJcfiivVP9m/w6/hv4K+F45Qwuby3OpTFxht9wxmw3uA4X/gNcj9/Epfyxv85O0X90Zr5msf
dpyfdpfJayX3umz0uvEv2kPDOoyaTpesL4s1iLTo/E3htW8PpFZ/YpD/AGzZLuZjbm4zkhuJgMqO
MZB9trzH9or/AJJ3Y/8AY0eG/wD0+WNdZkdNRRRQAUUUUAFFFFABXC+PP+SifB3/ALGi4/8ATHql
d1XC+PP+SifB3/saLj/0x6pQB7FRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAHA
fHPwmnjD4aavasuXhjM6EdRgEMR77S344p3wO8aS+O/hlo+o3bltSiVrO93HLefExjcn3baG/wCB
V3ckazRsjqGRgVZT0IPavAvgXI/gX4teNfA028W1z/xNbPcRt3KVjl9yzKYG/OuOX7vExl/OuX5x
vKP4c9/kbR96nKPbX77RfzvyfJM9/ooorsMQooooA8j/AGktLml8J6VrFom+90rUopIh2LSfu48+
wmaB/T5K5P4F6lBpXxE1nTrZs2N1M1xa4Jx5F1Et1B156x3h/wCBV7P8QfD7+KvA+u6TE2ye6s5I
4XHVJdpMbD3DBT+FfLfh3xRDpviLwxr6sttBPA0Lov8AA0DJfRp7YsZpk+pI68V52P8AcdLEdrxf
kl76+btJHZh/foYij2tNfLST+SUV8z7FopAwYAg5B6Glr0TjPNf2h/EqeGPhXqs7MEM22FWPTu5G
O+VQjGRnNJ+zf4dfw38FfDEUob7TeW51KYuMNvuGM2G9wHC/8Brz/wDauEnizVPCHgiAZfVr2GKX
k8JJIMvgEHCrFJnB6Gvoe3gjtYI4YkEcUahERRgKoGABXJT96vUl/LaPztzP71KH3GrSjSj3k2/k
vdj90lU+8kooorrMgoopskixRs7sERRlmY4AA7mgD5U+OviCbUviB4lms386TSdPXSrHblVS+mUR
quRyd/24g4yAYMYyte4/BfQYdB8FRJAu2F5DHF8qrmGFVtojheBmOBGwOPmr5j07UrnxdrFpqUR3
3WsarPrUbdA8UQZ7BgAT925vYI8nn92D2Ar7M0fTItF0ix06H/U2kEdunAHyooUcD2Feev3mNqy6
J28vdXIn96n9511Pcw2Hpf3ed/8Ab7ul8ti5RRRXoHIFFFFAHkf7UPhUeKPhTfqI/MkgOVXHXcCg
H03Mh/Cut+EXis+N/hj4Y1uSUTXF1YRG4dennqNso/CRXH4Vt+KNH/4SDw7qWm5CtdW7xKx/hYj5
T+Bwa8f/AGTdXP8AwiviDw5Idr6PqkjwQ4wUtpx5qfm5m/KuL4MV/jj+MH+b5/8AyX0No+9Ra/ld
/wDwJWf3csf/AAI90ooortMQooooA+WPi/4eeHx14w0WFxE+sWDahasoJYTGPfGR2GySyuTnrm6H
rx7P8EPEkfibwTHPGvlp5nnIn91J0W5RR7KJwn1QjtXJ/tIKdBn8LeKRC0kdncPbXO3H+rO24A+r
NaiIY/57Y71m/s5Xh0XXNb8NszsLOa5s1LDhhFKJo2H1ivo1H/XE+ledX/d45TX24p+lvcfzclB/
M643ngY/9O5uPyl734XUV6Hv1FFFeich85/taXreIJvDXgeB2jn1m5hg3J95fOlEe8DHRVEmT7iv
oi3gjtYI4YkEcUahERRgKoGABXzTYSN8RP2voH3CSx8O21xejA+UsB9mRT1/iYuMehPtX01XLh/e
dSp3k0vSPu/+lKT+ZpJcsYR8rv1lqv8AyTk+4K8x/aK/5J3Y/wDY0eG//T5Y16dXmP7RX/JO7H/s
aPDf/p8sa6jM6aiiigAooooAKKKKACuF8ef8lE+Dv/Y0XH/pj1Su6rhfHn/JRPg7/wBjRcf+mPVK
APYqKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAK+dP2jJG+HHj/AMIfESFMRWdw
sd4wXP7lv3Uo6HkxyDH+5X0XXn/x28Ix+MvhlrFm6bnijM69cjAIbGO+wt+lcmKjKVJuCvKOq82t
Uvnaz8mzWjKMKic/h2fo9G/VJtrzsd9HIssaujB0YZVlOQQe4p1eVfsx+MH8XfB/SFuG3ajpBbSL
sekkOFXnuTGYyT6k16rXTGUZxU4O6eq809U/uIlCVOThNWabT9Vo/wAQoooqiQr498eabH4R1rxZ
bCMeVoupJrUcCgjNqJEedVAPR4b14fpb44A4+wq+f/j94dSHx/oGqu7x2mrWj6TdAY2OQXVAcjtH
dXEh6/8AHuOmM1hiouWGqWV3G00vOLv/AOk8x04Oap4um5bS91+ktEvnLlPXfh5qD6h4N0wzTC4u
beP7JcSKc7pYiY3b8WQn6EV0deM/sw61LdeDW0+4b99bLHkEnO5N1tKSD0JltpHI/wCmoPevVvEG
qroeh6hqLYItYHmwe5VSQPxPH40sM1KlFJ3tpf00v89zmnF0eaMvs3X3HgWiyDx/+1pJcjMtn4bs
7idJFztErBbZV685BmYHpwa+ja8H/ZP0uS40jxX4pnfzZNY1RoYpSOZIbcbA2f8Aro038+pNe8Vn
g5c9CNR/avL5Sbkl8k0vkbVo+zqOn/LZfNK0vvld/MKKKK7DEK4T44683h34VeIZ47hbW5uYBYW8
rc7Zp2EKEDIyQ0gPXtXd14Z+01qEepSeEvCZlymoXbXd7DG2H+yoBE7feGApuFf38o1caio3rS2g
nL/wFX/GxMqftrUVpztR9OZ2v8r3OH+C+hjU/iFZR+SyQadBbwmGQ7jCx3X11Hnn7s8lh+XsK+q6
8I/Zjsm1SPV/E1xGPtF/LJceYF+99ofzVOfe2Sx47YHJ4x7vXk5fTcKK5t/16/8Ak3M/mehjqntc
VUktr2+7QKKKK9M4QooooAK+e/A5/wCEG/ai1/SCUhstfsnaNVGN88TCZBj2illH/Ae2K+hK+ff2
imfwd488DeNUfyYrG9iW5kx92Hf5cufrFO/b+GuPE+77Op/LJf8Ak3uP7lJv5G1L4nH+ZNfd7y++
UUvmfQVFFFdhiFFFFAHH/FzRZte+HOuW9rD9ovoYftlrHjO6eFhNEPxdFH4188/D/WrbQ/H+ganB
OP7Pv7S3McjYXcLaRrME9cs8F1FKenEY6nBH1tXxdqOmxeGdfvNF3siaN4haAuc4itrtPszcntHB
LZvx0LE1xY6LlShOO8ZW/wDA1ZN+SkonZg1zyq0P543XrB3S+d2/kfaNZniXWk8O+H9Q1OTBFrC0
gU/xMB8q/icD8ab4V1Ztd8N6ZqDjbLcW6PKv92TA3r+DZH4V5h+1Z4uXwv8ACe/XzDE91kbgQCAo
3AjnP3/L6etazrqFF10rpK9u+l0vV7LzOSMXVcYRduZpX7Xdr+i6mB+yP4edrHxd4uuGEsusaibW
3l5O63tiyKfbLs4OOu0Zr6DrkfhH4MX4e/DXw74fChZLO0UT4AAMzZeU495Gc/jXXVdGl7CnGk3f
lSV+9uvz3LqTVScpxVk3ouy6L5LQK8x/aK/5J3Y/9jR4b/8AT5Y16dXmP7RX/JO7H/saPDf/AKfL
GtTM6aiiigAoorxf4t/FDT9WVPB+l32rWGoT61p+nahcLYXloq28l3FHKsV0UVCzh/LBjct85K8j
IAPaKK8v+Eqy6J42+IXheGa7n0TSbuzlsReXMlw0HnWyvJCskhLFQw3gEnHmEDAwB5340vL9rX4i
eNk1LUhr3hzxPaWGmW9vezJBFbqLLMBgDbHE3nSliyknzRgjamAD6UrhfHn/ACUT4O/9jRcf+mPV
K8l0ax1Pwn8SrTxN4r0qW7ttb8U3Vhp+pWXi68l+zh5JUtVfT1xbbNiKpwzMrNkrkHb6R8X7fWLr
xZ8JYtBvrHTdWbxRN5N1qVk95An/ABJdTLbokliZsruAxIuCQecYIB7pRVHRIdSt9Jto9Xu7W+1N
UxPcWNq1tDI3qkTSSFB7F2+tXqACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKbJGs0
bI6hkYFWU9CD2p1FAHzJ8Gbh/hn+0N4k8GysUsdahae2XJI8+HJz9XiJY/7or6br5i/artp/BHir
wt4/sIt82nXUU8ihiN4Rgrp7b0ZV+in8fpaxvrfVLG3vLSZbi1uI1mimjOVdGAKsD6EEGuLCrkjK
g/sOy/wv3o/ddxX+E3q+8o1f5lr/AIo6P71yzf8AjJ6KKK7TAK8w/aO8Pw618Lb+5mZoxpMiai0q
ZzHEmVnYY/6YPNXp9V9QsINV0+5srqNZrW5iaGWNwCHRgQwIPUEE1pTkozTkrrr5rqvmjOopSi+R
2fR9n0fyZ83/AAH8QPB8Sr9Jo1jOqhbw7RhVa5iLPGPZJ7K4GM9Zj0zivRP2lvFK+FfhTqMu9UeY
hASeRtBk/IlAv/Aq+dfDOpTeFfEuizSmQXWi3l1pF0ZEbc4ikE4fJ/56TWtyox/z0617B8eZh4v+
Jfw98IRMkkV1exzzr1Dwq3nSDr/zztz/AN9187aVOjVwl/evyejb9mn8klP8z163JUxMK6XuTUal
vK3M180mvmel/BvwkfA3wt8M6K8Zint7JGuEK7SJ3/eS5Hr5jvXZ0UV7730R5av1dwooopDCvkr4
z6lc+IvHHi2+sn82a0ji0HSmUZXz5c2wAxyxaa6vEI9bRR719P8AizxFB4R8L6trdwjSw6fayXLR
J96TYpIRfVmIwB3JFfJsel3kkfhTRJbiSTVdSu7rV7i5jxiWZP8ARo5Rjs93cm4OecTEcZ45sZNQ
w7jLXnaVu8Y+9K3nZL5M68FpiPbPaknL5tNJP1XM/VI+kvg3odroPw80qKzTZaTIZ4F9ID/qF/CE
RL/wGu2qG0tY7G1htoV2QwosaKOygYA/Kpq1pxcIKL3ONXtqFFFFaDCiiigAry79pHwuvin4V6lF
s3PDhxj/AGgUJ/Dfn8K9Rqhr2lpreh3+nv8AduoHh+m5SM1lWpKvSlSbspJr71YanKm1UjvFpr1W
q/E5f4J+Mv8AhPfhX4c1l3D3UlqsV1gjieP93LkdvnVjj3rt6+Zv2Rdcm0PxB428C3vmRvBc/wBr
WkcgxhHwkyAdgjeWPqzV9M06VX21ONVqza1XZ9V8ndfIqpTVKbhF3S2fdbxfzjZ/MKKKK0ICvmn9
oTwsreP3jXdFB4n0eW1d1z8s6YRSMfxNI1ivriMelfS1eR/tMaHJfeBbPVrYKt7o+oQXEcjDO0O3
lEn/AGVZ0kPX/VjipqU3WpToreSaXrvH/wAmSNKVX6vWp139lq/knpJ/KLZo/ADxUfFXgOK5fakz
st00SnOwzoszr/wGWSVP+2Zrz/41Qx/EL47eBfCG5Zre1uUvLqJmGAkYaaRSO4dREv4n0zTf2e9f
ttD8Sazpu8Qadc3Ltb+YTxHMDfW5yT0ImvBwMfulHXNWvgXat4w+Mnjnxq3Ntbp/ZdqST1kcTOPT
KqIRn3ryIVY14Uqcesk7dor31+PJF+tn1OqVL6vWqxt8Cdv+3vdX/ksnJf4dNT6Dooor2ThCvMf2
iv8Akndj/wBjR4b/APT5Y16dXiX7SFl4pbSdLuYtZ0dPC48TeGxLpr6TK16zf2zZDK3X2kIo3bTg
wHgEZydwAPRaKKKACsvxN4Z03xjodzpGr232vT7jbvj3tGwKsHRldSGRlZVZWUgqVBBBFalFAHL6
X8NdA0bR77TbS3ukgvroXt1M+oXD3M8wKEO9w0hlYgRovLY2qF+7xUGp/CXwtrHiU69d6dLJfvcQ
XcqrezpbzTwgCGWW3VxFI6bU2s6EjYnPyLjr6KAOL0/4O+EtL8QR6zbabMl1FdzX8MLX1w9pDcy5
8yaO2aQwpI258sqA5dznLNmHx5/yUT4O/wDY0XH/AKY9Uruq4Xx5/wAlE+Dv/Y0XH/pj1SgD2Kii
igAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigDgfjl4QTxp8NtVs2TzHijM6qBk
kBSHA9yhYD3xXJ/sm+LrnXfheNG1CUS6n4cuW0uQ/wB6NQDER7bDtH+5XtJAYEEZFfNPgG1f4S/t
NajohAj0nxNA0cQThRNEplhY5P8Azy3px1YVyVP3daFTpL3X+Li/k+aPm5o2p+9CdN/4l6rSS+cb
SflTPpeiiiusxCiiigD5H+PWlt4b+KGvXEcBP2y1t9ftV3D/AEie1IaSMA9QsdtISP8Ap4GevPRf
Au3fxj8Y9Q1qeVryHw7pMVlBcA/I7ygIrjI5JihyfTzOeorov2qNLWLR9B8Qh0ibT5p4Z5CRuFvJ
EXcAEYbJhQEH+Fmrk/2OPEDTaXeXczs39vXsu6Jk2/Zpoo1aNBxlleA7geR8h5zmvMxEF9dhNbWU
nbo2vZK/+K115o6oVb4W0l8Lcb9+aSndeUdIv/Eu+n1BRRRXpnKFFFFAHj/7R2rzyaRoXhmxk2X2
sXqSZxnakLxlH+guZLTdnA2F88deS+Eekx+IviD/AGqkbLpkMr2mnQluIrPT1FuvGOC08hz6m0U8
YYVh/FzxdNq3xK8Qz6cRNdaTDFomlxf376fdFHjrwzT3CtkcG1jIHc+z/Bbwta+HfC6G0w9oESzs
pNoBe1hBRJDycmR/Nmz386vOxH77FKmtoJLyu7Sk/VLlg15nZH91g7/aqyv/ANux0S9G1zLykz0K
iiivROMKKKKACiiigAooooA+XfidGPhJ+0b4X8WoPs+k3032a8b7saxT/I7MewSTEh92FfUVeUft
KeCl8Y/DW7wm6a0y4I6hWG1j+B2t/wABroPgr4yk8efDDQNWuGZr8wfZ73zCN/2iImOUsB0yylse
jCuSn7lWdPo/eXz0l/5MuZ/40av3qUX/AC+6/wA4/g3FeUDt6KKK6zIKyPF3hy38YeFdY0K6JFvq
VpLaOynDKHQrkHsRnIPYiteiqjJxkpR3RMoqcXGWzPiTw7q15omj/bbqOSL7TA2l38kBwbW6tpPO
gc8k7EikkhJ6ktjsa+hv2ZfDv9h/CPTL18G71131mdgAAxmIMf5RCIfh+FeCfHbQtS0nxL4s8LaU
c/25dQ3FjBtxsacSFyDnoXe6JHXCL7V9B/AHxHZa14LigsY1trSFEnt7VM4t4pQSYef+ecqzxY7e
VXiUaaoY2pBbR0j3Sk3Us/8At3l+5J9D0a1Z4ihCs1rKyk+8oJxuvm6i+R6bRRRXsnAFeY/tFf8A
JO7H/saPDf8A6fLGvTq8x/aK/wCSd2P/AGNHhv8A9PljQB01FFFABRRRQAUUUUAFcL48/wCSifB3
/saLj/0x6pXdVwvjz/konwd/7Gi4/wDTHqlAHsVFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAB
RRRQAUUUUAFFFFABXhP7Unhy4h0vSfGGlwqdW0W5jnRiMgtG3mR59shl/wC2le7VmeJtDj8SeH9Q
0yQhVuoWjDEZ2tj5Wx7HB/CsK9N1qUoRdn0fZrWL+TSfyKjP2clO17dO62a+auvRh4Y8QW3ivw5p
etWR3WuoW0d1FznCuoYA+4zitOvG/wBmXUpbXw3rPhK6ylz4dv3ijjPO23kJdBnvh/NT6IK9kqqV
VVqcaiVr9O3k/NbPzHOHs5ON726910fo90FFFZfibXIvDPh+/wBUnI2WsTOAxxuboq/icD8a0bUV
duyIPmP9qSbV/iv400/4c+Gyj3bRyM8mTtj2qJJGYjpjaij/AGgV/iqj4Y1D+x9L8Ia5pkS28N5a
WmlTRyFU+z3sChrKRzxjzQ4Qgcf6TLn7teifsw+F59TbXviPqm+S916VoLAy9Us0c5cZGR5sgZ8c
ghUI61z/AMRPB8fhXVtT0C7d7fw7rcUv2e86CFCxfGR91reR2YMesEsn/PHNeXKk6mGeJt71+Zrr
yNWt6xjZ6/DJzkejRlGNb6nU+CS5b/373v8AN+6mt+Wmj6N0XVYdc0iy1G3yILqFJkDdQGAOD7jP
NXa8i/Z58X3Wr6LeaRqq+Vq9jM4uIieVmVts4xgYzJ++x2W5jr12u6jU9pTUr/1/k915HBKMoScJ
brQKy/FHiCDwr4b1TWLhd8NjbSXDIDgvtUkKPckYHuRWpXiP7VHiQW/hvQvDCvJG2v6gq3EiYxFa
w4kkkJJ4Abys+oJHfB6VKMbzqfDFNv0Su/wRDjKdoQ+KTSXq3Zfizxr4e6De+JPEemWZkLXtw0mq
3N1GoUreXYKK3Gd2Ldbq55zteRO7A19m2lrDY2sNtbxiKCFFjjjXoqgYAH0Arwv9mPw+dQtb7xdP
CYmv3Z4YmQjy96p8ozz8kMdtHjAwyzf3jXvVeZg4StKrU+KTd/W7b/FteaSO3FzjKty0/gglGPpH
QKKKK9E4wooooAKKKKACiiigCK6to7y1mt5lDwyoY3U9CpGCPyrwH9n+SXwL8TPGfgS6LKkzf2ra
B24ZgRHMQOg3AwvgdmNfQdeC/HK3bwL8RvCHxBiPl29vcrbX7Bc/uX/dyk+v7tt3P/PIVx4j3ZQr
dnZ+ktH8k+WT8omtN/FDo1+K1XzesV/iPeqKKK7DIKZNMlvC8srrHFGpZnY4CgDJJp9eL/tQfEWX
wh4JOmaeGm1bUyIo4IwWZwTtVAByd7EDHcBhWVWpGjB1JbL8eyXm3ovNlRjKpJQhu9F2+fkt2+iu
zxLxR4ovvip8WdS1+zK/2V4TCzvcM7j7Izt5dvJhf4YjmWQHjAm4yBXf/CrXG8M/E9rQp9l0/U83
cNv1MKzuI5YW46w3aBPrcv8Aj6P8C/g/B8NfhqNI1OKK81fVA1zrUjgOJ5pB8yE/xKoO30PzNjLG
vnjxpp8vw91660u4kmjm8PTi6gvcFnk0+UbHcYxvKoEl29TLazPnJFebWw0qVOOI3qJ+/bb3mmrf
3YytG+7jbzPRpVFX58FD4Wr07780dXfzmlzNbR95Lofa1FZPhTXR4l8O2GpBRG88f7yNTkJICVdc
+zBh+Fa1erGSnFSjszy07q4V5J+0trFtY+DNAsJmZbjUvFOhxwFU3hGj1K3n3uMj5B5WCc/xDkZr
1uvlT47eJE8U/GLTLRr+Sw0/wrqWkxo0Kljc3k97A5hx/EGWNVyOVMco7kVTqRoxdWSvbp3bdkrd
dWtO1yo0pV5KlF2v17Jav8Fp52PoOiiigQUUUUAFFFFABXC+PP8Akonwd/7Gi4/9MeqV3VcL48/5
KJ8Hf+xouP8A0x6pQB7FRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUU
UAeM6tCnw9/aA0zVFTydN8TQHT52BO0Tk7oyQO+9QoJ7znmvZq4H41+C5/GngmaKwUnVrSRbqzZR
8yyKcgj1IODj1UVwvgj4jfFjTHhtvFfg9NZgzh73TY5IJwuepjZdjn6Mgrz4yWGnOMk+Vu6ajJrX
dNpNL3ryd2l72hs/3kVqrpW1aT8rXavpaKSu1y6nvFeKftAXFz4w1Lw98PNMneK51mfN3LFjdBbg
EyPkgjIjEhAP8Xl+orsdS+NHhbQ5IYtXurjR7mZdyW19aSRyHGAcAjnBOMjI/MVg/Buw/wCEp1zX
viHcjc2qSNZabu5MdpG+GP8AwN1A9CIUYferKpXpYtrD0pKV/is07RW6frpG3Zvsawpzo/vZpq22
nXpb03+Vup6dpem2ui6baafYwJa2VpCkEEEYwscaqFVQPQAAfhWH8QvA9t4/8M3GmTGOG4BEtrdP
GJPs8w+6+09R2K9GUsp4JrpqK9iM5RlzLc4ZQjKPK9j4u8H+Np/hz8TLa71jbZ3MM66ZrUMoYFWV
Cscu49VeLPzdZDBAxwXr7QVhIoZSGVhkEHIIr5z/AGuPhHJr2it4z0eOT+0dPg8rUoYcbp7QNu80
D/npCwDg+gPXCinfCn9p7w7pfwv0D/hLL37HqcYaxwu1zOY2KKVAOSSFHbJ69CK82EVhqsoR+B6r
y8vlt/hUerPQquWJhGu9ZfDK3dbS/wC3l8rppHvev6/p/hfR7vVdVu47HT7VPMmnkPCjoOBySSQA
BkkkAAk18c/GjVrv4oePdLuJLSSFryP+xbLTFkzNAkj7phKwOI55IwY3RcmPzoAW3EqdjxP4n+In
xI8W2uqaj4F1yLw7DJv0vTo4pY1QY/11xKgZw5z/AMs0LKCQrKRvfvvhf4B1jXPiBpuveILS2s7P
QtP+z2GnWNjcW1rbOzk7Y/PiiZ+AGJ2cFU5J6TXxKqL6vQ3b1enR3sle7V17ztZpNLR3kqCjQ/2m
c1zJPlimm7tW5pb6pO6j03b5tF7T4T8Px+FfDtjpcbeZ9nj/AHkmMeZIxLSP9WYs341r0UV3xioR
UY7I4lorBRRRVDCiiigAooooAKKKKACuR+K3hGPxt4D1XS3TzHaIvGuM5YA8fiMr/wACrrqKzqU4
1YSpz2aafoxqTi1KLs1qvU8x+AnxIs/Gngyz02W+hk8R6RELPULXf+9zHhRNg8lXG1twyMsRnINe
nV4B4x/ZnuF8UHxP4P1h9G1pJGmjkiPlOMnJQkDa6dBsYDIGCcZruPAvxC1aKGHSvHdgNE1ldsUd
9nFrfNjqp6I5P8GSPQnOBxxxHsbU8TpLRc32ZPun0bf2ZWfbm3Oh01VvOj68vWPl1TS7p7bqOx6H
cXEdrbyTTOI4o1Lu7dFUDJJ/Cvn74c6O3xk+LmoePNRhZtE0OdrbSo3JCyXIABfHcRqQPTzGYjla
7b42ave31rp3g3RnK6vr0oiMiru+zwA/PKw/ugAn3247iu58J+GLDwX4b0/RNMRo7GxiEUe85Zu5
Zj3ZiSxPckmrf76ul9mH/pVtP/AU7+ri94kr93BvrLT5dfv29OZPc1q8S/ag8Gtd+GYPF9lCkl/o
AZ7hGXIns2/1qHkcAc567d4H3jXttR3EEd1BJDKgkikUo6MMhlIwQa7rRknGavFqz9HozC8otTg7
STTXqtV/we60PBv2T/GKXuh6h4ae5+0vpzLJbSnAMtuUTY2M9djQux7vK3pXvtfEVr4dv/gL8Ude
02JLddNt7YT2FxcaounSC1aRjEY5mVld0YyoY3yHDc/dFepeC/2sF1HT7lrnwzr2sR2w2C90yzjl
DyDPDmORo06H5i65/uL0ryqNdUpvD1ZXlHr+tuz+JWulFq7TTPQxGHm19apw/dy1XW3eL/wu67aH
ufjHxNbeC/Cesa/eDNrplpLdyKDgsEUttHucYHuRXwhosN3rVxpGp6laNqEtv4k0u/v5WYpsv7vV
bVfNyP4olmjVYzxmSYc7DnvPi58ZNa+JngDUPtNtY6Zo8dxbyDSYbyCWe5YSqUhlYTF/mOwFBCAG
OS5Vfm7S8+HU/wAPP2e9Hj1E79d1DxT4bvNQkI5Ej65ZMU/AsxI6ZZscVpUqQxU4UqMrxWra2vsr
PyTe38yad4kRjPDUpTmrSn7q2uo7yej05nypJ2as9D2+iiivQOIKKKKAPKPih8WtNWFfDXhjxZpa
+LLjVbLTLiG0u4J7zTo5bmOOaUwndhlVyF3rgOyZB6HQ+FusanD4r8b+E9R1S51xNCubV7S/vVjE
5hngWTy3KKqsVcSYbaDtKg5Iyeh8Y/D3SPGmk3FlcxtZTSSxXEeoWKolzBNFKssUqOVI3K6I3zAg
4wQQSKqaH8N49BsdYWLXtXn1XV7xL281mZoPtUjII1VAFiEaoI41j2qg4LH7xLUAc1428QeLtL+N
Xw7sY72ytPCWpXt1bS2sKF7m7ZdPuJQ0jkAIqui4Vck9Sw+7Vr4v3GsWviz4Sy6DY2Opasviibyb
XUr17OB/+JLqYbdKkUrLhdxGI2yQBxnI67XvBtl4h8Q+GtYuZbhLrQLma6tUiZQjtJbyQMHBBJG2
ViMEcgduDh+PP+SifB3/ALGi4/8ATHqlAHqmiTalcaTbSavaWtjqbJme3sbprmGNvRJWjjLj3KL9
KvUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQBQ1rQNM8SWL2
Wrada6naPw0F3CsqH8GBFT2FhbaXZQWdlbQ2dnboIobe3QJHGgGAqqOAAOwqxRQAUUUUAIyhlKsA
QRgg968z8Afs/eF/h74m1HWrGJ5p55S1pDIFEdjGedkYAGeTgM2SFCqMYOfTaKzlThUtzpO2q8jS
FSdO6hJq+j8wooorQzCiiigAooooAKKKKACiiigAooooAKKKKACq2oafb6tZTWl3Es9tMhR427gj
B+n1FWaKTSkrMDivBHwtsfA+sahqEN7dX8lwohtxeEMbSDOfKRsZIJC5LEk7Fz0ye1ooqKdOFKPJ
TVl5FSk5O8ncKKKK0JOa8V/Dbwx44vtOvNf0W11W40/f9na4UkANjcrLnDqcD5WBGQDjNdBbW0Nn
bxwW8SQQRqFSONQqqB0AA6CpaKtzlKKi3oiFThGTklq9zjNX+Dvg3XPE9l4huvD9m2s2kyzx3axB
WLr0LY6kevXt0yK4X9pC98UrpOl20WjaO/hc+JvDZl1J9WlW9Vv7ZsjhbX7MUYbtoyZxwScZG0+2
15j+0V/yTux/7Gjw3/6fLGsYwjH4VYs6aiiirAKKKKACiiigArhfHn/JRPg7/wBjRcf+mPVK7quF
8ef8lE+Dv/Y0XH/pj1SgD2KiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA
ooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi
iigAooooAK8x/aK/5J3Y/wDY0eG//T5Y16dXmP7RX/JO7H/saPDf/p8saAOmooooAKKKKACiiigA
rhfHn/JRPg7/ANjRcf8Apj1Su6rhfHn/ACUT4O/9jRcf+mPVKAPYqKKKACiiigAooooAKKKKACii
igAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK
ACiiigAooooAKKKKACiiigAooooAKKKKACiiigArzH9or/kndj/2NHhv/wBPljXp1eY/tFf8k7sf
+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

------=_NextPart_001_0578_01D56986.8FE2FE90
Content-Type: image/jpeg;
	name="cf_0e6.jpg"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="cf_0e6.jpg"

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsK
CwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQU
FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCAF3AecDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9K6ra
nqEelabd3swYw20TzOFGTtVSTj3wKs1Dd2sV9azW06eZBMjRyIf4lIwR+RoA8g+H/wASPFlzrXgb
/hJZdMms/GulTajbWtjavFJpsqRxTCEyGRhMvlyMC+FO6PIGGwuh8ZfFHjLwbpuua/p+p6Jo+g6R
p6zwJfWkl1Nqd4S+LfCyJ5YYiJF2h2ZpeB8oDM8LfBnWdAk0NrrxVb6kPDWkz6VoBbSijQF1RFmu
T5x891jjRfl8oHMhI+YbW+MPhT4w8RePtN8SW/i7Q/K022RLLTdX8PTXcNtc4PmXSBL2IeYwO0Fg
xRRhSNzFgDm/if8AGLxFovi6306DU18G6fb6Fb6rqN3ceF7vW0gklklUpI9u6LCsYhYs7nHIPABN
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
FFFFABRRRQAUUUUAJgHGR0paKKACiiigD//Z

------=_NextPart_001_0578_01D56986.8FE2FE90--

------=_NextPart_000_0577_01D56986.8FE2FE90
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIISWTCCA4ow
ggJyoAMCAQICAQEwDQYJKoZIhvcNAQELBQAwVjELMAkGA1UEBhMCVVMxHzAdBgNVBAoTFk1JVCBM
aW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsTA1BLSTEYMBYGA1UEAxMPTUlUTEwgUm9vdCBDQS0y
MB4XDTE2MDQyMDEyMDAwMFoXDTM1MDQxOTIzNTk1OVowVjELMAkGA1UEBhMCVVMxHzAdBgNVBAoT
Fk1JVCBMaW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsTA1BLSTEYMBYGA1UEAxMPTUlUTEwgUm9v
dCBDQS0yMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv3WoBEGOOJtm4ucvaf6vKIFP
s8watCd6Smwq/XeRNo7P3jPIxNPwF398RGDUmPJIXA7idzD6j0opFIW+kLqYye9e788PV0dqaJlX
8818fNDbSE+8B6hieqKTR7VfOI74UVQEUKVRFuRFw6uVYuvgew2Tj/C2dEee37eruQl5nHkbV2Os
WnZ7O+yt+etd6HRcaXLlP9q8WKgA3B7vkOVIMCKoAuaWj+BFq7K+WNkiyi/KdOH9JmOpbyRK4jcA
7xbLnF8JFUSNg5c4Y1BJrFaZtkCeG6Nm9p524GllkRFzPgpj8VicV+AK+9rY07dTx02kYotTnKuy
0YxBAwsUXxAQEwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBT/ycllTFOA8akM
PCGugirH7vgy+zAfBgNVHSMEGDAWgBT/ycllTFOA8akMPCGugirH7vgy+zAOBgNVHQ8BAf8EBAMC
AYYwDQYJKoZIhvcNAQELBQADggEBAHqYfEf/3J5aMKhlYQ0PnUAbMB8jZSr9/HvjfOF00crFUCfS
rqG8JQwo+S/iq66gcp62FEgJ0fQkDgVg6m+C2ETo1LoWiSxhYCfcSIQECljlXwR8wFSayF822S69
IqvHhdq4d58jU6gYi6ssjU4vwsvsVLRJKk/m/Cg/w8gW6YHM5ahBD6/5Ccel2fI7oSmskO991+ot
rC11YfDwCFvz7Am0r+K9iVhSWta4hmIuV0YBia07eZKSO02LPgQ8YOz3ku0Yt+mh8VWRKux2CcYj
Mpk+WDV0BMp75tqb6pqBFkcKvEBXqxg+8+G/umjii4H0c5kvJhaQyykbmOKmxO9IcJIwggTAMIID
qKADAgECAgEGMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZNSVQgTGlu
Y29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExMIFJvb3QgQ0EtMjAe
Fw0xNzAzMDIxMjAwMDBaFw0yNjAzMDIyMzU5NTlaMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUw
ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCnmoMOvTkfw7nq19mrWazGaa+Q83Uv0+AT
XT3q6kr+WExIMIZ87C74WCcRXpvO7uvx7HvMsYWAFHW93wQwhjytxHIOZgKNJ4VnGVDUl+KI7g0n
9+Zjt3hB3HhHbcvbe9+Y4jz+XzCiLl2OaYvICKbxvbBSCLtPEeZQ6x6Tb6EK0ym0gvYeHO3kuuY+
SJHJMltbrLnIVLxjZrNVS77zXKvu6Q3hSdkRIB7kJgEXfL+p/z/2p94bEEZ2TnQz0TkOjG+Jq7Ul
XlFRtvsYcDPEQD3UNkZsWcXgC1hXG8TGknUcAhlGxVhlKlFLmNd7342seGy2s9YxNDnSE+eXTtb0
I5LLAgMBAAGjggGcMIIBmDASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBQv77vGDR276Wr+
rGfzBzsIdvZLWTAfBgNVHSMEGDAWgBT/ycllTFOA8akMPCGugirH7vgy+zAOBgNVHQ8BAf8EBAMC
AYYwZwYIKwYBBQUHAQEEWzBZMC4GCCsGAQUFBzAChiJodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0
dG8vTExSQ0EyMCcGCCsGAQUFBzABhhtodHRwOi8vb2NzcC5sbC5taXQuZWR1L29jc3AwNAYDVR0f
BC0wKzApoCegJYYjaHR0cDovL2NybC5sbC5taXQuZWR1L2dldGNybC9MTFJDQTIwgZIGA1UdIASB
ijCBhzANBgsqhkiG9xICAQMBBjANBgsqhkiG9xICAQMBCDANBgsqhkiG9xICAQMBBzANBgsqhkiG
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
A1UEChMWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEPMA0GA1UECxMGUGVvcGxlMSUwIwYDVQQDExxM
YXBvaW50ZS5CZW5qYW1pbi5ELjUwMDA5OTgwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
AQEAz/uhz+o/J7XURLGVYW4mqu3JflOBaUYA2MFkPwb3iHyUguPmdaQnt9lLz1BTr6FEhSVuxL31
7OId5Afmm67aMBuYw0Vb0+sLIV91Z3njAG3U3IgwKieHWh71xQt58QwpV99yS6RjJveiOE0CC+Ba
ue/IPcwPq9EKTK+6wa3h9um+5YsekXtdQKoSR8Gxb25tS6hlP2LigY8eYCiGf6lv4Z7Vyg0TADvX
wISZRfttosTbXzZHdRIR1S7ifRALZFugqYGoy9ND8UCUG61nijXZP2m8NprrHY3KFXIAJcV0vCA3
iiHcglpyjzImndcAqxxfaQGsiJs5UGT4ADiZWIXYQwIDAQABo4IBuzCCAbcwHQYDVR0OBBYEFMlJ
ooZTRBpytEPySWVj1W6cMC/NMA4GA1UdDwEB/wQEAwIFIDAfBgNVHSMEGDAWgBQv77vGDR276Wr+
rGfzBzsIdvZLWTAzBgNVHR8ELDAqMCigJqAkhiJodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0Y3Js
L2xsY2E1MGYGCCsGAQUFBwEBBFowWDAtBggrBgEFBQcwAoYhaHR0cDovL2NybC5sbC5taXQuZWR1
L2dldHRvL2xsY2E1MCcGCCsGAQUFBzABhhtodHRwOi8vb2NzcC5sbC5taXQuZWR1L29jc3AwPQYJ
KwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUIg4PlHYfsp2aGrYcVg+rwRYW2oR8dhevQcIPr7SACAWQC
AQkwJQYDVR0lBB4wHAYEVR0lAAYIKwYBBQUHAwQGCisGAQQBgjcKAwQwHwYDVR0RBBgwFoEUYmxh
cG9pbnRlQGxsLm1pdC5lZHUwGAYDVR0gBBEwDzANBgsqhkiG9xICAQMBCDAnBgkrBgEEAYI3FAIE
Gh4YAEwATABVAHMAZQByAEUAbgBjAC0AUwBXMA0GCSqGSIb3DQEBCwUAA4IBAQBU5KsQq9wjVaMB
EU33bS+uQP6QMHb+a/dlYfzePLSQhazYzLUwqU6VdCTiheOYxT/PIxY1WBAmvfQ7Zvp4Pm5S9Pr+
sCm2Q3f2yKzgbwuRkAkCYFfgeMv0PLBUt1ijUuP+jiXfRA77VnTWNkvKMPowXHX2HXksRnoFjR8N
5hTmeedm/H1X/kCeJm7OWrMnPTr5ViHgNn/xJlAfaryMIpFy24/cJtOMbjGvHmOmYPEWCQndaGDR
54blqgIB3cxrSZMp0zOktETkD3xo2SJjMARf0+8a903aicJQtM3DChNQ3Jytzwi19ER7UszHBOO5
JPpxoWUpN7EUN+3zMXUlxcy8MYIDCjCCAwYCAQEwaDBRMQswCQYDVQQGEwJVUzEfMB0GA1UECgwW
TUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBDQS01
AhNZAAAjrVe54aNw5rXJAAAAACOtMAkGBSsOAwIaBQCgggF3MBgGCSqGSIb3DQEJAzELBgkqhkiG
9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE5MDkxMjIwMjQzM1owIwYJKoZIhvcNAQkEMRYEFO8i6WK6
mI4pDUi8nx2PqolNZcNpMCQGCSqGSIb3DQEJDzEXMBUwCgYIKoZIhvcNAwcwBwYFKw4DAhowdwYJ
KwYBBAGCNxAEMWowaDBRMQswCQYDVQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNvbG4gTGFib3Jh
dG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBDQS01AhNZAAAxwm8GLh1D/7I4AAAA
ADHCMHkGCyqGSIb3DQEJEAILMWqgaDBRMQswCQYDVQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNv
bG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBDQS01AhNZAAAxwm8G
Lh1D/7I4AAAAADHCMA0GCSqGSIb3DQEBAQUABIIBAGVhJHfBKP1oPMfIzZc6blhGv8pHTRxakWHY
t6t7YVWVWVCSzE2pEGbmoXmXeh/VC/6g0jufwQAAeSUEyf6gpwNsDehoqJHRB7mw8RttiXntB96/
EbljrSvRrysUUUQsusm0md/5NMKtio0XfHEnvib4GkZs10g6P2qnTHXRmbsbNlXILr76ioT1w6bw
/NtclkdRfRiTASHcxnOfI6mlDsEUvHfQ4cb9/DbDHaE8H/Px8bEslGTQXAW0NPcgImBtqql4/5Fx
LtYq73ZZOCjQTAv3kqovhVwImaGh2r+GOU9z2PMAXSkPcWzUjjoRwrxlUOrIfxa8z7HDb8jsY/oB
/FEAAAAAAAA=

------=_NextPart_000_0577_01D56986.8FE2FE90--


--===============4391499091483628522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4391499091483628522==--

