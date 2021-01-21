Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6302FF340
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 19:35:27 +0100 (CET)
Received: from [::1] (port=50304 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2enj-00021u-HX; Thu, 21 Jan 2021 13:35:23 -0500
Received: from mail-oln040092005072.outbound.protection.outlook.com
 ([40.92.5.72]:11911 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1l2ene-0001w0-Rm
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 13:35:19 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F20rC/3AiuS+DkVLkeQL7+5yDvSMPq/XM29nWQWl8fDqHwTwGINObKCl4/3QkGrbkDex8KNjKfV2kUwxjsRYAq05LO2fEVTnipOK8V5D9yYLE1eiqvIcIBxojvcMBRHytldqUpPLxbM6JquWD1QtmzRc57YO0AA3xHIQgxT4mPssytD+5N81gjcLauvBUOfZh0txLbeEfUN/8jUkXxQ2HALgrjGFG2fnUsnhHcenhuUn6agQ5JFB7YeqlNyIC0Yh41ExGW5k2BpAmyBhfEkdoSp/QaLeRFWUrM596/1yCQZXkRjKzrmeTy/IMJnDLqHPJYnI1oZOQqOYZL8haJUkVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pYpCqNgWMl6vofftnjcM0m27WVP1STDv7Pe0r6oMPAU=;
 b=KJ+DHHauANp+n5sZqbz5Otm9k2GDjOlxJedkTWnsUWAOZ/zE48D7QwyV9YTiqLNhxe+JnUcY1EVQjzDTYX2XfT693l1U/olU7kxAT+V5OZTX4G5mSHi8q3ypY9qgFlbSx8sYu460iR+A6gdO0cPO3GomPq0I3sE9VM2wUF6oiWRg4mn1059SWnJDZjgW/ww6h1HAKayq26WegZOa0V+H0qML8dck3gyhopqAsC7xQZF4kGYIb7PwYXEbxrMGjtn0VVcBSOpUV3cFfCOjLSEv2nq6cn3Y/FovD30tfHpxoCulhrsTuRcb/zPMdt+qnFejm9i+8zr7sUB6k6lY/VmCfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pYpCqNgWMl6vofftnjcM0m27WVP1STDv7Pe0r6oMPAU=;
 b=LHB96iJt8W8uLpMRW87jTCerBS4xywgntyDwmgOk3iuLb2sHQiy+0KyMf4zE5mcQhSLNFxMsokja6sXgDVbohV9IkEVzseZfLx+gkhMNtGe99TOjDtTw9rUVv+kREQF5wLQ37aKcm2RWiRgqb0TpMRiv0DEZvh8rD/+DRwbhl7Il9fGYcHZl6bhUQ5RA5TLYidDqvYK3pfH8waHM4653Q9GmBwOWe/NmqoYN9zlMxobLJabZgZ48lHmLAx7eLaBF+PpeCZwpyxIuWti5x9Nu8ukdt9XBTOC/Fnvb+anHZ0dUsffdWj0vHgq5TsIrEHvOZPRbK7Y4ewz7pEttgOsxLA==
Received: from SN1NAM02FT036.eop-nam02.prod.protection.outlook.com
 (10.152.72.51) by SN1NAM02HT205.eop-nam02.prod.protection.outlook.com
 (10.152.73.235) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.12; Thu, 21 Jan
 2021 18:34:37 +0000
Received: from SN6PR1901MB4688.namprd19.prod.outlook.com
 (2a01:111:e400:7e44::4e) by SN1NAM02FT036.mail.protection.outlook.com
 (2a01:111:e400:7e44::149) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.12 via Frontend
 Transport; Thu, 21 Jan 2021 18:34:37 +0000
Received: from SN6PR1901MB4688.namprd19.prod.outlook.com
 ([fe80::8961:3c2a:dd3a:3910]) by SN6PR1901MB4688.namprd19.prod.outlook.com
 ([fe80::8961:3c2a:dd3a:3910%6]) with mapi id 15.20.3763.014; Thu, 21 Jan 2021
 18:34:37 +0000
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>, usrp-users
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
Thread-Index: AQHW8ALyB/1PoI1sxU22uloXxNssy6oyLdiAgAABoxWAABWbAIAAHypv
Date: Thu, 21 Jan 2021 18:34:37 +0000
Message-ID: <SN6PR1901MB4688E01080639FBCA750980EA4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
References: <SN6PR1901MB46884B4D0EBC22B0D4F7CF08A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
 <6c457450-6f9e-892b-ac53-5ea7956b7f0b@ettus.com>
 <SN6PR1901MB468884AC8FAC5C9476CC6678A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>,
 <420b3f86-ef54-997b-a3d2-302f6db5e3aa@ettus.com>
In-Reply-To: <420b3f86-ef54-997b-a3d2-302f6db5e3aa@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:21763965C98661DE9684389FDE11A349F44996F2AB7F9F1EDD24DEFCEA3AD0D9;
 UpperCasedChecksum:732193EE16DE74401B8FFB2B3E5549C8A17AE404871F195FC029068BD1C5A32D;
 SizeAsReceived:7151; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [VHrH45ShcjRSrhhyXxHkwuOzbJlwlBcq]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: faabb135-6be2-405f-3134-08d8be3b34f1
x-ms-traffictypediagnostic: SN1NAM02HT205:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hm1Alc9kMX/ayNmEUoHYuygcAYpQNNw/DRaPKsG+Iock4qDpQDU9tuKVrN2pbeq4gCUeYb4THFQQtSFEZ/t9Rg0vfpE4mk4hPij7AhHFmeWZyMjWWvskty+RV1i9X9fHkcdQYtA2QjspCICF6WE1uR7PF+PPw6wt9kDEpu8UwtTIYlcKazD/o7F3d5qlyNMem2qL5fhOIcASBC60XH9iUj3hAi68Lz7rMPFuDQRWkApsxqHX/cnhtEGf3giRVBpL8i1u03Wbghik+VNhO3H36SaKDoqoEM/67u7lZOWgK58=
x-ms-exchange-antispam-messagedata: Utl8KzzfNYMmXjUZMR3o6GxhgPuOJ33ALa8uKuA5BSVqjVrKo77oi+//IUCaBdVWb5kvWdTbqpJh91G4CD5W+inmWA+TZXWbiE1OLC1fTCDFMXCoQ1LHjzQXR2Vc5fVamMGTzujO5XJhb18iaoS/jw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: SN1NAM02FT036.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: faabb135-6be2-405f-3134-08d8be3b34f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 18:34:37.3205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT205
Subject: Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============0848440609126162487=="
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

--===============0848440609126162487==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_SN6PR1901MB4688E01080639FBCA750980EA4A10SN6PR1901MB4688_";
	type="multipart/alternative"

--_004_SN6PR1901MB4688E01080639FBCA750980EA4A10SN6PR1901MB4688_
Content-Type: multipart/alternative;
	boundary="_000_SN6PR1901MB4688E01080639FBCA750980EA4A10SN6PR1901MB4688_"

--_000_SN6PR1901MB4688E01080639FBCA750980EA4A10SN6PR1901MB4688_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Here's an output of a sine wave which replaced the spikey one:

[cid:8d38035e-60ec-4052-99cd-9185c4bb5015]


I think that shows what I believe you were explaining, that the SOB/EOB doe=
sn't work like I thought.  I was using them as packet identifiers and assum=
ed the USRP would wait for the whole packet to begin transmission, but your=
 description seems to indicate that tx_sob turns the radio on and tx_eob tu=
rns the radio off (maybe a simplification?) and just streams whatever it se=
es during that time.  And during that time, the buffer may be empty because=
 data isn't produced fast enough.


The time between the segments of the sine wave show the delay from one call=
 of the work function to the next.  There is a delay within the source that=
 slows the output of the data, and since I thought the SOB/EOB combination =
would only transmit after the EOB was received, I did not think it would be=
 a problem.  It obviously is.


I now have to think of a way to do that with random length data.  Maybe add=
 a tx_time to provide some delay before transmission?


Jeff

________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Thursday, January 21, 2021 10:29 AM
To: Jeff S <e070832@hotmail.com>; usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal

Hi Jeff,

thanks for clarifying!

Yes, that should work. Also, your GR version definitely has support for SOB=
/EOB.

Generally, I'd expect this to work; only misconception I see is that the Si=
nk doesn't
start sending when it sees the EOB; it starts sending at SOB, and stops exp=
ecting and
sending samples to the USRP at EOB.

Could you try replacing your very "spikey" signal with something like a sin=
e, so to see
whether we might be seeing turn of/off behaviour?

Best regards,
Marcus

On 21.01.21 16:34, Jeff S wrote:
> Thanks, Marcus.
>
> Of course, I forgot the important version information.  I'm currently usi=
ng v3.7.13.5.  We
> are also doing some RFNoC work, which we had some issues upgrading a whil=
e back, so we
> were holding off until it matured more.  I'll ask our team if they want t=
o try and upgrade
> to 3.8 again.
>
> I'm sure my description wasn't clear, so I'll try and clarify a little be=
tter based on
> your feedback.
>
> I created the Random Source, and it is sending approximately 10,000 sampl=
es to the UHD
> USRP Sink as one message, with a tx_sob at the start and a tx_eob at the =
end.  My thought
> was that the sink would not transmit anything until the EOB was received.=
  The way
> GNURadio seems to be running, I'm getting [noutput_items =3D=3D 4096], so=
 it takes three calls
> to the work function to deliver all 10K samples of one message to the Sin=
k.  I only want
> one burst from the sink of those 10K samples.  What I am receiving seems =
to be three
> transmissions that make up the one sample.  The length of the three trans=
missions seem to
> correspond to the value of noutput_items I was seeing.
>
> The mention of 100 ms between bursts was only indicating how fast the mod=
ulator was being
> requested to transmit a single message.  So if I only requested one messa=
ge, there would
> have been one group of three signals seen in the Rx signal.
>
> Hope that clarified what I was trying to convey a little better.
>
> Regards,
> Jeff
>
>
>
> -------------------------------------------------------------------------=
-----------------
> *From:* Marcus M=FCller <marcus.mueller@ettus.com>
> *Sent:* Thursday, January 21, 2021 9:06 AM
> *To:* Jeff S <e070832@hotmail.com>; usrp-users <usrp-users@lists.ettus.co=
m>
> *Subject:* Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
>
> Hi Jeff,
>
> which version of GNU Radio are you using? Judging by the looks of your fl=
ow graph it's the
> (now legacy) 3.7, but *if* I remember correctly (it's really been a while=
), the SOB/EOB
> functionality appeared *somewhen* in 3.7.x; it might be worth trying your=
 exact same
> application in GNU Radio 3.8 (or 3.9).
>
> Conceptually, it's important to note that after tx_sob you need to supply=
 the full burst
> of samples: I think you're doing that, but then again, you say you get th=
ree data bursts
> 100 ms apart, so I'm not sure about that, to be honest. The USRP sink can=
't guess that you
> want three bursts of samples to be sent as one; it starts streaming as fa=
st as you supply
> it data after the SOB, and will tell you you're late or too slow at suppl=
ying data (tG/U
> printed to your console) if you don't give it 10 million samples a second=
, until it gets
> an SOB.
>
> Best regards,
> Marcus
>
>
> On 21.01.21 15:53, Jeff S via USRP-users wrote:
>> I am attempting to use burst mode on an X310.  I'm generating a random s=
ignal from one
>> X310 and receiving it on another.  My simple flowgraph is:
>>
>> I can see the tx_sob and tx_eob tags, set to true, from the time sink:
>>
>>
>> where I verify that I can see the EOB, followed by a new SOB in the next=
 message (both set
>> to true, according to
>> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html>
>> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html>>=
).  But when I am
>> receiving the signal, the message seems to be broken up into three diffe=
rent transmissions
>> instead of one burst:
>>
>>
>>
>> I'm transmitting a message every 100 ms, which seems to correspond to th=
e start of the
>> three messages.
>>
>> Analyzing the modulator in a debugger indicates that there are three tim=
es that the work
>> function is called to build the message, which may correspond to the thr=
ee messages seen
>> in the signal, but I'm not sure why the tx_sob and tx_eob tags are not b=
eing followed.
>> Maybe I may just have a major misunderstanding of how burst mode works.
>>
>> Any ideas on what I may be doing wrong?
>>
>> Thanks,
>> Jeff
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>

--_000_SN6PR1901MB4688E01080639FBCA750980EA4A10SN6PR1901MB4688_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Here's an output of a sine wave which replaced the spikey one:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<img size=3D"52344" contenttype=3D"image/png" style=3D"user-select: none; w=
idth: 972.67px; height: 281.956px;" unselectable=3D"on" tabindex=3D"-1" dat=
a-imgsize=3D"custom" width=3D"972.6701700234826" height=3D"281.955963748755=
6" data-outlook-trace=3D"F:1|T:1" src=3D"cid:8d38035e-60ec-4052-99cd-9185c4=
bb5015"><br>
</div>
<div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<p>I think that shows what I believe you were explaining, that the SOB/EOB =
doesn't work like I thought.&nbsp; I was using them as packet identifiers a=
nd assumed the USRP would wait for the whole packet to begin transmission, =
but your description seems to indicate
 that tx_sob turns the radio on and tx_eob turns the radio off (maybe a sim=
plification?) and just streams whatever it sees during that time.&nbsp; And=
 during that time, the buffer may be empty because data isn't produced fast=
 enough.<br>
</p>
<p><br>
</p>
<p>The time between the segments of the sine wave show the delay from one c=
all of the work function to the next.&nbsp; There is a delay within the sou=
rce that slows the output of the data, and since I thought the SOB/EOB comb=
ination would only transmit after the
 EOB was received, I did not think it would be a problem.&nbsp; It obviousl=
y is.</p>
<p><br>
</p>
<p>I now have to think of a way to do that with random length data.&nbsp; M=
aybe add a tx_time to provide some delay before transmission?</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
</div>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt=
;marcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Thursday, January 21, 2021 10:29 AM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;; usrp-users &lt;usrp-users@li=
sts.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signa=
l</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hi Jeff,<br>
<br>
thanks for clarifying!<br>
<br>
Yes, that should work. Also, your GR version definitely has support for SOB=
/EOB.<br>
<br>
Generally, I'd expect this to work; only misconception I see is that the Si=
nk doesn't<br>
start sending when it sees the EOB; it starts sending at SOB, and stops exp=
ecting and<br>
sending samples to the USRP at EOB.<br>
<br>
Could you try replacing your very &quot;spikey&quot; signal with something =
like a sine, so to see<br>
whether we might be seeing turn of/off behaviour?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 21.01.21 16:34, Jeff S wrote:<br>
&gt; Thanks, Marcus.<br>
&gt; <br>
&gt; Of course, I forgot the important version information.&nbsp; I'm curre=
ntly using v3.7.13.5.&nbsp; We<br>
&gt; are also doing some RFNoC work, which we had some issues upgrading a w=
hile back, so we<br>
&gt; were holding off until it matured more.&nbsp; I'll ask our team if the=
y want to try and upgrade<br>
&gt; to 3.8 again.<br>
&gt; <br>
&gt; I'm sure my description wasn't clear, so I'll try and clarify a little=
 better based on<br>
&gt; your feedback.<br>
&gt; <br>
&gt; I created the Random Source, and it is sending approximately 10,000 sa=
mples to the UHD<br>
&gt; USRP Sink as one message, with a tx_sob at the start and a tx_eob at t=
he end.&nbsp; My thought<br>
&gt; was that the sink would not transmit anything until the EOB was receiv=
ed.&nbsp; The way<br>
&gt; GNURadio seems to be running, I'm getting [noutput_items =3D=3D 4096],=
 so it takes three calls<br>
&gt; to the work function to deliver all 10K samples of one message to the =
Sink.&nbsp; I only want<br>
&gt; one burst from the sink of those 10K samples.&nbsp; What I am receivin=
g seems to be three<br>
&gt; transmissions that make up the one sample.&nbsp; The length of the thr=
ee transmissions seem to<br>
&gt; correspond to the value of noutput_items I was seeing.<br>
&gt; <br>
&gt; The mention of 100 ms between bursts was only indicating how fast the =
modulator was being<br>
&gt; requested to transmit a single message.&nbsp; So if I only requested o=
ne message, there would<br>
&gt; have been one group of three signals seen in the Rx signal.<br>
&gt; <br>
&gt; Hope that clarified what I was trying to convey a little better.<br>
&gt; <br>
&gt; Regards,<br>
&gt; Jeff<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--------------------<br>
&gt; *From:* Marcus M=FCller &lt;marcus.mueller@ettus.com&gt;<br>
&gt; *Sent:* Thursday, January 21, 2021 9:06 AM<br>
&gt; *To:* Jeff S &lt;e070832@hotmail.com&gt;; usrp-users &lt;usrp-users@li=
sts.ettus.com&gt;<br>
&gt; *Subject:* Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signa=
l<br>
&gt; &nbsp;<br>
&gt; Hi Jeff,<br>
&gt; <br>
&gt; which version of GNU Radio are you using? Judging by the looks of your=
 flow graph it's the<br>
&gt; (now legacy) 3.7, but *if* I remember correctly (it's really been a wh=
ile), the SOB/EOB<br>
&gt; functionality appeared *somewhen* in 3.7.x; it might be worth trying y=
our exact same<br>
&gt; application in GNU Radio 3.8 (or 3.9).<br>
&gt; <br>
&gt; Conceptually, it's important to note that after tx_sob you need to sup=
ply the full burst<br>
&gt; of samples: I think you're doing that, but then again, you say you get=
 three data bursts<br>
&gt; 100 ms apart, so I'm not sure about that, to be honest. The USRP sink =
can't guess that you<br>
&gt; want three bursts of samples to be sent as one; it starts streaming as=
 fast as you supply<br>
&gt; it data after the SOB, and will tell you you're late or too slow at su=
pplying data (tG/U<br>
&gt; printed to your console) if you don't give it 10 million samples a sec=
ond, until it gets<br>
&gt; an SOB.<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt; <br>
&gt; <br>
&gt; On 21.01.21 15:53, Jeff S via USRP-users wrote:<br>
&gt;&gt; I am attempting to use burst mode on an X310.&nbsp; I'm generating=
 a random signal from one<br>
&gt;&gt; X310 and receiving it on another.&nbsp; My simple flowgraph is:<br=
>
&gt;&gt; <br>
&gt;&gt; I can see the tx_sob and tx_eob tags, set to true, from the time s=
ink:<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; where I verify that I can see the EOB, followed by a new SOB in th=
e next message (both set<br>
&gt;&gt; to true, according to<br>
&gt;&gt; <a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1=
usrp__sink.html">
https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html</a><=
br>
&gt; &lt;<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1=
usrp__sink.html">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usr=
p__sink.html</a>&gt;<br>
&gt;&gt; &lt;<a href=3D""></a>https://www.gnuradio.org/doc/doxygen/classgr_=
1_1uhd_1_1usrp__sink.html<br>
&gt; &lt;<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1=
usrp__sink.html">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usr=
p__sink.html</a>&gt;&gt;).&nbsp; But when I am<br>
&gt;&gt; receiving the signal, the message seems to be broken up into three=
 different transmissions<br>
&gt;&gt; instead of one burst:<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; I'm transmitting a message every 100 ms, which seems to correspond=
 to the start of the<br>
&gt;&gt; three messages.<br>
&gt;&gt; <br>
&gt;&gt; Analyzing the modulator in a debugger indicates that there are thr=
ee times that the work<br>
&gt;&gt; function is called to build the message, which may correspond to t=
he three messages seen<br>
&gt;&gt; in the signal, but I'm not sure why the tx_sob and tx_eob tags are=
 not being followed.&nbsp;<br>
&gt;&gt; Maybe I may just have a major misunderstanding of how burst mode w=
orks.<br>
&gt;&gt; <br>
&gt;&gt; Any ideas on what I may be doing wrong?<br>
&gt;&gt; <br>
&gt;&gt; Thanks,<br>
&gt;&gt; Jeff<br>
&gt;&gt; <br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; USRP-users@lists.ettus.com<br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a><br>
&gt; &lt;<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a>&gt;<br>
&gt;&gt; <br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_SN6PR1901MB4688E01080639FBCA750980EA4A10SN6PR1901MB4688_--

--_004_SN6PR1901MB4688E01080639FBCA750980EA4A10SN6PR1901MB4688_
Content-Type: image/png; name="Screenshot from 2021-01-21 12-19-31.png"
Content-Description: Screenshot from 2021-01-21 12-19-31.png
Content-Disposition: inline;
	filename="Screenshot from 2021-01-21 12-19-31.png"; size=52344;
	creation-date="Thu, 21 Jan 2021 18:21:55 GMT";
	modification-date="Thu, 21 Jan 2021 18:21:55 GMT"
Content-ID: <8d38035e-60ec-4052-99cd-9185c4bb5015>
Content-Transfer-Encoding: base64

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
fhv6WIM8AAAAAElFTkSuQmCC

--_004_SN6PR1901MB4688E01080639FBCA750980EA4A10SN6PR1901MB4688_--


--===============0848440609126162487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0848440609126162487==--

