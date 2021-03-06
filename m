Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D59A732FBF5
	for <lists+usrp-users@lfdr.de>; Sat,  6 Mar 2021 17:32:14 +0100 (CET)
Received: from [::1] (port=58022 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lIZqZ-0002JK-HE; Sat, 06 Mar 2021 11:32:07 -0500
Received: from mail-oln040092254078.outbound.protection.outlook.com
 ([40.92.254.78]:30240 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@LIVE.COM>)
 id 1lIZqV-0002Fm-Dr
 for usrp-users@lists.ettus.com; Sat, 06 Mar 2021 11:32:03 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZXNvq6ahasN2cRPmVHEqb6W/XQVHtli2N5N2K/cesse1sxT3N5Jhuf8QWa1gUg05Np3J4feQI/3M4sviMbkEWZmFO59Zs7N7yR5ViyZRZI4ykLsDgnoM3jY+HN5O+VrqoYD7b5fmBEDtBHHpuAMQHr+quyulTYzEg7LFMvsOWiYlP/xXMPVIEumCFcntc/fMOIn2Ihrlqm4GjbC3Tj/1hDkrf7EyiaibXIP/NGxPnrTCcaVyo84Sb0muTK4W0RHQQmHCRLHJcrrRt/I+S0WArHemK4Bu7nIApQyug6XuO78KfFa8xSlHR0qUZJrqW1vXYbgjAhQMcOEl6wNW5ss/+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vr7hJLaPsekf+GCHWbYBpGYLeQBBgPOMs0rTc7445U0=;
 b=Qqcq4bHaNSIP6eg2S+W0CMolm8ef5zoGp3s0nJv0P9ve2GmrUAwZKTu4OzydNl0z7pQAVy5ip305tKvGbUJ0ahQoMVMNp6pU2TduSTyzSyQgdYHmmGiJt2YPnClUVltkUUTBfOJeBu93qgLP5QwElBjA82b6gsAdOsI0D/bPOx66saox8z8FRAFmF3eMtP15fCKhiUY+//gWgFGk0AWmoJiydknw3zDhdeqFeqkh26Qnsel6VldxuxdPTTa1l7t0IHiwnv4lBwdY9jSha4mQv2i7kGd3HfV5TuMEHd9xmobNqeJ+NWwyLinGo79iQXh916wLnCKMXVekOvJ/k1Ua0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vr7hJLaPsekf+GCHWbYBpGYLeQBBgPOMs0rTc7445U0=;
 b=sSjh8eyRnuao3YxbfPPKiOMk8uW3PeWtF51KfeMW744FctiCxws12CpKNh1SxH0iu0kib11nAHSSDIJ7cuUSZhqtLbeg7MUX64qiJ4CZ7nQVXS5iSVxXMZ958w+wIVQt1T9oRykLXFzleYeCXasEuPkyRMBVG6BarEuPbYzrq0N/tAaOh3d/qHMsyp/LnnHhJXikZ5rfXMxVaLBNhEe6vTgU/u0DFUkpZzvcaGYe9jriZ6JGlXX5qGH/vc+iJDFIe8zOAWFwYji+pf/XeXTblaTM0YqCz8G1hDaXBECkKPm2tJS9a5jl7EnfTmyaMYKiQr/c4tmQBIUoyOzvxtpw6w==
Received: from HK2APC01FT012.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4d) by
 HK2APC01HT210.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::385)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Sat, 6 Mar
 2021 16:31:20 +0000
Received: from MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebc::44) by HK2APC01FT012.mail.protection.outlook.com
 (2a01:111:e400:7ebc::165) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.19 via Frontend
 Transport; Sat, 6 Mar 2021 16:31:20 +0000
Received: from MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::2c78:4d46:238e:5399]) by MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::2c78:4d46:238e:5399%7]) with mapi id 15.20.3912.024; Sat, 6 Mar 2021
 16:31:19 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
