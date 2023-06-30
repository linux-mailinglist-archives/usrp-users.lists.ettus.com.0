Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 478FD743AED
	for <lists+usrp-users@lfdr.de>; Fri, 30 Jun 2023 13:35:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 034A93845BC
	for <lists+usrp-users@lfdr.de>; Fri, 30 Jun 2023 07:35:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688124947; bh=xS+6JZcnRDQFdcg9MDdg1H4PD9Zh2ED25SOmjPwmBx8=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ItEsRGpyQ9WVfE+hhFILB2TKJ0VfprkGQTHzvtwiBcStZxTS/an6J9NA2/0TZR28l
	 T1L4JaA0HH4T0XsmIW6mngL7oFn9W3s1Y30++ys1w/Uk1hNg6BpdOa9ceIyBH13MbL
	 bi4kOELhvAzXJtfl3WY/2vSXQo1g56toND1u4GkqP+QAOLpiiXcqaRsYea7pGdIaDP
	 zW+BHuhHrAuVMWB6NGQzhM7oajPbYi46MM88JtZzSmO/1D+C7INbpTGY1pukzxm+r8
	 588G4VlmxGk/Htlwm7S9HMpjGWO629uhpUFpNdC1LraOp5Tm6dPToJjsHq0vLJVVNS
	 6iabH/RypFoRg==
Received: from sonic320-25.consmr.mail.bf2.yahoo.com (sonic320-25.consmr.mail.bf2.yahoo.com [74.6.128.206])
	by mm2.emwd.com (Postfix) with ESMTPS id 24B4C383EC5
	for <usrp-users@lists.ettus.com>; Fri, 30 Jun 2023 07:34:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="Ufo3jvMK";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688124891; bh=LXevHACjfdIsDOCzIKU7oTcysJ2gbzxlkA1KXLN8JNs=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=Ufo3jvMK0TusY52qgLe3XHTZHhxVLojmE1iAeavLBBJoG4g7106cPtK/ICfPn+YIkh1F9WFK8AhopqYrD9iPsrxjoINTYG1M3kvI6SQk61uunt0mfnTBw+3GvAHkLo4d2QKqGgZCiEXEFS7jtSbssJDGf2e8sUr6COOkTx3KK0yLx8QsGHy0QjK/vsyu2yge1o+x2KCqUDfSrDfEKcEu19wZuT7yIhBzcunV8PqQtQaRMHcjk9BfianMKTnWfsL+6wVX+AwCjvdKhN8ZY893j3dGGuFq8tC/ppWzxxiFMwOJUsFlBpasUq0+SDXn4b7TE8d7SJpLAtVzRK7Ejh7esA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688124891; bh=g1W15H0UEMw1KL4d1XQHO483mXH9YTl/A5Y+4R9O6Pp=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=kubpRbtnNvK6k9yu7CwJGMXxLh9Q+3nBoFBz6+t+/+AJj2uoWrUm5Vz+ud1FEIPGAtzL4LzE37g4muX7xCEcnpqTyvJJk92n8d1WVTg28wsKYyK491Upoof1aFAonj8wY/ftJ3flCq+DBLqkgWyM4NKsFAuDEJQhuBKGndvq8MsUMjFJTLT7c8ydeRD7p8fO7POL+VaFP741gin+BrqDuc70BPV3FRM5iJqGayWKt7Gx7gJGQ/QpfcFBXa1S0RjJX4FXfTx6v8DZztSNgvAjhUZb3fnzWdcCo+ZGZom6MXT5wEHntrVWaFJeM0/LB6YMlR1Cxw7gLZ8S+wcodGWwHg==
