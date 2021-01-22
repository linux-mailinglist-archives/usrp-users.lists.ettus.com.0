Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD983003E3
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jan 2021 14:13:49 +0100 (CET)
Received: from [::1] (port=60594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2wG1-00078z-7R; Fri, 22 Jan 2021 08:13:45 -0500
Received: from mail-co1nam11olkn2064.outbound.protection.outlook.com
 ([40.92.18.64]:61024 helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1l2wFx-00074a-9M
 for usrp-users@lists.ettus.com; Fri, 22 Jan 2021 08:13:41 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TPBBX1EHWAuH0O0vblgXDO80fvSJDdul2zppcoy4W1CFdJS7u8Wu8pDTYyiBCvoF+2qHfJDrB35I+jZaGIN+1WOvsmtj3XkCKbT0kZg5rfPpZ1JrFmPlrcPXuEmMOuPCYQKdYSIkZdYd3KR/+RYy9ZMumjZ+HNGBHnUnJyRYciKHouxKffjPJbXeQqHWarjbeONww9DWL6FRSJiFPOgUaN8OzVBUiMdxLxZZHGyjD0n+N6bcw8rkXkor9IhosdA4hK1AzRe6GilRAXEYK3UtxxNnheRgqb0YYIv59uONf0/JZgasxr2VfTKRwuhwz15URID0jLl0cNDJeK8Vj/KimA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nYNn3I+uElOwL/SqiZfZ3GXwjfRRQOgsQ8fs7vkBspo=;
 b=lWNwdMgp9VRzTB9jbE08L2Hhli/QPJ4BtSQo9O/kuoUNTlMBxs+YNEyJ86w1O0v9EABIHE3N6YbTPrOJvx5IoYAWwY7Tb1I7TgAtsGrx9t0AbiFvqmFnviLKUuynAuw844FkeJaZaucXPXsoMW/T2KFsH7UIhSfVjZonngNBdEqvEv1Tc+9hi/Wah1vCZF/zl5cx8PwmeOHS3bBn2dja4W0mpa3aE1Jnb7GdFlcTwUlgM2AD6iu5tzjnQBuv6P/kBQRlFvkeAZmm7Nv0BkGCy0rkVad7Rshqu8QEUfvmlNGDRLKp3anhykfUGG/bJbz3AdY1zxEc+3VkQdF7iSjYGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nYNn3I+uElOwL/SqiZfZ3GXwjfRRQOgsQ8fs7vkBspo=;
 b=Ymf0xzXPILokeWnD0a7/cHhHbGI2bfmcnIwwUfXRqFGamukHLXR7NNZ+2XptWmZ5Qc1coQU6x+TGg9DovblkIArjy2NCyU+fXNSlzWN9xJm6YVuPgFLQCGW7pLhJ39TcxS9KSCoXcaPBJi3XGYo5xSYAl9F757faYK5Cv+sidHQZ41T3uUTAx9T5HAFVrY3v3gN7ECT9NP/Cfdl7thf9MgDfmPWrlrbAnVrnBDukaXP1GAmUOuvYyldHrjlY/zlt+9t4sDw55aL5BIplEaTdHdkXd/juGkdbJz1pFmvg5CH66uK/4CVUqgx4NMBz29i4KRaq7zG79/A5AnVfRSN6ug==
Received: from DM6NAM11FT004.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::41) by
 DM6NAM11HT092.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::187)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.12; Fri, 22 Jan
 2021 13:12:59 +0000
