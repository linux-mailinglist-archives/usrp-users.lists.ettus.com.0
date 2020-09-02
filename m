Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D15FC25B3AC
	for <lists+usrp-users@lfdr.de>; Wed,  2 Sep 2020 20:23:42 +0200 (CEST)
Received: from [::1] (port=45852 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDXQ4-0006wT-Ka; Wed, 02 Sep 2020 14:23:40 -0400
Received: from mail-eopbgr1390129.outbound.protection.outlook.com
 ([40.107.139.129]:37415 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1kDXPz-0006nU-Lf
 for usrp-users@lists.ettus.com; Wed, 02 Sep 2020 14:23:36 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=id20UD/aRHJNZ7ahrOy3O+aOdq8xDM3bw+V8Igdu/brtpJ78TnrYYD2uQWj7+L8SeIhCX3KGdzyuOeqnXTsjS3Se4pTMPbZoT3Fklry/5nws4NGfpnT4yfMTFcj0PgtxaWo9Uet+rL3M9j+3ijxMxHBBdkxVVVUQKyKoP6Vb3zhSeDMdoNorhHuA/xwpwQHm/DOQAyQqYcGsSOdFr/0aOZnqtp2wT2ZLdoF3EIacaWID+0fzfqXfjVYqTHvKcS1DWv2HFPVP54D0RF6V2LOPA/t8wh3jg22TO2Ip7FboPiv4yfXAnRC/u6/KLOo9zoGZCEluA8gBwTZ7hJpdaKSipw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8oDv3QbmgabgT2PRXsoef+Kw8KIWEiO3avg3euKmqc=;
 b=E8AWCazWswnBJkOTdNdQBw1Fp/VtpoPk8mNPdxtoEbiE23WP2p5OOO3DQ1uZhKCoJE9OZ8asMXjrv+jjhqG6vNaPwZaLxu/wZuK8vYGG42Y85YFwlxvwecAsHkhKOxETDBA/4PWhqtiypiwby0kYeTv0+jtugxsL/b2iFzz7+TuAooUG7QTX4Ngs1K5CDC94z3V0t4xK0NIZ5yC+amSl/wnKp48FWqvqnleSZl1Ymx0xoBq2Wg7LbY373nuLYS2M1rm42pk6fXJj9cQDTboJJulSOEv+6WOIYXzLT625VirxuYGrzz9h59uqIlN17zvyGY7R4Fpbr4lCa3yIzJvp8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8oDv3QbmgabgT2PRXsoef+Kw8KIWEiO3avg3euKmqc=;
 b=f1Wb1WYcDyIm7vA12bHm/I42nBnMTgizbB+mWmKkTCMt9DE5pa44FNT9y5k7LeC8dxe8W4cEN0mDIzfZqBlsWoOXP7u30EnKZ4ClNGeoAKTPkeHQZn7YUiBJHS5aLVDFXp1w+qtVt0GtVsExlPlLbGa2eBEIR0zEKbSDdtLPBr0=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB3451.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:76::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.21; Wed, 2 Sep
 2020 18:22:51 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5d37:8959:e500:82fe]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5d37:8959:e500:82fe%5]) with mapi id 15.20.3348.015; Wed, 2 Sep 2020
 18:22:51 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Incorrect data from usrp 2955
Thread-Index: AQHWcybNOTailyD99kmbADMt8WJI1Kk5hQWAgACW7GuAANQ9gIAAAHiPgAACmfWAAAZ4gIAAADeNgAADg4CAALwlEoAGybengAA7bICAAAG2Z4ATBQhQ
Date: Wed, 2 Sep 2020 18:22:51 +0000
Message-ID: <MA1PR01MB25888C4508C701B88B04C267902F0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F382FA9.60900@gmail.com>
 <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39604D.6030303@gmail.com>,
 <MA1PR01MB2588632D2A24063E8E4E1F22905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <MA1PR01MB2588B859845EA8B4E4FB4477905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39684D.1060702@gmail.com>
 <MA1PR01MB25882A435C92F1F1BBE5DF2E905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F396B6D.9080001@gmail.com>,
 <MA1PR01MB2588A12BD3A661DE22EABC31905F0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <MA1PR01MB25880E3EA627B040438A1F57905B0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F3FECCD.7020402@gmail.com>,
 <MA1PR01MB2588AD9F00DE334378574F15905B0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2588AD9F00DE334378574F15905B0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.137.139]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7e7365b-36dd-4c72-6fc3-08d84f6d3412