X-YMail-OSG: .AtXKZEVM1lsTRY4BtguAWPVSqafHtCBYmgkeqadke14oV1NYQouPgDEzZgPMZD
 zaxmpoNe8ZBjjcvQ6epgdyz1L0LGOE2Ulf_S.nWxutnuHMHlMQUEj564PxM.iWirP15qLi5aNaYo
 sfgBkOAI.cNUn7w1kHaVipxBhaoKhjbfMZ_pmDEIJmGV1PHjsBGR67c7241uZkAso2DuTsnIC59F
 WYvq0be6TcmZ62dV8nU0yEHKNQ6Nnv6rShj3NfW.eq8ABzxVDIzK0MqoQfVzgjtxkMGjWjHIlBJt
 GP2QVhlIZv67GLXS7PbLngc7RVNKsczjWPrEs_weKhEF4G857.BX5JEMy6nS.ymLzLUDuYljwqAh
 2ANVGXxP35CPosr8yo8b0W.cZVzejHX82gW3Mv8CHd0OBzj4MOC3crKdPa73WHX4K1IURqxscUeb
 CWkXs_eQ1vsihgW9tSERg3WILDC2V4rInaA4vO0lmiM1WNRImnwoskHGxWlMaQ_7BfMwQUzo6rrP
 kIn61iUSgw3C7w891m08EdMcC576ULn8D4aE7FSBgY7QdG7jdH.6gkKpDWt4hSLu8uF.8_Ya.hVE
 9.tyOb_pnQkHIxhtEBqA5UFOrQLcwjTDK0d8_LkbZOU8jcenk_zfp4H33qwl0tonYJPoYPfIS1wI
 VcwJKQZJJ8DTvktidlV7QU0LOzEcVMJuc79rlIWlivxXqodSD0x03wsMzP5Wfa5TVmK5Cu.rkfbS
 1LZRgNmwc0xEDekEktkf7jhegYKjL8XAR3n50taYvupRyBmagkfPTatuqvtH4GaVJOSeuv9zu_zb
 DhfOKUQSCTFFGW6T17d2sHhQX20qxmUH0e94iQ4hoXv_3dZy8z2BvRObU7qv0hbVNHSAcllr2OZQ
 4IC3wsoH5hxby5en7oB.kgW.Fz73tNXg0jmZXbvduEAKqcWQsBN2zbFD3Lp9RoT5nVChndx1e9_L
 DsKlQMMKCUiPSlXDR0j1YDXV4RL0_hvxD6WyN9Q402wIZGdUrkLCNkz88iTwFG8HykC7EEREkofO
 6FW74eKS1uK6LtM41X9SRs1Ei.g98eYvv1nHh.Oqoo7avA9MusH3wkMi.JJs5L2DiMyo7.Nfrxwu
 g.Qx4EGwppMbwjpBxxYz1OqvtwTlOh3nsQwbXJ.Ih4qgX2w9P.K27oq5sonc9muj5todha3UodHV
 WATY6_xKVPv9FNkKWddlj7JqbJ5NVmBhw_e1BC.q5KkR5rWNWahzyLNrRhTf738_lika1GDCdbu6
 .5Z6YRRYrOsNCxK1W4d5_3p_YkMEmRlyP3PzY8fzML8a3q4qdzu5DFyPBEsCwDuwgxTTL_izQ1tV
 2Uao_AiolUeRr5exvDeilcZQaCcs7xksWlwPdc95lGU_4iIhykgdRKcReufZJSmCAtpv3nET2ppQ
 MsxOV1aunxWGgwsYGwUy66cXBr3dWPY.fiEL8kCF5rLGm2oF0t8a1qVPoGgM_cS5atxXmH7ZHT0X
 xf3fNisEyFnGmYQG8Df.c2ek_rLAhacxZolPPTUXn9AK.FrJKtQ1zMt2zRpheqoqPfZz1U5B5dd.
 Zk8a.7tremJKfr75S9fiGtMzvc2gQwS8CAwN.KFHakNCNBGWDrvzFrhmztZ1ccO0Yh7Og7NdXm6O
 eqKs_dZI6iWfE9r.z46zIRNis7_gt6VYqQI6kfcviB1hwEFkwp4haurIW_vQMk6mn6649JOPOQc0
 NSghyw94cAqptn_Vmo502VRq33Hni7Wk4EfNO6z86coqBmTv1zLgAQKbvizX2u0qbcjxgRNM2pUU
 EdgcIYOjajYkCSHcl.N65zIuX1CqF0qqKxVHOat1TLegF6bDgmlgf4rzzprHcrSnh.lulrn4YG_0
 X6v217dWXf4o8D_fTXxWWpMUjm20ixgyD2XQy.sDlecKRIljHD4yZIIdDl8R8XZWK9.N9kVUnagb
 HdRkJ39SitowTqPnCqOlA99ovddd2KmOmPNI4kRPPvjbk9JF3v1F0IOHTojj47ySNaOG737CMcEo
 QhnQBeIwIz5XVMeBSGCTsWhlb.6AMDD6E7rV21k31cWqa0j8FbSjJmhh3fpJRA2I_foGj3RQPCP9
 kRg2d8pj2WkpGlFagjMr6WQeDE.oXdxPS0Lfp2txnvtHlchWFO99736LaPMLYVg8QohLdN4sVGq1
 lyCMi.ETtQ8dVV5hHBE3oKQ9_dXdCT9lJVlLZCTwky_sT6Ic2LNwd7OnMpUsEytN45EhmGAOKESp
 NAPfG3ffMD9rGwDYzbS_gaL9Tdn1MHDK_
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: a7209273-4542-4596-a7a7-db3682d0f775
Received: from sonic.gate.mail.ne1.yahoo.com by sonic320.consmr.mail.bf2.yahoo.com with HTTP; Fri, 30 Jun 2023 11:34:51 +0000
Date: Fri, 30 Jun 2023 11:34:39 +0000 (UTC)
To: Rob Kossler <rkossler@nd.edu>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1137522437.419358.1688124879387@mail.yahoo.com>
In-Reply-To: <c1998c9a-8fdd-b4e7-3908-24dd44262c1a@gmail.com>
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com> <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com> <1346881245.172465.1688045768643@mail.yahoo.com> <e3300a45-cc33-2c9c-1c80-ebb3dfe9a2c3@gmail.com> <CAB__hTR1QV=7qdSNsZLSD6hq_3Uk_buTae6tNYeo1iXBNCvFHQ@mail.gmail.com> <c1998c9a-8fdd-b4e7-3908-24dd44262c1a@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21612 YMailNorrin
Message-ID-Hash: YZGLZMPOU6DCL776DE6D2WUNP44KUWGO
X-Message-ID-Hash: YZGLZMPOU6DCL776DE6D2WUNP44KUWGO
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO carrier phase difference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YZGLZMPOU6DCL776DE6D2WUNP44KUWGO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4888855705127044783=="