Received: from SN6PR1901MB4688.namprd19.prod.outlook.com
 (2a01:111:e400:fc4d::52) by DM6NAM11FT004.mail.protection.outlook.com
 (2a01:111:e400:fc4d::217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.12 via Frontend
 Transport; Fri, 22 Jan 2021 13:12:59 +0000
Received: from SN6PR1901MB4688.namprd19.prod.outlook.com
 ([fe80::8961:3c2a:dd3a:3910]) by SN6PR1901MB4688.namprd19.prod.outlook.com
 ([fe80::8961:3c2a:dd3a:3910%6]) with mapi id 15.20.3763.014; Fri, 22 Jan 2021
 13:12:59 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Johannes Demel
 <demel@ant.uni-bremen.de>
Thread-Topic: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
Thread-Index: AQHW8ALyB/1PoI1sxU22uloXxNssy6oyLdiAgAABoxWAABWbAIAAHypvgADyPACAAEXOUQ==
Date: Fri, 22 Jan 2021 13:12:58 +0000
Message-ID: <SN6PR1901MB46886E3A036DC5A78E0146A3A4A00@SN6PR1901MB4688.namprd19.prod.outlook.com>
References: <SN6PR1901MB46884B4D0EBC22B0D4F7CF08A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
 <6c457450-6f9e-892b-ac53-5ea7956b7f0b@ettus.com>
 <SN6PR1901MB468884AC8FAC5C9476CC6678A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
 <420b3f86-ef54-997b-a3d2-302f6db5e3aa@ettus.com>
 <SN6PR1901MB4688E01080639FBCA750980EA4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>,
 <f06011c6-ca8a-d4df-e59e-be7f32047c98@ant.uni-bremen.de>
In-Reply-To: <f06011c6-ca8a-d4df-e59e-be7f32047c98@ant.uni-bremen.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:0A6C1CC473B7C2EE1CD474F8BD37EF2F72695E37D1C29274607528C994160223;
 UpperCasedChecksum:85BD1F521F164B0F7D2E949240AFD6CE1859DC1519F09B5E95FC2592753C2262;
 SizeAsReceived:7341; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [34m0jjkn/Fah22ZtxfAEP6AbPzG+ieYR]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: d64614da-0e36-426a-2ba3-08d8bed770a8
x-ms-traffictypediagnostic: DM6NAM11HT092:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2xWPpgg1MNMve2rHUbprhZT3ji3fgQ3ZMDachQrF8eSL0cnlqI1VexTVUlev9BcIA3D7bCU67VgYFFMnuarPI9IvNvMmc0eDE/DrSO6qLLGhGQJBiQ68B6ky2p7qA7FivClKct2K2TNhuatH5MYmaMo0kvwT1iDk86WScY1QUh9WNkowsTneZsoqlxj5s8LjYtUlRNTGvbN1RY9yP9LNpiB9zq8zntsUrNkknqQmFPG7qS1W7vRPoyRKB6Kp2sxviJNtdH2/dpJv8iePg5lN66cPwD//pTTzKjQvPIptdubG+6fYTFwA8CWzNO52lgQQMuOUClfMrrGRYvEl5z6ioc6lPaTSOafxGxZgKV4YdwdxoJQ6QI5nCQ0EdoK24H1vGPvTzalDzSaScLGUEAwOrbhdkpqnKMJtN/Zryjt57wJyAqDkIButln8h00C+1Tai
x-ms-exchange-antispam-messagedata: 7jV7LblpEk3Cu2GtShBBcYULPriIxUuY714VTVBqhTdS4Hzf9VVtM0An/82/UDszsGQwZ4PB/z8BrQOCaaIH0FPcE2bhnllHAY6ObNV1pJTARmKzhvCBFXdzl1y7W904bLoQDHcmUHrWul/F2yJiNQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT004.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d64614da-0e36-426a-2ba3-08d8bed770a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2021 13:12:58.9481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT092
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
Content-Type: multipart/mixed; boundary="===============3505720346837890794=="
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

--===============3505720346837890794==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR1901MB46886E3A036DC5A78E0146A3A4A00SN6PR1901MB4688_"

--_000_SN6PR1901MB46886E3A036DC5A78E0146A3A4A00SN6PR1901MB4688_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, Johannes!

Is the packet_length vs SOB/EOB more of a preference, or are there some und=
erlying reasons to go with packet_length?  This is the first time I have us=
ed burst mode, so I'm just learning all the details of it.  I started with =
packet_length, but I wasn't getting my expected results and switched to SOB=
/EOB.  I apparently wasn't getting my expected values due to the delay in m=
y code and my misunderstanding of burst mode.  Fixing where I was getting t=
he significant delay in my work function has seemed to clear up my expected=
 signal.

I was considering a vector source, but the size of the vector may be variab=
le and that seems like it could pose a challenge.  I did use a [stream to v=
ector]-->[vector to stream] to create a makeshift buffer to test if the del=
ay was in my source or somewhere else.  That also proved that my source was=
 the cause of the delay.

I was not aware of needing the zeros before and after the signal, but it's =
obvious (as soon as you pointed it out).  It makes total sense.  Is there a=
 rule of thumb you use for setup time?  I haven't searched yet.

PDU is something else I have not used much, but I thought it might prove us=
eful here.  I need to read up on it and do some experimenting to see what I=
 can do with it.

Thanks for the help, Johannes.  You and Marcus have been a great help!

Jeff

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Johannes=
 Demel via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, January 22, 2021 2:47 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal

Hi Jeff,

I use burst mode all the time (mostly on N310 but X310 as well). I
usually prefer a `packet_length` tag instead of SOB --> EOB. As Marcus
mentioned, as soon as the first sample goes into the USRP sink, you
start transmitting and need to sustain your sample rate. To ensure that
you provide enough samples, I'd recommend to start with a vector source
and a defined signal. Or use a PDU with a PDU to tagged block to control
the frequency of your individual packets.
A sine wave with increasing amplitude is probably a very useful signal.
And I assume you're aware that bursts should be preceeded and followed
by some zero values to ensure everything is in a steady state as soon as
your real data is transmitted. The proposed signal would be really
useful to debug these issues.

Cheers
Johannes

On 21.01.21 19:34, Jeff S via USRP-users wrote:
> Here's an output of a sine wave which replaced the spikey one:
>
>
>
> I think that shows what I believe you were explaining, that the SOB/EOB
> doesn't work like I thought.  I was using them as packet identifiers and
> assumed the USRP would wait for the whole packet to begin transmission,
> but your description seems to indicate that tx_sob turns the radio on
> and tx_eob turns the radio off (maybe a simplification?) and just
> streams whatever it sees during that time.  And during that time, the
> buffer may be empty because data isn't produced fast enough.
>
>
> The time between the segments of the sine wave show the delay from one
> call of the work function to the next.  There is a delay within the
> source that slows the output of the data, and since I thought the
> SOB/EOB combination would only transmit after the EOB was received, I
> did not think it would be a problem.  It obviously is.
>
>
> I now have to think of a way to do that with random length data.  Maybe
> add a tx_time to provide some delay before transmission?
>
>
> Jeff
>
>
> ------------------------------------------------------------------------
> *From:* Marcus M=FCller <marcus.mueller@ettus.com>
> *Sent:* Thursday, January 21, 2021 10:29 AM
> *To:* Jeff S <e070832@hotmail.com>; usrp-users <usrp-users@lists.ettus.co=
m>
> *Subject:* Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
> Hi Jeff,
>
> thanks for clarifying!
>
> Yes, that should work. Also, your GR version definitely has support for
> SOB/EOB.
>
> Generally, I'd expect this to work; only misconception I see is that the
> Sink doesn't
> start sending when it sees the EOB; it starts sending at SOB, and stops
> expecting and
> sending samples to the USRP at EOB.
>
> Could you try replacing your very "spikey" signal with something like a
> sine, so to see
> whether we might be seeing turn of/off behaviour?
>
> Best regards,
> Marcus
>
> On 21.01.21 16:34, Jeff S wrote:
>> Thanks, Marcus.
>>
>> Of course, I forgot the important version information.  I'm currently us=
ing v3.7.13.5.  We
>> are also doing some RFNoC work, which we had some issues upgrading a whi=
le back, so we
>> were holding off until it matured more.  I'll ask our team if they want =
to try and upgrade
>> to 3.8 again.
>>
>> I'm sure my description wasn't clear, so I'll try and clarify a little b=
etter based on
>> your feedback.
>>
>> I created the Random Source, and it is sending approximately 10,000 samp=
les to the UHD
>> USRP Sink as one message, with a tx_sob at the start and a tx_eob at the=
 end.  My thought
>> was that the sink would not transmit anything until the EOB was received=
.  The way
>> GNURadio seems to be running, I'm getting [noutput_items =3D=3D 4096], s=
o it takes three calls
>> to the work function to deliver all 10K samples of one message to the Si=
nk.  I only want
>> one burst from the sink of those 10K samples.  What I am receiving seems=
 to be three
>> transmissions that make up the one sample.  The length of the three tran=
smissions seem to
>> correspond to the value of noutput_items I was seeing.
>>
>> The mention of 100 ms between bursts was only indicating how fast the mo=
dulator was being
>> requested to transmit a single message.  So if I only requested one mess=
age, there would
>> have been one group of three signals seen in the Rx signal.
>>
>> Hope that clarified what I was trying to convey a little better.
>>
>> Regards,
>> Jeff
>>
>>
>>
>> ------------------------------------------------------------------------=
------------------
>> *From:* Marcus M=FCller <marcus.mueller@ettus.com>
>> *Sent:* Thursday, January 21, 2021 9:06 AM
>> *To:* Jeff S <e070832@hotmail.com>; usrp-users <usrp-users@lists.ettus.c=
om>
>> *Subject:* Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
>>
>> Hi Jeff,
>>
>> which version of GNU Radio are you using? Judging by the looks of your f=
low graph it's the
>> (now legacy) 3.7, but *if* I remember correctly (it's really been a whil=
e), the SOB/EOB
>> functionality appeared *somewhen* in 3.7.x; it might be worth trying you=
r exact same
>> application in GNU Radio 3.8 (or 3.9).
>>
>> Conceptually, it's important to note that after tx_sob you need to suppl=
y the full burst
>> of samples: I think you're doing that, but then again, you say you get t=
hree data bursts
>> 100 ms apart, so I'm not sure about that, to be honest. The USRP sink ca=
n't guess that you
>> want three bursts of samples to be sent as one; it starts streaming as f=
ast as you supply
>> it data after the SOB, and will tell you you're late or too slow at supp=
lying data (tG/U
>> printed to your console) if you don't give it 10 million samples a secon=
d, until it gets
>> an SOB.
>>
>> Best regards,
>> Marcus
>>
>>
>> On 21.01.21 15:53, Jeff S via USRP-users wrote:
>>> I am attempting to use burst mode on an X310.  I'm generating a random =
signal from one
>>> X310 and receiving it on another.  My simple flowgraph is:
>>>
>>> I can see the tx_sob and tx_eob tags, set to true, from the time sink:
>>>
>>>
>>> where I verify that I can see the EOB, followed by a new SOB in the nex=
t message (both set
>>> to true, according to
>>> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
>> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html>
>>> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
>> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html>=
>).
> But when I am
>>> receiving the signal, the message seems to be broken up into three diff=
erent transmissions
>>> instead of one burst:
>>>
>>>
>>>
>>> I'm transmitting a message every 100 ms, which seems to correspond to t=
he start of the
>>> three messages.
>>>
>>> Analyzing the modulator in a debugger indicates that there are three ti=
mes that the work
>>> function is called to build the message, which may correspond to the th=
ree messages seen
>>> in the signal, but I'm not sure why the tx_sob and tx_eob tags are not =
being followed.
>>> Maybe I may just have a major misunderstanding of how burst mode works.
>>>
>>> Any ideas on what I may be doing wrong?
>>>
>>> Thanks,
>>> Jeff
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_SN6PR1901MB46886E3A036DC5A78E0146A3A4A00SN6PR1901MB4688_
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
Hi, Johannes!</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Is the packet_length vs SOB/EOB more of a preference, or are there some und=
erlying reasons to go with packet_length?&nbsp; This is the first time I ha=
ve used burst mode, so I'm just learning all the details of it.&nbsp; I sta=
rted with packet_length, but I wasn't getting
 my expected results and switched to SOB/EOB.&nbsp; I apparently wasn't get=
ting my expected values due to the delay in my code and my misunderstanding=
 of burst mode.&nbsp; Fixing where I was getting the significant delay in m=
y work function has seemed to clear up my
 expected signal.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I was considering a vector source, but the size of the vector may be variab=
le and that seems like it could pose a challenge.&nbsp; I did use a [stream=
 to vector]--&gt;[vector to stream] to create a makeshift buffer to test if=
 the delay was in my source or somewhere
 else.&nbsp; That also proved that my source was the cause of the delay.<br=
>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I was not aware of needing the zeros before and after the signal, but it's =
obvious (as soon as you pointed it out).&nbsp; It makes total sense.&nbsp; =
Is there a rule of thumb you use for setup time?&nbsp; I haven't searched y=
et.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
PDU is something else I have not used much, but I thought it might prove us=
eful here.&nbsp; I need to read up on it and do some experimenting to see w=
hat I can do with it.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks for the help, Johannes.&nbsp; You and Marcus have been a great help!=
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div><br>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Johannes Demel via USRP-use=
rs &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, January 22, 2021 2:47 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signa=
l</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hi Jeff,<br>
<br>
I use burst mode all the time (mostly on N310 but X310 as well). I <br>
usually prefer a `packet_length` tag instead of SOB --&gt; EOB. As Marcus <=
br>
mentioned, as soon as the first sample goes into the USRP sink, you <br>
start transmitting and need to sustain your sample rate. To ensure that <br=
>
you provide enough samples, I'd recommend to start with a vector source <br=
>
and a defined signal. Or use a PDU with a PDU to tagged block to control <b=
r>
the frequency of your individual packets.<br>
A sine wave with increasing amplitude is probably a very useful signal. <br=
>
And I assume you're aware that bursts should be preceeded and followed <br>
by some zero values to ensure everything is in a steady state as soon as <b=
r>
your real data is transmitted. The proposed signal would be really <br>
useful to debug these issues.<br>
<br>
Cheers<br>
Johannes<br>
<br>
On 21.01.21 19:34, Jeff S via USRP-users wrote:<br>
&gt; Here's an output of a sine wave which replaced the spikey one:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; I think that shows what I believe you were explaining, that the SOB/EO=
B <br>
&gt; doesn't work like I thought.&nbsp; I was using them as packet identifi=
ers and <br>
&gt; assumed the USRP would wait for the whole packet to begin transmission=
, <br>
&gt; but your description seems to indicate that tx_sob turns the radio on =
<br>
&gt; and tx_eob turns the radio off (maybe a simplification?) and just <br>
&gt; streams whatever it sees during that time.&nbsp; And during that time,=
 the <br>
&gt; buffer may be empty because data isn't produced fast enough.<br>
&gt; <br>
&gt; <br>
&gt; The time between the segments of the sine wave show the delay from one=
 <br>
&gt; call of the work function to the next.&nbsp; There is a delay within t=
he <br>
&gt; source that slows the output of the data, and since I thought the <br>
&gt; SOB/EOB combination would only transmit after the EOB was received, I =
<br>
&gt; did not think it would be a problem.&nbsp; It obviously is.<br>
&gt; <br>
&gt; <br>
&gt; I now have to think of a way to do that with random length data.&nbsp;=
 Maybe <br>
&gt; add a tx_time to provide some delay before transmission?<br>
&gt; <br>
&gt; <br>
&gt; Jeff<br>
&gt; <br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* Marcus M=FCller &lt;marcus.mueller@ettus.com&gt;<br>
&gt; *Sent:* Thursday, January 21, 2021 10:29 AM<br>
&gt; *To:* Jeff S &lt;e070832@hotmail.com&gt;; usrp-users &lt;usrp-users@li=
sts.ettus.com&gt;<br>
&gt; *Subject:* Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signa=
l<br>
&gt; Hi Jeff,<br>
&gt; <br>
&gt; thanks for clarifying!<br>
&gt; <br>
&gt; Yes, that should work. Also, your GR version definitely has support fo=
r <br>
&gt; SOB/EOB.<br>
&gt; <br>
&gt; Generally, I'd expect this to work; only misconception I see is that t=
he <br>
&gt; Sink doesn't<br>
&gt; start sending when it sees the EOB; it starts sending at SOB, and stop=
s <br>
&gt; expecting and<br>
&gt; sending samples to the USRP at EOB.<br>
&gt; <br>
&gt; Could you try replacing your very &quot;spikey&quot; signal with somet=
hing like a <br>
&gt; sine, so to see<br>
&gt; whether we might be seeing turn of/off behaviour?<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt; <br>
&gt; On 21.01.21 16:34, Jeff S wrote:<br>
&gt;&gt; Thanks, Marcus.<br>
&gt;&gt; <br>
&gt;&gt; Of course, I forgot the important version information.&nbsp; I'm c=
urrently using v3.7.13.5.&nbsp; We<br>
&gt;&gt; are also doing some RFNoC work, which we had some issues upgrading=
 a while back, so we<br>
&gt;&gt; were holding off until it matured more.&nbsp; I'll ask our team if=
 they want to try and upgrade<br>
&gt;&gt; to 3.8 again.<br>
&gt;&gt; <br>
&gt;&gt; I'm sure my description wasn't clear, so I'll try and clarify a li=
ttle better based on<br>
&gt;&gt; your feedback.<br>
&gt;&gt; <br>
&gt;&gt; I created the Random Source, and it is sending approximately 10,00=
0 samples to the UHD<br>
&gt;&gt; USRP Sink as one message, with a tx_sob at the start and a tx_eob =
at the end.&nbsp; My thought<br>
&gt;&gt; was that the sink would not transmit anything until the EOB was re=
ceived.&nbsp; The way<br>
&gt;&gt; GNURadio seems to be running, I'm getting [noutput_items =3D=3D 40=
96], so it takes three calls<br>
&gt;&gt; to the work function to deliver all 10K samples of one message to =
the Sink.&nbsp; I only want<br>
&gt;&gt; one burst from the sink of those 10K samples.&nbsp; What I am rece=
iving seems to be three<br>
&gt;&gt; transmissions that make up the one sample.&nbsp; The length of the=
 three transmissions seem to<br>
