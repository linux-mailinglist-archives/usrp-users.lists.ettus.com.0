Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B757B2474
	for <lists+usrp-users@lfdr.de>; Fri, 13 Sep 2019 19:01:56 +0200 (CEST)
Received: from [::1] (port=49608 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i8oxE-0005xc-U8; Fri, 13 Sep 2019 13:01:52 -0400
Received: from llmx3.ll.mit.edu ([129.55.12.49]:36740)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <prvs=4159559c1a=blapointe@ll.mit.edu>)
 id 1i8oxA-0005nm-R4
 for usrp-users@lists.ettus.com; Fri, 13 Sep 2019 13:01:48 -0400
Received: from LLE2K16-MBX02.mitll.ad.local (LLE2K16-MBX02.mitll.ad.local) by
 llmx3.ll.mit.edu (unknown) with ESMTPS id x8DH18qv033083 for
 <usrp-users@lists.ettus.com>; Fri, 13 Sep 2019 13:01:08 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: random phase offset when trying to synchronize two USRP N210s
Thread-Index: AdVpp+Bg3Ogn1G/VT/Wf8rdtwzmgOwAqKNng
Date: Fri, 13 Sep 2019 17:01:06 +0000
Message-ID: <bbba74629a334e848a7efead3ab607a5@ll.mit.edu>
References: <f92fd3dd86ba40709538d0c0ab69d60f@ll.mit.edu>
In-Reply-To: <f92fd3dd86ba40709538d0c0ab69d60f@ll.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.1.85]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-13_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909130171
Subject: Re: [USRP-users] random phase offset when trying to synchronize two
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
Content-Type: multipart/mixed; boundary="===============7157234788098398077=="
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

--===============7157234788098398077==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_011D_01D56A33.4D884430"

------=_NextPart_000_011D_01D56A33.4D884430
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_011E_01D56A33.4D884430"


------=_NextPart_001_011E_01D56A33.4D884430
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

To provide more details:

-          The two USRP devices each have their own GPSDOs.

-          I have separate TX and RX programs.  Each one synchronizes to
their GPSDO and then synchronizes phase by creating streamers with a
time_spec with a specified gps_second in the future, following the
instructions in the manual.

 

The issue is: I am seeing a random phase offset in the received data each
time I run my programs.  I don't see a phase offset if I specify a zero Hz
center frequency, so there might be a clue there.   For my application I
need to specify a non-zero center frequency.

 

I'm just trying to find out whether this result is expected with the HW
and/or SW setup that I have, or whether it is a bug in my current version of
UHD, or I am doing something wrong?  Has anyone ever tried to synchronize
two USRPs each with their own GPSDO using non-zero center frequencies?

 

Someone mentioned off-list that there was a bug in earlier versions of UHD
that caused the CORDIC not to get reset but that has been fixed in newer
versions.  I'm running UHD 3.15.0.  

Someone else asked off-list whether I am using the same or separate GPSDOs.
The answer was separate GPSDOs, but does that make a difference?

 

Thanks,

-ben   

 

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Lapointe,
Benjamin - 0333 - MITLL via USRP-users
Sent: Thursday, September 12, 2019 4:25 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] random phase offset when trying to synchronize two
USRP N210s

 

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


------=_NextPart_001_011E_01D56A33.4D884430
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:139229793;
	mso-list-type:hybrid;
	mso-list-template-ids:1398328574 93079530 67698691 67698693 67698689 =
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
@list l1
	{mso-list-id:2002537208;
	mso-list-type:hybrid;
	mso-list-template-ids:161523100 -1091287438 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
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
class=3DMsoNormal><span style=3D'color:#1F497D'>To provide more =
details:<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l0 level1 lfo2'><![if =
!supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>-<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>The two =
USRP devices each have their own GPSDOs.<o:p></o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>-<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>I have =
separate TX and RX programs.&nbsp; Each one synchronizes to their GPSDO =
and then synchronizes phase by creating streamers with a time_spec with =
a specified gps_second in the future, following the instructions in the =
manual.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>The issue is: I am =
seeing a random phase offset in the received data each time I run my =
programs.&nbsp; I don&#8217;t see a phase offset if I specify a zero Hz =
center frequency, so there might be a clue there.&nbsp;&nbsp; For my =
application I need to specify a non-zero center =
frequency.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>I&#8217;m just trying to =
find out whether this result is expected with the HW and/or SW setup =
that I have, or whether it is a bug in my current version of UHD, or I =
am doing something wrong?&nbsp; Has anyone ever tried to synchronize two =
USRPs each with their own GPSDO using non-zero center =
frequencies?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Someone mentioned =
off-list that there was a bug in earlier versions of UHD that caused the =
CORDIC not to get reset but that has been fixed in newer versions.&nbsp; =
I&#8217;m running UHD 3.15.0.&nbsp; <o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Someone else asked =
off-list whether I am using the same or separate GPSDOs.&nbsp; The =
answer was separate GPSDOs, but does that make a =
difference?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>-ben&nbsp;&nbsp; =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> USRP-users =
&lt;usrp-users-bounces@lists.ettus.com&gt; <b>On Behalf Of </b>Lapointe, =
Benjamin - 0333 - MITLL via USRP-users<br><b>Sent:</b> Thursday, =
September 12, 2019 4:25 PM<br><b>To:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [USRP-users] random phase =
offset when trying to synchronize two USRP =
N210s<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
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
style=3D'text-indent:-.25in;mso-list:l1 level1 lfo4'><![if =
!supportLists]><span style=3D'mso-list:Ignore'>-<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span><![endif]>If so, can someone explain why there is a random =
phase offset when using a non-zero center frequency. <o:p></o:p></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l1 level1 =
lfo4'><![if !supportLists]><span style=3D'mso-list:Ignore'>-<span =
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
------=_NextPart_001_011E_01D56A33.4D884430--

------=_NextPart_000_011D_01D56A33.4D884430
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
9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE5MDkxMzE3MDEwNVowIwYJKoZIhvcNAQkEMRYEFGbxP77i
BCHtk5GdMlhGAcdEyv0dMCQGCSqGSIb3DQEJDzEXMBUwCgYIKoZIhvcNAwcwBwYFKw4DAhowdwYJ
KwYBBAGCNxAEMWowaDBRMQswCQYDVQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNvbG4gTGFib3Jh
dG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBDQS01AhNZAAAxwm8GLh1D/7I4AAAA
ADHCMHkGCyqGSIb3DQEJEAILMWqgaDBRMQswCQYDVQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNv
bG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBDQS01AhNZAAAxwm8G
Lh1D/7I4AAAAADHCMA0GCSqGSIb3DQEBAQUABIIBAGdgymaI2AArxy7YhYCZBp29I7KzDWDDwq9W
CJsnu/tXl0raPB8AT67po5kZPGD7byxsGUunVX0FF23+HtGtc+/903qWuKe5LmSMbY6YF1yUVV/+
WJGkppieEH6T55nIe04uTlIRELnXKkKQs19mZXGvrl+WtroZsQeYx3/z1wu5GEIbW8ITkD785Fgy
B/mU8GcShuy0kug7jbjLreUeaWJ+EE7yw02AllvOfhIwm5uu8XNmCozMs7S2ylsu+UvLMpu3vRrn
NTMq8ZRjgDEvyFzHWens1oYZUff9PWj8s0HcnKHjjXcVhc4XPAXveFqLbkokD1VjC8C1dLrSWZ7I
/zQAAAAAAAA=

------=_NextPart_000_011D_01D56A33.4D884430--


--===============7157234788098398077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7157234788098398077==--