--===============4888855705127044783==
Content-Type: multipart/alternative;
	boundary="----=_Part_419357_1408850834.1688124879385"

------=_Part_419357_1408850834.1688124879385
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks a lot for your discussion, Rob and Marcus. It is very informative.I=
 am using=C2=A0UBX-160 daughterboard.=C2=A0

Yes, my transmission is continuous during the entire test. The signal lengt=
h is 40ms, and the same signal is repeatedly transmitted in an endless loop=
. Timestamp is updated in each loop and is applied to the packets.Captures =
were not continuous. Each capture started at a specific time and had limite=
d length. The time gap between captures was random.
I think the timed Tx and Rx commands are not related to LO because Tx and R=
x in digital domain and LO is in analogue domain.=C2=A0
I am interested in knowing if there is a way to make Tx LO and Rx LO phase =
coherent within the same USRP.=C2=A0



    On Thursday, 29 June 2023 at 17:19:32 BST, Marcus D. Leech <patchvonbra=
un@gmail.com> wrote: =20
=20
 On 29/06/2023 11:38, Rob Kossler wrote:
> On Thu, Jun 29, 2023 at 11:09=E2=80=AFAM Marcus D. Leech
> <patchvonbraun@gmail.com> wrote:
>> On 29/06/2023 09:36, zhou via USRP-users wrote:
>> I am using X310 USRPs. I did a loopback test with this USRP, that is, Tx=
 was connected to Rx (with a 20dB attenuator between them). This is for che=