x-ms-traffictypediagnostic: MA1PR01MB3451:
x-microsoft-antispam-prvs: <MA1PR01MB3451DDA6EB644B37DF456010902F0@MA1PR01MB3451.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jyWwY/H5edn3+JvDjeNrnhL9c5IkBeCXVLFSrLDWsSyrhIC7umsOS1Qt4RqFGLolRZHP0oNt7i5JmAXJ5MdJnE4xpajJVa52f4yYqV5feioGzCLTuzNvJ1ICib7gAQmwyw9GRGHlQMH3x1Q5q2TeOvkgbjD2MuF7GlnGbrV8MBYLwoQ5dECQeIQ2D9eSobdcp7KfP6+wsyYFTPQkXhZWe6MLlbhfiC3mAxE0BJ9Yh43xjwgWrDrO+YfhfAx0n7p0RPppaHzrOm5xpCdH2fM9DApkK8nlhvBU4FYceEMSxrlUc343t7yGKhQ5w5wvdQKYNJEVcmkcHNHWq6p3y4qKApyYEwOVEWJk8R0mhzR1qtXX4107oJixbcA8mGHfMs69Y2TZQQVesI/VfVm2E6+EMQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(396003)(39840400004)(346002)(136003)(376002)(366004)(86362001)(19627405001)(66476007)(45080400002)(52536014)(5660300002)(9686003)(166002)(66946007)(76116006)(33656002)(55016002)(83380400001)(2906002)(6506007)(26005)(110136005)(316002)(8676002)(478600001)(53546011)(7696005)(186003)(64756008)(8936002)(66446008)(71200400001)(66556008)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: QOzqnk7HF6DEQI7ksScm3JGnx050cg/CnBlPw4OYjrHxl9GCDNqB94bUBp96SST46L5uwfqhLoYHvjptrD8A4ySFPT7PNzw2DC2OSgOJCEz2ispzueTb491vXsti7xAtyAvYxAx3q4gqC4WijsBX1FwyqlkIBJpIFBOT4yJTItq+/hI9cLmfrRsazhZtKJ355/nYQvZFhNKBu535VvqMIxxQtb5/guZeFhwNPmLAe5yLAq8WcM+7ivkNR9WHWjWRXWkviUODszHBxOZU4OExoVCWvafDpod4zIbVJqLJTJANH7cyfyf0pCk8Ht+1EmnSWNiw0hJilGdvXqb7HhEsKyCsZ9RDvl7grQneX/TSgaf16MSlCfRou3MmYWEG3U+oL1hAGnlo/tsdmiQWXvHY243hMeMkyERXps2jsGffH+S9zFsPl856ko0AT5WUPv+gx2J2lo+qpZxnmxPNwjhvyaXLZpiDTOgAQ8jCTn8hqSgyVkqa5HZneIaNuWigK+EvOzu3qJVUf8hl+c50u8oJ0C6zjU8NStOpJiP7kKhzskF8bnRPOWgCU1dRmkQ+wrmwWYWX1CflCK8QExdrMIcemp1Cqgi3LTszkYLtRt8+gHll1DiIC+sderrHqTstt6GJfp9wn71IxaFfWIyA/hKtUQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b7e7365b-36dd-4c72-6fc3-08d84f6d3412
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2020 18:22:51.5668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UAvD9BBt+54oCE2bwNEFtP1UeVRiRF+8CW/TW5fP73/mpIfPaELALf8tH+D1cuA9bIk7CSPHChTFAgdhgyOuYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB3451
Subject: Re: [USRP-users] Incorrect data from usrp 2955
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
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============8927173919654578494=="
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

--===============8927173919654578494==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB25888C4508C701B88B04C267902F0MA1PR01MB2588INDP_"

--_000_MA1PR01MB25888C4508C701B88B04C267902F0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Just an update. One cable was faulty and not the usrp.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Koyel Das (Vehere) <koyel.das@vehere.com>
Sent: Friday, August 21, 2020 9:26:16 PM
To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

Ok thanks. I will then generate a tone and see the amplitude  and if any di=
stortion on the received signal.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Friday, August 21, 2020 9:18:29 PM
To: Koyel Das (Vehere) <koyel.das@vehere.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/21/2020 08:47 AM, Koyel Das (Vehere) wrote:
Hi Marcus,

