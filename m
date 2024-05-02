Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 104718B960F
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 10:02:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB9EC3850DF
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 04:02:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714636927; bh=IBhmmROMM9wbd1OF+PR0wPtRQicAGAOSBHK3Nvrbkp0=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=YVvAX1R5f7x6g79rGMjEEXCh7mR3zTgGhtQ1jyQBIs1Ui0DjBIZnZ/Ksdo4OZpac4
	 ABX9FLDtPEG6+RbGt33mWR2T+UFO0UTQU79zzRdCo+i9MlM/mSivZK4XnbGUVzbhfl
	 yh2v+riOJj825frsUkolwXt/I7nA3reHVBZptseUPoILwxmM1UMNfilx0+gxFUEsLL
	 Hm7YC4tycWcP4oSDgHuufWFxWdarkZpq+SDmmeQR9Zu92I1bOtBuWpRH2Mp0bHfZOc
	 VycbGRlYfrgSeEi78OLiRKzkO95kP6125BF3cp/Y+yuinM8OwIW2dJG7SecoGHgGSE
	 aASqojhpk4HHQ==
Received: from sonic314-15.consmr.mail.bf2.yahoo.com (sonic314-15.consmr.mail.bf2.yahoo.com [74.6.132.125])
	by mm2.emwd.com (Postfix) with ESMTPS id 8973B384DED
	for <usrp-users@lists.ettus.com>; Thu,  2 May 2024 04:01:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="APj+voC8";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1714636891; bh=n8IT2P/R9kDLZ+yk28afB7qQmfmP6GWC/51jWEasWi8=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=APj+voC8oUGeb6lTFbLnhnd4kBCyRIZkBlLpWtcbiXW/MwqoHlNQ+luLas4rP0nOxufIXUc8GJzpEWOluFmnP5rGUTmZM1sLb0J2YX6pLMBem0q3pEQ3bJqZakm5Xw4T9lVNwbkrzqx68HJ/OE9J1mB1MVP+2CrRjZsSCOGTSaT+RfcPnBaagQWJpVD4PhbBzaSqsSGFChm8Ha2VIG4tL7wkxcS8hv97N9OfDXvjHf1ua04sEa/KJ3WMpTp9A5Pr8V7+r9x4maDa+H+ZxiRrrZz7R1ViTy4YW6GePopqHOkEzIOsw2wOTg29mGiPwKZ0s+aXZu8CdP8VaMPLyR7wMg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1714636891; bh=QOQpEqCRs3WlxjfaSjhkdy8aiOBMA4Tu505+7c2VpS7=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=ceRtNf8vQ4D4TfniCOHx44x5NFdL/iCvvc6uWSSfGuDb54bAlvaJCWTWNhX5NDpSVSvf0KzS/VKsFuxZKRrA7laFaQ0hb0ZDr/dK1FI6N+0bt8QbASm23yRSMW6k16zfv7LUz+PhSTS+qpn+lezOq/6pfeZy0n+5jSIRnW6gDTu/xAn2D2jnoW2E+0fmT/SMYImX8nqpqdu3UbBavoDFKMBDplPBTedU/WlsS44KqUq90KGHZ3Mh5IKqU94HUouqgW7bxJdftw41OnBHR38MarcSwxEz6a8ZRRUonS1R42RrfEmnif6HMuRaieRxyAtjlZmZ0BT8cUgY946rYO67WA==
