Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6D778E6CA
	for <lists+usrp-users@lfdr.de>; Thu, 31 Aug 2023 08:51:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16B4C384AC0
	for <lists+usrp-users@lfdr.de>; Thu, 31 Aug 2023 02:51:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693464704; bh=GPHkHq9rOOSKid82tfVFu2rO4ZsyYCGi0ERQS3JB1VY=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=t82Wx/Cy/mEPi4sugezdgkWrEqadI4+i6d7OO1AbyTDXGmUONTaKSt6BHf3W1x9MM
	 cIruQX1/D0D4V3Su8VryfZul/GM1WM0QIPOvgesGEYHpkw1gDv/K23IczfnksH/RFZ
	 lDZH+vudWNK6TGhhccUVq/mg8jI3VWkXCVUenxkUhHz2x6oKJgCgz5V2ZlpeifGbMs
	 8N9w5/W4Zfz7Z0tZHpow5kWYIjC5hQjQo+D+QjLF+iwKJ09EHaMRrvnXljKgBFGql5
	 PtMnNzyXeQOW7w3i7MBA3KRfMCQjSi/vq7GjASWiUVUDmiWZtihVFtlpJtBBniQLR1
	 q2mfaowQ4GTuA==
Received: from sonic311-32.consmr.mail.ir2.yahoo.com (sonic311-32.consmr.mail.ir2.yahoo.com [77.238.176.164])
	by mm2.emwd.com (Postfix) with ESMTPS id CFD39384CD7
	for <usrp-users@lists.ettus.com>; Thu, 31 Aug 2023 02:51:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.it header.i=@yahoo.it header.b="T0PD4/sz";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.it; s=s2048; t=1693464671; bh=aXgILjbNqP5nUfzdGwwVugDhp33waGFZqfSqWI5CfZY=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=T0PD4/szSoPw8t5V6YfFYBF5X9rWG8gG0oqJspOLvMJE3BXbT3XSuX6BPXfMPoJY643k/NEknx+4ZyAP4eWqqmbG9U4DJpITAB+z8MXCzjQnH1+yWNPrCFupeG41ZMqn/dHwseIboeTPVCQjDrXlJenJMl/hksYkCzOAChPz37BdwoLRcn+OPCjWmJKOBWPbRJp7CrQTRiFMBA9hmNig1jMrOMHXiygxmg6wxpu7XGJjwjhisRmx6jJuNfsNdGBCgSJ8BGrZkLlYEpQwbkagq1lcsP9Loa1kia1x3esd3ZisFxarJVwBfowEAD4zoTwNHfrnf+p0E6d2F5VgawzLlQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1693464671; bh=k/gjixAset0BWfkQ7x9H4nTqgpUO6lhhQn63ssNo1NS=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=eFFy1OEiTWob4T5XJLYQc8EjTXjwJieY5V73Myd2PcumsUPde+8uBnz/uJYPI6jQpjgFfFx4Ax+pmFycg7xBYo2M1JxJG9K5cfL9/7ZoOthgoX8TF9kuks7fsrQcEDvOlS/YHiltg/R0Hvv38x0YpGJ98EHI+jhMwJpF+WMYBrK7lLcXOSZp+/gZmU2F1NQp5j68OaBm//cJfBOxGDQkguDyq3FWDeyCZRwaTdQzbbd5MceK0RU3tZohFYplEgAu4jMWhIVfackAJw/pqJshSB1J3KqT8p3BmpS46bfG2R0OxfHV47bb9dpuJYIzpLjWMYeCTzB0+m+YwXlTvCrxCw==
