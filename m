Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 542A832FC96
	for <lists+usrp-users@lfdr.de>; Sat,  6 Mar 2021 20:13:59 +0100 (CET)
Received: from [::1] (port=59218 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lIcNB-0005Yu-Ux; Sat, 06 Mar 2021 14:13:57 -0500
Received: from mail-oln040092253014.outbound.protection.outlook.com
 ([40.92.253.14]:37367 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1lIcN7-0005RT-FP
 for usrp-users@lists.ettus.com; Sat, 06 Mar 2021 14:13:53 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OXoYVf7uThd5rXLxsLPRLUEjQo31R9R2qW0ziiqSztiYev6sLdcX57dJz5BarO2eOdYtWJH1H9er7pOb3fGC8/da/uDpGYjAAvm6TSCQ44bUyL5Xl/YN8e6ad3FAt80M8BQpm6xhbzO7mMJeLx7YOXR3hprufVUgry/bVzwLFPfUWKj8JwMVCTj+zrmUljOz16GkV7W+1lJFChIHlBerQKJS4IQtWzdmatDjxoYTXVd9JnXzHPFvoe8yHsZzOp/XFdXyV0sDk10OPtD8xS4dwravu512PowmvtR8RtRNpuQy9LIBkTwyT3Amm6VSCnniiOU+WvtB5GjF3gXz+qJr8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yOmcWB3x0i55fTVYQdTbRINcagYEkM9hD95E+CpvPMw=;
 b=lxc/gGT9umv4wQSFwAxnjgf0EaqmhqT1lUG04cCeiY+MRunaCM0+lr+B3nBHiKTn0jUphAa2ML4m35sqLKmKOrMUc1aKRdTL11/+g03FsCPOm2o77tkJBHsKTtyzZegijpstAfQQRPpbej9lRCzKRo42MCZ0QncnEhGanJxQ6BrcaB8zw08auMAWa6IyzPUBUZDHV1mMAADQ/9rYdfHea0rNZMu2zmw+p12bwW6seigX77fpk48uFB+Na0TGSM1tfRrCmy1dAdl1FQShlqaB++gjrq+lixTJUTmZwcKrrO+FB/ulOsH/MI6GXOaxIAXPlck2x/o0FU64CwvF57F0Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yOmcWB3x0i55fTVYQdTbRINcagYEkM9hD95E+CpvPMw=;
 b=jOTU/isIEQ05pURteCC5nUJKDTv0xgvuAF+rOYoiXwGMWv7ag5ayQk8E513z1U2SVtDEnwo2MRxGyD6SfSBsblXn+2iiAXPYeC6/xis8oGBoE2k2CUHJgYhRM2E/DH+hu/QXV8hQ/WQM4Qs/99inAXeUKbzsRa/GxEEPps9XWQXzOoUJc3QMbOiI9Qlc6X0CR/EAZLiTsOxJA7gK+eMV/5NRDlq8zV0fFxsONuFp3T/OHy+WyK++Xo9vH/Togoh1GkLOye8qiEexYMe43OUxKxvwT+N1/w9Uqvh3Vxmh1WlP7yX7pb0YdgzROVDo1LaWGVQxHdOilcpe787nyA5poQ==
Received: from HK2APC01FT052.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::49) by
 HK2APC01HT014.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::159)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Sat, 6 Mar
 2021 19:13:10 +0000
Received: from MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebc::4b) by HK2APC01FT052.mail.protection.outlook.com
 (2a01:111:e400:7ebc::244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.19 via Frontend
 Transport; Sat, 6 Mar 2021 19:13:09 +0000
Received: from MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::2c78:4d46:238e:5399]) by MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::2c78:4d46:238e:5399%7]) with mapi id 15.20.3912.024; Sat, 6 Mar 2021
 19:13:09 +0000