cking the channel status.
>> In my test, Tx is free running without stop, and Rx is occasional. Both =
transmission and capture are time-based, that is, signals are transmitted a=
t specified time, and capture starts at specified time.
>>
>> Master clock rate: 184.32MHz
>> Sampling rate: 184.32MHz
>>
>> Using the captured signals, I can calculate the channel coefficient. A f=
ew captures were made.
>>
>> I expected constant channel because it was cable connection and it was i=
n the same USRP, but I found that the constellations of the pilot signals r=
otated when comparing different captures. I think this can be caused by the=
 phase difference between Tx LO and Rx LO, but not sure.
>>
>> Questions:
>> 1. are there independent LOs for Tx and Rx in a USRP?
>>
>> Yes.=C2=A0 In fact, in any realistic on-the-air scenario, your RX and TX=
 will never be phase aligned, or even phase-coherent.
> Although there are separate LOs, they are both disciplined to the 10
> MHz reference. If they are set using timed commands, they can provide
> repeatable phase (at least for some daughterboards like UBX and SBX).
> In radar applications, phase coherent Rx/Tx is common.
>
>> 2. Is the Rx LO on and off in test, that is, it starts when capture star=
ts and stops when capture is completed? So, the LO phase offset between Tx =
and Rx is random?
>>
>> I would expect the RX LO phase to random with respect to the TX every ti=
me you start/stop the RX.
> In the description above, you mentioned free-running Tx but you also
> mentioned timed transmission and capture. If you are using timed Tx
> and Rx along with the timed tuning commands, I would expect a
> consistent phase offset (depending again on daughterboard).=C2=A0 If you
> have free running Tx, then I would expect it to be random.
Something else to note about X310 is that in order for timed tuning to=20
work with the DDCs, there has to be a stream running
 =C2=A0 through it at the time, because it gets its notions of time from th=
e=20
radio block and uses tagged samples running through it to
 =C2=A0 time re-tunes precise-to-the-sample.

In this case, I think we're just talking about timed *streaming*, which=20
shouldn't touch the LOs/DDC/DUC at all.=C2=A0 However, if
 =C2=A0 the TX is continuous, and the RX is discontinuous, the RX will be=
=20
picking up the TX at some random phase.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_419357_1408850834.1688124879385
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpfb9a8ed8yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks a lot for your discus=
sion, Rob and Marcus. It is very informative.</div><div dir=3D"ltr" data-se=
tdir=3D"false">I am using&nbsp;UBX-160 daughterboard.&nbsp;<br></div><div d=
ir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"=
false">Yes, my transmission is continuous during the entire test. The signa=
l length is 40ms, and the same signal is repeatedly transmitted in an endle=
ss loop. Timestamp is updated in each loop and is applied to the packets.</=
div><div dir=3D"ltr" data-setdir=3D"false">Captures were not continuous. Ea=
ch capture started at a specific time and had limited length. The time gap =
between captures was random.</div><div dir=3D"ltr" data-setdir=3D"false"><b=
r></div><div dir=3D"ltr" data-setdir=3D"false">I think the timed Tx and Rx =
commands are not related to LO because Tx and Rx in digital domain and LO i=
s in analogue domain.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><br=
></div><div dir=3D"ltr" data-setdir=3D"false">I am interested in knowing if=
 there is a way to make Tx LO and Rx LO phase coherent within the same USRP=
.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"l=
tr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">=
<br></div><div><br></div>
       =20
        </div><div id=3D"ydpd26af6c6yahoo_quoted_8415392998" class=3D"ydpd2=