X-YMail-OSG: Ok0DA74VM1mm0CdTfPjaXSc1qTlTpJA2EQA9h46joyhI6VLho9MgZwxucmuEMpq
 8DSMiQJjWMUg6QlGQd4GbkZnjdcXP0COi4zmKxB7KQz3VzDAZsNpQQBd.ow2nQAafltPEJYpQGQb
 pQZmN70c098qViL.ofr9yeugvAI4UeUNCwOcZWYoxnarjgh.hEWIRNRuF2Mc6isHzWnRXb0fA3Tj
 Bj8w1iDSC8NUA6I19_mFrmFLHvdpkSbLY5ty2Ok91NRuDU4Vt41p1Aqql2R8J_63zMCe8.m02v9E
 xtONwYK7tZGRMT9BMWlJzvRE.iNRbOJwyeokLVapvIU2.cf5ArT89JsfoxT.7orV6iTm53m87wmA
 Ct68IijgSMuburfANlC2nJDnBzYlW1TQ737lEsil4Jzjb69uNpeja3AmhJkfrOAir.cU3.jsAz4O
 g5cJGvTHMDQX0qeHLKooyvOJ1PofheqXirNwYMRZ2RxSLfadQ_eZ9F6q2S6Ep4htrdF6UwPP90Og
 rIY75EAFd90HSjanWmWlzBOykSXiZunRBi1ww3ygYU_.BK8vPhVCEKYp_w06pxYM6JzetJZ.UxFj
 707tNWE4ecxWOYodP.zv1zmJhPDFcevhN2RWZ6ZrrwRPuhorf8syA4sztIT7nO1Y2KYHqAKlC5sr
 BV8lPJGB._gPH3NG_plQODcyuD3GDu.fudyQPnKzy3W8aQvzSMnLH76QkEY0SiieLdNikawuy31g
 UGCXfbcHDwHx6_UwskpfLc1d558JSmAXf2YUJONNT3ahTowrYx0kRjWjK6eQTUVZ2PiTxTTNFnUj
 1EiGzIY3XOsfifIJhhsGyDyZQiire1wrvF2N4kcc7qVbvciBPL_4A41JcpAFLNKIXY3RIQ9kkIBB
 B3XBoffd_b_mGZzm9IGK6H3GZBGQuqn.DSEQ8trrXACtO2vrFxkT5C7Khn8tNgSJWHalWMW53p6v
 NeCSHqwV6kv5pSoGc04GeebVY7yef1fike8rHk5r7ubfthR25zBEi4X7SRvCc_PRwBjIKSCgl6RB
 XZi5RpG1LNXXtxP63rTK9ImmajvXb8nfIdfzaO0f8Nfn2PQ7H.0w04.gCFVLXGXmEqr_QI9jR4tH
 MWRNh2zkc6kM4G6Bxrm_rvzShB2PJAVPr52fHNu6BLT.TXDtObRu4uOvIw1GzUZRiySreGy9dM.5
 Bl7Ph.xB2aMTKM4dAlxQlb1Zy0t6LQJRCS5JWsfgMkjhehaALxMcVWU93y.ZsCTfUtVnFMCzpmoT
 bTVq2NpOz87P4nqdDDCovyWEACHxU7.PZzRibj3HXCE8oNMVEnVrIAZpinyxIaahdEPoRMchz8O5
 vgwe8lu9LqbK4xdJfF5KNqoK5vN43UMXcc.xTL_iYr3LxPKK.IuCQQmBUPi2aZ86pnkw4DmWK4W4
 l8q.OvJd7Q5s6mr1QUMiIm8CQk1hcZa475IMHTpKr.N2UTFSH2H3nYoXvO0T00m.qYIKxtEFWAWR
 KUVgbCaT9qSmBUyYgszLmATJyPZLv7cWQNBp66d5Ihe30E4wFUr3TrVJLxbA7wBQQY8CBykiceoy
 Gjhvn_P6jhOriqGIsd7n8HDiIQjDOd4PEp5YhqwEKt5DDH4ZJNXhsulEOYjMrrK2k1YIWxj0M5N1
 AZnwfVv1hqdDylnWPakWRxBp91gTQKWxiDxET4ujRo7DxZzYPOfujzcsP2p2ojy2TWa66TWdppNB
 VhPGN013jY52dBhW4.diBSlC8WdkbhBBQJsbKUAxohI1mRczLRsUDaCwfAtf7ktDUVVc8vk2S5d9
 vxDEQD5ISPCgrVFw.FLelbHe_fiN3_a7lLq3tdOC4Qpnv04S3qAsjOBDRs3eJgUy_R01ArJRKINg
 FPPBsV9J6pD8zwGPoDTaOHg4PkPwaFhcMKNzoO2cbFNQ30za3J9kjCuNQW_ocmbcqsuQHhjCnNgt
 dCfIvyOAW_sqv_RvpuToZdFXh1QrmI29HWwfSBF.RKyG8YjWm0jTlbX1ymTfS.FkaNW8SwSuv9s0
 I1B4FOA6rva6A67g.VYprW088cgTSMHyJrBiyfGyKBF.XusOHEUCu8Blh9rfvTf2SVgWycvDrokN
 QbEZYmqKcUlD0qvTSgwY8GtH6qIibJEWzjCDOjldEehVXpm84EySyAc9gb5l1ofvQ7Yy36rkKLSp
 QCnyMzauvg8TsOcW7MCH.SR.p4q_gMlxvZEGFrOqi7Blzt.Y8xX0CYN_zUb_WoVQBY31k0wa7qac
 hskA8wYju.nVmEMB1EQjzWYZN6PIP3C15GY5HA0cFxcoDhO2Y7w--