To: =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Phase synchronization after hopping
Thread-Index: AQHXEqQ/dO/i6bjBBUmTn4uoX+Kncap3N2wAgAACEo6AAAmUAIAAD68a
Date: Sat, 6 Mar 2021 19:13:09 +0000
Message-ID: <MAXPR01MB2480EBCE43544274657FB83988959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB2480C1EE782A502D425F89A988959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
 <614572ca-889e-8587-a226-166d8b4b33be@ettus.com>
 <MAXPR01MB2480F77DF19D08DA844BCFD288959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>,
 <24e507c1-9a62-7f06-9950-df134c9c387b@ettus.com>
In-Reply-To: <24e507c1-9a62-7f06-9950-df134c9c387b@ettus.com>
Accept-Language: en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:95C530C1D131184B37018FCD6CC82E961A339B223D39A23587CDC9062CCA9F07;
 UpperCasedChecksum:1D4D495111561EBCDDC2934AE0D6FE6A3F787C2D559D3A4DC42816098EA2F2D3;
 SizeAsReceived:7116; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [0aPPt6N5qsqfRkC3VhyAibuhMJ4DJhaA]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 8f19030c-87b8-4bfb-6882-08d8e0d3e106
x-ms-traffictypediagnostic: HK2APC01HT014:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vOwQSfRY5chZditPuZQaWRMeerZu4s4JtA1UAdjk21+EVms+gcdT9yNdRhkMDD+TIkQuDO5fuHZ50bCVMlfTy9gjrjDbmQ2NJFdk5qeRahIpuWnKsGxyhncpp1o9+knmrwMEXV2HQmNlNgB0nTOiO4jNOc2IRn5dEMmfF+kDAFcRaBOgJ1VE/yg2JS9U/v0KOmPpCNggoujReOWZWzALb7u5gRNaoaVxluk8ZKZvXWdffQbvVB2359OYc0obKkzSA3WVreSLdq2H6fL75A1TtWyAhrwjrZWVnnP/mCJMJj3QjbKLjpaB0nUI0tmTwe/nibE9uakduXwD7QwGG7kTPYCevt1Qthalz7MDa6KJr3u8j5ZIbBj3aYdPmcPJstGPtSS4kVKD8d+Qbx6Xjx/RPMrlnKohE6oK8ldZeHaF8S4kSS1ZOf6zEZKOoZqRcl5/
x-ms-exchange-antispam-messagedata: MePL0zQHkl0KFu5IWtzrANljbJRdl0i3kWGp0FGlX7zoQyLOgp6aQ0XEZw7kIvN0PZARjTg0oSD6SyFBqw2DePPyMz5iWqc6KbJsgaMlSHcIvWS9cipqA3qHoGN3pVTzrdcIqBtpjmjhpbRm8Gq+9w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT052.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f19030c-87b8-4bfb-6882-08d8e0d3e106
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2021 19:13:09.0570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT014
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
Content-Type: multipart/mixed; boundary="===============8684097945580772096=="
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

--===============8684097945580772096==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB2480EBCE43544274657FB83988959MAXPR01MB2480INDP_"

--_000_MAXPR01MB2480EBCE43544274657FB83988959MAXPR01MB2480INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Understood. Thanks. Let me try this out.

Regards
Snehasish

Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10

From: Marcus M=FCller<mailto:marcus.mueller@ettus.com>
Sent: 06 March 2021 23:41
To: Snehasish Kar<mailto:snehasish.cse@live.com>; usrp-users@lists.ettus.co=
m<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Phase synchronization after hopping

See the tuning notes in the UHD manual. I'm assuming you're not explicitly =
setting
POLICY_MANUAL without reason!

Best regards,
Marcus