In order to see if single channel of usrp is giving correct phase, I will t=
ransmit a qpsk signal using one usrp and receive using the usrp under test.=
 The qpsk signal should appear same in receiver as in transmitter and that =
will confirm if single channel is working fine. Attached is the flowgraph f=
or qpsk signal generator. I have a doubt that =93Random Source=94 block is =
not accepting any datatype other than =93byte=94 else the connection is get=
ting red and =93USRP Sink=94 is not accepting anything other than =93comple=
x float=94. In between is the =93Constellation Modulator=94 block. The conn=
ections are showing compatible (please refer the attached flowgraph). Perha=
ps "Constellation Modulator" is sending out data as "complex float" to "USR=
P Sink" otherwise how can the two blocks be compatible?

So can I expect usrp sink will get correct data and not deform the data out=
 of =93Constellation Modulator=94 to some incorrect data, since "Random Sou=
rce" is sending "Byte" and "USRP Sink" is receiving "complex float"? Means =
is the flowgraph correct taking all datatypes into consideration?

I am also attaching the grc files of transmitter and receiver.

Regards,
Koyel

Neither of your attached .grc files have anything useful in them...

When I said "check sanity of individual channels", I wasn't concerned with =
phase--only that they were grossly "sane".  When you inject
  a signal in to them, do the resulting signals have the correct attributes=
?  Is the SNR roughly correct, etc?


Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com><mailto:usrp-users-bou=
nces@lists.ettus.com> on behalf of Koyel Das (Vehere) via USRP-users <usrp-=
users@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Sent: Monday, August 17, 2020 10:07:05 AM
To: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.co=
m>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

Ok Marcus I will try to figure out if individual channels are working fine.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Sunday, August 16, 2020 10:52 PM
To: Koyel Das (Vehere); usrp-users@lists.ettus.com<mailto:usrp-users@lists.=
ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/16/2020 01:15 PM, Koyel Das (Vehere) wrote:
I am not observing one individual channel but phase difference between two =
channels. I very well know individual channel would show random phases but =
not the phase difference when same signal is injected in two channels. I ho=
pe you are aware that phase difference =3D 2pi/lambda* path_difference. Pat=
h difference is constant as that=92s the difference between two paths of tw=
o daughterboards and hence this phase difference is constant. Remember same=
 signal is injected so initial phases would be same for two channels and on=
ly the difference in the signal path lengths bring the difference which is =
constant

Get Outlook for iOS<https://aka.ms/o0ukef>
Yes, I fully understand that.  I'm simply suggesting some simple diagnostic=
s to determine whether, as individual channels, the receivers are
  working correctly.


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Sunday, August 16, 2020 10:39 PM
To: Koyel Das (Vehere); usrp-users@lists.ettus.com<mailto:usrp-users@lists.=
ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/16/2020 12:46 PM, Koyel Das (Vehere) wrote:
The measurement is not initial phase but the phase difference between two c=
hannels

Get Outlook for iOS<https://aka.ms/o0ukef>
Are you using an external reference, or using the internal clock in the X31=
0?

If you observe an individual channel, is it "sane" ?  That is, apparently o=
n-frequency, and with correct amplitudes and low distortion?


________________________________
From: Koyel Das (Vehere) <koyel.das@vehere.com><mailto:koyel.das@vehere.com=
>
Sent: Sunday, August 16, 2020 10:15:48 PM
To: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.co=
m>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

the phase difference between two channels of USRP as a function of frequenc=
y and time,  when measured by splitting the same signal and feeding two cha=
nnels of usrp, are wandering around wrt one another which was not happening=
 before. I had given demo more than 30 times based on this principle and te=
sted previously more than 50 times and I got correct result every time. Now=
 only suddenly it started happening. The frequency is 2.4 GHz and bandwidth=
 I tried from 1 MHz to 100 MHz. Previously the whole bandwidth was showing =
similar values but then suddenly started behaving abnormally giving near to=
 correct result sometimes and sometimes junk.

Regards,
Koyel
Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Sunday, August 16, 2020 10:05 PM
To: Koyel Das (Vehere); usrp-users@lists.ettus.com<mailto:usrp-users@lists.=
ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/15/2020 11:59 PM, Koyel Das (Vehere) wrote:
No it doesn=92t look better again after reducing gain. Sometimes the phase =
differences are closeby but not so same as we were getting before and most =
of the times they are totally incorrect. Strength of the signal when we tri=
ed with maximum gain was near -40 dbm.

Regards,
Koyel
To clarify some things.