X-YMail-OSG: Gmf_xFYVM1nxNgzXe1zvmJmlcVzcMNJWH4gUWPnZakUpq0MfLso38FGPveSnGNx
 TjK5HRA.imK59P0.HDagJqclAQdOCh7Vq08g8U9a4.0AbCW8A_p1i0FPM_8JUQA_ISqz6DX.1vMO
 N.IfZbz4zhpXrt7Qwb2.zT6rk_z5ehfhkc4t.b6DBzU5dkxXlfH.l6t6mf1HnsXw1hbDQaUx1Lh1
 RWAQ66TaGuCbCXkJfdm1ZvKKLrDBoN0.F5fdbYrUUl4vrnKoyo3lzKTmWXdvcg_TDKw3FMUaCf6D
 LjO_p2rHREKpkX9Z7i0CdKGE5aDHCdhQPbGQ7k6Km6qRpiB8FlyJRQXV43nY6JpLL8u0.ypBjCUT
 7qKS_4V7HtHJgQxDzkCEeeRdkw22EwOBryPIsDnGR1Ws7GpZ8g0ILJxeKgJl6G0t9t0YzGcS13JO
 x01oaizLLOGDxeqq1qmyFH9xyNnQG55e83JNdfH.P_jPzF2.brpFTJ9oz.tQssAfBTciIK0BjB6B
 Bav9jQ9H3T9eREGJBUFQGL3jISpolwWOw2iZx5rc.l8NEqODN2mYJgpzH4AEcAHLHgJuWus15KN1
 CawRtOfNXW8.yU._ZicKnU2.erhZS2bB1RhK2l0t2jd7xs1vhvtgGvCAHButHqxI.KN1T34PTYhY
 5acdX8dAad9_bdhK.f56wLq_mtbwfuF73Fn01fh_7bbh8ARP5HmZyPaf3GXeGjYSXUuDYQ74ztCf
 0.JkVZhEnGnRhQep7p.rrKycZMyNL38gBIRvMuaJbspwgUFhztYdc373jAeIdDVVL0fUZ2l_._Wp
 QRUCRq3JDkaB7VGT25dmJl_3QjPbrnwNBp0Qpn4W9WdjqOZu0Oyb4AobQYy6vrKxTVkopKmec95m
 pLZfjDvsMfhhJWpj0UpintSijKNRGWT_cmoVoj_GdmuqA_z9mdtzAWs6CIOgiJpNEcEnm1ntTjR6
 u71rjzBe5SPmd62oeMuyd_ngU4yCJOw2DyTZAfBY5Z9w2IJ2Y2B90qDp4Qx6Cidh_GMjT6x7ah0z
 lJjfE5Tbc_w2ymcZkrXH3HHMZKoLOg.iJrnKp_ioQ11ivu3wJ3dZYWuwwY.H1tsMn9nKnLbUVJNJ
 1vzZUf_8TSXWSPNiA7nXakI0_Z4SZvMzXMTBcWIKo6h_DM.vuRnxc85sxwrGJj.8UdNvsNALAUGc
 O..2vj4y6YQ.lW68eYUBMgek2iT490wB7w9.qwINtMN49QhVLTnhdOx57hLxAanwRJKvYG4eCHpG
 Y89kbFJ1uPNN.1dxjMxztPlTX6zlToVVREUk9OSew_kk0b31YMnhHFF0My3plSUajni71exAiWck
 _RffF_LnheO2xpLQfG.a6wjfyTCQTBmNwU.EaixNU4KC.4zHH4LtNWBg3xrehg8h7abCPjROJqmI
 zdBDx3fuy5mZZLRyFNFwHAJDV0dGghI9sOJWKl5jKJVlniUK4H8ffveaYWnw_xKW0afxmip1NDL5
 xx6mmK2dGmgeRG2CFjzF_HHBskIriGqceJTx28O__BVTAUtOhazIZ9taQ5RnlmoIUPatGxm1hYbT
 4Z7jOPniFnLG4UUi5zDJmG02n6z9Yqk3wuoQ7sFPh1BLLPzOWx.0KjDaWDRjSOfdQ_svQNdRAtrj
 lnSZXT25uzmnXESs9ACCbxED0LfRwzqUl.c_zdv_Q5p35qZhWI8iz2bQfMQaUfXTMTnQAv5DZjr.
 rYdZ1oChwhD5HDAfDGp37v3duzCZzvBz6BY0oojx9gsKLevAbHet97cbXJ51sKA604btN2jdgBNN
 wp_YxWT_DSleqnLrXCaQ0Z_RDrfWzZpBfQPjNMZIFXtXqZIuU2hhmsPt1U0PDIte87OO5IX9LZLr
 fOT5G6DF1qy40TPfX0vJ3owfY1DfYU4gv8IvmfyDSCTZVBfJjbKb.c23ci54kWG2_HK6KuX9WgdW
 Olg.mlV9JeyuGkRcrOob.zHOK4Y5p7UM30GF7JCyGkcyNWquWLFTHFNibYoNFN02as_Ew15D7mR1
 xSPJyyk2koT.dq0.MldL5eCEFlat7fkgjYDMG6ewZpJnAnAimoSH0pscdLpWSGq1EqFulpQm5OAm
 0zdxbc6zIWhJ5WrXcJ2STyd7mHngkllszQsH5knfgQrztDcoM6tac93u_DnpV.hP627yvuZUlQT1
 oB9zwuZayvfZ.AkORzZBsMMvILwz33iaqIzhDpp4TtBZMAYFQLW53.jC5zgYWFr63CsHGoQyPzgv
 V843gLCG_Ya1wfxXHjGu082LmtV_.
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 473e01ad-a780-49aa-aa21-baeb71d5b04e
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.bf2.yahoo.com with HTTP; Thu, 2 May 2024 08:01:31 +0000
Date: Thu, 2 May 2024 08:01:25 +0000 (UTC)
To: Rob Kossler <rkossler@nd.edu>, Marcus D Leech <patchvonbraun@gmail.com>
Message-ID: <2081932982.3351179.1714636885969@mail.yahoo.com>
In-Reply-To: <A274BA7F-FCBD-489E-8251-D1265CB2E3D5@gmail.com>
References: <CAB__hTRpzWoOC2n5NkSCkTbQeQxcz6XBv2ZFc_B1f_xKH+0ZoQ@mail.gmail.com> <A274BA7F-FCBD-489E-8251-D1265CB2E3D5@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22256 YMailNorrin
Message-ID-Hash: 45WB35FYR7SQR5RPYSLBHHIO5CXFQJ4H
X-Message-ID-Hash: 45WB35FYR7SQR5RPYSLBHHIO5CXFQJ4H
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between two X310s
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/45WB35FYR7SQR5RPYSLBHHIO5CXFQJ4H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5638006337456590548=="

