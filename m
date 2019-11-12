Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EA6F8A09
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2019 08:56:31 +0100 (CET)
Received: from [::1] (port=39652 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUR2F-0002kT-5O; Tue, 12 Nov 2019 02:56:23 -0500
Received: from mail1.bemta26.messagelabs.com ([85.158.142.3]:35035)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Joern.Skorstad@Nkom.no>)
 id 1iUR2B-0002go-9u
 for USRP-users@lists.ettus.com; Tue, 12 Nov 2019 02:56:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=s1;
 t=1573545338; i=@nkom.no;
 bh=jaFa7tzLTQRGYVZdxVn15HCV9tYQoPWCkoLxdOur8us=;
 h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
 b=O/SJeOVPKaIZQVUzf5OVv2vjwF9wVUEqldbtEibPiH9rxuXCRFxw4A4ShABYX/zBH
 zsfQnl6o/n/r/uEYsK1+pX1B4JyHGBHH5Ll0pXzCd0QfJVkIFDRCTCv1X2TUD2ABXr
 W0Bgf5yB4O+5ExEzfzLMqb7hOxfS5XVQsHIeChz7gvPydqhxEwDLEbj05xY8bcpKtw
 wQPYzWoVzGUvPjd+zP6RS7RKBfH/jk7VDQC/8yLnv5Hnsq/nRq3RS2yvjTf5K30v8p
 W4Ir16erjvew0AUeMqeiUcj5FgACw450mm2tJH8GKJdjGK4i4zeeQ1+B7oaASmLipu
 l1XK4vdl/RYgw==
Received: from [85.158.142.100] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-a.eu-central-1.aws.symcld.net id D9/BE-23277-9756ACD5;
 Tue, 12 Nov 2019 07:55:37 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRWlGSWpSXmKPExsViF5OXq1uZeir
 W4NcnFYsLnXPYHRg9Jq48xBzAGMWamZeUX5HAmrH38TTWgkWKFWdPnmJsYLwq28XIxSEk0MIo
 cWfDDtYuRk4ONgFHidXbP7OA2CICthJT994As4UFJCVmvPjJCBGXk+iafweqRk/i8bdJYL0sA
 qoSS48tY+9i5ODgFbCT+HYuAsRkFJCVmNvEC1LBLCAuMeMoRKeEgIDEkj3nmSFsUYmXj/+xQt
 iKEncOzoCyrSSen1zABGFrSrx4uw+qXkHi3NYzbBC2vMT+l1OYIeanSfROmsgOYvMKCEqcnPm
 EZQKj8Cwkq2chKZuFpAwiridxY+oUNghbW2LZwtfMELauxIx/h1iQxRcwsq9itEwqykzPKMlN
 zMzRNTQw0DU0NNY11jUyMNNLrNJN1Est1U1OzSspSgTK6iWWF+sVV+Ym56To5aWWbGIERllKI
 fO5HYzt397qHWKU5GBSEuU9InEqVogvKT+lMiOxOCO+qDQntfgQowwHh5IE780koJxgUWp6ak
 VaZg4w4mHSEhw8SiK8S5KB0rzFBYm5xZnpEKlTjJYcE17OXcTM8XHVEiD5HUQKseTl56VKifN
 WpwA1CIA0ZJTmwY2DJaVLjLJSwryMDAwMQjwFqUW5mSWo8q8YxTkYlYR5n4Cs5cnMK4Hb+gro
 ICaggw6cPQZyUEkiQkqqgWn3hCxPGwm/OX9mdb+f6+BjvHZT5qz9Fz2ZuP1+re7vm5qV85Nxt
 WZPx62b/mdy/i6ILXrj2syRKlfsmnNuxpyJ+c3rJp/3DNVIf6fAP1M4Y+HkXKPnIgK5XlFHai
 ruLfPuLMhcIr2JxV3Kb//khfYVbt9Cs5iWHLDoKGTdGfSuX5zD80Hl4aI/yvHTQ4qSGtXX1X+
 ZpnRhxzHD1cV1uSXPvAreRsWU8xxMfNDZ1DP93RRXbj2vbRfkJ0qw1JfyGhjOECsX+L/2dvHG
 /sN/PCem+XcZ+c3bYRZ4YEZdWfTZlOgFrBvEpblWa/OsZws/WDdTXzumannj1Rf79SbpvdW0d
 pgZIz3hrMEX3g8eSizFGYmGWsxFxYkAE8ODNcUDAAA=