(A) The phase errors are just the initial phases--they don't wander around =
with respect to one another during a run?
(B) What frequency range?



Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com><mailto:usrp-users-bou=
nces@lists.ettus.com> on behalf of Marcus D. Leech via USRP-users <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Sent: Sunday, August 16, 2020 12:25:37 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/15/2020 01:16 PM, Koyel Das (Vehere) via USRP-users wrote:
Hi,

We are using USRP 2955. Something has gone wrong. Before we were getting co=
nstant phase difference across channels for limited bandwidth and with time=
 when we split single antenna signal using splitter and fed two channels of=
 USRP but now it is not doing so. This happened on Friday that after gettin=
g a series of correct results : constant phase difference across channels b=
y feeding signal using splitter as mentioned above, we suddenly started to =
receive wrong data: random phase  across channels and with time using the s=
ame setup with splitter. The thing we did was setting gain to near maximum =
and receiving 100 MHz sample rate. But I don't think amplifier has damaged =
because in this usrp we have four independent channels and when we connecte=
d the splitter to unused channels then also we got wrong data. What can go =
wrong that USRP is streaming data but phases are wrong? What do you think? =
Please let me know.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


Does it look better again when you reduce the gain?

What is the magnitude of the signals going to the RX ports?







--_000_MA1PR01MB25888C4508C701B88B04C267902F0MA1PR01MB2588INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi Marcus,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Just an update. One cable was faulty and not the&nbsp;usrp=
.&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Koyel Das (Vehere) &l=
t;koyel.das@vehere.com&gt;<br>
<b>Sent:</b> Friday, August 21, 2020 9:26:16 PM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Ok thanks. I will then generate a tone and see the amplitude &nbsp;and=
 if any distortion on the received signal.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"x_ms-outlook-ios-signature" id=3D"x_ms-outlook-mobile-signatu=
re">Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt=
;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Friday, August 21, 2020 9:18:29 PM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_moz-cite-prefix">On 08/21/2020 08:47 AM, Koyel Das (Veher=
e) wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<div>
<div>Hi Marcus,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">In order to see if single channel of usrp is giving correc=
t phase, I will transmit a qpsk signal using one usrp and receive using the=
 usrp under test. The qpsk signal should appear same in receiver as in tran=
smitter and that will confirm if single
 channel is working fine. Attached is the flowgraph for qpsk signal generat=
or. I have a doubt that =93Random Source=94 block is not accepting any data=
type other than =93byte=94 else the connection is getting red and =93USRP S=
ink=94 is not accepting anything other than
 =93complex float=94. In between is the =93Constellation Modulator=94 block=
.&nbsp;The connections are showing compatible (please refer the attached fl=
owgraph). Perhaps &quot;Constellation Modulator&quot; is sending out data a=
s &quot;complex float&quot; to &quot;USRP Sink&quot; otherwise how can the
 two blocks be compatible?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">So can I expect usrp sink will get correct data and not de=
form the data out of =93Constellation Modulator=94 to some incorrect data, =
since &quot;Random Source&quot; is sending &quot;Byte&quot; and &quot;USRP =
Sink&quot; is receiving &quot;complex float&quot;? Means is the flowgraph c=
orrect
 taking all datatypes into consideration?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am also attaching the grc files of transmitter and recei=
ver.&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
</div>
</div>
</blockquote>
Neither of your attached .grc files have anything useful in them...<br>
<br>
When I said &quot;check sanity of individual channels&quot;, I wasn't conce=
rned with phase--only that they were grossly &quot;sane&quot;.&nbsp; When y=
ou inject<br>
&nbsp; a signal in to them, do the resulting signals have the correct attri=
butes?&nbsp; Is the SNR roughly correct, etc?<br>
<br>
<br>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div></div>
<div class=3D"x_x_ms-outlook-ios-signature" id=3D"x_x_ms-outlook-mobile-sig=
nature">Get
<a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> USRP-users
<a class=3D"x_x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-users-bounces@li=
sts.ettus.com">
&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of Koyel Das (Vehe=
re) via USRP-users
<a class=3D"x_x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@lists.ettu=
s.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Sent:</b> Monday, August 17, 2020 10:07:05 AM<br>
<b>To:</b> Marcus D. Leech <a class=3D"x_x_moz-txt-link-rfc2396E" href=3D"m=
ailto:patchvonbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a>; <a class=3D"x_x_moz-txt-link-abbreviat=
ed" href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_x_moz-txt-link-rfc2396E" href=
=3D"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>
<div>Ok Marcus I will try to figure out if individual channels are working =
fine.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"x_x_x_ms-outlook-ios-signature" id=3D"x_x_x_ms-outlook-mobile=
-signature">
Get <a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
<div id=3D"x_x_x_id-605e9ec6-33cb-4fce-8630-166096f685f2" class=3D"x_x_x_ms=
-outlook-mobile-reference-message">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%; font-size:12p=
t; color:rgb(0,0,0)">
<div id=3D"x_x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri,
                sans-serif"><b>From:</b> Marcus D. Leech