On 06.03.21 18:43, Snehasish Kar wrote:
>
> Thanks Marcus for the prompt response. Can you please help me with an exa=
mple showing
> DSP tuning. I have gone through Piotr=92s implementation, but was not abl=
e to understand
> how he was maintaining the time synchronization based on GNURadio work fu=
nction.
>
>
>
> Regards
>
>
>
> Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986> for Win=
dows 10
>
>
>
> *From: *Marcus M=FCller via USRP-users <mailto:usrp-users@lists.ettus.com=
>
> *Sent: *06 March 2021 23:00
> *To: *usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
> *Subject: *Re: [USRP-users] Phase synchronization after hopping
>
>
>
> Hi Snehasish,
>
> you're not actually using timed commands, so there's no exact timing invo=
lved. Your usleep
> doesn't make much sense either, you shouldn't let your PC sleep while the=
 analog chain
> tune, but instead already issue the next timed command. In this situation=
, I also would
> *not* tune the RF frontend *at all*, but only use DSP tuning (maybe you'r=
e doing that, no
> idea where your "rf_freq" and "dsp_freq" come from).
>
> Piotr Krysik solved your exact problem (X310, following GSM hopping) befo=
re. I remember
> the talk he held at an OsmoDevCon some years ago, maybe look for that.
>
> Best regards,
>
> Marcus
>
> On 06.03.21 17:31, Snehasish Kar via USRP-users wrote:
> >
> > Hello everyone
> >
> >
> >
> > I am trying to achieve frequency hopping in GSM using twinrx with usrp =
x310. Here I am
> > using timed command for tuning a single port across a given frequency l=
ist. During
> > hopping it stays in each frequency for 4msecs and till the time frequen=
cy hopping
> > continues, I am able to identify FCCH using phase difference. But as so=
on as the hopping
> > is over and it tunes back to the actual frequency containing the broadc=
ast channel, I am
> > not getting phase difference greater than 0 and thus not able to demodu=
late the GSM
> > burst. Can anyone please help where I am going wrong below is the snipp=
et of the code,
> > responsible for  hopping.
> >
> >
> >
> > Function handling hopping:
> >
> >
> >
> >               uhd::tune_request_t tune_request(rf_freq);
> >
> >               tune_request.rf_freq_policy =3D uhd::tune_request_t::POLI=
CY_MANUAL;
> >
> >               tune_request.dsp_freq_policy =3D uhd::tune_request_t::POL=
ICY_MANUAL;
> >
> >               tune_request.rf_freq =3D rf_freq;
> >
> >               tune_request.dsp_freq =3D dsp_freq;
> >
> >               uhd_src->set_rx_freq(tune_request, chan_num);
> >
> >               {
> >
> >                            If(verbose_lvl=3D=3D3){
> >
> >                                          char msg[100]=3D{0x00};
> >
> >                                          sprintf(msg,"info: DSP freq: c=
hanged to channel
> > %d: %fMHz offset %fMHz", chan_num, uhd_src->get_rx_freq(chan_num)/1e6, =
dsp_freq);
> >
> >                                          vipl_printf(msg,error_lvl, __F=
ILE__, __LINE__);
> >
> >                            }
> >
> >               }
> >
> >               //uhd_src->clear_command_time();
> >
> >               usleep(110000); // allow LOs to lock
> >
> >
> >
> >
> >
> >
> >
> > Module for setting back to original frequency with broadcast:
> >
> >
> >
> >                uhd_src->clear_command_time();
> >
> >               uhd::tune_request_t tune_request(rf_freq, 0x00); //consid=
ering LO-Offset
> > to be zero
> >
> >               tune_request.rf_freq_policy =3D uhd::tune_request_t::POLI=
CY_AUTO;
> >
> >               tune_request.dsp_freq_policy =3D uhd::tune_request_t::POL=
ICY_AUTO;
> >
> >               tune_request.rf_freq =3D rf_freq;
> >
> >               //tune_request.dsp_freq =3D -dsp_freq;
> >
> >               uhd_src->set_rx_freq(tune_request, channel);
> >
> >               {
> >
> >                            char msg[100]=3D{0x00};
> >
> >                            sprintf(msg,"info: freq: set to channel %d: =
%fMHz requested
> > freq %fMHz", channel, uhd_src->get_rx_freq(channel)/1e6, rf_freq/1e6);
> >
> >                            vipl_printf(msg,error_lvl, __FILE__, __LINE_=
_);
> >
> >               }
> >
> >               usleep(110000);
> >
> >
> >
> > My UHD version is 3.14.0.0
> >
> > USRP: X310
> >
> > Daughter board: 2 sets of Twinrx
> >
> > OS: Debian 10
> >
> > Interface: 10gig sfp+ ethernet
> >
> >
> >
> > Thanks!!
> >
> >
> >
> >
> >
> > Regards
> >
> > Snehasish Kar
> >
> >
> >
> > Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986
> <https://go.microsoft.com/fwlink/?LinkId=3D550986>> for Windows 10
> >
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>
>
>


--_000_MAXPR01MB2480EBCE43544274657FB83988959MAXPR01MB2480INDP_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">Understood. Thanks. Let me try =
this out.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Snehasish</span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-top:solid #E1E=
1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><b>From: </b><a hr=
ef=3D"mailto:marcus.mueller@ettus.com">Marcus M=FCller</a><br>
<b>Sent: </b>06 March 2021 23:41<br>
<b>To: </b><a href=3D"mailto:snehasish.cse@live.com">Snehasish Kar</a>; <a =
href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
<b>Subject: </b>Re: [USRP-users] Phase synchronization after hopping</p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">See the tuning notes in the UHD manual. I'm assuming=
 you're not explicitly setting<br>
POLICY_MANUAL without reason!<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 06.03.21 18:43, Snehasish Kar wrote:<br>
&gt;<br>
&gt; Thanks Marcus for the prompt response. Can you please help me with an =
example showing<br>
&gt; DSP tuning. I have gone through Piotr=92s implementation, but was not =
able to understand<br>
&gt; how he was maintaining the time synchronization based on GNURadio work=
 function. &nbsp;<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; Regards<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; Sent from Mail &lt;<a href=3D"https://go.microsoft.com/fwlink/?LinkId=
=3D550986">https://go.microsoft.com/fwlink/?LinkId=3D550986</a>&gt; for Win=
dows 10<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; *From: *Marcus M=FCller via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com">mailto:usrp-users@lists.ettus.com</a>&gt;<br>
&gt; *Sent: *06 March 2021 23:00<br>
&gt; *To: *usrp-users@lists.ettus.com &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com">mailto:usrp-users@lists.ettus.com</a>&gt;<br>
&gt; *Subject: *Re: [USRP-users] Phase synchronization after hopping<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<br>
&gt; Hi Snehasish,<br>
&gt;<br>
&gt; you're not actually using timed commands, so there's no exact timing i=
nvolved. Your usleep<br>
&gt; doesn't make much sense either, you shouldn't let your PC sleep while =
the analog chain<br>
&gt; tune, but instead already issue the next timed command. In this situat=
ion, I also would<br>
&gt; *not* tune the RF frontend *at all*, but only use DSP tuning (maybe yo=
u're doing that, no<br>
&gt; idea where your &quot;rf_freq&quot; and &quot;dsp_freq&quot; come from=
).<br>
&gt;<br>
&gt; Piotr Krysik solved your exact problem (X310, following GSM hopping) b=
efore. I remember<br>
&gt; the talk he held at an OsmoDevCon some years ago, maybe look for that.=
<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Marcus<br>
&gt;<br>
&gt; On 06.03.21 17:31, Snehasish Kar via USRP-users wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hello everyone<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; I am trying to achieve frequency hopping in GSM using twinrx with=
 usrp x310. Here I am<br>
&gt; &gt; using timed command for tuning a single port across a given frequ=
ency list. During<br>
&gt; &gt; hopping it stays in each frequency for 4msecs and till the time f=
requency hopping<br>
&gt; &gt; continues, I am able to identify FCCH using phase difference. But=
 as soon as the hopping<br>
&gt; &gt; is over and it tunes back to the actual frequency containing the =
broadcast channel, I am<br>
&gt; &gt; not getting phase difference greater than 0 and thus not able to =
demodulate the GSM<br>
&gt; &gt; burst. Can anyone please help where I am going wrong below is the=
 snippet of the code,<br>
&gt; &gt; responsible for&nbsp; hopping.<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; Function handling hopping:<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; uhd::tune_request_t tune_request(rf_freq);<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; tune_request.rf_freq_policy =3D uhd::tune_request_t::POLICY_M=
ANUAL;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; tune_request.dsp_freq_policy =3D uhd::tune_request_t::POLICY_=
MANUAL;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; tune_request.rf_freq =3D rf_freq;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; tune_request.dsp_freq =3D dsp_freq;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; uhd_src-&gt;set_rx_freq(tune_request, chan_num);<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; {<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; If(verbose_lvl=3D=3D3){<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;info: DSP freq: changed to chan=
nel<br>
&gt; &gt; %d: %fMHz offset %fMHz&quot;, chan_num, uhd_src-&gt;get_rx_freq(c=
han_num)/1e6, dsp_freq);<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; vipl_printf(msg,error_lvl, __FILE__, __LINE__);<b=
r>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; }<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; }<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; //uhd_src-&gt;clear_command_time();<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; usleep(110000); // allow LOs to lock<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; Module for setting back to original frequency with broadcast:<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; uhd_src-&gt;clear_command_time();<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; uhd::tune_request_t tune_request(rf_freq, 0x00); //considerin=
g LO-Offset<br>
&gt; &gt; to be zero<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; tune_request.rf_freq_policy =3D uhd::tune_request_t::POLICY_A=
UTO;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; tune_request.dsp_freq_policy =3D uhd::tune_request_t::POLICY_=
AUTO;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; tune_request.rf_freq =3D rf_freq;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; //tune_request.dsp_freq =3D -dsp_freq;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; uhd_src-&gt;set_rx_freq(tune_request, channel);<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; {<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; char msg[100]=3D{0x00};<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; sprintf(msg,&quot;info: freq: set to channel %d: %fMHz req=
uested<br>
&gt; &gt; freq %fMHz&quot;, channel, uhd_src-&gt;get_rx_freq(channel)/1e6, =
rf_freq/1e6);<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; vipl_printf(msg,error_lvl, __FILE__, __LINE__);<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; }<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; usleep(110000);<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; My UHD version is 3.14.0.0<br>
&gt; &gt;<br>
&gt; &gt; USRP: X310<br>
&gt; &gt;<br>
&gt; &gt; Daughter board: 2 sets of Twinrx<br>
&gt; &gt;<br>
&gt; &gt; OS: Debian 10<br>
&gt; &gt;<br>
&gt; &gt; Interface: 10gig sfp+ ethernet<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; Thanks!!<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; Regards<br>
&gt; &gt;<br>
&gt; &gt; Snehasish Kar<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt; Sent from Mail &lt;https://go.microsoft.com/fwlink/?LinkId=3D5509=
86<br>
&gt; &lt;<a href=3D"https://go.microsoft.com/fwlink/?LinkId=3D550986">https=
://go.microsoft.com/fwlink/?LinkId=3D550986</a>&gt;&gt; for Windows 10<br>
&gt; &gt;<br>
&gt; &gt; &nbsp;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; USRP-users mailing list<br>
&gt; &gt; USRP-users@lists.ettus.com<br>
&gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; &lt;<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a>&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
&gt; &lt;<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a>&gt;<br>
&gt;<br>
&gt; &nbsp;<br>
&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MAXPR01MB2480EBCE43544274657FB83988959MAXPR01MB2480INDP_--


--===============8684097945580772096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8684097945580772096==--

