Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6F172903
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2019 09:29:26 +0200 (CEST)
Received: from [::1] (port=40812 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqBiG-0003Wi-DN; Wed, 24 Jul 2019 03:29:24 -0400
Received: from mailin.dlr.de ([194.94.201.12]:53870)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Robert.Poehlmann@dlr.de>)
 id 1hqBiC-0003RZ-B8
 for usrp-users@lists.ettus.com; Wed, 24 Jul 2019 03:29:20 -0400
IronPort-SDR: Htz7w9o1xVVb3o+M92NITzCc4zrUOTp56x20UZ8RWBYpI4Hyx0OO5xpu4LTX0sSserWm9429Z5
 ngyHe5mbiv8Q==
IronPort-PHdr: =?us-ascii?q?9a23=3ACP5LJhzFh6penS3XCy+O+j09IxM/srCxBDY+r6?=
 =?us-ascii?q?Qd2uoSIJqq85mqBkHD//Il1AaPAdyBra0VwLOP4+jJYi8p2d65qncMcZhBBV?=
 =?us-ascii?q?cuqP49uEgeOvODElDxN/XwbiY3T4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx?=
 =?us-ascii?q?7xKRR6JvjvGo7Vks+7y/2+94fcbglVmjaxe7F/IRG5oQnMq8UbgpZpJ7osxB?=
 =?us-ascii?q?fOvnZGYfldy3lyJVKUkRb858Ow84Bm/i9Npf8v9NNOXLvjcaggQrNWEDopM2?=
 =?us-ascii?q?Yu5M32rhbDVheA5mEdUmoNjBVFBRXO4QzgUZfwtiv6sfd92DWfMMbrQ704RS?=
 =?us-ascii?q?iu4qF2QxLulSwJNSM28HvPh8JwkqxVvQ6hqRJ8zY7VfI6aO+FzcbnBcd4eX2?=
 =?us-ascii?q?dNQtpdWzFHD4ihb4UPFe0BPeNAooT6u1UOqgCxChe2BOPz0DNGnHj20rM60+?=
 =?us-ascii?q?QlFAHJxgogH9QVvXvJqNX1Lr0eXv2rw6TRyzjIcv1Y2TD46IfScxAhp+mBUq?=
 =?us-ascii?q?xsccrN1EkvDBnJgUmXqYzgJz+ay+ANs3KB4+V9S+2ijXMspQJpojW328sglp?=
 =?us-ascii?q?PFip8Wx13L7yl13Yg4KN6iREJmf9KoCIZcuz2AO4drQc4vTHtktDs0x7AFo5?=
 =?us-ascii?q?K3YigHxZs/yxLCavGKd5KE7gzjWeueOzt1hWhpdK+7ihu990Wr1/fyWdOu0F?=
 =?us-ascii?q?lQqypIitzMtncQ2BPN8sWHUf59/lu52TaIygDT9vlIIUAqmqrfLJ4s2rA+mJ?=
 =?us-ascii?q?wdv0rMHiH4mEL4gqyReEs+5uSk9evpbbT4q5OGNo90jB3+Mr40lcClHOs4Nh?=
 =?us-ascii?q?IOU3KG9uuizLHj/Ev5T6tWjvAuj6XVrIrWKdkYq6O2GQNZz4gu5hWlAzu7zt?=
 =?us-ascii?q?gUhXwHI0hEeBKDgYjpIVbOIPXgAPmjhFSjiylkx+raPrH7GJvNKWbMkLflfb?=
 =?us-ascii?q?Z48UFczgwzwMtC6JJQELENOu/8VVHpuNzCEhA5KxC0w/rgCNhly4MeQniPAr?=
 =?us-ascii?q?eAPKPPql+H+PgvI/KXaY8RuTb9MOQl5+X0gXAnhV8dYbSp3YANZH+kGfRmJl?=
 =?us-ascii?q?2TYWDwjdcZDWcKog0+QfT3h1KYVz5TZmi9X6Ym6jE5Fo2mFZzDRoergLGawi?=
 =?us-ascii?q?i7AoFWZn1dClyWDXjocICECL8wb3fGP9R7inkZTrW7UKcl1Aqyr0n316Z6Na?=
 =?us-ascii?q?zf/ShO5rz5090gs9fUnxwo6XpMCMmd12SESWdckmcSATM7ivMs6Xdhw0uOhP?=
 =?us-ascii?q?Ary8dTEsZesqtE?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2E/AADABzhd/wyKuAplHgEGBwaBUwk?=
 =?us-ascii?q?LAYEUgW+BLgqnWolcFIFnCQEBAQEBAQEBASABDAoBAQKEPgKCeTQJDgEDAQE?=
 =?us-ascii?q?FAQEBAQYBAQKGBwyCOiIcgQsBAQEBAQEBAQFNAkQvBSxMEgEqHS8KFBIBBA4?=
 =?us-ascii?q?FCIMbgR18rgGEMgGGCIE0AY10gVeDCoJhAwKBJjo0CA+CcIImBIwiLV+HQpV?=
 =?us-ascii?q?1BwKBOWWGVYgthSSDGooYiliUf5FuE4IRcVwVgkoJhiozih8BcgEBAY0KgSE?=
 =?us-ascii?q?BAQ?=
