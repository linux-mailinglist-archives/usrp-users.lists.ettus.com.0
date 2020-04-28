Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CD21BCEE6
	for <lists+usrp-users@lfdr.de>; Tue, 28 Apr 2020 23:38:09 +0200 (CEST)
Received: from [::1] (port=46388 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jTXvY-0002Zv-59; Tue, 28 Apr 2020 17:38:04 -0400
Received: from mail-oln040092253037.outbound.protection.outlook.com
 ([40.92.253.37]:58640 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jTXvU-0002VN-JV
 for usrp-users@lists.ettus.com; Tue, 28 Apr 2020 17:38:00 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=faKAna0KFQ5kZ7NLv9Zage0xy+LJbNRgiXcPB1xv+Urffz45S4KsNrN9ZdJzdL61K4lx/tcLrrprxko5ICojF6e21ZH37Typ5FT5ibUsKO8+bo4p4rHcavCBI3iagj06PMmBzEgK4v84QmETkR4JMMxL4v26GFNwwp/i58Ghf97j0LLM45U3MTcYgeDXW2aLxioBFn3yLzp6fEQXQZjggTCOkpTFEB5mBKXnAcjNbjGWhSueKvVfCFDH//mRoDjjvf3Hw3fKA4BIcqYAx5GCqFU03Z2LG69xk0dTBGQCDYuMhiujEirNk6XDTYksqLOxfuInIW2OrOYsgXYUAqVwcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7RjUlxH8pg8dAeRwHPqksqQASag8JigGI5AJuKnbOwk=;
 b=ADDbeXQRrfMdljiqpyAqLCL/q0YVoc2BVqXkz/N/Xq279YO8WCJDi3zUhcPCfIdm/l4a0ZNmxd4RWyQOjE75Iet7ViZqv+dIVnePjmMSf7kkNv0zi2dw7h2AllzWsQ28FngwKHyoyDXtnty0LN2xt4/tn6KoQx/k1zQjkbluIKZX5KCrDPXIMmnU6ZzSIzpWTCSo5nmAFWEk0aklGm8Vv/E36Cv0IfQB6SnMw7XjZZfaDSW5mrnjQLZoGU0xDLaFLU4efM5gr1xsVSg7Eaq/cmmPPwngCvZ9FHlPRI/lWSyHvU50Lunk4Kayp0zsgsacJuJk6jVq88xl13LrhymwbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7RjUlxH8pg8dAeRwHPqksqQASag8JigGI5AJuKnbOwk=;
 b=VcQxuwcIkoifN2wIDBYmslWuIahX1DjQ3JfcxirMNWD65QB3OPHlG2gwTBlYSLDAUmWOyAF3BGW3JWij4AFJH9Td0AfnXJBE03pfztFL9SJ5D6SUg/RVznYrqVC7UznhaPnTZzbcZ5iTXfMVF1jx9XOe5+NxdnpGhjUssKFieir0+MqOjn2PM2kReZ4RKcIE/7IPeH0P1qpUAdGQ3WsO+P9hREnDzYx5TN04gNf4EUPiYPfMUegaYgoSwO8kZ6jbXav4+4hYAOVuPkSjK2fsPH+eE/+WNT9IC/bOCr8AZ/JTr27A1U5dCmgGkHbmU5Tnsv4mFJDHVXYPmdpg2ut7sQ==
Received: from PU1APC01FT043.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::50) by
 PU1APC01HT055.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::336)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Tue, 28 Apr
 2020 21:37:16 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.252.55) by
 PU1APC01FT043.mail.protection.outlook.com (10.152.253.6) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.15 via Frontend Transport; Tue, 28 Apr 2020 21:37:16 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 21:37:16 +0000
To: EJ Kreinar <ejkreinar@gmail.com>
Thread-Topic: [USRP-users] Fractional downsampling in rfnoc
Thread-Index: AQHWFD4S3p9nAtH5HEib5hstP8Q0q6h9d92AgAH+gWyAAFZFgIAH5k7UgABxdACAABYjZoAD9ZiAgALuW6c=
Date: Tue, 28 Apr 2020 21:37:16 +0000
Message-ID: <BM1PR01MB3348AB438B2ED7F0153900B188AC0@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
 <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
 <BM1PR01MB334874FD80DAE63A2212DC0288D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CADRnH22JnbOn46n7Qc4v+RXH4O+BU_WOaBUC=RuLZ1=Kr8z6Cw@mail.gmail.com>
 <BM1PR01MB33484E55A2AC021C9AB286CD88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CADRnH22h_Z=-92c0yZdyiietMX06mvFai2uvSQG6Li7o_ZPnCQ@mail.gmail.com>
