Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8146A408256
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 01:32:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BBA42384A26
	for <lists+usrp-users@lfdr.de>; Sun, 12 Sep 2021 19:32:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="LBOy4zE5";
	dkim-atps=neutral
Received: from sonic315-14.consmr.mail.bf2.yahoo.com (sonic315-14.consmr.mail.bf2.yahoo.com [74.6.134.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 8BA483844A5
	for <usrp-users@lists.ettus.com>; Sun, 12 Sep 2021 19:31:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631489466; bh=JRYCG+NSZS34wuDogyYfEtZUbBU6cfg0BDW1pjqfyBk=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=LBOy4zE5ruNBbXYnv1gC1YljYPeDSCX0Yc7ZgP5vfM4y8D6e6ytVbvaUQ9MeQZalL+fBS8keP3VhlASPZeV7BzOO5d3cKYd2JovUFiAumv0TwlWBZrU4ec4OL1OKvIPJqyaqEcN8TZkFTaox9XyfiNqJOVGX4SCvRNk9b10Lqr9FovIN2mZpPJZHmBX011U+UvE6Dzc+m5HJStETdF4KItJpT8+InIm+/gLdStR8SDaljPy42DSdpfwC8kG4iEWYZX6fCX6v4teziD8120opFKlu4PLRul9LIfwSCHWj+NAtS+G/ABsWivDts0bXbyqKgFgQk+wgION4+ua4uOnuXA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631489466; bh=MHiVcsmXQsVpB0lEZtJ6LRq2M8DZB5BF3x432pWLs1t=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=MoxsbxnCJOlv4q/61I1lSNclCDCCCIcfQgSgZ7M+UFVd+bM9o9VLmOUqm8Tm5GBMDnYYyZ+VgbkCKOyQVssmlBXcMX+q7ltIs8gNShFDygCHFs0cpy7BDIt1WQiXGt+Yl2IbHgxkFhVnorijKfOKL2AoDUcZvFyPNmaw17wBLrjDNFx6O0FCp7sBBz99CZv0XgCu4pBuEA5vRFDQXbpGaUZAbs8PIW3HDNdi0VH59kjkaB8MXnccSrObLFMpouYJ87/yh16qUgLWOwNRnfjTd6N0o+CmHxyYhcaMCctLI1mIgVN7axJDUZ3KOi9UGWi3GpMoZqixSRnaz+lBROc1Zg==
X-YMail-OSG: fCzDgJYVM1n7hp0AAF8tlX8gc5Cfi0a9.VtJqMDXiFPn_xADtAn2QS.etIPvIiZ
 3fNLByLB21sPcEpz_edJs.PROL_w39kp4Ai44mm3avNm0WXZgZ0XAdmXBQ06E0wpTWe75NHQ5jUQ
 5Ru.6fXxt6QTngaOCVCknZCfhZ.Or5CVJzhNkjnaWqLNsudlVwiEQL5IqW1vPvde0FXWN5keqxp5
 tIYzgd.fK1S6FcbOBa2vAYpegjAjUh7Ss1mjGt5tj1of2_d2qglC_NGklnskx7BdlFg_p46qE5oW
 Qcf6IG50MI1QI6Po7RWwGAVV6xNERapd2P3fTB0xtfePr8tBoo2glpQz.yDYsMyGZEItEZMKYcyB
 usUp3eS0HuCDOos5vGMM3YUWi3DEhUQcHo2tJ.cXCRT3t07WzbcOF2VxrU8lr3DFL1t3O8xIq_BZ
 TuuZFB4srexuFrH.OPvPPs1mp.aI79bcOH0Y8d2QkQNQSL.XpGzRPPwA_OqPi1Ww34USP7tw9h9j
 sYWhO24Y4WjYPpvSvqL3HhBxaqGvnIQtw3UJGJFhY2GIKG2yU4x6d_gzKmTY55ggcKrpGUKpzrwC
 sdC6iLns..SDj5jfltsGtO7cmC2m2MpJ160drbN4..msQT.xVXqcABjww0j8rWUAlDsgCRGnJ7An
 I48UEFdF2iM605_ZKuFlYU5491DkPEiPksrFh0SmzJUiqN2ErLiMSRn9KlAKDuLSgZqh2ghZq2iI
 ZKufWzOSVlQpdcAr.wxFchoo8R0BGKPcApBKjHeiz2VhKuY6TYU47hCu.oHn3TQMA8qf3rsNxnP8
 LQ0PlEiAiriLtJlDW5YeiZB2LVW3br5EEf.jw9gKbfK7w7o07nu9AVrGOtdQTHdjJM8c0Mqj7DSH
 ouGkgdprTEvwb0NNbC0u.eMH7S7TJ7jHdIOrss20ttTSR9JcipDmlcmWxOzz0V_gTlO4MpZnybk6
 n1o3tUq_olislueM17ldhFtgiG_fOHEkEuDXv1xaBozgP0YxisE1lDglIEFrBwujxEXvoJO_oDph
 vwTIo__rGejDnAduuvytxmKIxdWuh8seBQatpS8wvJblVwJepOdDwXmZjcPjO57fUP.MrXOmE5f0
 QLIntJXAF2JwSK_GcmXLe5IVl02vo5tbOtBQ9hnkUvXkuykmCsJyXU2isTaqYb8daMdhfpv4B_HI
 49kTGb6qHixjHRogD0mpoe0M8CfOqYNKjILOiLOHyJm5xv1pM_oRI8khPLDR7pvkstl70LRtMnvD
 tuDSB1CjLtYY5uZ38P2Qisyq7D_4QrxVV.iEgC9XNx6TybCqOU4.3VIhVqkGknI_nprxFgfI6pra
 NJ2RUGmRP8G.ER87tnPHzua.DeDtOLlrJoB3JtGbLWC5JGUL0QqtGKa_s5zxa4hterSCEDvBpUa7
 FIAt.6LPfm90J38P9fyaKFgg_AN4.rQKHChYjTnqC2mSTEx.S71Ac3.9.WtxpeTe0A1h_tkjtWI4
 QpDwZf0HimAuMKk3XNh1OciP2101rI6oc7HZl8D9Ubq7I_GJ8RkJ9MkS54Bh4oYerAZx7KjnfuDb
 zYDNwBE0CMwMVkgK3TH1yAaobrGzDIeqLDHUyUkIo7XWqz8Kz_3.x2NQ9NsYnO.g3Q.OT8Wr7Qhy
 sCu.XOVPjOqZKYgMzFegpfEP3qKwEdoMCiO4qg1ZLeYlGK0gMUlF5l6L9JVHLWDLgwSGAJnJGiFz
 ek7JVs3oGUN2W2h0886CNuVR.Cz79ngqvd5KuH7QeS5yHzE7QD_XORU93ZuoGmnvWUszXvhJHzgD
 NL85ACNETQqbEoPlFg3LFicQH.UUl037hSV5pZ23ZTnkQjbvN8340ryL0vzA4.OCiZem0ViMrG65
 Tnt0CXnRFRzKh_H1lAr1Zba6PkQsobhO.30EbabkJi5n3JK9e0cSEZ84bTzS.jmMEAI06OQJlXVt
 en8bIK3zEeWBSlnS6oTK6Yzjs8iysmc3o2ySOn6KqurudxiJPapZRL0hhrEbH05DqUJRhBKOYbsT
 G5bDDhUjVoBmy0j6oVImruauG0SVChwQJ2QI5lmjPLdoc5shiTMGWGXEO8H5sK0ertkhiClX9H5Q
 Z9WPc4uoiFTriL.bpf_SMLc9xMSmCHxp7INW2wZQySMVQJP_5k3v7K6x2nHaIS5ihu1_lPORG1rQ
 uEtqPpdg8AAfJK2ZUsoqGtsECQgXuMZNOXfmQ60m3zAIZGcSyPEc1lqeCflVGiQ27QkGnWkcdJ6u
 kuMF0V.brytCDOICgWHLUm2GVgvAcg4fwz1cjzHU9vxk.GmxDCXtMF5nq1Nik
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.bf2.yahoo.com with HTTP; Sun, 12 Sep 2021 23:31:06 +0000
Date: Sun, 12 Sep 2021 23:31:05 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <2078480465.2919564.1631489465910@mail.yahoo.com>
In-Reply-To: <ca9cac4c-71ce-7887-cf52-3e0d36d45d28@gmail.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es> <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com> <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com> <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com> <804336125.2658048.1631299169124@mail.yahoo.com> <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com> <899213065.2697497.1631311503116@mail.yahoo.com> <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com> <1529290832.2403454.1631339791541@mail.yahoo.com> <1b1061ac-8a1f-2009-f5a7-19b58c532fd5@gmail.com> <410306297.2886349.1631467905488@mail.yahoo.com> <ca9cac4c-71ce-7887-cf52-3e0d36d45d28@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: O5H7WBGKHHSXBDELHHRNRRXFZ5Q6NQTG
X-Message-ID-Hash: O5H7WBGKHHSXBDELHHRNRRXFZ5Q6NQTG
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O5H7WBGKHHSXBDELHHRNRRXFZ5Q6NQTG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5319229929237955852=="

--===============5319229929237955852==
Content-Type: multipart/alternative;
	boundary="----=_Part_2919563_1187292857.1631489465908"

------=_Part_2919563_1187292857.1631489465908
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thank you Marcus.I tried as below:my_stream_args.args["send_buff_size"] =
=3D std::to_string(500000);
my_stream_args.args["send_buff_size"] =3D std::to_string(5000000);
They give the same results. The 1MB limit still exists. I don't know where =
this limit comes from.Am I wrong in configuration?


    On Sunday, 12 September 2021, 21:02:36 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
=20
  On 2021-09-12 1:31 p.m., zhou wrote:
 =20
=20
 Thanks Marcus. Yes, I am using 2xTx and 2xRx at 245Msps in N321. I underst=
and that if my host CPU is not fast enough, no matter how much buffer I hav=
e, it won't help. Fortunately, my tests are actually working at most time, =
which means that the CPU is fast enough for 245Msps. Maybe it is just margi=
nally fast enough, not super fast. I run the test for a few hours. Occasion=
ally, there are ULLL. So this is a stability issue. I think a bigger buffer=
 will smooth the ripples in host performance. Though separate CPUs and thre=
ads are used for Tx, Rx, control and other processes, they share Linux, RAM=
 and buses, so they are not completely independent. There could be collisio=
n in resource access occasionally. If that happens, Tx thread can be hung f=
or a short while and couldn't fill the buffer in time before the the device=
 gets starved. Because the current buffer is very small, its tolerance to s=
uch interrupt is very limited. I think increasing the buffer size will make=
 the system more reliable.=C2=A0=20
  Thanks for mentioning the host-side buffer between the application layer =
and the ethernet device drivers. How to check the existing setting, and how=
 to change it?=20
 =20
  You can look up "network buffer monitor Linux" on Google, and get a "lot"=
 of stuff about various bits and pieces under /proc/net=C2=A0 to look at in=
 terms of dynamics.
=20
 When you specify send_buff_size as a *stream* argument (NOT a *device* arg=
ument), it eventually turns into a SO_SNDBUF parameter for the
 =C2=A0 setsockopt() call, which controls the size of the app-->kernel buff=
ers.=C2=A0 In terms of the *dynamics*, you can surf bits and pieces of the =
/proc filesystem
 =C2=A0 to get real-timeish stats of exactly which bits and pieces are bein=
g used *right now*.
=20
=20
  =20
------=_Part_2919563_1187292857.1631489465908
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp4fc3d016yahoo-style-wrap" style=
=3D"font-size: 13px; font-family: Helvetica Neue, Helvetica, Arial, sans-se=
rif;"><div style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-ser=
if;"></div>
        <div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helvet=
ica Neue, Helvetica, Arial, sans-serif;">Thank you Marcus.</div><div dir=3D=
"ltr" data-setdir=3D"false" style=3D"font-family: Helvetica Neue, Helvetica=
, Arial, sans-serif;">I tried as below:</div><div dir=3D"ltr" data-setdir=
=3D"false" style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-ser=
if;"><span><span style=3D"color: rgb(0, 0, 0); font-family: monospace, fixe=
d; white-space: pre-wrap; background-color: rgb(253, 253, 252);">my_stream_=
args.args[</span><span class=3D"ydp326b50e8stringliteral" style=3D"color: r=
gb(0, 32, 128); font-family: monospace, fixed; white-space: pre-wrap; backg=
round-color: rgb(253, 253, 252);">"send_buff_size"</span><span style=3D"col=
or: rgb(0, 0, 0); font-family: monospace, fixed; white-space: pre-wrap; bac=
kground-color: rgb(253, 253, 252);">] =3D std::to_string(500000);</span></s=
pan><br></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: =
Helvetica Neue, Helvetica, Arial, sans-serif;"><span><span style=3D"color: =
rgb(0, 0, 0); font-family: monospace, fixed; white-space: pre-wrap; backgro=
und-color: rgb(253, 253, 252);"><span><span style=3D"color: rgb(0, 0, 0); f=
ont-family: monospace, fixed; white-space: pre-wrap; background-color: rgb(=
253, 253, 252);">my_stream_args.args[</span><span class=3D"ydp326b50e8strin=
gliteral" style=3D"color: rgb(0, 32, 128); font-family: monospace, fixed; w=
hite-space: pre-wrap; background-color: rgb(253, 253, 252);">"send_buff_siz=
e"</span><span style=3D"color: rgb(0, 0, 0); font-family: monospace, fixed;=
 white-space: pre-wrap; background-color: rgb(253, 253, 252);">] =3D std::t=
o_string(5000000);</span></span><br></span></span></div><div dir=3D"ltr" da=
ta-setdir=3D"false" style=3D"font-family: Helvetica Neue, Helvetica, Arial,=
 sans-serif;"><span><span style=3D"color: rgb(0, 0, 0); font-family: monosp=
ace, fixed; white-space: pre-wrap; background-color: rgb(253, 253, 252);"><=
span><span style=3D"color: rgb(0, 0, 0); font-family: monospace, fixed; whi=
te-space: pre-wrap; background-color: rgb(253, 253, 252);">They give the sa=
me results. The 1MB limit still exists. I don't know where this limit comes=
 from.</span></span></span></span></div><div dir=3D"ltr" data-setdir=3D"fal=
se" style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><s=
pan><span style=3D"color: rgb(0, 0, 0); font-family: monospace, fixed; whit=
e-space: pre-wrap; background-color: rgb(253, 253, 252);"><span><span style=
=3D"color: rgb(0, 0, 0); font-family: monospace, fixed; white-space: pre-wr=
ap; background-color: rgb(253, 253, 252);">Am I wrong in configuration?</sp=
an></span></span></span></div><div dir=3D"ltr" data-setdir=3D"false" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><span><span=
 style=3D"color: rgb(0, 0, 0); font-family: monospace, fixed; white-space: =
pre-wrap; background-color: rgb(253, 253, 252);"><span><span style=3D"color=
: rgb(0, 0, 0); font-family: monospace, fixed; white-space: pre-wrap; backg=
round-color: rgb(253, 253, 252);"><br></span></span></span></span></div><di=
v dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helvetica Neue, H=
elvetica, Arial, sans-serif;"><span><span style=3D"color: rgb(0, 0, 0); fon=
t-family: monospace, fixed; white-space: pre-wrap; background-color: rgb(25=
3, 253, 252);"><span><span style=3D"color: rgb(0, 0, 0); font-family: monos=
pace, fixed; white-space: pre-wrap; background-color: rgb(253, 253, 252);">=
<br></span></span></span></span></div><div dir=3D"ltr" data-setdir=3D"false=
" style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br>=
</div>
       =20
        </div><div id=3D"ydp4e070130yahoo_quoted_2347349800" class=3D"ydp4e=
070130yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Sunday, 12 September 2021, 21:02:36 BST, Marcus D. L=
eech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp4e070130yiv9503650012"><div>
    <div class=3D"ydp4e070130yiv9503650012yqt4326468561" id=3D"ydp4e070130y=
iv9503650012yqtfd96725"><div class=3D"ydp4e070130yiv9503650012moz-cite-pref=
ix">On 2021-09-12 1:31 p.m., zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div></div><div class=3D"ydp4e070130yiv9503650012yqt432=
6468561" id=3D"ydp4e070130yiv9503650012yqtfd72109"></div><div><div class=3D=
"ydp4e070130yiv9503650012ydpf6805185yahoo-style-wrap" style=3D"font-family:=
Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div class=3D=
"ydp4e070130yiv9503650012yqt4326468561" id=3D"ydp4e070130yiv9503650012yqtfd=
04034">
        <div dir=3D"ltr">Thanks Marcus. Yes, I am
          using 2xTx and 2xRx at 245Msps in N321.</div>
        <div dir=3D"ltr">I understand that if my host
          CPU is not fast enough, no matter how much buffer I have, it
          won't help. Fortunately, my tests are actually working at most
          time, which means that the CPU is fast enough for 245Msps.
          Maybe it is just marginally fast enough, not super fast. I run
          the test for a few hours. Occasionally, there are ULLL. So
          this is a stability issue. I think a bigger buffer will smooth
          the ripples in host performance. Though separate CPUs and
          threads are used for Tx, Rx, control and other processes, they
          share Linux, RAM and buses, so they are not completely
          independent. There could be collision in resource access
          occasionally. If that happens, Tx thread can be hung for a
          short while and couldn't fill the buffer in time before the
          the device gets starved. Because the current buffer is very
          small, its tolerance to such interrupt is very limited. I
          think increasing the buffer size will make the system more
          reliable.&nbsp;</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Thanks for mentioning the
          host-side buffer <span><span style=3D"color:rgb(0, 0, 0);font-fam=
ily:Helvetica Neue, Helvetica, Arial, sans-serif;">between the application =
layer and the
              ethernet device drivers</span></span>. How to check the
          existing setting, and how to change it?</div></div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <br clear=3D"none">
      </div>
   =20
    You can look up "network buffer monitor Linux" on Google, and get a
    "lot" of stuff about various bits and pieces under /proc/net&nbsp; to
    look at in terms of dynamics.<br clear=3D"none">
    <br clear=3D"none">
    When you specify send_buff_size as a *stream* argument (NOT a
    *device* argument), it eventually turns into a SO_SNDBUF parameter
    for the<br clear=3D"none">
    &nbsp; setsockopt() call, which controls the size of the app--&gt;kerne=
l
    buffers.&nbsp; In terms of the *dynamics*, you can surf bits and pieces
    of the /proc filesystem<br clear=3D"none">
    &nbsp; to get real-timeish stats of exactly which bits and pieces are
    being used *right now*.<div class=3D"ydp4e070130yiv9503650012yqt4326468=
561" id=3D"ydp4e070130yiv9503650012yqtfd26655"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_2919563_1187292857.1631489465908--

--===============5319229929237955852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5319229929237955852==--
