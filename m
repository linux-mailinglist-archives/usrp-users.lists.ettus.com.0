Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C55B2197A05
	for <lists+usrp-users@lfdr.de>; Mon, 30 Mar 2020 12:59:37 +0200 (CEST)
Received: from [::1] (port=35464 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jIs8i-00009f-8d; Mon, 30 Mar 2020 06:59:32 -0400
Received: from mail1.bemta25.messagelabs.com ([195.245.230.1]:49181)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Joern.Skorstad@Nkom.no>)
 id 1jIs87-0007v5-2X
 for USRP-users@lists.ettus.com; Mon, 30 Mar 2020 06:58:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=s1;
 t=1585565893; i=@nkom.no;
 bh=Z5blrGKJ/sK02Z9RrBc4iSczQ8YDO4BLGU22bMxGEZc=;
 h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
 b=lwwIUCW4O23jYFqi5MN2xr8oNYT5TSDkNx1h2PrkHcH7uogAt/HACJ6mP9c+yRzdG
 aTythZg3hkj47cafFdN+7EX2fMg8N8Et0uJTE6SOKDQv3v6XHk98GltKE6eWPgcLrE
 yyomh9mJOw2nsSh9qOlK8LgethTOctBaHjq1Fc6VvWXL+NnfnUCrxJDJRxpVj6l2RJ
 RdLeLeBGfP2FBEAY4sd1W01HXF4iwH3XwtpTYaW9q1R2cvrcAsekrGgSoLqJ67KNoA
 l16dIQgoChTxGWiATWQQJpUujvqBq73PByvkoJy34y383Qp/33bGSyly23am7yH79o
 7cSJ83Ec7twag==
Received: from [100.112.195.56] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-a.eu-west-1.aws.symcld.net id 1F/EF-26674-5C0D18E5;
 Mon, 30 Mar 2020 10:58:13 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNKsWRWlGSWpSXmKPExsWS+5KNV/fIhcY
 4g/ZvVhYXOuewOzB6TFx5iDmAMYo1My8pvyKBNeNnzxO2ghnyFc9bohoYz0l3MXJyCAm0MEpc
 6PcHsdkEHCVWb//MAmKLCNhKTN17A8wWFrCXOP54GTNE3EXi35QDbBC2nsThT8tZuxg5OFgEV
 CV+3AEL8wrYScz8c44JJMwoICsxt4kXJMwsIC4x4+gdsIkSAgISS/acZ4awRSVePv7HCmHLSr
 TfmM4GYVtJ9P//yAhha0oc/PsZqkZB4tzWM1A18hL7X05hhpifJnHoyEomiBMEJU7OfMIygVF
 4FpLVs5CUzUJSBhHXk7gxdQobhK0tsWzha2YIW1dixr9DLMjiCxjZVzFaJBVlpmeU5CZm5uga
 GhjoGhoa6RpaGukaGZvoJVbpJuqlluqWpxaX6BrqJZYX6xVX5ibnpOjlpZZsYgTGV0rBgVc7G
 E+ufa93iFGSg0lJlLfpZGOcEF9SfkplRmJxRnxRaU5q8SFGGQ4OJQlen3NAOcGi1PTUirTMHG
 Csw6QlOHiURHh9zgOleYsLEnOLM9MhUqcYXTkmvJy7iJmj4eg8IPlx1RIg+R1M3nwPJIVY8vL
 zUqXEedeDNAuANGeU5sGNhqWpS4yyUsK8jAwMDEI8BalFuZklqPKvGMU5GJWEeWeCTOHJzCuB
 u+AV0HFMQMcFNteDHFeSiJCSamAyf79o04pMqxNRiS89FTh2lM6+0v5ZIehNcMSu3QXXw/ZPL
 nVSf1qn+VNDp+v/dmshqxKPBpZpdyLW/ju9vl13o2PPywNLbA2vv2RPX7GmWIG9vP3T1UDJhl
 eT5x5iWBqY/XW2VNo6We2VMQnBCc+KKrZuuHL8G7tOWGLr/dbHDxacXntAtGlZrc9bzj0+F9o
 TOYJOra34/Ouszt3VxYzvIzN+BGSU7T28aO18OQffLpl/sa8yNthvSDVfXJD9J/9nnuIXzuQF
 d74FH4uKiX582VuO/YGErGVEn5nK6ViLhfaf2F5GsMj2P/1qYqzzSzh+yRk1RoOy4wuZC3dMj
 lo0Udztaprr1ejjJ6YkRYcqsRRnJBpqMRcVJwIA9aGwbs4DAAA=