<a class=3D"x_x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.c=
om">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 10:52 PM<br>
<b>To:</b> Koyel Das (Vehere); <a class=3D"x_x_moz-txt-link-abbreviated" hr=
ef=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3DWindows-1252">
<div class=3D"x_x_x_moz-cite-prefix">On 08/16/2020 01:15 PM, Koyel Das (Veh=
ere) wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div>I am not observing one individual channel but phase difference between=
 two channels. I very well know individual channel would show random phases=
 but not the phase difference when same signal is injected in two channels.=
 I hope you are aware that phase
 difference =3D 2pi/lambda* path_difference. Path difference is constant as=
 that=92s the difference between two paths of two daughterboards and hence =
this phase difference is constant. Remember same signal is injected so init=
ial phases would be same for two channels
 and only the difference in the signal path lengths bring the difference wh=
ich is constant&nbsp;</div>
<div><br>
</div>
<div class=3D"x_x_x_ms-outlook-ios-signature" id=3D"x_x_x_ms-outlook-mobile=
-signature">
Get <a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
</div>
</blockquote>
Yes, I fully understand that.&nbsp; I'm simply suggesting some simple diagn=
ostics to determine whether, as individual channels, the receivers are<br>
&nbsp; working correctly.<br>
<br>
<br>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div id=3D"x_x_x_id-add88a81-197d-43fc-a088-cb38d9d34fbf" class=3D"x_x_x_ms=
-outlook-mobile-reference-message">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%; font-size:12p=
t; color:rgb(0,0,0)">
<div id=3D"x_x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-ser=
if"><b>From:</b> Marcus D. Leech
<a class=3D"x_x_x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail=
.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 10:39 PM<br>
<b>To:</b> Koyel Das (Vehere); <a class=3D"x_x_x_moz-txt-link-abbreviated" =
href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3DWindows-1252">
<div class=3D"x_x_x_moz-cite-prefix">On 08/16/2020 12:46 PM, Koyel Das (Veh=
ere) wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">The measurement is not initial phase but the phase differe=
nce between two channels&nbsp;</div>
<div><br>
</div>
<div class=3D"x_x_x_ms-outlook-ios-signature" id=3D"x_x_x_ms-outlook-mobile=
-signature">
Get <a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
</div>
</blockquote>
Are you using an external reference, or using the internal clock in the X31=
0?<br>
<br>
If you observe an individual channel, is it &quot;sane&quot; ?&nbsp; That i=
s, apparently on-frequency, and with correct amplitudes and low distortion?=
<br>
<br>
<br>
<blockquote type=3D"cite">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D=
"Calibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> Koyel Das (Vehe=
re)
<a class=3D"x_x_x_moz-txt-link-rfc2396E" href=3D"mailto:koyel.das@vehere.co=
m">&lt;koyel.das@vehere.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 10:15:48 PM<br>
<b>To:</b> Marcus D. Leech <a class=3D"x_x_x_moz-txt-link-rfc2396E" href=3D=
"mailto:patchvonbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a>; <a class=3D"x_x_x_moz-txt-link-abbrevi=
ated" href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_x_x_moz-txt-link-rfc2396E" hre=
f=3D"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"font-size:inherit">the phase difference bet=
ween two channels of USRP as a function of frequency and time,&nbsp; when m=
easured by splitting the same signal and feeding two channels of usrp,&nbsp=
;are wandering around wrt one another which was
 not happening before. I had given demo more than 30 times based on this pr=
inciple and tested previously more than 50 times and I got correct result e=
very time. Now only suddenly it started happening. The frequency is 2.4 GHz=
 and bandwidth I tried from 1 MHz
 to 100 MHz. Previously the whole bandwidth was showing similar values but =