X-Sonic-MF: <djtandrea@yahoo.it>
X-Sonic-ID: 83aab1be-f5d9-4278-9d54-b1d353cb39c3
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.ir2.yahoo.com with HTTP; Thu, 31 Aug 2023 06:51:11 +0000
Date: Thu, 31 Aug 2023 06:51:07 +0000 (UTC)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
	Neel Pandeya <neel.pandeya@ettus.com>
Message-ID: <883571682.3634167.1693464667226@mail.yahoo.com>
In-Reply-To: <CACaXmv8Ovea93sKjnG75o-7J9UmS2peJmCibPV_BHvjM3GL8-A@mail.gmail.com>
References: <584480455.3301411.1693407472738.ref@mail.yahoo.com> <584480455.3301411.1693407472738@mail.yahoo.com> <300125d8-60a1-339e-128e-ebe4faed86b1@gmail.com> <CACaXmv8Ovea93sKjnG75o-7J9UmS2peJmCibPV_BHvjM3GL8-A@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21763 YMailNorrin
Message-ID-Hash: 63VZY5FCOTJUIWHN7KY7YYKQE76Y72O3
X-Message-ID-Hash: 63VZY5FCOTJUIWHN7KY7YYKQE76Y72O3
X-MailFrom: djtandrea@yahoo.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 problem with LLLLL
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/63VZY5FCOTJUIWHN7KY7YYKQE76Y72O3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Andrea De Jesus Torres via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrea De Jesus Torres <djtandrea@yahoo.it>
Content-Type: multipart/mixed; boundary="===============4485732011301974204=="

--===============4485732011301974204==
Content-Type: multipart/alternative;
	boundary="----=_Part_3634166_2106234912.1693464667222"

------=_Part_3634166_2106234912.1693464667222
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Yes, I have also set the MTU=3D9000 and followed that guide, but didn't im=
prove much. The CPU I am using is enough powerful i guess (an =C2=A0i9-1098=
0XE ), as the same sampling rate works with the B210.
About the network latency, do you have some reference figures about an X310=
? Measuring the latency in the most rough way that came up to my mind i mea=
sured a RTT of about 0.6 ms when the USRP is not transmitting/receiving not=
hing.
Is that a proper figure?

Thanks,
Andrea
    Il mercoled=C3=AC 30 agosto 2023 alle ore 18:23:20 CEST, Neel Pandeya <=
neel.pandeya@ettus.com> ha scritto: =20
=20
 Your CPU might not be powerful enough, or your system may not be sufficien=
tly performance-tuned, or the MTU value is not correct for your 10 Gbps Eth=
ernet connections (you would want to use an MTU value of 8000 or 9000).=C2=
=A0 Also make sure that the two 10 Gbps Ethernet interfaces are connected c=
orrectly with the right IP addresses between the host=C2=A0computer and the=
 radio.
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