In-Reply-To: <CADRnH22h_Z=-92c0yZdyiietMX06mvFai2uvSQG6Li7o_ZPnCQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jonathon.pendlum@ettus.com,ejkreinar@gmail.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:4A0ABA8018A22D7190404D243427CC20BB0F7CB78B08CED498C267242CD06A66;
 UpperCasedChecksum:608C0368B445FCA5D49140F7C747C4F758B3AD9F94DF535E99EC86BAB07C5F36;
 SizeAsReceived:7683; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [pAvEWmuqfQPJrkyJEZgvGY6N8WTaO2Dn]
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 9cc45e78-2fcd-4558-67b1-08d7ebbc5271
x-ms-traffictypediagnostic: PU1APC01HT055:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6IBoYfgCRss/HT92p4INgF9p+Xfrii4Uay4JLXEywgMSh8v6qCVSBi/tH4BguBjA8+kK6+o8yDoUpZ76cNXyL5TU4fDXILDkd0PysHyYA7yK+J6Y7gRxJEI61AXGaPml50Tj5F/QQuLoyZ33GVJdZ/e7iIg/ehovmdGTR8s06mFns/LSAFUugssR9HjxP4maq9T79kKvDEoRsT/ExOTOCtcxf2tiPXWGrChZxQq5MGTywS+fcI1GsY4vNloo32V+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: R1xN/s7vCuBP1ZdE6KqUF8W0ThjWNmnxIoA1T/vv7vaXdqx6XVRQTHwQvTl+oNigFKRBpLBLKYnIpW8dhvGE9XIoZ3DCdQKxvNBNWR1LwxY+8vDuHYpuZiIU2LB6l/1I8LytnFNflrRSgvhQS8T5qg==
x-ms-exchange-transport-forked: True
Document-Reference: https%3a%2f%2f1drv.ms%2fu%2fs!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP; 
 FileName=fract_dec_filter.edf; ProviderType=OneDriveConsumer;
 ProviderUrl=https%3a%2f%2fs2s-api.onedrive.com%2f; Permission=Edit;
 ContentType=application%2foctet-stream
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cc45e78-2fcd-4558-67b1-08d7ebbc5271
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2020 21:37:16.5037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT055
Subject: Re: [USRP-users] Fractional downsampling in rfnoc
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
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@live.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1429137132347415144=="
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

--===============1429137132347415144==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB3348AB438B2ED7F0153900B188AC0BM1PR01MB3348INDP_"

