Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE06932FC54
	for <lists+usrp-users@lfdr.de>; Sat,  6 Mar 2021 18:44:48 +0100 (CET)
Received: from [::1] (port=58636 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lIayt-0000xb-20; Sat, 06 Mar 2021 12:44:47 -0500
Received: from mail-oln040092254012.outbound.protection.outlook.com
 ([40.92.254.12]:43814 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1lIayp-0000qy-6t
 for usrp-users@lists.ettus.com; Sat, 06 Mar 2021 12:44:43 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QSPhmydyXREgSNFtTcgPxYfMKKFmhZhoc4nZ+7fh7SiD0O+fqfiJpaWjbvgKNVgT/+WoHb9ywcFFuC7QrnV4TtYS8P+7iGAc/Q4JYPADHrkE4+AhWQkn5T5mBgmEvTx2VoHPs99/WPasXXxtFBxrkSw8vu8CYeYkYMEmSm5tcBSby2N8BmWcaoYDlWdMbs4KGo2XOudlwwyhZ9WhatGnqR0IKXh3b5vD7XhqP+NSFSAGNjkFN7ojCyeYcQxAJlnQfdfuaMSqrRvBntY5O0IQggzpDaWF7RVkM9AFlSNStwPFpT7lalF9Z88/tXR69BQ8UDIZxwAfU85UKcKbIEQvXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3gol+52mif48SMFA6HRg6+eDg+8M/na4rRUGUjN1w2g=;
 b=bSTuzlDz0etosxXadvviwZ2EmY25t1iaP1x8o4q4D7TIwSrRimyEmIxuF1wDHxcnZM89TXTR0f40rA9OOG/V67zbCHIZpDv3UJxShMDlV5TkCcFp8HOTZFZ8A5ldIfr+IGZYpSSm9Ziip/kcyz6AG29MrCc93xxSEoP5lce0lq5NVgzTwpT1G+rNkQLexFKzmQZKFI2Pq3ktz6wtNfTKjEIxl5RNb3E9hWPKQ2WmUXjXicdtQokahJTbIZKZnm04UXCew2127nXk9PoO/J1esM0trcv+VQciVXr4AE2EGIksvI958Dd6Y3xOoerJZP7cZh3HkPKDHANko5+3Il5MxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3gol+52mif48SMFA6HRg6+eDg+8M/na4rRUGUjN1w2g=;
 b=EDtZRpokGTUgZRl2MLPlkANF8ZC8ZSQAoShZRzw9pDSCOZm9DBoCkZzzwj5btmm35UEN/iS+GHa5CT0Mkt2YS/BnpYYg5+QYotBD/GFPIl+GSWdZzoK+WjpiJegxZSCwndoQG9D/zVjB6hu9VjKxZzMoMLE71Z14wvgg4yKfTsY6yMDJMRPDGdKvAXdN6FFWOUILgXU1piPattqeoaVbsmVNvdEIu74B2ZtZxUA+mS7FythsynHxBnWJyo0ZfdJjfMRT7dHPz6aYfHkZTgO0mNFSz1edy0/FHVx6MBN7ZhFusNBJQFew73k3NJmVfWmW3ociF6/mDHmzxKPZmomwYw==
Received: from PU1APC01FT016.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::46) by
 PU1APC01HT024.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::302)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Sat, 6 Mar
 2021 17:43:59 +0000
Received: from MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebe::40) by PU1APC01FT016.mail.protection.outlook.com
 (2a01:111:e400:7ebe::219) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.19 via Frontend
 Transport; Sat, 6 Mar 2021 17:43:59 +0000
Received: from MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::2c78:4d46:238e:5399]) by MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::2c78:4d46:238e:5399%7]) with mapi id 15.20.3912.024; Sat, 6 Mar 2021
 17:43:58 +0000
To: =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Phase synchronization after hopping
Thread-Index: AQHXEqQ/dO/i6bjBBUmTn4uoX+Kncap3N2wAgAACEo4=
Date: Sat, 6 Mar 2021 17:43:58 +0000
Message-ID: <MAXPR01MB2480F77DF19D08DA844BCFD288959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB2480C1EE782A502D425F89A988959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>,
 <614572ca-889e-8587-a226-166d8b4b33be@ettus.com>