&gt;&gt; correspond to the value of noutput_items I was seeing.<br>
&gt;&gt; <br>
&gt;&gt; The mention of 100 ms between bursts was only indicating how fast =
the modulator was being<br>
&gt;&gt; requested to transmit a single message.&nbsp; So if I only request=
ed one message, there would<br>
&gt;&gt; have been one group of three signals seen in the Rx signal.<br>
&gt;&gt; <br>
&gt;&gt; Hope that clarified what I was trying to convey a little better.<b=
r>
&gt;&gt; <br>
&gt;&gt; Regards,<br>
&gt;&gt; Jeff<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; ------------------------------------------------------------------=
------------------------<br>
&gt;&gt; *From:* Marcus M=FCller &lt;marcus.mueller@ettus.com&gt;<br>
&gt;&gt; *Sent:* Thursday, January 21, 2021 9:06 AM<br>
&gt;&gt; *To:* Jeff S &lt;e070832@hotmail.com&gt;; usrp-users &lt;usrp-user=
s@lists.ettus.com&gt;<br>
&gt;&gt; *Subject:* Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting S=
ignal<br>
&gt;&gt;&nbsp; <br>
&gt;&gt; Hi Jeff,<br>
&gt;&gt; <br>
&gt;&gt; which version of GNU Radio are you using? Judging by the looks of =
your flow graph it's the<br>
&gt;&gt; (now legacy) 3.7, but *if* I remember correctly (it's really been =
a while), the SOB/EOB<br>
&gt;&gt; functionality appeared *somewhen* in 3.7.x; it might be worth tryi=
ng your exact same<br>
&gt;&gt; application in GNU Radio 3.8 (or 3.9).<br>
&gt;&gt; <br>
&gt;&gt; Conceptually, it's important to note that after tx_sob you need to=
 supply the full burst<br>
