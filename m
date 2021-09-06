Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DD8401D2B
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 16:38:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 741503841E7
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 10:38:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="QMNDOrlT";
	dkim-atps=neutral
Received: from sonic305-2.consmr.mail.bf2.yahoo.com (sonic305-2.consmr.mail.bf2.yahoo.com [74.6.133.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 95DD9383D43
	for <usrp-users@lists.ettus.com>; Mon,  6 Sep 2021 10:38:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630939089; bh=viOkTmjpthjUWGRgf8ipbEZ+DcYfs9n60tfTdIkNZtc=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=QMNDOrlTbJthVFNp4b7okldpRl2FYW8jk5j23UYkzB672DJqW91MFD0pQ2DXIwp0jMbMNewXcj8r092rU8P+gVENTj8ERLsWRmQDTnGPys8JK1t/ICQETvlFMnfMqgTVFrR1SgLm+4dmc2KjCU1BiFjOj/H/KC1OMnVaeesCK2k2cBrNz3gSBkLXBTFwHpxx44m1CpOZ3ETxGneru9p79LG13gmtGIzlbM7bMLcoW/3cxE24ezRONQB6CLGwFSRiVefRAs19xNvLdW0jD2aTx/xaxM/6OIDMOA4u7PWcR1r0c9fyHJfSNUJVuchHe5sUruL3XLZjnHA0kg61Ncr1JQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630939089; bh=vk6by5RhkO0NLBA8uIRPOHoUG6Cntp8GUiY1n2kBolf=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=puQG5LrYJKSwssMVl8gPXNGBI/raYf1Gi2yGomTNLYvNNAHbQicFDD+JQM9uY8R0o5DkHHJG614BZv2CEwwiy0CsZptpR6UJGweikH4t66Wx8pTMB77ZUbFTKG6g0tWw2x1n6uD+mkGApG+abDyQvB26nXas0xYz6OW64v1MLuoiSnoBZbxjEg5gzts2BO87NF02PyyMXZtu/y3uDshylmNJwsRiI0kBm1ytaX6F1lH78HW/3FlWYhKmujB6FzYcY/9ACQb41n4t8HVKZPZ0thvBA7L3Bk+uajLNG7TGr820UWwYtB1pGjAUFfdygQHmPbaVNsEuzWt6DPC8tRJR2w==
X-YMail-OSG: MSemo9AVM1k7HRuRs3wlbUGFzzNdtSUFTuV2BX9ojjFQGvfs3xrLyPPuusumRPT
 Bl2KqOpnf_wUcbRHx45ALsozz7FJHXrsfxR4a6xAkSme.Xdifd4eHpG8XGAtvJQzKZNCHoAe1vZ2
 icSntRf8Y4.8eV4uEr5KWQelBRnRLG1DB4N34kq2RT0H88vzodvJP2RoE1q3ZATnyZ6bnrXs8Ipk
 jScsDazZepFlaJ0jzwBLQW0E_0miuOvclApN.yvyu9VcT_DKvsqnxWLwfTSKT3ZdcxkTlQXMMT8g
 USSKEBp1N0dX3IEhMelqetpatOswHnaVketvHaOfOvrQcubgjy_cvSBadcekpzKJfH8sSaUZK7hH
 5jmArItqyfzxx586ZcBFb7Y5Tsc8POtaz8gSEBQ4zELuPRi8yfAwofQNHeWBpOh6zV8sojEfO1PL
 R4cYtzLQVhHSwQvjp5Bs6pSmRMbQkIXoLhfv7N5J.tsVzZpbg4feyyC.3PnnD4ksRzQ_j5NK_nEL
 9harXwuMs_BQ1sFUrky2NpFpUO6vvp_Wj9QZeFWf9ea.aN205Q7Ckbe90QT2j3DGV8t.xrecphte
 9NMX7xGE1Uqg2hLMkDK4HsavaFrbeoQh2PQn_MZnKfZZL.ucUjTsTDcZlqDMmKK0hKpfDG3hiTZy
 ztg10k40GAU87elSiWB.KThLEVWg8.R2mo19azkei4steOzbcVGzUnqxmr26iQl..9PjK85RG1y.
 sQkhdChQApuS9sz6UD5.flOd3WBWp_AoXKLH.KqGT0kczjBYjhFzn4wYv6oF.0hMTfUwmMIxh.zY
 GFGyKqden9HehFm55VBlln3zu0O526QYwNgHeEf_OdX2OSVIWriKqO_hHuVu.hqJZPtLLT9vByZ9
 ifOMAGZu8cAVYSG825syuUsBh6aIcO5UjiiheMS_bItQGzrlnsIbaZgQo.ZBGL_B7VBWe0x3ndqM
 gkSzABiWnmO53xCKCL_ZUovB8gsQv.aSM5MRWQ7ob76uao6NUtrSGLv0m2V9qOApXlBNKijoaXPQ
 IyhMeOFy0vsycLNufmB9V4N7ebyEpnkPp5G17dbeRz0DPP_O8O3Im7oJmqMn8utUwCzqQ1EPQpk8
 f0SPYduC9UPxhE7U9qbK06QII3Q3x4hz5royF4dcMTBFZcFmypeA6E5P0l9PUF2zq.LQ3HRDfvzX
 LoggGCgYD__hSUTpWBlwUmj7kiybOSoPmp_Rdx9XB_RKPmA8vP2RSgtoipnGW_artT0PGS1Qaemu
 A5LNlhbk.fxAN83c9YnkqenYOSY_YzZHNs3KQ28OC8HdDHwEIJWiSDKhrVVKNnlRv_AMBbjvhNO8
 G9wrGkG1JLrRWPFVo9qz2bSmx9w0Pzqi2J0_Nf1UrK.CZkXq8T2pcnQIsmmI6tmCsG4hnmvviHjn
 gVbOYwU3YwHJ7c130fmDI65P5Gxy6Ty_fOglcQKwsV88ICwRbFcDD1dYs.KJpWbvOqfjuZAKL17K
 5ncjNNPGqp5A17zBKEiKIjQXj66PUZ8bwdAhjbZqFrMqed__s.DugKez9wU8_ZYfC4Xoqi..uZpE
 s9rDP5AOO9.3AfK9V5aLMUNXsqMav4M67Ddt77eUnnJ7vzJrdDY5CxoRP8X_9d26VYKmrw4hvHi5
 d0nobeAabeRqONrNRVyNVBxjKAeFgwm392cEPTuPw31vICn8807Cr1YvB7nukBwiShmpgKbUkRM9
 TK66U5duBE.zznN.8uR.cUtieKFTUFBnXzaSV9mvYhpH3DfUwX5ZEjYgb6VoQO2gX1hDpSsGrRCY
 BIollPhzKYAbUwG9COD4nPXWChZ4yVFF3LKpcp0h5lTZcJwQ9aRnLzNV2mkzXQdQKFdtN2bkLMC9
 _vTHg8j0ISIxFTRs_uKHvSBQA7e6h9zz76ZnslbWhsfvSm9XWs5yJAJxKeEmM9uwG_Ri.JGavDjO
 R5PdbzJTIWCncgP0m4tsNDMcyjfYiMoMouBSQWaWIVFI90h5FW1YE5U37iqkpNCGITJl8tnGw05X
 dEZm8lQ9qtmDkenp1Ge6KABoXStBoDdd25mNnKN2PyCbcGrx7XusIdQcPEz_2oXUU8AcOWPyJ9Yj
 xclLA9X.Jv2vQKIbGfZzJMaapbP2FHO6PPTkDATZLsSCLFZaGE8WrCANRf47waDqTJkjMYb.qdo5
 earzs5M5sacNfO7lKQlu0AuLJS70nEP6NAYFXRBEjK_hNoABgfl0RiHEsMMqRKZJUJ3XqqSE162B
 kZpwOjor89REaDjYu03qrv7Heqovf76J3NquCxM.NmKOA4NUcYB0uEW8_Yho-
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.bf2.yahoo.com with HTTP; Mon, 6 Sep 2021 14:38:09 +0000
Date: Mon, 6 Sep 2021 14:38:07 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1905083994.1719552.1630939087195@mail.yahoo.com>
In-Reply-To: <4afe8421-25a7-4607-cb3e-77de5a2e048f@gmail.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com> <78915145.1401871.1630855703615@mail.yahoo.com> <4afe8421-25a7-4607-cb3e-77de5a2e048f@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: KZQKBGKB5N7ZAE2CRHGENXWEL7SQVEOQ
X-Message-ID-Hash: KZQKBGKB5N7ZAE2CRHGENXWEL7SQVEOQ
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.10+X310USRP: Error in Rx in Final Stage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KZQKBGKB5N7ZAE2CRHGENXWEL7SQVEOQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5616262196641522404=="

--===============5616262196641522404==
Content-Type: multipart/alternative;
	boundary="----=_Part_1719551_718202888.1630939087192"

------=_Part_1719551_718202888.1630939087192
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
Thanks for your comments.What is group-delay in FPGA? I had a guess that th=
ere was some delay between the time instance when FPGA issued Rx command an=
d the time instance when ADC started to sample. Does group-delay mean this?
I use time-based capture - specify a start time and specify the number of s=
amples to capture,=C2=A0uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STR=
EAM_MODE_NUM_SAMPS_AND_DONE);
stream_cmd.time_spec =3D time_spec
stream_cmd.num_samps =3D=C2=A0num_requested_samples

In a while loop, I keep calling=C2=A0rx_stream->recv() to receive samples.=
=C2=A0When the number of samples are received, capture is done.=C2=A0
The samples are saved in buffer when calling recv(); after all samples are =
received, they will be saved into a file and processed offline.
From the EVM results, I don't think the whole timing is shifted between the=
 two UHD versions, otherwise, the whole EVM should become worse, but we onl=
y see the final EVM becomes worse. It looks to me that FPGA is "releasing" =
ADC earlier than it should. If I increase=C2=A0num_requested_samples, that =
seems to delay its release.=C2=A0=C2=A0
Look forward to your further comments.=C2=A0
Many thanks,
Hongwei


    On Sunday, 5 September 2021, 20:47:39 BST, Marcus D. Leech <patchvonbra=
un@gmail.com> wrote: =20
=20
  On 2021-09-05 11:28 a.m., zhou via USRP-users wrote:
 =20
=20
 Hi All,=20
  I have a problem in using X310 USRP after upgrading UHD from 3.10 to 4.1.=
0. I am using it to capture NR5G radio signal in UL. After analyzing the ca=
ptured signal, the quality in the last subframe is worse than the earlier s=
ubframes. EVM =3D [1.014, 1.08, 1.055, 1.053, 0.954, 1.043, 1.145, 1.112, 1=
.162, 1.072, 1.131, 1.125, 1.038, 1.08, 1.003, 1.1, 0.972, 0.941, 1.046, 0.=
917, 1.01, 1.023, 1.025, 0.982, 1.101, 1.044, 1.089, 0.987, 0.923, 1.022, 1=
.012, 1.009, 1.021, 1.037, 0.998, 1.112, 1.112, 0.981, 0.987,=C2=A02.785]
 =20
  When using UHD 3.10, I had no such problem.
 =20
    If I deliberately capture one more subframe with UHD 4.1.0 but ignore i=
t when analyzing the signals, I will have good EVM. =20
  Is this a bug in FPGA for UHD4.1.0 in X310?=20
  Thanks for any input.=20
  Hongwei=20
 =20
   My guess is that there are just slight timing and/or group-delay deiffer=
ences between the two FPGA releases, and your capture time is just slightly=
 too short
 =C2=A0 to account for that.
=20
 It is inevitable that going from a quite-old release to very=C2=A0 much ne=
wer (latest) release that there will be subtle things like group delay diff=
erences between the
 =C2=A0 two FPGA implementations.=C2=A0=20
=20
 How do you decide when you are "done" capturing?=C2=A0=C2=A0=C2=A0 How are=
 you capturing?=C2=A0 Do you do your processing in real-time, or do you cap=
ture to a file then
 =C2=A0 process the file.
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1719551_718202888.1630939087192
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpe09f327fyahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>Thanks for your comments.</div><div dir=3D"ltr" data-setdir=3D"false">What=
 is group-delay in FPGA? I had a guess that there was some delay between th=
e time instance when FPGA issued Rx command and the time instance when ADC =
started to sample. Does group-delay mean this?</div><div dir=3D"ltr" data-s=
etdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I use time=
-based capture - specify a start time and specify the number of samples to =
capture,&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false">uhd::stream_cmd_=
t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br></div><=
div dir=3D"ltr" data-setdir=3D"false"><span><span>stream_cmd.time_spec =3D =
time_spec</span><br></span></div><div dir=3D"ltr" data-setdir=3D"false"><sp=
an><span><span>stream_cmd.num_samps =3D&nbsp;<span>num_requested_samples</s=
pan></span><br></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><=
br></div><div dir=3D"ltr" data-setdir=3D"false">In a while loop, I keep cal=
ling&nbsp;<span>rx_stream-&gt;recv() to receive samples.&nbsp;</span>When t=
he number of samples are received, capture is done.&nbsp;</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>The samples are saved in buffer when calling recv(); after all samples are=
 received, they will be saved into a file and processed offline.</div><div =
dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D=
"false">From the EVM results, I don't think the whole timing is shifted bet=
ween the two UHD versions, otherwise, the whole EVM should become worse, bu=
t we only see the final EVM becomes worse. It looks to me that FPGA is "rel=
easing" ADC earlier than it should. If I increase&nbsp;<span><span style=3D=
"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-s=
erif;">num_requested_samples, that seems to delay its release.</span></span=
>&nbsp;&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div di=
r=3D"ltr" data-setdir=3D"false">Look forward to your further comments.&nbsp=
;</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" da=
ta-setdir=3D"false">Many thanks,</div><div dir=3D"ltr" data-setdir=3D"false=
"><br></div><div dir=3D"ltr" data-setdir=3D"false">Hongwei</div><div dir=3D=
"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false=
"><span><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, He=
lvetica, Arial, sans-serif;"><br></span></span></div><div><br></div>
       =20
        </div><div id=3D"ydpb3a0926yahoo_quoted_1405315321" class=3D"ydpb3a=
0926yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Sunday, 5 September 2021, 20:47:39 BST, Marcus D. Le=
ech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpb3a0926yiv5783056899"><div class=3D"ydpb=
3a0926yiv5783056899yqt3445910838" id=3D"ydpb3a0926yiv5783056899yqt17672"><d=
iv>
    <div class=3D"ydpb3a0926yiv5783056899moz-cite-prefix">On 2021-09-05 11:=
28 a.m., zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div class=3D"ydpb3a0926yiv5783056899yahoo-st=
yle-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif=
;font-size:13px;">
        <div dir=3D"ltr">Hi All,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I have a problem in using
          X310 USRP after upgrading UHD from 3.10 to 4.1.0. I am using
          it to capture NR5G radio signal in UL. After analyzing the
          captured signal, the quality in the last subframe is worse
          than the earlier subframes.</div>
        <div dir=3D"ltr">EVM =3D</div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(23, 43, 77);font-fa=
mily:-apple-system, BlinkMacSystemFont, Roboto, Oxygen, Ubuntu, sans-serif;=
font-size:14px;background-color:rgb(244, 245, 247);">[1.014, 1.08,
              1.055, 1.053, 0.954, 1.043, 1.145, 1.112, 1.162, 1.072,
              1.131, 1.125, 1.038, 1.08, 1.003, 1.1, 0.972, 0.941,
              1.046, 0.917, 1.01, 1.023, 1.025, 0.982, 1.101, 1.044,
              1.089, 0.987, 0.923, 1.022, 1.012, 1.009, 1.021, 1.037,
              0.998, 1.112, 1.112, 0.981, 0.987,&nbsp;</span><font style=3D=
"font-family:-apple-system, BlinkMacSystemFont, Roboto, Oxygen, Ubuntu, san=
s-serif;font-size:14px;background-color:rgb(244, 245, 247);" color=3D"#de35=
0b"><b>2.785</b></font><span style=3D"color:rgb(23, 43, 77);font-family:-ap=
ple-system, BlinkMacSystemFont, Roboto, Oxygen, Ubuntu, sans-serif;font-siz=
e:14px;background-color:rgb(244, 245, 247);">]</span></span><br clear=3D"no=
ne">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">When using UHD 3.10, I had no
          such problem.<br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr">If I deliberately capture
              one more subframe with UHD 4.1.0 but ignore it when
              analyzing the signals, I will have good EVM.</div>
          </div>
          <div dir=3D"ltr"><br clear=3D"none">
          </div>
          <div dir=3D"ltr">Is this a bug in FPGA for
            UHD4.1.0 in X310?</div>
          <div dir=3D"ltr"><br clear=3D"none">
          </div>
          <div dir=3D"ltr">Thanks for any input.</div>
          <div dir=3D"ltr"><br clear=3D"none">
          </div>
          <div dir=3D"ltr">Hongwei</div>
          <div dir=3D"ltr"><br clear=3D"none">
          </div>
          <br clear=3D"none">
        </div>
      </div>
   =20
    My guess is that there are just slight timing and/or group-delay
    deifferences between the two FPGA releases, and your capture time is
    just slightly too short<br clear=3D"none">
    &nbsp; to account for that.<br clear=3D"none">
    <br clear=3D"none">
    It is inevitable that going from a quite-old release to very&nbsp; much
    newer (latest) release that there will be subtle things like group
    delay differences between the<br clear=3D"none">
    &nbsp; two FPGA implementations.&nbsp; <br clear=3D"none">
    <br clear=3D"none">
    How do you decide when you are "done" capturing?&nbsp;&nbsp;&nbsp; How =
are you
    capturing?&nbsp; Do you do your processing in real-time, or do you
    capture to a file then<br clear=3D"none">
    &nbsp; process the file.<br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div><div class=3D"ydpb3a0926yqt3445910838" id=3D"ydpb3a0926=
yqt23932">_______________________________________________<br clear=3D"none"=
>USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lis=
ts.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com=
</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect" hr=
ef=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_=
blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_1719551_718202888.1630939087192--

--===============5616262196641522404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5616262196641522404==--