X-Env-Sender: Joern.Skorstad@Nkom.no
X-Msg-Ref: server-11.tower-225.messagelabs.com!1573545336!229359!1
X-Originating-IP: [62.92.110.109]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 692 invoked from network); 12 Nov 2019 07:55:37 -0000
Received: from 109.110.92.62.static.cust.telenor.com (HELO smtp.nkom.no)
 (62.92.110.109)
 by server-11.tower-225.messagelabs.com with ECDHE-RSA-AES256-SHA encrypted
 SMTP; 12 Nov 2019 07:55:37 -0000
Received: from EXMBX01.npta.no ([10.10.2.97]) by EXCAS.npta.no ([::1]) with
 mapi id 14.03.0468.000; Tue, 12 Nov 2019 08:55:36 +0100
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: E310 RFNoC image
Thread-Index: AdWZLCnHsJoqHaTiQkOJ5gEZ7l9tRg==
Date: Tue, 12 Nov 2019 07:55:35 +0000
Message-ID: <D71B2B9BB39CE44CACCAB6646DF20CFD48DAD5A8@exmbx01>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.13.23]
x-tm-as-product-ver: SMEX-11.0.0.1251-8.100.1062-25038.003
x-tm-as-result: Yes-34.631000-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: [USRP-users] E310 RFNoC image
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
From: =?utf-8?q?Skorstad=2CJ=C3=B8rn_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?iso-8859-1?Q?Skorstad=2CJ=F8rn?= <Joern.Skorstad@Nkom.no>
Content-Type: multipart/mixed; boundary="===============0612190975623454949=="
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

--===============0612190975623454949==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_D71B2B9BB39CE44CACCAB6646DF20CFD48DAD5A8exmbx01_"

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48DAD5A8exmbx01_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi list,

I have followed the application note https://kb.ettus.com/Software_Developm=
ent_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Sourc=
e to set up a cross compile environment for an E310 SDR. It works well, how=
ever I have not been able to get past chapter 7: Building a custom RFNoC FP=
GA Image, as I haven't set up Vivado 2017.4, as required.

I would like to experiment with RFNoC development also. The application not=
e states =ABA future application note will cover a step-by-step install gui=
de for Vivado=BB. Until this application note is ready, is it possible to u=
se an image built by someone else using this software version? (UHD_3.14.1.=
HEAD-0-gbfb9c1c7). If so, where could I eventually download it? What I need=
 is 1xwindow, 1xFFT, 1xFIFO and 1xFosphor if there is space left. Radio and=
 DDC is already on FPGA available as blocks?

Regards,
Jorn

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48DAD5A8exmbx01_
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
<p class=3D"MsoNormal">Hi list,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have followed the application note <a href=3D"http=
s://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD=
_/_GNU_Radio_/_gr-ettus_from_Source">
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a> to set up a cross compile envir=
onment for an E310 SDR. It works well, however I have not been able to get =
past chapter 7: Building a custom
 RFNoC FPGA Image, as I haven&#8217;t set up Vivado 2017.4, as required. <o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would like to experiment with RFNoC development al=
so. The application note states =ABA future application note will cover a s=
tep-by-step install guide for Vivado=BB. Until this application note is rea=
dy, is it possible to use an image built
 by someone else using this software version? (UHD_3.14.1.HEAD-0-gbfb9c1c7)=
. If so, where could I eventually download it? What I need is 1xwindow, 1xF=
FT, 1xFIFO and 1xFosphor if there is space left. Radio and DDC is already o=
n FPGA available as blocks?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jorn<o:p></o:p></p>
</div>
</body>
</html>

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48DAD5A8exmbx01_--


--===============0612190975623454949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0612190975623454949==--