CC: "puja70631@gmail.com" <puja70631@gmail.com>
Thread-Topic: Phase synchronization after hopping
Thread-Index: AQHXEqQ/dO/i6bjBBUmTn4uoX+KncQ==
Date: Sat, 6 Mar 2021 16:31:18 +0000
Message-ID: <MAXPR01MB2480C1EE782A502D425F89A988959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:951212DCB7715B3937FBA0D0CC3E6C39FB7361DB40F41A8127BD12B23E21E249;
 UpperCasedChecksum:C67BA0C208274D3C165A55CA4A9611636861446B23F9FEFE4D78A99653ADCA72;
 SizeAsReceived:6684; Count:42
x-tmn: [FCgx7MPXd79KbXhyhnEnzBmsEiPp5yb5]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 027cc207-9781-46ce-3631-08d8e0bd4582
x-ms-traffictypediagnostic: HK2APC01HT210:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gmNSln7reGsOhGpLNw/k7hYyCOXkPXMzpPmcqjdLCxtFMgUVyeNjHYmfyGn5zcsN0dwwRXVYEeJGaQMx20004vlnJ4VpdjuHzqKv1BQIlH+YUGVaeOgmfEw02R9Ebfhlpx2qCNobtU3GL1iLI9Yhvh2TMYo1l/Tl9tV6Vn/y03qgB4Cm+7HQDrldWIbs6Xez5hEdEkEJSyKru6FNr9rh8p0C76/FMZZrFVJ8/Q9UF0N6tcSZMm+xh8B/cX4XXyb/geS6ZiFgFKXTaWknBsMinbYgQV5h61VRF0qcr93fLfqw4ULXePKwinPbwuccsnY294p7/HIjz2PmkKTyPdUWTN/XjXek7Is3zNMjJsPnxsiUmrSNxrmfGgF6CdGMo5jcfmHvsBek+9K4ljqHMmtCJFeOc7ILDh8PuH7TlffcuDXwEOZnkZG+zpdhK7UuCLk/
x-ms-exchange-antispam-messagedata: WuXAG/qt7J+cVaunwwS5miThFJymiBD3dVzG6ONFX9CBh1KqsK6di5erUdGnHZRQ0cU72w1qc7vN4nzcOmvm62vTZA8/G+rXkZ9BML9EHcHx5O6T6Ys+9w+1esSVKNV9gs6KM3xavWD/lXuAsEQGlg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT012.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 027cc207-9781-46ce-3631-08d8e0bd4582
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2021 16:31:18.9019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT210
Subject: [USRP-users] Phase synchronization after hopping
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
Reply-To: Snehasish Kar <snehasish.cse@LIVE.COM>
Content-Type: multipart/mixed; boundary="===============4693867455663472187=="
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

--===============4693867455663472187==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB2480C1EE782A502D425F89A988959MAXPR01MB2480INDP_"

--_000_MAXPR01MB2480C1EE782A502D425F89A988959MAXPR01MB2480INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone

I am trying to achieve frequency hopping in GSM using twinrx with usrp x310=
. Here I am using timed command for tuning a single port across a given fre=
quency list. During hopping it stays in each frequency for 4msecs and till =
the time frequency hopping continues, I am able to identify FCCH using phas=
e difference. But as soon as the hopping is over and it tunes back to the a=
ctual frequency containing the broadcast channel, I am not getting phase di=
fference greater than 0 and thus not able to demodulate the GSM burst. Can =
anyone please help where I am going wrong below is the snippet of the code,=
 responsible for  hopping.

Function handling hopping:

              uhd::tune_request_t tune_request(rf_freq);
              tune_request.rf_freq_policy =3D uhd::tune_request_t::POLICY_M=
ANUAL;
              tune_request.dsp_freq_policy =3D uhd::tune_request_t::POLICY_=
MANUAL;
              tune_request.rf_freq =3D rf_freq;
              tune_request.dsp_freq =3D dsp_freq;
              uhd_src->set_rx_freq(tune_request, chan_num);
              {
                           If(verbose_lvl=3D=3D3){
                                         char msg[100]=3D{0x00};
                                         sprintf(msg,"info: DSP freq: chang=
ed to channel %d: %fMHz offset %fMHz", chan_num, uhd_src->get_rx_freq(chan_=
num)/1e6, dsp_freq);
                                         vipl_printf(msg,error_lvl, __FILE_=
_, __LINE__);
                           }
              }
              //uhd_src->clear_command_time();
              usleep(110000); // allow LOs to lock