--Neel Pandeya+1-512-683-8076 (office)
+1-512-413-5696 (mobile)


On Wed, 30 Aug 2023 at 11:15, Marcus D. Leech <patchvonbraun@gmail.com> wro=
te:

  On 30/08/2023 10:57, Andrea De Jesus Torres via USRP-users wrote:
 =20
  Hi everyone,=20
  i am working with openairinterface, and i am experiencing a strange behav=
ior with the X310 (branded USRP-2954R before flashing). When i run a code w=
ith a certain configuration file using a B210 everything works as expected,=
 while when using an X310 i almost always end seeing a flood of LLL on the =
screen. That happens, for those who have familiarity with openairinterface,=
 either running the gNB or the UE.
=20
 The X310 is flashed with the XG firmware using uhd 4.4 (but also with othe=
r 4.x versions happens the same) and connected to an Ubuntu 22.04 machine w=
ith an ethernet cable.
 The USRP an the network interface are configured according to the Ettus gu=
ide=C2=A0https://kb.ettus.com/Getting_Started_with_4G_LTE_using_Eurecom_Ope=
nAirInterface_(OAI)_on_the_USRP_2974
=20
=20
 Though, with the uhd test utilities, like benchmark_rate, no issue appear.
=20
 Do you have any idea on how i could debug this situation?
 Already asked the OpenAirInterface, but no reply yet.
=20
 thanks,
 andrea
=20
  =20
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
=20
 Well, 'L' is "late packet".=C2=A0 It's likely that the software is asking =
for a packet time that is too "tight" given whatever latency is
 =C2=A0 produced by your systems network stack.
=20
 OAI probably needs to investigate this.
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_3634166_2106234912.1693464667222
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp363afb64yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Yes, I have also set the MTU=
=3D9000 and followed that guide, but didn't improve much. The CPU I am usin=
g is enough powerful i guess (an <span>&nbsp;i9-10980XE )</span>, as the sa=
me sampling rate works with the B210.<span></span></div><div dir=3D"ltr" da=
ta-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">About =
the network latency, do you have some reference figures about an X310? Meas=
uring the latency in the most rough way that came up to my mind i measured =
a RTT of about 0.6 ms when the USRP is not transmitting/receiving nothing.<=
br>Is that a proper figure?<br><br>Thanks,<br>Andrea</div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_4305732044" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    Il mercoled=C3=AC 30 agosto 2023 alle ore 18:23:20 CEST=
, Neel Pandeya &lt;neel.pandeya@ettus.com&gt; ha scritto:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv7712260872"><div><div dir=3D"ltr"><div d=
ir=3D"ltr"><div style=3D"font-family:verdana, sans-serif;" class=3D"yiv7712=
260872gmail_default">Your CPU might not be powerful enough, or your system =
may not be sufficiently performance-tuned, or the MTU value is not correct =
for your 10 Gbps Ethernet connections (you would want to use an MTU value o=
f 8000 or 9000).&nbsp; Also make sure that the two 10 Gbps Ethernet interfa=
ces are connected correctly with the right IP addresses between the host&nb=
sp;computer and the radio.</div><div style=3D"font-family:verdana, sans-ser=
if;" class=3D"yiv7712260872gmail_default"><br clear=3D"none"></div><div sty=
le=3D"font-family:verdana, sans-serif;" class=3D"yiv7712260872gmail_default=
"><a rel=3D"nofollow noopener noreferrer" shape=3D"rect" target=3D"_blank" =
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks">=
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a><br cl=
ear=3D"none"></div><div style=3D"font-family:verdana, sans-serif;" class=3D=
"yiv7712260872gmail_default"><br clear=3D"none"></div><div><div dir=3D"ltr"=
 class=3D"yiv7712260872gmail_signature"><div dir=3D"ltr"><div><div><font fa=