In-Reply-To: <614572ca-889e-8587-a226-166d8b4b33be@ettus.com>
Accept-Language: en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:ADD3B36572C076CAD42DB31BEF78129D9C66E938FB92F111489FC386053D3E4A;
 UpperCasedChecksum:473334EC87D106521EF988E6073FA043ED606A89A11079007AB81C095C085431;
 SizeAsReceived:6982; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [vtDO3Au4OXmE8+r00SDY6c9CAb7ajL8q]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: ceb8b2d0-b40d-4046-bb0e-08d8e0c76bdd
x-ms-traffictypediagnostic: PU1APC01HT024:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0XypUlYtnURVY0QcC20LnRL0oYA2LJ+exKUfOiC9qknjEyUFy0b8r1cNDPwLqHXnD6cz+BHPZzJn+TJFhXC3izZlh74itBPGzkMVZc+RHHUDNsj70OGGIn1ed6sMGZsNbUd7vnsH6qKZ/oCL0HbPacwCcVe6cT4mFvveCdWj9JfBa+axSh4uuru9oicAHq2dYsaaXFWA38tLxCPA+96S5XmZzLXMxFSDpYIzEaXmWbJsUO4KZr45foH5ybPN7+/+c66vm5C97UsheUzrYrfEu2yIPDuWMNRHRPpm877uEX2HOfy5YU3sMuxiRxEPcYqLCQLos8tp/d/4UjD/coAM2EYmTnkIJTrg+z7s7bEov9+WM1DjLmW98DKA8RQ7g9eR15Vl5nSOFY+WWDYkUCnfHqfDc/RlrLmt+hWdUhl5GUkb2IU650LxGCoRg689moUE
x-ms-exchange-antispam-messagedata: ZAt1jfB/TMLK3J4EY9hKcCCrICKpRtBnC0kgxOrG4gC0Z0ncEoHd4Cm5UUaTim0xhyEj7SCgvwzxVzovcsd0hfs1o1M8CP2AA7XzDVrVWHyadQAU0nYj3E4UVJkYyjFmhQiEPlO+LvPB3W/RMGYSfA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT016.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ceb8b2d0-b40d-4046-bb0e-08d8e0c76bdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2021 17:43:58.4363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT024
Subject: Re: [USRP-users] Phase synchronization after hopping
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@live.com>
Content-Type: multipart/mixed; boundary="===============4518496001540009143=="
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

--===============4518496001540009143==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB2480F77DF19D08DA844BCFD288959MAXPR01MB2480INDP_"

--_000_MAXPR01MB2480F77DF19D08DA844BCFD288959MAXPR01MB2480INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus for the prompt response. Can you please help me with an examp=
le showing DSP tuning. I have gone through Piotr=92s implementation, but wa=
s not able to understand how he was maintaining the time synchronization ba=
sed on GNURadio work function.

Regards

Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10

From: Marcus M=FCller via USRP-users<mailto:usrp-users@lists.ettus.com>
Sent: 06 March 2021 23:00
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Phase synchronization after hopping

Hi Snehasish,

you're not actually using timed commands, so there's no exact timing involv=
ed. Your usleep
doesn't make much sense either, you shouldn't let your PC sleep while the a=
nalog chain
tune, but instead already issue the next timed command. In this situation, =
I also would
*not* tune the RF frontend *at all*, but only use DSP tuning (maybe you're =
doing that, no
idea where your "rf_freq" and "dsp_freq" come from).

Piotr Krysik solved your exact problem (X310, following GSM hopping) before=
. I remember
the talk he held at an OsmoDevCon some years ago, maybe look for that.

Best regards,

Marcus

On 06.03.21 17:31, Snehasish Kar via USRP-users wrote:
>
> Hello everyone
>
>
>
> I am trying to achieve frequency hopping in GSM using twinrx with usrp x3=
10. Here I am
> using timed command for tuning a single port across a given frequency lis=
t. During
> hopping it stays in each frequency for 4msecs and till the time frequency=
 hopping