X-Env-Sender: Joern.Skorstad@Nkom.no
X-Msg-Ref: server-25.tower-264.messagelabs.com!1585565892!3199877!1
X-Originating-IP: [109.233.6.13]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 473 invoked from network); 30 Mar 2020 10:58:12 -0000
Received: from unknown (HELO smtp.nkom.no) (109.233.6.13)
 by server-25.tower-264.messagelabs.com with ECDHE-RSA-AES256-SHA encrypted
 SMTP; 30 Mar 2020 10:58:12 -0000
Received: from EXMBX01.npta.no ([10.10.2.97]) by EXCAS.npta.no ([::1]) with
 mapi id 14.03.0487.000; Mon, 30 Mar 2020 12:58:12 +0200
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: New E310 doesn't boot without console cable plugged in
Thread-Index: AdYGgJclF+3wFkarTImpqkP/IksL0A==
Date: Mon, 30 Mar 2020 10:58:11 +0000
Message-ID: <D71B2B9BB39CE44CACCAB6646DF20CFD562D5F5B@exmbx01>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.1.57]
x-tm-as-product-ver: SMEX-11.0.0.1251-8.100.1062-25322.003
x-tm-as-result: No--17.467600-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: [USRP-users] New E310 doesn't boot without console cable plugged in
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Skorstad=2CJ=C3=B8rn_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?iso-8859-1?Q?Skorstad=2CJ=F8rn?= <Joern.Skorstad@Nkom.no>
Content-Type: multipart/mixed; boundary="===============5323411431991817315=="
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

--===============5323411431991817315==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_D71B2B9BB39CE44CACCAB6646DF20CFD562D5F5Bexmbx01_"

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD562D5F5Bexmbx01_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

we have recently purchased 2 USRP E310 radios, P/N 156333H-D1L. Both of the=
m are stuck with all LEDS on when switched on, unless I connect the USB ser=
ial console cable before switching on, then they boot normally. Both booted=
 with the original SD-card, unmodified.

If I connect the console cable after powering on (all leds on) and press En=
ter the U-boot prompt is shown. If I write boot the system boots normally a=
gain. Looks like the autoboot countdown isn't starting without the console =
attached?

We have an E310 P/N 156333F-D1L from earlier, which is booting =ABnormally=
=BB. Is there some firmware upgrade to install? If so, where to find it? As=
 far as I can see current firmware on the unit is v. 2.2.


BR
Jorn Skorstad

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD562D5F5Bexmbx01_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EpostStil17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NO-BOK" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">we have recently purchased 2 USRP E310 radios, P/N 1=
56333H-D1L. Both of them are stuck with all LEDS on when switched on, unles=
s I connect the USB serial console cable before switching on, then they boo=
t normally. Both booted with the original
 SD-card, unmodified.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I connect the console cable after powering on (al=
l leds on) and press Enter the U-boot prompt is shown. If I write boot the =
system boots normally again. Looks like the autoboot countdown isn&#8217;t =
starting without the console attached?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have an E310 P/N 156333F-D1L from earlier, which =
is booting =ABnormally=BB. Is there some firmware upgrade to install? If so=
, where to find it? As far as I can see current firmware on the unit is v. =
2.2.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BR<o:p></o:p></p>
<p class=3D"MsoNormal">Jorn Skorstad <o:p></o:p></p>
</div>
</body>
</html>

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD562D5F5Bexmbx01_--


--===============5323411431991817315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5323411431991817315==--

