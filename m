Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4E347B077
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 16:39:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B430B3848BD
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 10:39:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="hkqXco6B";
	dkim-atps=neutral
Received: from sonic307-2.consmr.mail.bf2.yahoo.com (sonic307-2.consmr.mail.bf2.yahoo.com [74.6.134.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 00338383FF0
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 10:38:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1640014700; bh=3bEPFUCULxDdESQfABCQeeOkJ4wiiUV1cwcHy1q8qGM=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=hkqXco6BVZXBn8/Yk/7r3RBY0hxgEGBc2wgx4mB1wZ0Ts2zwuLzycJ+Na9bxEQl3XdOfAOS/GA8A/aOJNCWJNAcV0msQEEqWo4P/wG35wFfc8S59A1EKD7lB4XOG0DqokQqwsLmb4+9yUm78yjKiLynjHnLhOaI30PVJ8FGEBKmhVQOZsWHBjAB6jXYIq068TdJqcvq9aWrLSv+dIzBAartxOT578rlFgOP2gfx5M9JwAC9JG0hjMv7lYXw6CNHdFCFLsnCyTpsy7CGTmg/R3fbtAeEcl2Wf55kvGZKEDRw32kyM9tEbA8qF484cU2p9ih7HM45pj41pI4H4mT+EDQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1640014700; bh=m1EFeS5vqYmeGLY3YZYamzRVa1GjSM3dOEedyN+QuNi=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=HrUxoQVWwxvWKa5BDPwKLy4Vnio1mUxyzk0+uebehlyxKQSr1cFQC6xafdw0X3m+I2hnqGAYLiDE3nRhZiA1hEFvzfpcl+BkfKIL5agm5ddzFfpryq62G0lNuoYKCJNRjAjtza+hMwTg/52Lm+OutlNbionfy3M6PTJK07in3z+fWeayQE5UtFUgNjL05d0YRyDpx3zk+4dQzXugpU3ACBChDHy5cZAleyA8rxJ1z3YJfIfeks6wfMmjv30IQERCY5K3/vpCLr4JfqEpAgHVwNl/dq8l4Y3QGKCY0isaTkyPKB7of7iXK3xuRDdixDVUOeE5+HpsTpkPYtxXXSaOUg==
X-YMail-OSG: o8DNFJUVM1mw7LgRxS9VblJfkiagYBvBssej3nDZ.tcYH6PI6FFMMPGmLlYv8kO
 nvVLR28WK.8i1ZVqAha91.rpbIPfM4IJPrUOeUJ4xi8zGzrqwEbEb6QMxv4rZUOGLzG0E6Tze8XD
 vQ6gts2qjAZM23WLOzQX58S3BIBcnbVx8cBDKlYJW1YS3Lx73I6W3oW4fE1LWPjp8K7y3zbzNH3b
 P_DRDO_Axrk_dRQqGItKRLdZEFCwWmBlr7QaWnA79kMS1SiNLzJz4itjGjuvDmZADPhDD.QtGaB4
 SRPr.6bPxJTMeAb5B00wUTxplANfXY8S5XLW75_66LRWLxGHDrzUiUoviIux5ekAMijlUW5TnLhY
 EBfJb2hxT8bidgFOjfdelR8eqyHqaX9jprmOW5wg2FwWwTpVP_1w8iPoxBm45WKfrfEkyXXuQeke
 RDpqxGVfYUWbBuqLbfB4KLln_0DdnvFBBu.FfcuD67ZA2QjKDzmLg7tkS6uPaxIoILwxIvMJpVaA
 H1vPdiG_dxpyzV7l.9RQtZwLQ5YqI.f70Z6fVB.PHP0g2jJFFvGTv.BLTmALDOz8Gvwmtbtyt6La
 fEL0KY1j5rYZNZCTPh9nUIbCSMa1zcgDM6DtblSk3vEKDH_tgxSfavroDwJ4nB0BlIPp2WL2cKx8
 BLpGLvoMOjYKbUX.7CiInGAGDX_duZNw0H6q.K7uzF.1AAWaq2IqLFcDFUdyUqe.5Ld_VddWEpss
 ArAv3qsZwSPNhgvovqURc1V__GJ89E.Cmt5voZXXYa0Oj8fnya2ZqzzCDqw0VaIdi0R0GVgeqbBp
 XyUpkIYjXhmWhYrjYTkkmdObhSizbtWa2V2u4gKfF7t2N.XmhGmnlEQNUwOEX.EV0K979LBYswzC
 0OFPlgqD6X.ca6EWoPuZ5IV6KUTcs0CYrf607hJXJXI79B_s2h20HcyxrZTE7qc4.NrDWw6UuDQv
 zxTwgfLbXz0lXquVt6n1_kAjplGs36F58sjoQ4Vte9PmRop1PxmBppeOjsQUK0.JIDSNCCxwjH06
 powgurTXcwtgEwS7a2uSXgmIMKYxdDQuROG6rLEdETYf3GezpSiKTADnqoHxnweFXTLLntl8hIkU
 fEeqdRqEu0LkQFoxrAZ12T0sqgpTaaQRlub7jqBff0ObsjMzm7DiESrNvy4zq5oNZoZhHVDb8A_v
 E0pJVu8DpfU5b5YC0eBK9qwwz86dXjp8TbkbudItrZ0IAXNJVlVnpf8ETyLK5.oUWZaXvEIYtwNl
 7F_1uC.8opSXRCV0_shWeMqczIB5yhWY7DvsMRisD2TMDg5jlBt_W7L6VS53y40wAUEI2JfhgB6y
 HBKHq4deYsTxSzXwoC7moUFFGK4KgsEe5cN9WWFqFtq_LgP1dV.j0OmiVv.hYF5cHIZ7T8oDos2H
 t02HM5YJzDbdgJ452JVyJQOVEtTB.sVPvOS57p8cx.0RRs6PmUNapw0HeaW3QV_H1IAN7Pi.RcIO
 uMdNFSoy9VPDgRrRmbS6IZUv5coAkBJcOiK7wrwVdzXKbHiOqrlR4l.QGev8ngf1UNFW1rg3HnI.
 r3cQQ8qoW2aImFkig7HlkSddet7849nIQGMUSpufa7sBcsCAXwtiw5U_f.w0VVnNaJkZBY4J4Gze
 Abwf_t_JYtg.BbFdnGNryT0R4uryk6AfmHyHZSmM8KltuQg9zjmVTSX3Q4vekfqs3ILWd.rTzz_N
 JfF91I9bhRXGYOwvL6j78CdYJpl7TWfN3mOhWz.h8Ktmk8dEiagiLzTHrnjwoWst5sAzbcnTbDCL
 jb3Uk.i4jhM_BiX_PzzKP..9U.z2_ib8hvnASByJv20xG0_eZBozp6_suMJOAnl7km1873xubYA2
 FtHGOsypY4DRlRmIzQWzEXvSeIb63JevHMmCxhPqeZ5J3LteDTZNsC1_XjaQJ8oBNwBskPnhyibF
 OfXM5zoYSi4Bk5dRqCklNR_BG1rg6ImcETHW_Ucw0p_UmuNH_EgZL1ugQNUiNA0TaBFQQ_Jo8lto
 1Iz3fHh49UFUQzCYyjj2yXJDzRgUCuIwttTQJUMgPounBImRToejV9wY_JLdiQ5QrgrvwnuNyJzI
 y0JCqsXi3QDhEGLiKfrrNIWUZpUb3ixzpC4RyOVXM3BfcYDIhaohLKgLlqjOFTtnBg_y5xIlWSNk
 9DjB0REIpr8shG7dF7io.j7A1RlhnFiIb6uWpbwFo0kYiJE0iHIR38BttKzEGQfpi3i.RUgKb3kB
 lOiR7W6gL7ZVb6GlriYRxZyY-
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.bf2.yahoo.com with HTTP; Mon, 20 Dec 2021 15:38:20 +0000
Date: Mon, 20 Dec 2021 15:38:12 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	=?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>,
	Jim Palladino <jim@gardettoengineering.com>
Message-ID: <921829071.1909465.1640014692296@mail.yahoo.com>
In-Reply-To: <MN2PR12MB3312017026FEDC5C5E5D5F46B87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com> <692f8895-bd3a-5b14-df32-122893d504f3@ettus.com> <39042870.1585115.1639996294719@mail.yahoo.com> <MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9@MN2PR12MB3312.namprd12.prod.outlook.com> <24577536.1842643.1640004636102@mail.yahoo.com> <MN2PR12MB3312017026FEDC5C5E5D5F46B87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19415 YMailNorrin
Message-ID-Hash: NSIBWZZIJMSS473GUBGTMCTAI6FYJUUH
X-Message-ID-Hash: NSIBWZZIJMSS473GUBGTMCTAI6FYJUUH
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Time different between X310 and N310 USRPs using UHD4.1.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NSIBWZZIJMSS473GUBGTMCTAI6FYJUUH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6099985871230248096=="

--===============6099985871230248096==
Content-Type: multipart/alternative;
	boundary="----=_Part_1909464_538432591.1640014692292"

------=_Part_1909464_538432591.1640014692292
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Jim,
Thanks for your explanation. I got it. Inverter may be a quick solution; ju=
st the duty cycle will become 80% after conversion. I will definitely try i=
t. If not, I will rebuild X310 FPGA as you suggested.
Have a Merry Christmas and happy New Year,
Hongwei


    On Monday, 20 December 2021, 13:18:23 GMT, Jim Palladino <jim@gardettoe=
ngineering.com> wrote: =20
=20
 Hongwei,
If this is your problem, then "get_time_last_pps()" should report the same =
time between the X310 and N320, unless you happen to ask it (or if you set =
it) during that 200ms window between the 1pps rising and falling edges.
However, like you said, absolute time will be off by 200ms. So, since the f=
alling edge occurs 200ms after the rising edge of the 1pps pulse, the X310 =
will not start at 0s until 200ms after the N320 (or I assume N310). So, if =
you issue the "get_time_now()" command at the same time to both devices, th=
e X310 will be 200ms behind the N320.
To see if this is the issue, you could try to rebuild the X310 FPGA image w=
ith the fix, or you could try inverting the Octoclock output if you have an=
 inverter (to see if the offset shifts the other way). To help us confirm t=
hat this was our issue, we used a function generator instead of the Octoclo=
ck to generate the 1pps to both devices. Then, we varied the duty cycle of =
the 1pps pulse and saw that the time difference between the two devices tra=
cked the duty cycle (the time that the 1pps pulse is high per second).
Also, the way we were setting the time, it actually looked like we were off=
 by 800ms because we'd tell the USRPs to set their time to a specific value=
 after the next pps. But, we'd issue this command right after the rising ed=
ge of the 1PPS pulse. So, this would set the N320 to the time we specified =
1 second later (when the next rising edge occurs). However, the X310 would =
see the falling edge occur 200ms after issuing this command. So, it would s=
et it's time then. So, the way we were doing it, the X310 was actually gett=
ing set 800ms earlier than the N320.
Hope this helps.Jim
From: zhou <hwzhou@yahoo.com>
Sent: Monday, December 20, 2021 7:50 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=C3=BC=
ller <marcus.mueller@ettus.com>; Jim Palladino <jim@gardettoengineering.com=
>
Subject: Re: [USRP-users] Time different between X310 and N310 USRPs using =
UHD4.1.0=C2=A0Hi Jim,
Thank you so much for your quick reply. Your finding is very interesting an=
d I believe it is very related to my problem.After some thinking, I am stil=
l having some confusion:Because N320 and X310 USRPs are using different pul=
se edges, their time 0s are actually different by 200ms in universal time, =
but their internal timers should be similar. When querying their time respe=
ctively, we should get similar time - the responses are their internal time=
s. But I am seeing 200ms difference.
Could you please give some comments on this?
Thanks a lot,
Hongwei


On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladino <jim@gardettoengin=
eering.com> wrote:

Hi,
We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS pulse from the Octoclock stays high for a=
bout 200ms, so I'm guessing this is the issue you are seeing.=C2=A0
We ended up making our own custom FPGA build for the X310. We modified the =
file:
"uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v".

Originally, the PPS edge detection looked like:
pps_edge<=3D pps_del & ~pps;

We changed it to:pps_edge<=3D ~pps_del & pps;

It would be good if this could get "fixed" in UHD, as it would be nice to n=
ot have to maintain a custom FPGA build. I'm not sure what effect this chan=
ge will have on other USRP FPGA builds that use the same timekeeper.v file.
In any case, I'm guessing this is your problem.
Jim




From: zhou via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, December 20, 2021 5:31 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=C3=BC=
ller <marcus.mueller@ettus.com>
Subject: [USRP-users] Time different between X310 and N310 USRPs using UHD4=
.1.0=C2=A0Hi,
I am using mixed types of USRPs in my applications, namely, X310 and N310. =
The signals are timed. I find 0.2-second time difference between these two =
USRPs.Details:Each USRP is controlled by a Linux server;
The same Linux version in all PCs;All USRPs are connected to the same Octoc=
lock;
UHD version is 4.1.0 in Linux servers;All Linux servers are connected to a =
control PC which is the client;The sampling rates are different: 184.32MHz =
in X310 USRP and 245.76MHz in N310 USRP
Control PC sends command to set time 0 after PPS in all USRPs, then query t=
he time in each of them.The time difference between USRPs of the same type =
is small, ~2ms, but the time difference between different types of USRP is =
much bigger, ~0.2s.Times should be impacted by sampling rate; when setting =
timers, no signal is transmitted.
2ms time difference between USRPs could be due to network delay; 200ms can'=
t be because of network. It seems to be due to HW in USRPs. Does this mean =
that X310 and N310 are not synchronized?
Thanks for any comment,
Hongwei


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1909464_538432591.1640014692292
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp9ad5d71yahoo-style-wrap" style=3D=
"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">=
<div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Jim,</div><div dir=3D"ltr=
" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Th=
anks for your explanation. I got it. Inverter may be a quick solution; just=
 the duty cycle will become 80% after conversion. I will definitely try it.=
 If not, I will rebuild X310 FPGA as you suggested.</div><div dir=3D"ltr" d=
ata-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Have =
a Merry Christmas and happy New Year,</div><div dir=3D"ltr" data-setdir=3D"=
false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Hongwei</div><div d=
ir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"=
false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydpf5f19502yahoo_quoted_0502683226" class=3D"ydpf5=
f19502yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 20 December 2021, 13:18:23 GMT, Jim Palladin=
o &lt;jim@gardettoengineering.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpf5f19502yiv1424726215"><div dir=3D"ltr">
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
Hongwei,</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
If this is your problem, then "get_time_last_pps()" should report the same =
time between the X310 and N320, unless you happen to ask it (or if you set =
it) during that 200ms window between the 1pps rising and falling edges.</di=
v>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
However, like you said, absolute time will be off by 200ms. So, since the f=
alling edge occurs 200ms after the rising edge of the 1pps pulse, the X310 =
will not start at 0s until 200ms after the N320 (or I assume N310). So, if =
you issue the "get_time_now()" command
 at the same time to both devices, the X310 will be 200ms behind the N320.<=
/div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
To see if this is the issue, you could try to rebuild the X310 FPGA image w=
ith the fix, or you could try inverting the Octoclock output if you have an=
 inverter (to see if the offset shifts the other way). To help us confirm t=
hat this was our issue, we used
 a function generator instead of the Octoclock to generate the 1pps to both=
 devices. Then, we varied the duty cycle of the 1pps pulse and saw that the=
 time difference between the two devices tracked the duty cycle (the time t=
hat the 1pps pulse is high per second).</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
Also, the way we were setting the time, it actually looked like we were off=
 by 800ms because we'd tell the USRPs to set their time to a specific value=
 after the next pps. But, we'd issue this command right after the rising ed=
ge of the 1PPS pulse. So, this would
 set the N320 to the time we specified 1 second later (when the next rising=
 edge occurs). However, the X310 would see the falling edge occur 200ms aft=
er issuing this command. So, it would set it's time then. So, the way we we=
re doing it, the X310 was actually
 getting set 800ms earlier than the N320.</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
Hope this helps.</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div id=3D"ydpf5f19502yiv1424726215appendonsend"></div>
<hr style=3D"display:inline-block;width:98%;" tabindex=3D"-1">
<div id=3D"ydpf5f19502yiv1424726215yqt18463" class=3D"ydpf5f19502yiv1424726=
215yqt5525963825"><div dir=3D"ltr" id=3D"ydpf5f19502yiv1424726215divRplyFwd=
Msg"><font face=3D"Calibri, sans-serif" style=3D"font-size:11pt;" color=3D"=
#000000"><b>From:</b> zhou &lt;hwzhou@yahoo.com&gt;<br clear=3D"none">
<b>Sent:</b> Monday, December 20, 2021 7:50 AM<br clear=3D"none">
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=C3=BCller &lt;marcus.mueller@ettus.com&gt;; Jim Palladino &lt;jim@g=
ardettoengineering.com&gt;<br clear=3D"none">
<b>Subject:</b> Re: [USRP-users] Time different between X310 and N310 USRPs=
 using UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font=
-size:13px;" class=3D"ydpf5f19502yiv1424726215x_ydpbf121617yahoo-style-wrap=
">
<div></div>
<div dir=3D"ltr">Hi Jim,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thank you so much for your quick reply. Your finding is ve=
ry interesting and I believe it is very related to my problem.</div>
<div dir=3D"ltr">After some thinking, I am still having some confusion:</di=
v>
<div dir=3D"ltr">Because N320 and X310 USRPs are using different pulse edge=
s, their time 0s are actually different by 200ms in universal time, but the=
ir internal timers should be similar. When querying their time respectively=
, we should get similar time - the
 responses are their internal times. But I am seeing 200ms difference.</div=
>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Could you please give some comments on this?</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thanks a lot,<br clear=3D"none">
</div>
<div dir=3D"ltr">Hongwei<br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div><br clear=3D"none">
</div>
</div>
<div id=3D"ydpf5f19502yiv1424726215x_ydp2f3ddc08yahoo_quoted_0577239239" cl=
ass=3D"ydpf5f19502yiv1424726215x_ydp2f3ddc08yahoo_quoted">
<div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;fo=
nt-size:13px;color:#26282a;">
<div>On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladino &lt;jim@garde=
ttoengineering.com&gt; wrote:
</div>
<div><br clear=3D"none">
</div>
<div><br clear=3D"none">
</div>
<div>
<div id=3D"ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
Hi,</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS
 pulse from the Octoclock stays high for about 200ms, so I'm guessing this =
is the issue you are seeing.&nbsp;</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"font-size:12pt;font-family:Calibri, Helvetica, sans-serif;">=
We ended up making our own custom FPGA build for the X310. We modified the =
file:</span><br clear=3D"none">
<span style=3D"color:rgb(61,60,64);font-family:Calibri, Helvetica, sans-ser=
if;font-size:12pt;text-align:left;background-color:rgb(255,255,255);display=
:inline!important;">"uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v".</span><b=
r clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"font-size:12pt;font-family:Calibri, Helvetica, sans-serif;">=
Originally, the PPS edge detection looked like:</span><br clear=3D"none">
<span style=3D"color:rgb(36,41,46);font-family:Calibri, Helvetica, sans-ser=
if;font-size:12pt;">pps_edge&lt;=3D pps_del &amp; ~pps;</span><br clear=3D"=
none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Calibri, Helvetica, sans-ser=
if;font-size:12pt;">We changed it to:</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);">pps_edge&lt;=3D
 ~pps_del &amp; pps;</span></span><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);">It
 would be good if this could get "fixed" in UHD, as it would be nice to not=
 have to maintain a custom FPGA build. I'm not sure what effect this change=
 will have on other USRP FPGA builds that use the same timekeeper.v file.</=
span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);">In
 any case, I'm guessing this is your problem.</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);">Jim</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"></span>