--_000_BM1PR01MB3348AB438B2ED7F0153900B188AC0BM1PR01MB3348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Snehasish Kar has shared a OneDrive file with you. To view it, click the li=
nk below.
<https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP>
[https://r1.res.office365.com/owa/prem/images/dc-generic_20.png]<https://1d=
rv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP>
fract_dec_filter.edf<https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP>


Hello

> 25msps and tried dividing it into 16 channels. I should have returned 625=
kspsx2 sample rate each channel

>Based on your screen shot I'm guessing you started with 10 Msps and used 1=
6 channels to get 625 kHz channel spacing (with 1250 ksps per channel). Is =
that correct?

Yes.
> But you can see the snaphshots, if a tune into 955.4MHz and try to get a =
channel on index 0 ie the center freq, it works well and I am able to decod=
e GSM Burst from it. But if I try to add index 2(which is 955.8MHz), the am=
plitude in the spectrum falls and also I am not able to decode any GSM burs=
t

>Is it correct that your "index 2" center frequency is targetting 400 kHz o=
ffset from the center frequency? If so, I dont expect this would work. Usin=
g a channel spacing of 625 kHz, the >closest channel you could receive next=
 to 955.4 MHz would be 956.025 MHz. Based on your screenshot it actually se=
ems like the peak energy you're looking for may be lower than the >channel =
frequency by about 200 kHz?

No. The reason we found for the low energy was that the center of the chann=
el was getting shifted by 100KHz, which we corrected using the frequency Xl=
ating fir filter in gnuradio and also by changing the input sample rate.

@EJ Kreinar<mailto:ejkreinar@gmail.com>: thanks for the support.

@Jonathon Pendlum<mailto:jonathon.pendlum@ettus.com>: I was able to re-crea=
te the EDIF file for the fractional downsampler in https://github.com/Synch=
ronousLabs/rfnoc-SynchronousLabs and was able to build it. Though I believe=
 I need to update the rfnoc API for the same. I have the attached EDIF file=
 for your reference. Please guide me if only modifying the noc file work or=
 we any other changes are to be made as per the new rfnoc version.

Regards
Snehasish



--_000_BM1PR01MB3348AB438B2ED7F0153900B188AC0BM1PR01MB3348INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<!--[if lte mso 15 || CheckWebRef]-->
<div id=3D"OwaReferenceAttachments" contenteditable=3D"false">
<table style=3D"padding-bottom: 13px; border-width: 0px; border-style: none=
;">
<tbody>
<tr valign=3D"top">
<td>
<table style=3D"border-width: 0px 0px 1px 0px; border-color:#C7C7C7; border=
-style: none none dotted none;">
<tbody>
<tr valign=3D"top">
<td style=3D"padding-bottom:7px;">
<table align=3D"left" style=3D"padding-right: 28px; border-width: 0px; back=
ground-color: rgb(255, 255, 255); border-spacing: 0px">
<tbody>
<tr valign=3D"top">
<td style=3D"padding: 0px;">
<div id=3D"OwaReferenceAttachmentDescription" style=3D"padding-left: 3px; f=
ont-size: 14px; font-family: 'Segoe UI', 'Segoe WP', 'Segoe UI WPC', Tahoma=
, Arial, sans-serif; color: rgb(102, 102, 102);">
Snehasish Kar has shared a OneDrive file with you. To view it, click the li=
nk below.
</div>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr valign=3D"top">
<td><a href=3D"https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP" target=3D"=
_blank">
<table align=3D"left" style=3D"padding-right: 28px; padding-bottom:10px; bo=
rder-width: 0px; height:20px; background-color: rgb(255, 255, 255); border-=
spacing: 0px">
<tbody>
<tr valign=3D"top">
<td style=3D"padding: 0px;">
<div style=3D"background-color: rgb(255, 255, 255); height: 20px; width: 20=
px; max-height: 20px;">
<a href=3D"https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP" target=3D"_bla=
nk"><img width=3D"20" style=3D"border:0px;" src=3D"https://r1.res.office365=
.com/owa/prem/images/dc-generic_20.png"></a></div>
</td>
<td>
<div id=3D"OwaReferenceAttachmentFileName2" style=3D"padding: 0px 0px 0px 5=
px; font-size: 14px; font-family: 'Segoe UI', 'Segoe WP', 'Segoe UI WPC', T=
ahoma, Arial, sans-serif; color: rgb(0, 114, 198);">
<a href=3D"https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP" target=3D"_bla=
nk" style=3D"text-decoration: none; margin: 0px; font-size: 14px; font-fami=
ly: 'Segoe UI', 'Segoe WP', 'Segoe UI WPC', Tahoma, Arial, sans-serif; colo=
r: rgb(0, 114, 198);">fract_dec_filter.edf</a></div>
</td>
<td style=3D"display:none;visibility:hidden;" width=3D"0" height=3D"0"></td=
>
</tr>
</tbody>
</table>
</a></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</div>
<div id=3D"OwaReferenceAttachmentsEnd" style=3D"display:none;visibility:hid=
den;"></div>
<!--[endif]-->
<div id=3D"appendonsend" style=3D"font-family: Calibri, Helvetica, sans-ser=
if; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hello<br>
</div>
<div>
<div dir=3D"ltr"><br>
&gt; 25msps and tried dividing it into 16 channels. I should have returned =
625kspsx2 sample rate each channel<br>
<br>
&gt;Based on your screen shot I'm guessing you started with 10 Msps and use=
d 16 channels to get 625 kHz channel spacing (with 1250 ksps per channel). =
Is that correct?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Yes.</div>
<div dir=3D"ltr">&gt; But you can see the snaphshots, if a tune into 955.4M=
Hz and try to get a channel on index 0 ie the center freq, it works well an=
d I am able to decode GSM Burst from it. But if I try to add index 2(which =
is 955.8MHz), the amplitude in the spectrum
 falls and also I am not able to decode any GSM burst<br>
<br>
&gt;Is it correct that your &quot;index 2&quot; center frequency is targett=
ing 400 kHz offset from the center frequency? If so, I dont expect this wou=
ld work. Using a channel spacing of 625 kHz, the &gt;closest channel you co=
uld receive next to 955.4 MHz would be 956.025 MHz.
 Based on your screenshot it actually seems like the peak energy you're loo=
king for may be lower than the &gt;channel frequency by about 200 kHz?</div=
>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">No. The reason we found for the low energy was that the ce=
nter of the channel was getting shifted by 100KHz, which we corrected using=
 the frequency Xlating fir filter in gnuradio and also by changing the inpu=
t sample rate.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><a id=3D"OWAAM426188" class=3D"_1OtrSZdhKXVv3UhaivrdJ4 men=
tion ms-bgc-nlr ms-fcl-b" href=3D"mailto:ejkreinar@gmail.com">@EJ Kreinar</=
a>: thanks for the support.<br>
<div><br>
</div>
<div><a id=3D"OWAAM876983" class=3D"_1OtrSZdhKXVv3UhaivrdJ4 mention ms-bgc-=
nlr ms-fcl-b" href=3D"mailto:jonathon.pendlum@ettus.com">@Jonathon Pendlum<=
/a>: I was able to re-create the EDIF file for the fractional downsampler i=
n
<a href=3D"https://github.com/SynchronousLabs/rfnoc-SynchronousLabs" id=3D"=
LPNoLP290202">
https://github.com/SynchronousLabs/rfnoc-SynchronousLabs</a> and was able t=
o build it. Though I believe I need to update the rfnoc API for the same. I=
 have the attached EDIF file for your reference. Please guide me if only mo=
difying the noc file work or we
 any other changes are to be made as per the new rfnoc version.</div>
<div><br>
</div>
<div>Regards</div>
<div>Snehasish<br>
</div>
<br>
<div><br>
</div>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB3348AB438B2ED7F0153900B188AC0BM1PR01MB3348INDP_--


--===============1429137132347415144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1429137132347415144==--

