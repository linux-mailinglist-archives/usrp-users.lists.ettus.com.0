Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 652982FFEA3
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jan 2021 09:48:47 +0100 (CET)
Received: from [::1] (port=57724 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2s7X-0004XL-Nu; Fri, 22 Jan 2021 03:48:43 -0500
Received: from mail-eopbgr70099.outbound.protection.outlook.com
 ([40.107.7.99]:52291 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1l2s7T-0004RG-9u
 for usrp-users@lists.ettus.com; Fri, 22 Jan 2021 03:48:39 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dj65QFc+m8KMQ6UIGibSqJF+TqbQzpiyFu46GNDLnGnhSoyD69yatqZKlYxeSPCSpyqfpEqH9dpsijKBkvuNt1eVca9xoMkGzK+b9xkvpAVDlbPF6ZdgNEXqACA+0d32/Po7IcTCDbG6vxXXLhIiT2RcF33j1gGvq6bg4azz2snsipK4uAOgfafiliR64WWsD2WDR0HNXh+09ahuUKvcaT0pS2b0vLiWsHrDzrQIzrH4LCACRk5S+cOonB1uJgHDZVxdcijh33u++/69jSxXBuGezJY+0EPisyhRKjSxaADRoTAVNjFSwnMBFx2BLGzPJ1miNLSm0fYgNOsM7O6JCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sSb+AwNBAysFIKc/1o6kLfSTNxJ9tKXhDM9y/5rdc4Q=;
 b=ftXtYzq0cCLsH7RLFJuSPmY5uKSzUcSBzP4XSNqLQlvvfUNJpQ7GIKG59LvnysQzryxK6JMHpsvmEtaNlfsiI5RXfLsuCZZwBkeykWRLURnCxAtQI8i5aRiZ+I8JcHoJ2fj5AM/8fUrnqDIzBgX8yZ4aiNFiSw3zdU2E3hyUdmUZLoqqQhFMw7NQuF+M2fDLvKcqz2FQ9HAMHQnKqKxROp/yiiX5kUP8eFN7Uw/UBrWtYJ0lzDAQH798ksskZ8uZtkHRPxfX2Rjn51MAC2sKmJKyJruWkGQhsJ5MhnK1RT+saZ3d2ttaefgZCGj3HwJClb0ZpjlUJDfqBFNaF6NTaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sSb+AwNBAysFIKc/1o6kLfSTNxJ9tKXhDM9y/5rdc4Q=;
 b=t4POcnqoDhTxcKVS5Khsf/w+o+KmExmyUsAlwmkSH4KuNj+88gHAT/5oSkPiUw7v25qd3cBFz1e1/2P7T4aSncChi74jK+7i7qR7LGvTc+C04lPBrwrvvvLZej+3J9I/TBbSR7UEJG/WRQk7rpxDDzyaBliDOine4mN1e7px4TE=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=ant.uni-bremen.de;
Received: from AM0PR04MB6673.eurprd04.prod.outlook.com (2603:10a6:208:16a::29)
 by AM0PR04MB6961.eurprd04.prod.outlook.com (2603:10a6:208:180::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Fri, 22 Jan
 2021 08:47:47 +0000
Received: from AM0PR04MB6673.eurprd04.prod.outlook.com
 ([fe80::8143:c379:777d:8fd8]) by AM0PR04MB6673.eurprd04.prod.outlook.com
 ([fe80::8143:c379:777d:8fd8%6]) with mapi id 15.20.3784.013; Fri, 22 Jan 2021
 08:47:47 +0000
To: usrp-users@lists.ettus.com
References: <SN6PR1901MB46884B4D0EBC22B0D4F7CF08A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
 <6c457450-6f9e-892b-ac53-5ea7956b7f0b@ettus.com>
 <SN6PR1901MB468884AC8FAC5C9476CC6678A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
 <420b3f86-ef54-997b-a3d2-302f6db5e3aa@ettus.com>
 <SN6PR1901MB4688E01080639FBCA750980EA4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
Message-ID: <f06011c6-ca8a-d4df-e59e-be7f32047c98@ant.uni-bremen.de>
Date: Fri, 22 Jan 2021 09:47:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <SN6PR1901MB4688E01080639FBCA750980EA4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [2003:ca:7f25:7a00:d067:db57:6fcd:b108]
X-ClientProxiedBy: AS8PR04CA0266.eurprd04.prod.outlook.com
 (2603:10a6:20b:330::31) To AM0PR04MB6673.eurprd04.prod.outlook.com
 (2603:10a6:208:16a::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2003:ca:7f25:7a00:d067:db57:6fcd:b108]
 (2003:ca:7f25:7a00:d067:db57:6fcd:b108) by
 AS8PR04CA0266.eurprd04.prod.outlook.com (2603:10a6:20b:330::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11 via Frontend
 Transport; Fri, 22 Jan 2021 08:47:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6ae70571-0a2e-4986-465a-08d8beb2644e
X-MS-TrafficTypeDiagnostic: AM0PR04MB6961:
X-Microsoft-Antispam-PRVS: <AM0PR04MB6961AEE741BFCC9111E72E94A9A00@AM0PR04MB6961.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E2jDz5PonNotn4FvN/xcvJkFZeWncSZtAjfoUTnjawuIlHSiLrYiwVTvl1tAOYHMG4yUoSTkawk5PCzxepNFvyIfEOacRSAUbb3PDbxh7wVYLzKQHegAag/WeC0TNmIOZaxA0Tl89FvPJ4CUdLAmRAwYwjHOfgdU+oNEcO2aHzObMD3ZSp3qXh0k5xevP+gvo40/Ph6gLEKNOZctkKoAkSZBD4UjslFA/3hUmrkJXIESLDBOUwXZCOu9JO+JKtg2ElY8vCjTOEPni9vaRvPWI4qTc1WATDNdoipJTTK4XRPnfEMuUiJhY9BZbSEM2u9opFndhNqo1tmej+KiCdlAmr8T0MGaWO9UPuZQh7f/a/6BDpeIBrKm/TkhTXFBH7L+hzuxCOF06fLtVulnARIfDB9m1fXY5KxcbKNoRiBdUxXUChKiAQF9Jaf8GPAhVvOV1xJQ3ERy6kAgC3CA/jgCEeiD/dDQ/R0YsKPQKCwL6jWTgF6q1e4MRUZRkqV1rAmEa7sdJcYva8ZC4HqvWXUdf9OGL25hj0PvLxH9R/KyJ//7tw2L4U5nl+zmtL958Yjc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6673.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39830400003)(346002)(136003)(396003)(376002)(366004)(16526019)(186003)(53546011)(66946007)(786003)(316002)(52116002)(8676002)(31696002)(86362001)(2616005)(31686004)(8936002)(5660300002)(478600001)(66476007)(66556008)(6916009)(2906002)(83380400001)(45080400002)(966005)(66574015)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?Windows-1252?Q?o+UGDC3rmDVggJNdU13L9iP0E1y/V6LDCOmwXiBPQKKZ5z6Xt0Bl6aeA?=
 =?Windows-1252?Q?z6azQ+ap/2xLJnN74yrQnis7DxxFPTaafApnzeZ5lXD1UyhPFI1Vdz5J?=
 =?Windows-1252?Q?brp9RwQMMCaVwNohffZwqRC0hxxWLhQdfqewFUC0LvUDE5cJZ/Hcwl+f?=
 =?Windows-1252?Q?dNnWR7Q+/KZy3jWW2GxFp44XleOgEqgGmYA0ysm5WIdkMN3aXPeptoWk?=
 =?Windows-1252?Q?tA2pCfr3pN5ZwrX9z9Y+xtnRiK5WfCGecm2exStSYsC3bRUebTWeerna?=
 =?Windows-1252?Q?JooZwAq1TYlaanS2vu+5BS99s/3CavkCX4aMSH0I8gs40Ld6kmc41Vtn?=
 =?Windows-1252?Q?tnJz67Erwp95K5eVyUU9xllIFYOujFrG4a2KpYOvEHTKU9TA0hrgJzQs?=
 =?Windows-1252?Q?fzXAGsl937xnXFXNwmGfBBAPGCy6PHxoBwgRI44vORWI7NsitF++y6ek?=
 =?Windows-1252?Q?YawKYRwW7ijO95earVkrDdvXakftWz6y40phSW8w48nDGH9dnYRqQicc?=
 =?Windows-1252?Q?MuELKsc5AePcn3mYAD8gcPO9duHswpAEuuwMZ8sxoKQJBJNePeF6rCyq?=
 =?Windows-1252?Q?zTZC/6+W1nF3m4ExpoNKxB2tZEUGePwNtWlY17mg+OLpm6GWAismBorJ?=
 =?Windows-1252?Q?7fUskN4p43UCDZlAYexQ04bxTavACoXrY81BDnqwoaQW7OhegmaD2zwi?=
 =?Windows-1252?Q?ZWlwstXQHbK2XBAkLo+fBpOGdr2zuCYrdNm7bhk+4jjhBXCxe5W4IOTR?=
 =?Windows-1252?Q?kg2g1H9sT0uRb4ZSyaMNE3c67qwg4iNYqlUdCaPuiDk589hh0OqQR5qD?=
 =?Windows-1252?Q?PWi9eqCitIiG/YPukm5dTglHgxJUk2WJyYNmUY2sT/XO2qJkH0rasHpK?=
 =?Windows-1252?Q?kW0jZBGDhhKFkjGpJ/VrztEvmAKICNn7L3Nc2p3DDsvWQq6HnJSK50hK?=
 =?Windows-1252?Q?LBRSlWUt8lTKy98KaWmxRNzWt6BPh1X5yF2IV94OADT/6fBWRWxELc8c?=
 =?Windows-1252?Q?hAnMt2nhnnuI5yg8yNrKFduAuWMR+UL4Js3UGBAA2vct4+D+9CTNb5hR?=
 =?Windows-1252?Q?LXGDtYngviRdyiMxy1wJQ4o/z0K70sTH1ZR/uiDm1zkvk4tLoSz3QHH/?=
 =?Windows-1252?Q?KBYjl6kUdGLPl/20mJslxEno?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ae70571-0a2e-4986-465a-08d8beb2644e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6673.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2021 08:47:47.3710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tnwquw1xjNztWT2XgHOdNhgBgaEr+Nhyrkj/b/nZRFByDzaxZWaVznq5p+jBhe9eHEg42u5hWr0IliaoXlfG7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6961
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
From: Johannes Demel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johannes Demel <demel@ant.uni-bremen.de>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
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

Hi Jeff,

I use burst mode all the time (mostly on N310 but X310 as well). I =

usually prefer a `packet_length` tag instead of SOB --> EOB. As Marcus =

mentioned, as soon as the first sample goes into the USRP sink, you =

start transmitting and need to sustain your sample rate. To ensure that =

you provide enough samples, I'd recommend to start with a vector source =

and a defined signal. Or use a PDU with a PDU to tagged block to control =

the frequency of your individual packets.
A sine wave with increasing amplitude is probably a very useful signal. =

And I assume you're aware that bursts should be preceeded and followed =

by some zero values to ensure everything is in a steady state as soon as =

your real data is transmitted. The proposed signal would be really =

useful to debug these issues.

Cheers
Johannes

On 21.01.21 19:34, Jeff S via USRP-users wrote:
> Here's an output of a sine wave which replaced the spikey one:
> =

> =

> =

> I think that shows what I believe you were explaining, that the SOB/EOB =

> doesn't work like I thought.=A0 I was using them as packet identifiers an=
d =

> assumed the USRP would wait for the whole packet to begin transmission, =

> but your description seems to indicate that tx_sob turns the radio on =

> and tx_eob turns the radio off (maybe a simplification?) and just =

> streams whatever it sees during that time.=A0 And during that time, the =

> buffer may be empty because data isn't produced fast enough.
> =

> =

> The time between the segments of the sine wave show the delay from one =

> call of the work function to the next.=A0 There is a delay within the =

> source that slows the output of the data, and since I thought the =

> SOB/EOB combination would only transmit after the EOB was received, I =

> did not think it would be a problem.=A0 It obviously is.
> =

> =

> I now have to think of a way to do that with random length data.=A0 Maybe =

> add a tx_time to provide some delay before transmission?
> =

> =

> Jeff
> =

> =

> ------------------------------------------------------------------------
> *From:* Marcus M=FCller <marcus.mueller@ettus.com>
> *Sent:* Thursday, January 21, 2021 10:29 AM
> *To:* Jeff S <e070832@hotmail.com>; usrp-users <usrp-users@lists.ettus.co=
m>
> *Subject:* Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
> Hi Jeff,
> =

> thanks for clarifying!
> =

> Yes, that should work. Also, your GR version definitely has support for =

> SOB/EOB.
> =

> Generally, I'd expect this to work; only misconception I see is that the =

> Sink doesn't
> start sending when it sees the EOB; it starts sending at SOB, and stops =

> expecting and
> sending samples to the USRP at EOB.
> =

> Could you try replacing your very "spikey" signal with something like a =

> sine, so to see
> whether we might be seeing turn of/off behaviour?
> =

> Best regards,
> Marcus
> =

> On 21.01.21 16:34, Jeff S wrote:
>> Thanks, Marcus.
>> =

>> Of course, I forgot the important version information.=A0 I'm currently =
using v3.7.13.5.=A0 We
>> are also doing some RFNoC work, which we had some issues upgrading a whi=
le back, so we
>> were holding off until it matured more.=A0 I'll ask our team if they wan=
t to try and upgrade
>> to 3.8 again.
>> =

>> I'm sure my description wasn't clear, so I'll try and clarify a little b=
etter based on
>> your feedback.
>> =

>> I created the Random Source, and it is sending approximately 10,000 samp=
les to the UHD
>> USRP Sink as one message, with a tx_sob at the start and a tx_eob at the=
 end.=A0 My thought
>> was that the sink would not transmit anything until the EOB was received=
.=A0 The way
>> GNURadio seems to be running, I'm getting [noutput_items =3D=3D 4096], s=
o it takes three calls
>> to the work function to deliver all 10K samples of one message to the Si=
nk.=A0 I only want
>> one burst from the sink of those 10K samples.=A0 What I am receiving see=
ms to be three
>> transmissions that make up the one sample.=A0 The length of the three tr=
ansmissions seem to
>> correspond to the value of noutput_items I was seeing.
>> =

>> The mention of 100 ms between bursts was only indicating how fast the mo=
dulator was being
>> requested to transmit a single message.=A0 So if I only requested one me=
ssage, there would
>> have been one group of three signals seen in the Rx signal.
>> =

>> Hope that clarified what I was trying to convey a little better.
>> =

>> Regards,
>> Jeff
>> =

>> =

>> =

>> ------------------------------------------------------------------------=
------------------
>> *From:* Marcus M=FCller <marcus.mueller@ettus.com>
>> *Sent:* Thursday, January 21, 2021 9:06 AM
>> *To:* Jeff S <e070832@hotmail.com>; usrp-users <usrp-users@lists.ettus.c=
om>
>> *Subject:* Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
>>  =

>> Hi Jeff,
>> =

>> which version of GNU Radio are you using? Judging by the looks of your f=
low graph it's the
>> (now legacy) 3.7, but *if* I remember correctly (it's really been a whil=
e), the SOB/EOB
>> functionality appeared *somewhen* in 3.7.x; it might be worth trying you=
r exact same
>> application in GNU Radio 3.8 (or 3.9).
>> =

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
>> =

>> Best regards,
>> Marcus
>> =

>> =

>> On 21.01.21 15:53, Jeff S via USRP-users wrote:
>>> I am attempting to use burst mode on an X310.=A0 I'm generating a rando=
m signal from one
>>> X310 and receiving it on another.=A0 My simple flowgraph is:
>>> =

>>> I can see the tx_sob and tx_eob tags, set to true, from the time sink:
>>> =

>>> =

>>> where I verify that I can see the EOB, followed by a new SOB in the nex=
t message (both set
>>> to true, according to
>>> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
>> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html>
>>> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
>> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html>=
>).  =

> But when I am
>>> receiving the signal, the message seems to be broken up into three diff=
erent transmissions
>>> instead of one burst:
>>> =

>>> =

>>> =

>>> I'm transmitting a message every 100 ms, which seems to correspond to t=
he start of the
>>> three messages.
>>> =

>>> Analyzing the modulator in a debugger indicates that there are three ti=
mes that the work
>>> function is called to build the message, which may correspond to the th=
ree messages seen
>>> in the signal, but I'm not sure why the tx_sob and tx_eob tags are not =
being followed. =

>>> Maybe I may just have a major misunderstanding of how burst mode works.
>>> =

>>> Any ideas on what I may be doing wrong?
>>> =

>>> Thanks,
>>> Jeff
>>> =

>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>> =

> =

> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> =


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