ce=3D"verdana, sans-serif">--Neel Pandeya</font></div><div><font face=3D"ve=
rdana, sans-serif">+1-512-683-8076 (office)</font><br clear=3D"none"></div>=
<div><font face=3D"verdana, sans-serif">+1-512-413-5696 (mobile)</font></di=
v></div><div><font face=3D"verdana, sans-serif"><br clear=3D"none"></font><=
/div></div></div></div><br clear=3D"none"></div><br clear=3D"none"><div cla=
ss=3D"yiv7712260872gmail_quote"><div id=3D"yiv7712260872yqt74268" class=3D"=
yiv7712260872yqt1485144913"><div dir=3D"ltr" class=3D"yiv7712260872gmail_at=
tr">On Wed, 30 Aug 2023 at 11:15, Marcus D. Leech &lt;<a rel=3D"nofollow no=
opener noreferrer" shape=3D"rect" ymailto=3D"mailto:patchvonbraun@gmail.com=
" target=3D"_blank" href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@g=
mail.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex;=
" class=3D"yiv7712260872gmail_quote">
 =20
   =20
 =20
  <div>
    <div>On 30/08/2023 10:57, Andrea De Jesus
      Torres via USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Helvetica, Arial, sans-serif;font-size:16px=
;">
        <div dir=3D"ltr">Hi everyone,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">i am working with
          openairinterface, and i am experiencing a strange behavior
          with the X310 (branded USRP-2954R before flashing).</div>
        <div dir=3D"ltr">When i run a code with a
          certain configuration file using a B210 everything works as
          expected, while when using an X310 i almost always end seeing
          a flood of LLL on the screen.</div>
        <div dir=3D"ltr">That happens, for those who
          have familiarity with openairinterface, either running the gNB
          or the UE.<br clear=3D"none">
          <br clear=3D"none">
          The X310 is flashed with the XG firmware using uhd 4.4 (but
          also with other 4.x versions happens the same) and connected
          to an Ubuntu 22.04 machine with an ethernet cable.<br clear=3D"no=
ne">
          The USRP an the network interface are configured according to
          the Ettus guide&nbsp;<a rel=3D"nofollow noopener noreferrer" shap=
e=3D"rect" target=3D"_blank" href=3D"https://kb.ettus.com/Getting_Started_w=
ith_4G_LTE_using_Eurecom_OpenAirInterface_(OAI)_on_the_USRP_2974">https://k=
b.ettus.com/Getting_Started_with_4G_LTE_using_Eurecom_OpenAirInterface_(OAI=
)_on_the_USRP_2974</a><br clear=3D"none">
          <br clear=3D"none">
          <br clear=3D"none">
          Though, with the uhd test utilities, like benchmark_rate, no
          issue appear.<br clear=3D"none">
          <br clear=3D"none">
          Do you have any idea on how i could debug this situation?<br clea=
r=3D"none">
          Already asked the OpenAirInterface, but no reply yet.<br clear=3D=
"none">
          <br clear=3D"none">
          thanks,<br clear=3D"none">
          andrea<br clear=3D"none">
          <br clear=3D"none">
        </div>
      </div>
      <br clear=3D"none">
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_=
blank" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@li=
sts.ettus.com</a>
</pre>
    </blockquote>
    Well, 'L' is "late packet".&nbsp; It's likely that the software is aski=
ng
    for a packet time that is too "tight" given whatever latency is<br clea=
r=3D"none">
    &nbsp; produced by your systems network stack.<br clear=3D"none">
    <br clear=3D"none">
    OAI probably needs to investigate this.<br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div>

_______________________________________________<br clear=3D"none">
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br cl=
ear=3D"none">
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_=
blank" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@li=
sts.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div>
</div></div><div class=3D"yqt1485144913" id=3D"yqt52989">__________________=
_____________________________<br clear=3D"none">USRP-users mailing list -- =
<a shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br clear=3D"=
none">To unsubscribe send an email to <a shape=3D"rect" ymailto=3D"mailto:u=
srp-users-leave@lists.ettus.com" href=3D"mailto:usrp-users-leave@lists.ettu=
s.com">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_3634166_2106234912.1693464667222--

--===============4485732011301974204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4485732011301974204==--
