Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC36E03C8
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 14:25:00 +0200 (CEST)
Received: from [::1] (port=56160 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMtDb-0002pU-7v; Tue, 22 Oct 2019 08:24:55 -0400
Received: from mail1.bemta26.messagelabs.com ([85.158.142.116]:61340)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Joern.Skorstad@Nkom.no>)
 id 1iMtDX-0002kC-HM
 for USRP-users@lists.ettus.com; Tue, 22 Oct 2019 08:24:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=s1;
 t=1571747050; i=@nkom.no;
 bh=m0eUlNY9paDtpexSqbesRuzg5LJfaC/C6m2FpR8ho5s=;
 h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
 b=BGH//kgiuzuXRoT/0iSoN7lzF9A9EmOjKgg0lh2qKtLdDfe0yMxF6Lg6IUo2aVXC9
 KnGft0f9lAoMnyyY271KCh/YVLQqkcFndaTVLxqjPEkhNnIpwqP5YIKzLLkPN+0xxt
 prjD3nMNcXO6T+9xfod+SFeoHvnl9wlz0UjvlOPU4aHf9RGkzR8P/6WfTNL0isrjaL
 L80toO/peNko4q099SNdQ7a3YCenAkIEzjm0ibwW+FwR1rwaYRzQAr/m5qo/cf+NS8
 7KINk8noBsML0x45ICmuhNCyralGFqLZzDq2Q9YebBHswg5hAgCGEpan8WbQ/Xrk2Z
 CGAzS7fwG9C5w==
Received: from [85.158.142.199] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-b.eu-central-1.aws.symcld.net id E9/D1-25181-AE4FEAD5;
 Tue, 22 Oct 2019 12:24:10 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRWlGSWpSXmKPExsViF5OXq/vyy7p
 Yg1/PdSwudM5hd2D0mLjyEHMAYxRrZl5SfkUCa8aOfc9YCrocKm69vcvSwLjOoouRi0NIoIVR
 onPzLeYuRk4ONgFHidXbP7OA2CICthJT994Asjk4hAWUJe4sEYMIq0h8frqEDcLWk/jz+D1YK
 4uAqsT0txPAbF4BO4nOHQ/YQFoZBWQl5jbxgoSZBcQlZhy9AzZdQkBAYsme88wQtqjEy8f/WC
 FsRYk7B2dA2VYSG459Z4KwNSTanq5ghLAVJM5tPcMGYctL7H85hRlifppE+51TjBAnCEqcnPm
 EZQKj8Cwkq2chKZuFpAwiridxY+oUNghbW2LZwtfMELauxIx/h1iQxRcwsq9itEwqykzPKMlN
 zMzRNTQw0DU0NNY10TUytNRLrNJN0kst1U1OzSspSgTK6iWWF+sVV+Ym56To5aWWbGIERllKI
 cvtHYwHj7zWO8QoycGkJMprkrouVogvKT+lMiOxOCO+qDQntfgQowwHh5IEr8AnoJxgUWp6ak
 VaZg4w4mHSEhw8SiK85Z+B0rzFBYm5xZnpEKlTjJYcE17OXcTM8XHVEiD5HUQKseTl56VKifN
 WgzQIgDRklObBjYMlpUuMslLCvIwMDAxCPAWpRbmZJajyrxjFORiVhHlXgUzhycwrgdv6Cugg
 JqCDVkuuBjmoJBEhJdXA1LSih30Zy5MH2jHcd8o/cHG4qldsPfx03xHVU/FFirLiBtMljq1n3
 35MgD3rx98jZikrFvdoFW3WcTxZvnGDYwz/209zV3Wu9FygM3dtp/KPiC71MJdusb06O//on7
 l6ck9C5f5nV1R/GixIYbDabRj+83Co06KJrttrTt+8M0Whglf1pZQoY3Tgtr9GjOEmDjbhZ1d
 ESr6ql19y9fod5p6WhjX67w4lxC8/JLSPV3arUHfpif1nrE7PyrJ+Kz37/JmNy1UvvWjjPpW6
 1+pf2N/bWVtjN3Bav0wWWJV9TTbDxFH/8O8VISeC2CIeGyZrt31eonNm7u0H6kfWfVc0748+9
 ipRf8qHlEN7DoZ8bFJiKc5INNRiLipOBADd3IsYxQMAAA==