&gt;&gt; of samples: I think you're doing that, but then again, you say you=
 get three data bursts<br>
&gt;&gt; 100 ms apart, so I'm not sure about that, to be honest. The USRP s=
ink can't guess that you<br>
&gt;&gt; want three bursts of samples to be sent as one; it starts streamin=
g as fast as you supply<br>
&gt;&gt; it data after the SOB, and will tell you you're late or too slow a=
t supplying data (tG/U<br>
&gt;&gt; printed to your console) if you don't give it 10 million samples a=
 second, until it gets<br>
&gt;&gt; an SOB.<br>
&gt;&gt; <br>
&gt;&gt; Best regards,<br>
&gt;&gt; Marcus<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; On 21.01.21 15:53, Jeff S via USRP-users wrote:<br>
&gt;&gt;&gt; I am attempting to use burst mode on an X310.&nbsp; I'm genera=
ting a random signal from one<br>
&gt;&gt;&gt; X310 and receiving it on another.&nbsp; My simple flowgraph is=
:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; I can see the tx_sob and tx_eob tags, set to true, from the ti=
me sink:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; where I verify that I can see the EOB, followed by a new SOB i=
n the next message (both set<br>
&gt;&gt;&gt; to true, according to<br>
&gt;&gt;&gt; <a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd=
_1_1usrp__sink.html">
https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html</a><=
br>
&gt;&gt; &lt;<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd=
_1_1usrp__sink.html">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_=
1usrp__sink.html</a>&gt;<br>
&gt;&gt;&gt; &lt;<a href=3D""></a>https://www.gnuradio.org/doc/doxygen/clas=
sgr_1_1uhd_1_1usrp__sink.html<br>
&gt;&gt; &lt;<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd=
_1_1usrp__sink.html">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_=
1usrp__sink.html</a>&gt;&gt;).&nbsp;
<br>
&gt; But when I am<br>
&gt;&gt;&gt; receiving the signal, the message seems to be broken up into t=
hree different transmissions<br>
&gt;&gt;&gt; instead of one burst:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; I'm transmitting a message every 100 ms, which seems to corres=
pond to the start of the<br>
&gt;&gt;&gt; three messages.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Analyzing the modulator in a debugger indicates that there are=
 three times that the work<br>
&gt;&gt;&gt; function is called to build the message, which may correspond =
to the three messages seen<br>
&gt;&gt;&gt; in the signal, but I'm not sure why the tx_sob and tx_eob tags=
 are not being followed.
<br>
&gt;&gt;&gt; Maybe I may just have a major misunderstanding of how burst mo=
de works.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Any ideas on what I may be doing wrong?<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt; Jeff<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; USRP-users@lists.ettus.com<br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt; &lt;<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com</a>&gt;<br>
&gt;&gt;&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
&gt; <br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_SN6PR1901MB46886E3A036DC5A78E0146A3A4A00SN6PR1901MB4688_--


--===============3505720346837890794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3505720346837890794==--