--===============5638006337456590548==
Content-Type: multipart/alternative;
	boundary="----=_Part_3351178_2019249056.1714636885966"

------=_Part_3351178_2019249056.1714636885966
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks, Rob and Marcus.
A single tone is repeatedly transmitted to make a continuous stream out of =
the Tx antenna. It is periodically sampled in Rx; the interval is about 1s.=
 The sample time is aligned with the beginning of the transmitted signal to=
 make sure we sample at the same time across antennas. We calculate the ang=
le of the first complex sample of capture to evaluate the signal phase.=C2=
=A0
I agree with you that there can be some phase wobble between the 10M ref si=
gnals applied to PLLs in two devices because of temperature or other random=
 factors, however, inside a USRP, there are four independent PLLs for 2 Tx =
and 2 Rx. The 10M ref signals to them should also be wobbling. But my measu=
rements show that within the same USRP, phase is pretty stable between Tx a=
nd Rx. Any explanation on this?=C2=A0
Kind regards.Hongwei

    On Wednesday, 1 May 2024 at 20:34:15 BST, Marcus D Leech <patchvonbraun=
@gmail.com> wrote: =20
=20
 It=E2=80=99s also why you can=E2=80=99t get tight instantaneous phase alig=
nment between two GPSDO devices even when on the same antenna.=C2=A0

Sent from my iPhone

On May 1, 2024, at 2:12 PM, Rob Kossler <rkossler@nd.edu> wrote:



=EF=BB=BFThe 10 MHz ref supplied to each X310 device is used in a PLL in ea=
ch device to obtain the 10MHz ref used for that device (and for disciplinin=
g the various LOs on the device). Thus, there is a relative phase "wobble" =
between the 10MHz ref signals used on each device as each PLL continuously =
adjusts to maintain disciplined output.=C2=A0 Over time, this averages out =
to zero. But, instantaneously, it is not. So, my question is: how instantan=
eous is your phase measurement?=C2=A0 If you instead calculate a phase aver=
aged over numerous samples, can you get a consistent result? From your plot=
, it looks like this is true.
Rob

On Wed, May 1, 2024 at 11:04=E2=80=AFAM zhou via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:

=20

    On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D. Leech <patchvonbrau=
n@gmail.com> wrote: =20
=20
  On 01/05/2024 10:11, zhou via USRP-users wrote:
 =20
=20
 Hi Marcus,=20
  Thanks for your response.=20
   "Are you setting up clocking identically for both USRPs?=C2=A0=C2=A0 Tha=
