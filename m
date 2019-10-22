Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3224DFE0F
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 09:16:10 +0200 (CEST)
Received: from [::1] (port=38014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMoOj-0005Bn-6r; Tue, 22 Oct 2019 03:16:05 -0400
Received: from mail1.bemta26.messagelabs.com ([85.158.142.1]:34565)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Joern.Skorstad@Nkom.no>)
 id 1iMoOf-00054n-Pb
 for USRP-users@lists.ettus.com; Tue, 22 Oct 2019 03:16:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=s1;
 t=1571728520; i=@nkom.no;
 bh=p9nN8+LzyMMzKFyG3rS21bKswfArYEFUp8fAoKklLqk=;
 h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
 b=D3lo1hFgLCDly8udUjDl7qsqrhCCVYIi2XqjrjuA9YNgTCRlGim+ZQgEWPsXkbUDM
 uWeCrI7xM8krXH8cgfIIJoStmw1f+xPW8CnCnUcJa8CNM5N64OqhUaAdfHjCLCeKDl
 RHxmlnRMJ9RSn7lV7S0pPMap385Ot0Uk9+W7vKFDistvcijNIDgrQ9THm/AO5XHBB0
 4rcjdwYjb1yPi6ZFmM/qsn6EMPy1dRMRf/xDD4SZkVjj79dAgE8YfUBsMIXC9sudJy
 LjlrMWMq1gJpZ2q6sXbtDS9aJ5CUsOPhJ7Bj6ZcAc7mWIoZtsU2NMEfp7+jvtALsp5
 2b/Lq0f58La5w==
Received: from [85.158.142.100] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-a.eu-central-1.aws.symcld.net id F8/B9-19343-88CAEAD5;
 Tue, 22 Oct 2019 07:15:20 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIKsWRWlGSWpSXmKPExsViF5OXq9u+Zl2
 swfNV5hYXOuewOzB6TFx5iDmAMYo1My8pvyKBNaN99kWmgmvaFZ9ufGZpYNyi1sXIySEk0MIo
 Mf+LMojNJuAosXr7ZxYQW0TAVmLq3htgtrCAvMT19nXMEHEVic9Pl7BB2HoSZ7/NAqthEVCVe
 Nm6B6yGV8BO4teK1axdjBwcjAKyEnObeEHCzALiEjOO3gErlxAQkFiy5zwzhC0q8fLxP1YIW1
 HizsEZULaVxIZj35kgbE2JY1uPMULYChLntp5hg7DlJfa/nMIMMT9N4sPqY2wQJwhKnJz5hGU
 Co/AsJKtnISmbhaQMIq4ncWPqFDYIW1ti2cLXzBC2rsSMf4dYkMUXMLKvYrRIKspMzyjJTczM
 0TU0MNA1NDTWNdA1NtFLrNJN1Est1U1OzSspSgRK6iWWF+sVV+Ym56To5aWWbGIExlhKIYPSD
 sZNs97oHWKU5GBSEuU1SV0XK8SXlJ9SmZFYnBFfVJqTWnyIUYaDQ0mCd+pKoJxgUWp6akVaZg
 4w3mHSEhw8SiK8HquB0rzFBYm5xZnpEKlTjJYcE17OXcTM8XHVEiD5HUQKseTl56VKifNKrwJ
 qEABpyCjNgxsHS0mXGGWlhHkZGRgYhHgKUotyM0tQ5V8xinMwKgnzdoNM4cnMK4Hb+groICag
 g1ZLrgY5qCQRISXVwLRI6ka2cvi7t277F06qX3z25PXX6fvM5sXIm3Zs9Eq61R27aEaizJ3gj
 PKSn00u/aGsfxe1TWIOX2wSvpZXV0O8+imXocRT3kePuH/6hdwrEX7GNNks605D6rsqvyzvys
 fO9YxLg/yW3bj1pa72/pWfXR3/bnS1fLyRaCvwdwF/lHFtVNREHjajEEH/qS/mpcbZaXXevHV
 QuXQn593H7btDJdPLmv33+lVVTA1Pfbw5fOLjd7VXYvZY3Cyw0z4jsCNeQT/O2CTLR7wrzl97
 86cLip1LL2w786rpqPZEdmUT/znK10OeB3klZJStjNw6udpkRyaTwhu3+cKXVY/7uQh33/ocM
 uXib3POJydDlViKMxINtZiLihMBkGdZBcQDAAA=