6af6c6yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Thursday, 29 June 2023 at 17:19:32 BST, Marcus D. Le=
ech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">On 29/06/2023 11:38, Rob Kossler wrot=
e:<br clear=3D"none">&gt; On Thu, Jun 29, 2023 at 11:09=E2=80=AFAM Marcus D=
. Leech<br clear=3D"none">&gt; &lt;<a shape=3D"rect" href=3D"mailto:patchvo=
nbraun@gmail.com" rel=3D"nofollow" target=3D"_blank">patchvonbraun@gmail.co=
m</a>&gt; wrote:<br clear=3D"none">&gt;&gt; On 29/06/2023 09:36, zhou via U=
SRP-users wrote:<br clear=3D"none">&gt;&gt; I am using X310 USRPs. I did a =
loopback test with this USRP, that is, Tx was connected to Rx (with a 20dB =
attenuator between them). This is for checking the channel status.<br clear=
=3D"none">&gt;&gt; In my test, Tx is free running without stop, and Rx is o=
ccasional. Both transmission and capture are time-based, that is, signals a=
re transmitted at specified time, and capture starts at specified time.<br =
clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Master clock rate: 184.3=
2MHz<br clear=3D"none">&gt;&gt; Sampling rate: 184.32MHz<br clear=3D"none">=
&gt;&gt;<br clear=3D"none">&gt;&gt; Using the captured signals, I can calcu=
late the channel coefficient. A few captures were made.<br clear=3D"none">&=
gt;&gt;<br clear=3D"none">&gt;&gt; I expected constant channel because it w=
as cable connection and it was in the same USRP, but I found that the const=
ellations of the pilot signals rotated when comparing different captures. I=
 think this can be caused by the phase difference between Tx LO and Rx LO, =
but not sure.<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Questio=
ns:<br clear=3D"none">&gt;&gt; 1. are there independent LOs for Tx and Rx i=
n a USRP?<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Yes.&nbsp; =
 In fact, in any realistic on-the-air scenario, your RX and TX will never b=
e phase aligned, or even phase-coherent.<br clear=3D"none">&gt; Although th=
ere are separate LOs, they are both disciplined to the 10<br clear=3D"none"=
>&gt; MHz reference. If they are set using timed commands, they can provide=
<br clear=3D"none">&gt; repeatable phase (at least for some daughterboards =
like UBX and SBX).<br clear=3D"none">&gt; In radar applications, phase cohe=
rent Rx/Tx is common.<br clear=3D"none">&gt;<br clear=3D"none">&gt;&gt; 2. =
Is the Rx LO on and off in test, that is, it starts when capture starts and=
 stops when capture is completed? So, the LO phase offset between Tx and Rx=
 is random?<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; I would e=
xpect the RX LO phase to random with respect to the TX every time you start=
/stop the RX.<br clear=3D"none">&gt; In the description above, you mentione=
d free-running Tx but you also<br clear=3D"none">&gt; mentioned timed trans=
mission and capture. If you are using timed Tx<br clear=3D"none">&gt; and R=
x along with the timed tuning commands, I would expect a<br clear=3D"none">=
&gt; consistent phase offset (depending again on daughterboard).&nbsp; If y=
ou<br clear=3D"none">&gt; have free running Tx, then I would expect it to b=
e random.<br clear=3D"none">Something else to note about X310 is that in or=
der for timed tuning to <br clear=3D"none">work with the DDCs, there has to=
 be a stream running<br clear=3D"none"> &nbsp; through it at the time, beca=
use it gets its notions of time from the <br clear=3D"none">radio block and=
 uses tagged samples running through it to<br clear=3D"none"> &nbsp; time r=
e-tunes precise-to-the-sample.<br clear=3D"none"><br clear=3D"none">In this=
 case, I think we're just talking about timed *streaming*, which <br clear=
=3D"none">shouldn't touch the LOs/DDC/DUC at all.&nbsp; However, if<br clea=
r=3D"none"> &nbsp; the TX is continuous, and the RX is discontinuous, the R=
X will be <br clear=3D"none">picking up the TX at some random phase.<div cl=
ass=3D"ydpd26af6c6yqt1316621178" id=3D"ydpd26af6c6yqtfd74140"><br clear=3D"=
none"><br clear=3D"none">_______________________________________________<br=
 clear=3D"none">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto=
:usrp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@=
lists.ettus.com</a><br clear=3D"none">To unsubscribe send an email to <a sh=
ape=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofoll=
ow" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none=
"></div></div></div>
            </div>
        </div></body></html>
------=_Part_419357_1408850834.1688124879385--

--===============4888855705127044783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4888855705127044783==--