<div style=3D"color:rgb(61,60,64);font-family:sans-serif;font-size:14px;bac=
kground-color:rgb(255,255,255);">
<div>
<div style=3D"max-width:100%;padding:8px 0.5em 0px 1.5em;" class=3D"ydpf5f1=
9502yiv1424726215x_ydp2f3ddc08yiv3164486821a11y__section ydpf5f19502yiv1424=
726215x_ydp2f3ddc08yiv3164486821post ydpf5f19502yiv1424726215x_ydp2f3ddc08y=
iv3164486821other--root">
<br clear=3D"none">
</div>
</div>
<div style=3D"display:inline;min-height:0px;z-index:-1;margin:0px;">
<div dir=3D"ltr" style=3D"visibility:hidden;z-index:-1;min-height:160.652px=
;">
<div style=3D"z-index:-1;">
<div style=3D"z-index:-1;min-height:160.652px;">
<div style=3D"min-height:187px;"></div>
</div>
<div style=3D"z-index:-1;min-height:160.652px;">
<div style=3D"min-height:306.133px;"></div>
</div>
</div>
</div>
</div>
</div>
<div style=3D"color:rgb(61,60,64);font-family:sans-serif;font-size:14px;bac=
kground-color:rgb(255,255,255);">
<div>
<div style=3D"max-width:100%;padding:0px 0.5em 0px 1.5em;" class=3D"ydpf5f1=
9502yiv1424726215x_ydp2f3ddc08yiv3164486821a11y__section ydpf5f19502yiv1424=
726215x_ydp2f3ddc08yiv3164486821post ydpf5f19502yiv1424726215x_ydp2f3ddc08y=
iv3164486821same--user ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821sa=
me--root">
<span style=3D"display:table;width:760.415px;padding:0px 8px 0px 5px;margin=
:0px auto;table-layout:fixed;" class=3D"ydpf5f19502yiv1424726215x_ydp2f3ddc=
08yiv3164486821post__content"></span></div>
</div>
</div>
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(61,60,64);font-family:sans-serif;font-size:13.5px;=
text-align:left;display:inline!important;"><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(61,60,64);font-family:sans-serif;font-size:13.5px;=
text-align:left;display:inline!important;"><br clear=3D"none">
</span></div>
<div id=3D"ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821appendonsend">=
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block;width:98%;">
<div id=3D"ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821yqt49578" clas=
s=3D"ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821yqt1332618028">
<div dir=3D"ltr" id=3D"ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821di=
vRplyFwdMsg"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"=
font-size:11pt;"><b>From:</b> zhou via USRP-users &lt;usrp-users@lists.ettu=
s.com&gt;<br clear=3D"none">
<b>Sent:</b> Monday, December 20, 2021 5:31 AM<br clear=3D"none">
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=C3=BCller &lt;marcus.mueller@ettus.com&gt;<br clear=3D"none">
<b>Subject:</b> [USRP-users] Time different between X310 and N310 USRPs usi=
ng UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font=
-size:13px;" class=3D"ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821x_y=
dpf2317585yahoo-style-wrap">
<div></div>
<div dir=3D"ltr">Hi,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">I am using mixed types of USRPs in my applications, namely=
, X310 and N310. The signals are timed. I find 0.2-second time difference b=
etween these two USRPs.</div>
<div dir=3D"ltr">Details:</div>
<div dir=3D"ltr">Each USRP is controlled by a Linux server;<br clear=3D"non=
e">
</div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr" style=3D"color:rgb(0,0,0);font-family:Helvetica Neue, Helv=
etica, Arial, sans-serif;">
The same Linux version in all PCs;</div>
<div dir=3D"ltr">All USRPs are connected to the same Octoclock;<br clear=3D=
"none">
</div>
</div>
</div>
<div dir=3D"ltr">UHD version is 4.1.0 in Linux servers;</div>
<div dir=3D"ltr">All Linux servers are connected to a control PC which is t=
he client;</div>
<div dir=3D"ltr">The sampling rates are different: 184.32MHz in X310 USRP a=
nd 245.76MHz in N310 USRP</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Control PC sends command to set time 0 after PPS in all US=
RPs, then query the time in each of them.</div>
<div dir=3D"ltr">The time difference between USRPs of the same type is smal=
l, ~2ms, but the time difference between different types of USRP is much bi=
gger, ~0.2s.</div>
<div dir=3D"ltr">Times should be impacted by sampling rate; when setting ti=
mers, no signal is transmitted.</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">2ms time difference between USRPs could be due to network =
delay; 200ms can't be because of network. It seems to be due to HW in USRPs=
. Does this mean that X310 and N310 are not synchronized?</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thanks for any comment,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Hongwei</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div></div>
</div></div><div class=3D"ydpf5f19502yqt5525963825" id=3D"ydpf5f19502yqt379=
47">_______________________________________________<br clear=3D"none">USRP-=
users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.ett=
us.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><b=
r clear=3D"none">To unsubscribe send an email to <a shape=3D"rect" href=3D"=
mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank"=
>usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_1909464_538432591.1640014692292--

--===============6099985871230248096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6099985871230248096==--