then suddenly started behaving abnormally giving near to correct result som=
etimes and sometimes junk.</span><br>
</div>
<div dir=3D"ltr"><span style=3D"font-size:inherit"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"font-size:inherit">Regards,</span></div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div class=3D"x_x_x_x_ms-outlook-ios-signature" id=3D"x_x_x_x_ms-outlook-mo=
bile-signature">
Get <a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
<div id=3D"x_x_x_x_id-d2ed923a-74ce-4157-8a68-f15a06251364" class=3D"x_x_x_=
x_ms-outlook-mobile-reference-message">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%; font-size:12p=
t; color:rgb(0,0,0)">
<div id=3D"x_x_x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-s=
erif"><b>From:</b> Marcus D. Leech
<a class=3D"x_x_x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail=
.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 10:05 PM<br>
<b>To:</b> Koyel Das (Vehere); <a class=3D"x_x_x_moz-txt-link-abbreviated" =
href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html;
                            charset=3DWindows-1252">
<div class=3D"x_x_x_x_moz-cite-prefix">On 08/15/2020 11:59 PM, Koyel Das (V=
ehere) wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div>No it doesn=92t look better again after reducing gain. Sometimes the p=
hase differences are closeby but not so same as we were getting before and =
most of the times they are totally incorrect. Strength of the signal when w=
e tried with maximum gain was near
 -40 dbm.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel <br>
</div>
</div>
</div>
</blockquote>
To clarify some things.<br>
<br>
(A) The phase errors are just the initial phases--they don't wander around =
with respect to one another during a run?<br>
(B) What frequency range?<br>
<br>
<br>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div><br>
</div>
<div class=3D"x_x_x_x_ms-outlook-ios-signature" id=3D"x_x_x_x_ms-outlook-mo=
bile-signature">
Get <a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_x_x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> USRP-users
<a class=3D"x_x_x_x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-users-bounce=
s@lists.ettus.com">
&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of Marcus D. Leech=
 via USRP-users
<a class=3D"x_x_x_x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@lists.=
ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 12:25:37 AM<br>
<b>To:</b> <a class=3D"x_x_x_x_moz-txt-link-abbreviated" href=3D"mailto:usr=
p-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_x_x_x_moz-txt-link-rfc2396E" h=
ref=3D"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_x_x_x_moz-cite-prefix">On 08/15/2020 01:16 PM, Koyel Das =
(Vehere) via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div><span>Hi,<br>
</span>
<div dir=3D"ltr"><br>
</div>
<span>We are using USRP 2955. Something has gone wrong. Before we were gett=
ing constant phase difference across channels for limited bandwidth&nbsp;an=
d with time when we split single antenna signal using splitter and fed two =
channels of USRP but now it is not doing
 so. This happened on Friday that after getting a series of correct results=
 : constant phase difference across channels by feeding signal&nbsp;using s=
plitter as mentioned above,&nbsp;we suddenly started to receive wrong data:=
 random phase &nbsp;across channels and with time
 using the same setup with splitter.&nbsp;The thing we did was setting gain=
 to near maximum and receiving 100 MHz sample rate. But I don't think ampli=
fier has damaged because in this usrp we have four independent channels and=
 when we connected the splitter to unused
 channels then also we got wrong data. What can go wrong that USRP is strea=
ming data but phases are wrong? What do you think? Please let me know.</spa=
n><br>
</div>
<div dir=3D"ltr"><span><br>
</span></div>
<div dir=3D"ltr"><span>Regards,</span></div>
<div dir=3D"ltr"><span>Koyel&nbsp;</span></div>
<div><br>
</div>
<div class=3D"x_x_x_x_x_ms-outlook-ios-signature" id=3D"x_x_x_x_x_ms-outloo=
k-mobile-signature">
Get <a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
</div>
<br>
<fieldset class=3D"x_x_x_x_x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________
USRP-users mailing list
<a class=3D"x_x_x_x_x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@l=
ists.ettus.com">USRP-users@lists.ettus.com</a>
<a class=3D"x_x_x_x_x_moz-txt-link-freetext" href=3D"http://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a>
</pre>
</blockquote>
Does it look better again when you reduce the gain?<br>
<br>
What is the magnitude of the signals going to the RX ports?<br>
<br>
<br>
</div>
</blockquote>
<br>
</div>
</div>
</div>
</blockquote>
<br>
</div>
</div>
</blockquote>
<br>
</div>
</div>
</div>
</blockquote>
<br>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB25888C4508C701B88B04C267902F0MA1PR01MB2588INDP_--


--===============8927173919654578494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8927173919654578494==--