X-Env-Sender: Joern.Skorstad@Nkom.no
X-Msg-Ref: server-4.tower-244.messagelabs.com!1571747049!263858!1
X-Originating-IP: [62.92.110.109]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22543 invoked from network); 22 Oct 2019 12:24:09 -0000
Received: from 109.110.92.62.static.cust.telenor.com (HELO smtp.nkom.no)
 (62.92.110.109)
 by server-4.tower-244.messagelabs.com with ECDHE-RSA-AES256-SHA encrypted SMTP;
 22 Oct 2019 12:24:09 -0000
Received: from EXMBX01.npta.no ([10.10.2.97]) by EXCAS.npta.no ([::1]) with
 mapi id 14.03.0468.000; Tue, 22 Oct 2019 14:24:08 +0200
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: E310 LO offset problem
Thread-Index: AdWI0poplbDP8ieoQKSWz7RTeylheg==
Date: Tue, 22 Oct 2019 12:24:08 +0000
Message-ID: <D71B2B9BB39CE44CACCAB6646DF20CFD48D9E836@exmbx01>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.13.23]
x-tm-as-product-ver: SMEX-11.0.0.1251-8.100.1062-24994.003
x-tm-as-result: No--7.426000-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: [USRP-users] E310 LO offset problem
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
Content-Type: multipart/mixed; boundary="===============5551496210294777310=="
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

--===============5551496210294777310==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_D71B2B9BB39CE44CACCAB6646DF20CFD48D9E836exmbx01_"

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48D9E836exmbx01_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

To answer myself; I found the reason shortly after sending the mail. Two da=
ys of trial and failure :)

I set the spp value to the same as num bins, in this case 512 (stream_args-=
>args[=ABspp=BB] =3D 512). When changing this value to 508 the =ABghost sig=
nal=BB disappeared, also with LO offset. I noticed earlier that the default=
 max_num_samps() value reported was 508 when stream_arg was not set. So onl=
y question left is why spp should be 508, not 512?

If changing the bin size to 256, should spp be set to 252?

Fra: USRP-users <usrp-users-bounces@lists.ettus.com> P=E5 vegne av Skorstad=
,J=F8rn via USRP-users
Sendt: tirsdag 22. oktober 2019 09:15
Til: USRP-users@lists.ettus.com
Emne: [USRP-users] E310 LO offset problem

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



--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48D9E836exmbx01_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EpostStil18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EpostStil19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EpostStil20
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"NO-BOK" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">To answer myself; I fo=
und the reason shortly after sending the mail. Two days of trial and failur=
e
</span><span style=3D"font-family:Wingdings;color:#1F497D">J</span><span st=
yle=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I set the spp value to=
 the same as num bins, in this case 512 (stream_args-&gt;args[=ABspp=BB] =
=3D 512). When changing this value to 508 the =ABghost signal=BB disappeare=
d, also with LO offset. I noticed earlier that the
 default max_num_samps() value reported was 508 when stream_arg was not set=
. So only question left is why spp should be 508, not 512?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If changing the bin si=
ze to 256, should spp be set to 252?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"mso-fareast-language:NO-BOK">Fra:<=
/span></b><span style=3D"mso-fareast-language:NO-BOK"> USRP-users &lt;usrp-=
users-bounces@lists.ettus.com&gt;
<b>P=E5 vegne av</b> Skorstad,J=F8rn via USRP-users<br>
<b>Sendt:</b> tirsdag 22. oktober 2019 09:15<br>
<b>Til:</b> USRP-users@lists.ettus.com<br>
<b>Emne:</b> [USRP-users] E310 LO offset problem<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48D9E836exmbx01_--


--===============5551496210294777310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5551496210294777310==--