t is setting the reference clock to "external" and the 1PPS source to "exte=
rnal" on both devices?=C2=A0=C2=A0 Are you using a single multi_usrp object=
 for all RX channels?"=20
  Yes, I use multi_usrp multi_usrp::make('addr0=3D192.168.12.2,second_addr0=
=3D192.168.13.2,addr1=3D192.168.14.2,second_addr1=3D192.168.15.2,master_clo=
ck_rate=3D184.32e6')
 =C2=A0
 "external" set for both ref and pps: usrp->set_clock_source("external") us=
rp->set_time_source("external")
 I think this should automatically set both devices.
=20
 "What type of daughtercards are in your X310?"
  UBX=20
  Kind regards.=20
   And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?
It is OctoClock GPSDO, and Internal is used.=C2=A0
=20
=20
=20
 =20
 =20
      On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
 =20
      On 01/05/2024 08:25, zhou via USRP-users wrote:
 =20
=20
    Hi All,=20
  I am trying to use 4Rx and 4Tx antennas from two X310 USRPs. I hope the r=
eceived signals have stable phase relationship but they don't seem to be. I=
 am wondering why and how to fix it.=20
  I measured the phase using the connection as below:=20
  cos(t)+i*sin(t) signal is split into and received on four Rx antennas.=C2=
=A0Two X310s are connected to the same OctoClock for 10MHz Ref and PPS. Tx =
and Rx commands are all timed. The measurement results are as below:=20
 =20
 The Tx signal is continuous during test. I measured phase every second for=
 20 sec. In the 2nd USRP, the phases are stable on both antennas while it i=
s not in the 1st. If I change the Tx signal to the 1st USRP, then the resul=
ts swap - phases become stable in the 1st USRP and unstable in the 2nd.=20
  My first though was that there might be small CFO between USRPs even thou=
gh both are connected to the OctoClock, but CFO should have caused linear c=
hange. Here, the phase offset is not linear and kind of random within 20 se=
cond measurement.=20
  What can be the reason? Any suggestion will be appreciated.
=20
 Kind regards, H.  Are you setting up clocking identically for both USRPs?=
=C2=A0=C2=A0 That is setting the reference clock to "external" and the 1PPS=
 source to "external" on both devices?=C2=A0=C2=A0 Are you using a single m=
ulti_usrp object for all RX channels?
=20
 What type of daughtercards are in your X310?
=20
=20
    _______________________________________________
 USRP-users mailing list -- usrp-users@lists.ettus.com
 To unsubscribe send an email to usrp-users-leave@lists.ettus.com
    =20
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_3351178_2019249056.1714636885966
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp3054b301yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks, Rob and Marcus.</div=
><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-set=
dir=3D"false">A single tone is repeatedly transmitted to make a continuous =
stream out of the Tx antenna. It is periodically sampled in Rx; the interva=
l is about 1s. The sample time is aligned with the beginning of the transmi=
tted signal to make sure we sample at the same time across antennas. We cal=
culate the angle of the first complex sample of capture to evaluate the sig=
nal phase.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div=
 dir=3D"ltr" data-setdir=3D"false">I agree with you that there can be some =
phase wobble between the 10M ref signals applied to PLLs in two devices bec=
ause of temperature or other random factors, however, inside a USRP, there =
are four independent PLLs for 2 Tx and 2 Rx. The 10M ref signals to them sh=
ould also be wobbling. But my measurements show that within the same USRP, =
phase is pretty stable between Tx and Rx. Any explanation on this?&nbsp;</d=
iv><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-s=
etdir=3D"false">Kind regards.</div><div dir=3D"ltr" data-setdir=3D"false">H=
ongwei</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div=
>
       =20
        </div><div id=3D"ydp10566da0yahoo_quoted_5052093146" class=3D"ydp10=
566da0yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                        On Wednesday, 1 May 2024 at 20:34:15 BST, Marcus D =
Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"ydp10566da0yiv8756072813"><div>It=E2=80=99s=
 also why you can=E2=80=99t get tight instantaneous phase alignment between=
 two GPSDO devices even when on the same antenna.&nbsp;<br clear=3D"none"><=
br clear=3D"none"><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr=
"><div id=3D"ydp10566da0yiv8756072813yqtfd74024" class=3D"ydp10566da0yiv875=
6072813yqt5458153538"><br clear=3D"none"><blockquote type=3D"cite">On May 1=
, 2024, at 2:12 PM, Rob Kossler &lt;rkossler@nd.edu&gt; wrote:<br clear=3D"=
none"><br clear=3D"none"></blockquote></div></div><div id=3D"ydp10566da0yiv=
8756072813yqtfd96757" class=3D"ydp10566da0yiv8756072813yqt5458153538"><bloc=
kquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>The 10=
 MHz ref supplied to each X310 device is used in a PLL in each device to ob=
tain the 10MHz ref used for that device (and for disciplining the various L=
Os on the device). Thus, there is a relative phase "wobble" between the 10M=
Hz ref signals used on each device as each PLL continuously adjusts to main=
tain disciplined output.&nbsp; Over time, this averages out to zero. But, i=
nstantaneously, it is not. So, my question is: how instantaneous is your ph=
ase measurement?&nbsp; If you instead calculate a phase averaged over numer=
ous samples, can you get a consistent result? From your plot, it looks like=
 this is true.<br clear=3D"none"></div><div>Rob<br clear=3D"none"></div><br=
 clear=3D"none"><div class=3D"ydp10566da0yiv8756072813gmail_quote"><div dir=
=3D"ltr" class=3D"ydp10566da0yiv8756072813gmail_attr">On Wed, May 1, 2024 a=
t 11:04=E2=80=AFAM zhou via USRP-users &lt;<a shape=3D"rect" href=3D"mailto=
:usrp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex;" class=3D"ydp10566da0yiv8756072813gmail_quote"><div><div style=3D"f=
ont-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><d=
iv></div>
        <div><br clear=3D"none"></div><div><br clear=3D"none"></div>
       =20
        </div><div id=3D"ydp10566da0yiv8756072813m_-3650333112459443087ydpc=
994c9a6yahoo_quoted_5461441577">
            <div style=3D"font-family:Helvetica, Arial, sans-serif;font-siz=
e:13px;color:rgb(38,40,42);">
               =20
                <div>
                        On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D.=
 Leech &lt;<a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com" rel=3D=
"nofollow" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:
                    </div>
                    <div><br clear=3D"none"></div>
                    <div><br clear=3D"none"></div>
               =20
               =20
                <div><div id=3D"ydp10566da0yiv8756072813m_-3650333112459443=
087ydpc994c9a6yiv4349751442"><div>
    <div>On 01/05/2024 10:11, zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;">
        <div dir=3D"ltr">Hi Marcus,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Thanks for your response.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">
          <div><span style=3D"color:rgb(38,40,42);font-family:Helvetica Neu=
e, Helvetica, Arial, sans-serif;">"Are
              you setting up clocking identically for both USRPs?&nbsp;&nbs=
p; That
              is setting the reference clock to "external" and the 1PPS
              source to "external" on both devices?&nbsp;&nbsp; Are you usi=
ng a
              single multi_usrp object for all RX channels?"</span></div>
          <div><br clear=3D"none">
          </div>
          <div dir=3D"ltr">Yes, I use multi_usrp
            multi_usrp::make(<span>'addr0=3D192.168.12.2,second_addr0=3D192=
.168.13.2,addr1=3D192.168.14.2,second_addr1=3D192.168.15.2,master_clock_rat=
e=3D184.32e6'</span>)<br clear=3D"none" style=3D"color:rgb(38,40,42);font-f=
amily:Helvetica Neue, Helvetica, Arial, sans-serif;">
            &nbsp;<br clear=3D"none">
            <span><span style=3D"color:rgb(0,0,0);font-family:Helvetica Neu=
e, Helvetica, Arial, sans-serif;">"external"
                set for both ref and pps:</span></span></div>
          <div dir=3D"ltr"><span>usrp-&gt;set_clock_source("external")</spa=
n></div>
          <div dir=3D"ltr"><span>usrp-&gt;set_time_source(<span><span style=
=3D"color:rgb(0,0,0);font-family:Helvetica Neue, Helvetica, Arial, sans-ser=
if;">"external")</span></span></span><br clear=3D"none">
            I think this should automatically set both devices.<br clear=3D=
"none">
            <br clear=3D"none" style=3D"color:rgb(38,40,42);font-family:Hel=
vetica Neue, Helvetica, Arial, sans-serif;">
            <span style=3D"color:rgb(38,40,42);font-family:Helvetica Neue, =
Helvetica, Arial, sans-serif;">"What
              type of daughtercards are in your X310?"</span><br clear=3D"n=
one" style=3D"color:rgb(38,40,42);font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;">
          </div>
          UBX</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Kind regards.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
      </div>
   =20
    And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?<di=
v dir=3D"ltr" id=3D"ydp10566da0yiv8756072813m_-3650333112459443087ydpc994c9=
a6yiv4349751442yqtfd85029"><br clear=3D"none"></div><div dir=3D"ltr" id=3D"=
ydp10566da0yiv8756072813m_-3650333112459443087ydpc994c9a6yiv4349751442yqtfd=
85029">It is OctoClock GPSDO, and Internal is used.&nbsp;<br clear=3D"none"=
>
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-seri=
f;font-size:13px;">
        <div><br clear=3D"none">
        </div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div id=3D"ydp10566da0yiv8756072813m_-3650333112459443087ydpc994c9a6y=
iv4349751442ydp5189b7afyahoo_quoted_4632613607">
        <div style=3D"font-family:Helvetica, Arial, sans-serif;font-size:13=
px;color:rgb(38,40,42);">
          <div> On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D.
            Leech <a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com"=
 rel=3D"nofollow" target=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wro=
te: </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"ydp10566da0yiv8756072813m_-3650333112459443087ydpc99=
4c9a6yiv4349751442ydp5189b7afyiv7691143590">
              <div id=3D"ydp10566da0yiv8756072813m_-3650333112459443087ydpc=
994c9a6yiv4349751442ydp5189b7afyiv7691143590yqt92825">
                <div>
                  <div>On
                    01/05/2024 08:25, zhou via USRP-users wrote:<br clear=
=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue, Helvetica, Aria=
l, sans-serif;font-size:13px;">
                    <div dir=3D"ltr">Hi All,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I am trying to use 4Rx and 4Tx
                      antennas from two X310 USRPs. I hope the received
                      signals have stable phase relationship but they
                      don't seem to be. I am wondering why and how to
                      fix it.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I measured the phase using the
                      connection as below:</div>
                    <div dir=3D"ltr"><img title=3D"Inline image" alt=3D"Inl=
ine image" style=3D"max-width:800px;" data-inlineimagemanipulating=3D"true"=
><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">cos(t)+i*sin(t) signal is split into
                      and received on four Rx antennas.&nbsp;<span><span st=
yle=3D"color:rgb(0,0,0);font-family:Helvetica Neue, Helvetica, Arial, sans-=
serif;">Two
                          X310s are connected to the same OctoClock for
                          10MHz Ref and PPS. Tx and Rx commands are all
                          timed. The measurement results are as below:</spa=
n></span></div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                      <span></span>The Tx signal is continuous during
                      test. I measured phase every second for 20 sec. In
                      the 2nd USRP, the phases are stable on both
                      antennas while it is not in the 1st. If I change
                      the Tx signal to the 1st USRP, then the results
                      swap - phases become stable in the 1st USRP and
                      unstable in the 2nd.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">My first though was that there might
                      be small CFO between USRPs even though both are
                      connected to the OctoClock, but CFO should have
                      caused linear change. Here, the phase offset is
                      not linear and kind of random within 20 second
                      measurement.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">What can be the reason? Any
                      suggestion will be appreciated.<br clear=3D"none">
                      <span></span><br clear=3D"none">
                      <span></span>Kind regards,</div>
                    <div dir=3D"ltr">H.</div>
                  </div>
                  Are you setting up clocking identically for both
                  USRPs?&nbsp;&nbsp; That is setting the reference clock to
                  "external" and the 1PPS source to "external" on both
                  devices?&nbsp;&nbsp; Are you using a single multi_usrp ob=
ject
                  for all RX channels?<br clear=3D"none">
                  <br clear=3D"none">
                  What type of daughtercards are in your X310?<br clear=3D"=
none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div id=3D"ydp10566da0yiv8756072813m_-3650333112459443087ydpc99=
4c9a6yiv4349751442ydp5189b7afyqt89423">____________________________________=
___________<br clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:u=
srp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@li=
sts.ettus.com</a><br clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect" href=3D"mai=
lto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">us=
rp-users-leave@lists.ettus.com</a><br clear=3D"none">
            </div>
          </div>
        </div>
      </div>
      <br clear=3D"none">
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave=
@lists.ettus.com</a>
</pre>
    </blockquote>
    <br clear=3D"none">
  </div></div></div><div id=3D"ydp10566da0yiv8756072813m_-36503331124594430=
87ydpc994c9a6yqtfd03165">_______________________________________________<br=
 clear=3D"none">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto=
:usrp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@=
lists.ettus.com</a><br clear=3D"none">To unsubscribe send an email to <a sh=
ape=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofoll=
ow" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none=
"></div></div>
            </div>
        </div></div>_______________________________________________<br clea=
r=3D"none">
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com<=
/a><br clear=3D"none">
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave=
@lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div>
</div></blockquote></div></div></div><div class=3D"ydp10566da0yqt5458153538=
" id=3D"ydp10566da0yqtfd43156">____________________________________________=
___<br clear=3D"none">USRP-users mailing list -- <a shape=3D"rect" href=3D"=
mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-=
users@lists.ettus.com</a><br clear=3D"none">To unsubscribe send an email to=
 <a shape=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"=
nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=
=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_3351178_2019249056.1714636885966--

--===============5638006337456590548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5638006337456590548==--