> continues, I am able to identify FCCH using phase difference. But as soon=
 as the hopping
> is over and it tunes back to the actual frequency containing the broadcas=
t channel, I am
> not getting phase difference greater than 0 and thus not able to demodula=
te the GSM
> burst. Can anyone please help where I am going wrong below is the snippet=
 of the code,
> responsible for  hopping.
>
>
>
> Function handling hopping:
>
>
>
>               uhd::tune_request_t tune_request(rf_freq);
>
>               tune_request.rf_freq_policy =3D uhd::tune_request_t::POLICY=
_MANUAL;
>
>               tune_request.dsp_freq_policy =3D uhd::tune_request_t::POLIC=
Y_MANUAL;
>
>               tune_request.rf_freq =3D rf_freq;
>
>               tune_request.dsp_freq =3D dsp_freq;
>
>               uhd_src->set_rx_freq(tune_request, chan_num);
>
>               {
>
>                            If(verbose_lvl=3D=3D3){
>
>                                          char msg[100]=3D{0x00};
>
>                                          sprintf(msg,"info: DSP freq: cha=
nged to channel
> %d: %fMHz offset %fMHz", chan_num, uhd_src->get_rx_freq(chan_num)/1e6, ds=
p_freq);
>
>                                          vipl_printf(msg,error_lvl, __FIL=
E__, __LINE__);
>
>                            }
>
>               }
>
>               //uhd_src->clear_command_time();
>
>               usleep(110000); // allow LOs to lock
>
>
>
>
>
>
>
> Module for setting back to original frequency with broadcast:
>
>
>
>                uhd_src->clear_command_time();
>
>               uhd::tune_request_t tune_request(rf_freq, 0x00); //consider=
ing LO-Offset
> to be zero
>
>               tune_request.rf_freq_policy =3D uhd::tune_request_t::POLICY=
_AUTO;
>
>               tune_request.dsp_freq_policy =3D uhd::tune_request_t::POLIC=
Y_AUTO;
>
>               tune_request.rf_freq =3D rf_freq;
>
>               //tune_request.dsp_freq =3D -dsp_freq;
>
>               uhd_src->set_rx_freq(tune_request, channel);
>
>               {
>
>                            char msg[100]=3D{0x00};
>
>                            sprintf(msg,"info: freq: set to channel %d: %f=
MHz requested
> freq %fMHz", channel, uhd_src->get_rx_freq(channel)/1e6, rf_freq/1e6);
>
>                            vipl_printf(msg,error_lvl, __FILE__, __LINE__)=
;
>
>               }
>
>               usleep(110000);
>
>
>
> My UHD version is 3.14.0.0
>
> USRP: X310
>
> Daughter board: 2 sets of Twinrx
>
> OS: Debian 10
>
> Interface: 10gig sfp+ ethernet
>
>
>
> Thanks!!
>
>
>
>
>
> Regards
>
> Snehasish Kar
>
>
>
> Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986> for Win=
dows 10
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--_000_MAXPR01MB2480F77DF19D08DA844BCFD288959MAXPR01MB2480INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks Marcus for the prompt re=
sponse. Can you please help me with an example showing DSP tuning. I have g=
one through Piotr=92s implementation, but was not able to understand how he=
 was maintaining the time synchronization
 based on GNURadio work function. &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards </span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-top:solid #E1E=
1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><b>From: </b><a hr=
ef=3D"mailto:usrp-users@lists.ettus.com">Marcus M=FCller via USRP-users</a>=
<br>
<b>Sent: </b>06 March 2021 23:00<br>
<b>To: </b><a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject: </b>Re: [USRP-users] Phase synchronization after hopping</p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi Snehasish,<br>
<br>
you're not actually using timed commands, so there's no exact timing involv=
ed. Your usleep<br>
doesn't make much sense either, you shouldn't let your PC sleep while the a=
nalog chain<br>
tune, but instead already issue the next timed command. In this situation, =
I also would<br>
*not* tune the RF frontend *at all*, but only use DSP tuning (maybe you're =
doing that, no<br>
idea where your &quot;rf_freq&quot; and &quot;dsp_freq&quot; come from).<br=
>
<br>
Piotr Krysik solved your exact problem (X310, following GSM hopping) before=
. I remember<br>
the talk he held at an OsmoDevCon some years ago, maybe look for that.<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
On 06.03.21 17:31, Snehasish Kar via USRP-users wrote:<br>
&gt;<br>
&gt; Hello everyone<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; I am trying to achieve frequency hopping in GSM using twinrx with usrp=
 x310. Here I am<br>
&gt; using timed command for tuning a single port across a given frequency =
list. During<br>
&gt; hopping it stays in each frequency for 4msecs and till the time freque=
ncy hopping<br>
&gt; continues, I am able to identify FCCH using phase difference. But as s=
oon as the hopping<br>
&gt; is over and it tunes back to the actual frequency containing the broad=
cast channel, I am<br>
&gt; not getting phase difference greater than 0 and thus not able to demod=
ulate the GSM<br>
&gt; burst. Can anyone please help where I am going wrong below is the snip=
pet of the code,<br>
&gt; responsible for&nbsp; hopping.<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; Function handling hopping:<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; uhd::tune_request_t tune_request(rf_freq);<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; tune_request.rf_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL=
;<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; tune_request.dsp_freq_policy =3D uhd::tune_request_t::POLICY_MANUA=
L;<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; tune_request.rf_freq =3D rf_freq;<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; tune_request.dsp_freq =3D dsp_freq;<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; uhd_src-&gt;set_rx_freq(tune_request, chan_num);<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; {<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; If(verbose_lvl=3D=3D3){<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;info: DSP freq: changed to channel<b=
r>
&gt; %d: %fMHz offset %fMHz&quot;, chan_num, uhd_src-&gt;get_rx_freq(chan_n=
um)/1e6, dsp_freq);<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; vipl_printf(msg,error_lvl, __FILE__, __LINE__);<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; }<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; //uhd_src-&gt;clear_command_time();<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; usleep(110000); // allow LOs to lock<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; Module for setting back to original frequency with broadcast:<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; uhd_src-&gt;clear_command_time();<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; uhd::tune_request_t tune_request(rf_freq, 0x00); //considering LO-=
Offset<br>
&gt; to be zero<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; tune_request.rf_freq_policy =3D uhd::tune_request_t::POLICY_AUTO;<=
br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; tune_request.dsp_freq_policy =3D uhd::tune_request_t::POLICY_AUTO;=
<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; tune_request.rf_freq =3D rf_freq;<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; //tune_request.dsp_freq =3D -dsp_freq;<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; uhd_src-&gt;set_rx_freq(tune_request, channel);<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; {<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; char msg[100]=3D{0x00};<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; sprintf(msg,&quot;info: freq: set to channel %d: %fMHz requeste=
d<br>
&gt; freq %fMHz&quot;, channel, uhd_src-&gt;get_rx_freq(channel)/1e6, rf_fr=
eq/1e6);<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; vipl_printf(msg,error_lvl, __FILE__, __LINE__);<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }<br>
&gt;<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; usleep(110000);<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; My UHD version is 3.14.0.0<br>
&gt;<br>
&gt; USRP: X310<br>
&gt;<br>
&gt; Daughter board: 2 sets of Twinrx<br>
&gt;<br>
&gt; OS: Debian 10<br>
&gt;<br>
&gt; Interface: 10gig sfp+ ethernet<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; Thanks!!<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; Regards<br>
&gt;<br>
&gt; Snehasish Kar<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; Sent from Mail &lt;<a href=3D"https://go.microsoft.com/fwlink/?LinkId=
=3D550986">https://go.microsoft.com/fwlink/?LinkId=3D550986</a>&gt; for Win=
dows 10<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MAXPR01MB2480F77DF19D08DA844BCFD288959MAXPR01MB2480INDP_--


--===============4518496001540009143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4518496001540009143==--