X-IronPort-AV: E=Sophos;i="5.64,302,1559512800"; d="scan'208,217";a="20013043"
To: <usrp-users@lists.ettus.com>
Thread-Topic: Follow up: n3xx master clock rate
Thread-Index: AdVB7/SAwOQCrfcTR+G+r51/3cPGbg==
Date: Wed, 24 Jul 2019 07:28:37 +0000
Message-ID: <2032979BBC82474D954F55A08A5408F94EE9DA91@DLDEFFMIMP03EXC.intra.dlr.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: D1BA27EB9A39F488CEEC9CB469FA03B171431C064BAFABD4EFF513481AC2663E2000:8
MIME-Version: 1.0
Subject: [USRP-users] Follow up: n3xx master clock rate
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
From: Robert via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert.Poehlmann@dlr.de
Content-Type: multipart/mixed; boundary="===============6758128879225375647=="
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

--===============6758128879225375647==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2032979BBC82474D954F55A08A5408F94EE9DA91DLDEFFMIMP03EXC_"

--_000_2032979BBC82474D954F55A08A5408F94EE9DA91DLDEFFMIMP03EXC_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Ettus team,

a while ago there was a discussion about the master clock rates of the n3xx=
 devices, which restricts the usable sampling rates:
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-October/05=
8292.html

A feature request was filed to enable additional master clock rates. How is=
 the status on this?

Our application requires a sampling rate of 25 MHz, which could be realized=
 with a master clock rate of 150 MHz. Resampling is inconvenient, as we are=
 interested in the signal time-of-arrival (ToA).


Best regards

Robert

--------------------------
Deutsches Zentrum f=FCr Luft- und Raumfahrt e.V. (DLR)
German Aerospace Center
Institute of Communications and Navigation | Oberpfaffenhofen, Muenchener S=
tr. 20 | 82234 Wessling | Germany

Robert P=F6hlmann
Telephone +49 8153 28 2619 | Telefax +49 8153 28 1871 | robert.poehlmann@dl=
r.de<mailto:robert.poehlmann@dlr.de>
DLR.de<http://www.dlr.de/>


--_000_2032979BBC82474D954F55A08A5408F94EE9DA91DLDEFFMIMP03EXC_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
tax=3D"http://schemas.microsoft.com/sharepoint/taxonomy/soap/" xmlns:tns=3D=
"http://schemas.microsoft.com/sharepoint/soap/recordsrepository/" xmlns:sps=
up=3D"http://microsoft.com/webservices/SharePointPortalServer/UserProfileSe=
rvice" xmlns:mml=3D"http://www.w3.org/1998/Math/MathML" xmlns:st=3D"&#1;" x=
mlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
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
<p class=3D"MsoNormal"><a name=3D"Gru=DF"></a>Dear Ettus team,<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">a while ago there was a discussion about the master =
clock rates of the n3xx devices, which restricts the usable sampling rates:=
<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://lists.ettus.com/pipermail/usrp-use=
rs_lists.ettus.com/2018-October/058292.html">http://lists.ettus.com/piperma=
il/usrp-users_lists.ettus.com/2018-October/058292.html</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A feature request was filed to enable additional mas=
ter clock rates. How is the status on this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Our application requires a sampling rate of 25 MHz, =
which could be realized with a master clock rate of 150 MHz. Resampling is =
inconvenient, as we are interested in the signal time-of-arrival (ToA).<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"mso-fareast-language:DE">Best regards<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><a name=3D"Absender"></a><span style=3D"mso-fareast-language:DE">Robert<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:dimgray;mso-fareast-language:DE">&#8212;&#8212;&#8212;&#8=
212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&=
#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212=
;&#8212;</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:dimgray;mso-fareast-language:DE"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:dimgray;mso-fareast-language:DE">Deutsches Zentrum f=
=FCr Luft- und Raumfahrt</span></b><span style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:dimgray;mso-fareast-lang=
uage:DE">
 e.V. (DLR)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:dimgray;mso-fareast-language:DE">German Aerospace Center<=
/span><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:dimgray;mso-fareast-language:DE"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<a name=3D"Institut"></a><span style=3D"font-size:8.5pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:dimgray;mso-fareast-language:DE">In=
stitute of Communications and Navigation | Oberpfaffenhofen, Muenchener Str=
. 20 | 82234 Wessling | Germany<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"punctuation-wrap:simple;text-autospace:none=
"><a name=3D"Funktion"></a><b><span lang=3D"DE" style=3D"font-size:10.0pt;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:dimgray;mso-farea=
st-language:DE">Robert P=F6hlmann</span></b><span lang=3D"DE" style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:dim=
gray;mso-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<a name=3D"Telefon"></a><span lang=3D"DE" style=3D"font-size:8.5pt;font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:dimgray;mso-fareast-lang=
uage:DE">Telephone &#43;49 8153 28 2619 | Telefax &#43;49 8153 28 1871 |
<a href=3D"mailto:robert.poehlmann@dlr.de"><span style=3D"color:blue">rober=
t.poehlmann@dlr.de</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<span lang=3D"DE" style=3D"font-size:8.5pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:dimgray;mso-fareast-language:DE"><a href=3D"http=
://www.dlr.de/"><span style=3D"color:blue">DLR.de</span></a></span><u><span=
 lang=3D"DE" style=3D"font-size:8.5pt;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:blue;mso-fareast-language:DE"><o:p></o:p></span></u><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_2032979BBC82474D954F55A08A5408F94EE9DA91DLDEFFMIMP03EXC_--


--===============6758128879225375647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6758128879225375647==--