Module for setting back to original frequency with broadcast:

               uhd_src->clear_command_time();
              uhd::tune_request_t tune_request(rf_freq, 0x00); //considerin=
g LO-Offset to be zero
              tune_request.rf_freq_policy =3D uhd::tune_request_t::POLICY_A=
UTO;
              tune_request.dsp_freq_policy =3D uhd::tune_request_t::POLICY_=
AUTO;
              tune_request.rf_freq =3D rf_freq;
              //tune_request.dsp_freq =3D -dsp_freq;
              uhd_src->set_rx_freq(tune_request, channel);
              {
                           char msg[100]=3D{0x00};
                           sprintf(msg,"info: freq: set to channel %d: %fMH=
z requested freq %fMHz", channel, uhd_src->get_rx_freq(channel)/1e6, rf_fre=
q/1e6);
                           vipl_printf(msg,error_lvl, __FILE__, __LINE__);
              }
              usleep(110000);

My UHD version is 3.14.0.0
USRP: X310
Daughter board: 2 sets of Twinrx
OS: Debian 10
Interface: 10gig sfp+ ethernet

Thanks!!


Regards
Snehasish Kar

Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10


--_000_MAXPR01MB2480C1EE782A502D425F89A988959MAXPR01MB2480INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone <o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am trying to achieve frequenc=
y hopping in GSM using twinrx with usrp x310. Here I am using timed command=
 for tuning a single port across a given frequency list. During hopping it =
stays in each frequency for 4msecs and
 till the time frequency hopping continues, I am able to identify FCCH usin=
g phase difference. But as soon as the hopping is over and it tunes back to=
 the actual frequency containing the broadcast channel, I am not getting ph=
ase difference greater than 0 and
 thus not able to demodulate the GSM burst. Can anyone please help where I =
am going wrong below is the snippet of the code, responsible for&nbsp; hopp=
ing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Function handling hopping:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::tune_request_t tune_re=
quest(rf_freq);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_request.rf_freq_policy=
 =3D uhd::tune_request_t::POLICY_MANUAL;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_request.dsp_freq_polic=
y =3D uhd::tune_request_t::POLICY_MANUAL;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_request.rf_freq =3D rf=
_freq;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_request.dsp_freq =3D d=
sp_freq;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd_src-&gt;set_rx_freq(tun=
e_request, chan_num);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If(verbose_lvl=3D=3D3){<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=
=3D{0x00};<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&qu=
ot;info: DSP freq: changed to channel %d: %fMHz offset %fMHz&quot;, chan_nu=
m, uhd_src-&gt;get_rx_freq(chan_num)/1e6, dsp_freq);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vipl_printf(msg=
,error_lvl, __FILE__, __LINE__);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //uhd_src-&gt;clear_command=
_time();<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usleep(110000); // allow LO=
s to lock<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Module for setting back to orig=
inal frequency with broadcast:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd_src-&gt;clear_com=
mand_time();<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::tune_request_t tune_re=
quest(rf_freq, 0x00); //considering LO-Offset to be zero<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_request.rf_freq_policy=
 =3D uhd::tune_request_t::POLICY_AUTO;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_request.dsp_freq_polic=
y =3D uhd::tune_request_t::POLICY_AUTO;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_request.rf_freq =3D rf=
_freq;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //tune_request.dsp_freq =3D=
 -dsp_freq;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd_src-&gt;set_rx_freq(tun=
e_request, channel);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;info: =
freq: set to channel %d: %fMHz requested freq %fMHz&quot;, channel, uhd_src=
-&gt;get_rx_freq(channel)/1e6, rf_freq/1e6);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vipl_printf(msg,error_lv=
l, __FILE__, __LINE__);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usleep(110000);<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My UHD version is 3.14.0.0<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">USRP: X310<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Daughter board: 2 sets of Twinr=
x<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">OS: Debian 10<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Interface: 10gig sfp+ ethernet =
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks!!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Snehasish Kar</span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MAXPR01MB2480C1EE782A502D425F89A988959MAXPR01MB2480INDP_--


--===============4693867455663472187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4693867455663472187==--

