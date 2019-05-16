Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6971520E37
	for <lists+usrp-users@lfdr.de>; Thu, 16 May 2019 19:50:28 +0200 (CEST)
Received: from [::1] (port=46024 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hRKWR-0002th-6H; Thu, 16 May 2019 13:50:27 -0400
Received: from [141.226.237.60] (port=36329 helo=netlinetech.com)
 by mm2.emwd.com with esmtp (Exim 4.91)
 (envelope-from <Ilayn@netlinetech.com>) id 1hRKVs-0002lM-Tt
 for usrp-users@lists.ettus.com; Thu, 16 May 2019 13:50:23 -0400
Received: from Internal Mail-Server by Mail-SeCure (envelope-from
 Ilayn@netlinetech.com) with SMTP; 16 May 2019 18:33:43 +0000
Received: from NCTSERVER5.netline.co.il ([::1]) by nctserver5.netline.co.il
 ([::1]) with mapi id 14.03.0439.000; Thu, 16 May 2019 20:47:35 +0300
To: "support@ettus.com" <support@ettus.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: x310 gpsdo get_time_now()
Thread-Index: AdUMDxkMkokvUA0pT8qCFPsaOns4gA==
Date: Thu, 16 May 2019 17:47:34 +0000
Message-ID: <EBDEC4BDBD1F534686BED262D988D715086560DD@nctserver5.netline.co.il>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.1.173]
x-c2processedorg: b6f1b805-3509-4939-a2f1-63107df1a371
MIME-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] x310 gpsdo get_time_now()
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
From: Ilay Nissim via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ilay Nissim <Ilayn@netlinetech.com>
Cc: Ilay Nissim <Ilayn@netlinetech.com>
Content-Type: multipart/mixed; boundary="===============7597812040542092872=="
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

--===============7597812040542092872==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_EBDEC4BDBD1F534686BED262D988D715086560DDnctserver5netli_"

--_000_EBDEC4BDBD1F534686BED262D988D715086560DDnctserver5netli_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi
I have an x310 connected to gpsdo UHD ver14.0
I sync to gpsdo at start of bringup
Than use get_time_now() to follow usrp time
It look like usrp time is2x slow
Meaning if 100 seocnds should have passed - 50 seconds pass


For example
Using clock source - gpsdo time source gpsdo
 if on  init gps time is
1558028200
And usrp is
1558028200

After 100 seconds
Usrptime is
1558028250
And gps time is
1558028300

Would be happy to get feedback
Regards,
Ilay Nissim
RT Embedded Team Leader
Netline Communications Technologies Ltd
Tel: + (972) 36068171<tel:+972%203-606-8161>
Fax: + (972) 36068101<tel:+972%203-606-8101>
http://www.netlinetech.com/
Azrieli Circular Tower , Menachem Begin 132, Tel-Aviv 67021, ISRAEL


This email and the associated attachments may contain information that is p=
roprietary, privileged, confidential or otherwise protected from disclosure=
. If you are not the intended recipient or otherwise have received this mes=
sage in error, you are not authorized to read, print, retain, copy or disse=
minate this message or any part of it. If you are not the intended recipien=
t or otherwise have received this message in error, please notify me immedi=
ately, destroy any paper copies and delete all electronic files of the mess=
age.

--_000_EBDEC4BDBD1F534686BED262D988D715086560DDnctserver5netli_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi <o:p></o:p></p>
<p class=3D"MsoNormal">I have an x310 connected to gpsdo UHD ver14.0<o:p></=
o:p></p>
<p class=3D"MsoNormal">I sync to gpsdo at start of bringup<o:p></o:p></p>
<p class=3D"MsoNormal">Than use get_time_now() to follow usrp time<o:p></o:=
p></p>
<p class=3D"MsoNormal">It look like usrp time is2x slow<o:p></o:p></p>
<p class=3D"MsoNormal">Meaning if 100 seocnds should have passed &#8211; 50=
 seconds pass<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For example<o:p></o:p></p>
<p class=3D"MsoNormal">Using clock source &#8211; gpsdo time source gpsdo <=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;if on&nbsp; init gps time is <o:p></o:p></p>
<p class=3D"MsoNormal">1558028200<o:p></o:p></p>
<p class=3D"MsoNormal">And usrp is<o:p></o:p></p>
<p class=3D"MsoNormal">1558028200<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After 100 seconds<o:p></o:p></p>
<p class=3D"MsoNormal">Usrptime is <o:p></o:p></p>
<p class=3D"MsoNormal">1558028250<o:p></o:p></p>
<p class=3D"MsoNormal">And gps time is<o:p></o:p></p>
<p class=3D"MsoNormal">1558028300<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Would be happy to get feedback<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:#1F497D">Regards,<br>
Ilay Nissim <br>
RT Embedded Team Leader</span><span lang=3D"SV"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:gray">Netline Communications Technologies Ltd
<br>
Tel: <a href=3D"tel:&#43;972%203-606-8161" target=3D"_blank"><span style=3D=
"color:blue">&#43; (972) 36068171</span></a><br>
Fax: <a href=3D"tel:&#43;972%203-606-8101" target=3D"_blank"><span style=3D=
"color:blue">&#43; (972) 36068101</span></a><br>
</span><a href=3D"http://www.netlinetech.com/" target=3D"_blank"><span styl=
e=3D"color:blue">http://www.netlinetech.com/</span></a><span style=3D"color=
:blue"><br>
</span><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:gray">Azrieli Circular Tower , Menachem Begin 132, Tel-Aviv 67021, IS=
RAEL</span><span lang=3D"SV"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL">This email and the associa=
ted attachments may contain information that is proprietary, privileged, co=
nfidential or otherwise protected from disclosure. If you are not the inten=
ded recipient or otherwise have received
 this message in error, you are not authorized to read, print, retain, copy=
 or disseminate this message or any part of it. If you are not the intended=
 recipient or otherwise have received this message in error, please notify =
me immediately, destroy any paper
 copies and delete all electronic files of the message. </p>
</body>
</html>

--_000_EBDEC4BDBD1F534686BED262D988D715086560DDnctserver5netli_--


--===============7597812040542092872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7597812040542092872==--