X-Env-Sender: Joern.Skorstad@Nkom.no
X-Msg-Ref: server-18.tower-225.messagelabs.com!1571728518!242303!1
X-Originating-IP: [62.92.110.109]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 24706 invoked from network); 22 Oct 2019 07:15:19 -0000
Received: from 109.110.92.62.static.cust.telenor.com (HELO smtp.nkom.no)
 (62.92.110.109)
 by server-18.tower-225.messagelabs.com with ECDHE-RSA-AES256-SHA encrypted
 SMTP; 22 Oct 2019 07:15:19 -0000
Received: from EXMBX01.npta.no ([10.10.2.97]) by EXCAS.npta.no ([::1]) with
 mapi id 14.03.0468.000; Tue, 22 Oct 2019 09:15:18 +0200
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: E310 LO offset problem
Thread-Index: AdWIovmibPvZTiYHS2+wa7CIET6D0g==
Date: Tue, 22 Oct 2019 07:15:18 +0000
Message-ID: <D71B2B9BB39CE44CACCAB6646DF20CFD48D9E17E@exmbx01>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.13.23]
x-tm-as-product-ver: SMEX-11.0.0.1251-8.100.1062-24994.003
x-tm-as-result: No--13.122100-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: [USRP-users] E310 LO offset problem
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
Content-Type: multipart/mixed; boundary="===============2253248014410448763=="
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

--===============2253248014410448763==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_D71B2B9BB39CE44CACCAB6646DF20CFD48D9E17Eexmbx01_"

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48D9E17Eexmbx01_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi list,

I am writing a C++ software which will scan through a given frequency range=
 and perform an fft. The software seems to do what it should, however somet=
hing weird happens when using LO offset tuning. With the following settings=
 all looks correct:

Sample rate 6.4M - master clock 51.2M - 512 byte num_samples/binsize - offs=
et 0. However I can clearly see the DC peak for every =ABjump=BB in frequen=
cy.

With the same settings as above and a 3.2M offset there is a =ABghost=BB si=
gnal 3.2MHz below the real signal, which mirrors the real signal with sligh=
tly lower amplitude. This happens everywhere in the spectrum where solid si=
gnals (approx 40-50 dBuV) are present. Using the command tune_request(freq,=
 offset) and usrp->set_rx_freq(tune_request) to set frequencies. Have also =
tried with different gain settings from 0-40, no change. Have also tried wi=
th 10 dB attenuator between antenna and the radio, no change.

The same happens on other sample rates and offsets as well, the ghost signa=
l is always the same as the offset (+ or -). I am using UHD_3.14.1. Have al=
so tried changing rx_bandwidth without any change.

Is it possible to use LO offset and eliminate the =ABghost=BB signals, or i=
s this some radio/DSP limitation? I have pictures showing the problem clear=
ly, I can send directly by email if necessary.

Thanks,
Jorn



--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48D9E17Eexmbx01_
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
<p class=3D"MsoNormal">Hi list,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am writing a C&#43;&#43; software which will scan =
through a given frequency range and perform an fft. The software seems to d=
o what it should, however something weird happens when using LO offset tuni=
ng. With the following settings all looks
 correct:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sample rate 6.4M &#8211; master clock 51.2M &#8211; =
512 byte num_samples/binsize &#8211; offset 0. However I can clearly see th=
e DC peak for every =ABjump=BB in frequency.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With the same settings as above and a 3.2M offset th=
ere is a =ABghost=BB signal 3.2MHz below the real signal, which mirrors the=
 real signal with slightly lower amplitude. This happens everywhere in the =
spectrum where solid signals (approx 40-50
 dBuV) are present. Using the command tune_request(freq, offset) and usrp-&=
gt;set_rx_freq(tune_request) to set frequencies. Have also tried with diffe=
rent gain settings from 0-40, no change. Have also tried with 10 dB attenua=
tor between antenna and the radio,
 no change.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The same happens on other sample rates and offsets a=
s well, the ghost signal is always the same as the offset (&#43; or -). I a=
m using UHD_3.14.1. Have also tried changing rx_bandwidth without any chang=
e.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it possible to use LO offset and eliminate the =
=ABghost=BB signals, or is this some radio/DSP limitation? I have pictures =
showing the problem clearly, I can send directly by email if necessary.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jorn <o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1F497D;mso-fareast-language:NO-BOK"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48D9E17Eexmbx01_--


--===============2253248014410448763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2253248014410448763==--

