Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFDD8B968F
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 10:35:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 241E438562C
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 04:35:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714638947; bh=KbP4Zeqd1DOYXPWcodN5NHmCIKUNuSUlxDzkazPaDIc=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=oDxu0JsThnA7NpfNhER3BXLFXGukSi+5mj5I1DlSmW7a9jKKFo9roJPawbxIy9/K+
	 s5UP2aci9acTUrSRacHY56isY5hmgDbFR9iH6N6RozycxSLLYPJ7/4aKIZ7wnQMjE2
	 oL5N+1zNX0JZkR4mqfqbWIs766kzR1dTRH3Yayb/4oUdaDlqJz+La9p5DUkz7M/RhJ
	 0Tw1wqkbx3WjLnJG7gLRXYGUwDx6yskdMfG2tZDWqvAqL66aaylOAi76YZ6V3riZZ9
	 0Qys18V4A7JyBLh1xyyHf/KmDTJwKN4G+1im3NnQmQy5oExeWgecKY7MCLz0URZV0s
	 c/lSb0wgIN/yg==
Received: from sonic315-15.consmr.mail.bf2.yahoo.com (sonic315-15.consmr.mail.bf2.yahoo.com [74.6.134.125])
	by mm2.emwd.com (Postfix) with ESMTPS id 0FDA9385484
	for <usrp-users@lists.ettus.com>; Thu,  2 May 2024 04:35:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="RCXO4d1M";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1714638908; bh=T4kj6TCEOrwsN5RY0wfdNd/jPYwABZMHelkfYv8le5M=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=RCXO4d1Mp1IcKCepSnQw2YxVjfi68gjdghTpt+26p9MEnAEsxUQBEJ/D4vyRbkUyyo1dIdao2hBikFLX8og/9XXY4+Iee6mmdukYVOGHnt45yt+WOjsh/5wL75uaT8HvM/uNdegYjepweXHam4NQQzflH5ZNvOEZADZ3D59ChOsNXmQiLExydIkVP4HAEGxqfR2PwmetUMeOF1B9kdR0h5xt5cLVfcV4LJ7xngC4hdjI8q7MwBIvfuEll7CDgGF3Ri1eTq2gZ+3/VOnl0pIo/U1hvthI0CmAVIPk9mLpQPbp5cRPVra51e4HTAymTHTOia0MlYvVosABfZvWR0ydwQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1714638908; bh=VBEU7eG5TZ9PR/EKmcgRCYkKf4ecrSYKdnaX6UTsBWJ=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=No9mK0gnKmf5bziN/MxUmD7LTFUmXCHjVGM3TyCyKLbkBEfbNEjUZltkWDldbB1+ffIBFpfVZO+ttsyJc1X31ZCn83IU6eQFaLkdq28f059vwGprFNQqamylMrd7FQ+Gu9Zin4HM9TehFV3vF8VFQb4qqJkBEMq+92L/xaDxe6LQQXFI2sNlOvS+L0eWEqKhHtStJOXARYnRGIe7+KxATP0stnhk/HIHXBCAYn5LzZxWQo3BGdVBGnRkdwzkq1T5aZaWW45Ypp4xJooG5pM/VvyxXVZLwLVeNJlU0cbx/pMojLJsmjq53DbsE5vn3TlQQ4l+SSDG9QHgS1ZyJOokLg==
X-YMail-OSG: tw.0V0kVM1nPUTjqq2y7GG0CybAtnxCgS_lc0SjKB0BYU3R4fwDyWlIXztv_af_
 Hiqrv3oQdmeKVQ3rClwOT8EyG3q32_ZhOw_LnZ_xeh.W4qBHDtfWTQyGMH6.egQVjH.EvGmv1xIR
 ocvDzMprOyZ1F9K05UzXob4vbWAV0dkyF8o5xbbA6a0OtZjFwNZ6H9xyv859Yyekg8D7lZEfBBqy
 aBaFqQOLrw4Q2hQ2Th5tcAdmarijB_ibl6ioFjv.Wt3PMhdvaEmtdjpafgw.Ak0w0zq3clVCHiWD
 dbcbHpT4ugaN0CSB_B4qsSjGzxhvAPA7.3rgvfC.m2AKo1bQD3hYbgFw1tpDqfZSQjBN3BhKp_CV
 VM09VpIJCiZXG8plX.xQMng7qAH6qvsmG0DAH8ffhLve9oYha2w4FKMd.QgA8W_vc8Iqux7bWYKQ
 YVPJV39F43nN4JNtOq12GR8NlzwIys1EhnDd2ylo8s_IEdc0Eyh1xBGMCKsOqYge45uTqQE3il76
 qlNs2UOp7xZ_2PBkJ98xPaPbe.QvxlwKSIHhHOPI3wGTk_E4_vrvd5bMkifUvxcj9FqF6fqJc621
 0YCAJD6ccW69tW6Sdh_0Zcvxn3pOO2UMAT_VYTi9z8XSWt_Y75wVOGImT_Awa9VimWfip.e4NnNh
 v9M5YwsdAa_2jU7ACL9lEeo82wK9GDAHlES9mD5cTQvaclV8lArQ1Igd_gKLHTlkKoMLpJrriW1L
 S5lbbGjqcuHfUZKK1lh7IFa2f7njjd_xogWPuzv9QLkIegFjImC5P78HFhMx0qXNSxud_BZu0MCu
 MgufZEDmFUsaDFi65oH06crttrWtWhakYY37iOtOfqEH7J6jnhkRxT4_BpbeNp6oxCJdM.tngw62
 KACJq2bYwSbyHYETF5KMz9r5I.VeE5cv7N1_PglJ5yFaOAlRn0t2Vm8EdGdJa5d.uLYQMMtGBG2v
 Ph6DcIKbs9J2ZeLh7C69JMXYUI8QwCd2cvKWMv7kvEBIjV5yBlNAOxWCP86dlNSDr8kB_CHPuu3B
 aSBQ5XA6f.E.dIJu4s0JTzJmYqTX2YtEgewKKS3B6tpPZhXOPr2wH3863DxwjVYmsmjpmWMYHlMi
 CLM9259su7TnYQ8GGIKgM1e589V8kB2P9G9hYBsnvKbRSnfEFt.aNGMOjdTd7Mnp01i.CqzqAbba
 KvTba0CEk2tmS_El7n_4r_UypwubC.BVZyxEL3DkJn46TyQRgDmqhAnUoLFlk5lZCHKr4ID9tzhf
 Ki6fLtUGHZNUkopWbh_8u_M3Yo8zpT9abMp1otoUlbwQ_7eNmbOO0g4cGi_BxnDVgPpPdqYD728r
 ePVk5twzTekKXmakBt4DxXg1.MMvv1QbK0Ki8YlhjEnNtG011fo.EljZB5HzAbjkOQhWPMqXUKtT
 eTUPu6KThqZHHSn7rZS1Le682pLseji3eBQepAFe5RDIAHBkoi7BzTVjrDSteq.Dw_OkLEIamTtQ
 iyJktl8QvPXFwwUvWsMDv68877FCKPtbMGet48S1dVkmUzuWmCk743xG8HHQdSS2SUZqg.PNmWO0
 fV2ok3BnA4ExvBg6mbmYWp5rDcHoA7VaNfS4nTQh59dKxhGzbOolghyyCM.hsBi2bQx2FZBoIUkP
 QHV82.I_n_QsR8rqGRN4orIIiKwQ6k44abyVFr9TBrWNLX7FSuGlC5rc72G.rbugqqrFZjzra7KN
 JTdIm5laxFKLc2_7oZsxyWU.J9MFEeNzBBl6hCy5KkehS_Xhh9f4w5EkDdfSF29.jC7O2YI75JtC
 zYbwZ0J46J8Yng9ml8y6J_I8rDIogW.otqnvrX3K3_hR4E0yaM6Lp1BgDxEjBoESXp7wBH21jQOp
 Lor2kIFOzbgFbDZ9WI4581cQTVft0amgjZkmof3PtQqZu2UuXflu2IyKnmkF189dYITNFvb4xPW6
 hAsZTnOIZqph2bTUrC.CrPLaMpluhyN_j.cqOVwNC64rOgLTGNDLkLgV6Q_5551vhDY_oXp5Y15d
 g4zHsfhz9HvUuIyXO1xffIyWbBVvc.oEjnJMs45wvXUzh873DPoZg5OM4L68U3507JwWU5JQXADd
 FguNS2RftIcI4pK6ZNN8FwVGFrSi3tqQRGVDImHDVvGfp6O3d9QxP_PmNO9KYHB4VuqGyi4zZdOX
 VMyqEju.hOtVBgjqvq9ceXIWuio2kTA2vj4AHcRhaa9SkI97_wFWxEJrSwOLyPAF7bN4O9cKe12z
 8ScoqWrAdccdx6kB9fg--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 15fb8172-44ab-48b2-80b5-ecd9cf51c2ab
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.bf2.yahoo.com with HTTP; Thu, 2 May 2024 08:35:08 +0000
Date: Thu, 2 May 2024 08:34:56 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <364448237.3352894.1714638896087@mail.yahoo.com>
In-Reply-To: <f9a32cb3-21db-4b5a-b36d-8f9aaf3d8104@gmail.com>
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com> <e39abf8d-6490-481e-bbbc-b89593e88d2f@gmail.com> <336160565.3149887.1714566315941@mail.yahoo.com> <8fb7d502-818c-41e8-a5d7-455fa7778e38@gmail.com> <236821295.3178397.1714572681617@mail.yahoo.com> <d1a9560c-99c6-423b-ba10-26f08ee1b82e@gmail.com> <1458949585.3180965.1714575608497@mail.yahoo.com> <f9a32cb3-21db-4b5a-b36d-8f9aaf3d8104@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22256 YMailNorrin
Message-ID-Hash: DPJF54J2OMWDL4K3F6XNKNNTXQMFVXIX
X-Message-ID-Hash: DPJF54J2OMWDL4K3F6XNKNNTXQMFVXIX
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DPJF54J2OMWDL4K3F6XNKNNTXQMFVXIX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5541461855415138007=="

--===============5541461855415138007==
Content-Type: multipart/alternative;
	boundary="----=_Part_3352893_1558520350.1714638896083"

------=_Part_3352893_1558520350.1714638896083
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
"OK, so what happens if you measure the phase-coherence just between channe=
ls on the same USRP?"As shown in the plot in my first email, the phase is p=
retty stable between channels in the same USRP.=C2=A0
"
In the startup messages, UHD should put out some commentary about setting t=
he reference clock, and
=C2=A0 whether it's locked -- do you see a "locked" message?"Yes, it is loc=
ked:Checking TX: TXLO: locked ...Checking TX: Ref: locked ...


    On Wednesday, 1 May 2024 at 23:41:11 BST, Marcus D. Leech <patchvonbrau=
n@gmail.com> wrote: =20
=20
  On 01/05/2024 11:00, zhou wrote:
 =20
=20
=20
 =20
      On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
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
  Kind regards.       OK, so what happens if you measure the phase-coherenc=
e just between channels on the same USRP?
=20
 In the startup messages, UHD should put out some commentary about setting =
the reference clock, and
 =C2=A0 whether it's locked -- do you see a "locked" message?
=20
=20
=20
      =20
   And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?=20
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
    =20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_3352893_1558520350.1714638896083
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp4a256503yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>"<div><span style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, =
Helvetica, Arial, sans-serif;">OK, so what happens if you measure the phase=
-coherence just between channels on the same USRP?</span></div><div><span s=
tyle=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif;">"</span></div><div dir=3D"ltr" data-setdir=3D"false"><span=
 style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, A=
rial, sans-serif;">As shown in the plot in my first email, the phase is pre=
tty stable between channels in the same USRP.&nbsp;</span></div><div><br cl=
ear=3D"none" style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, =
Helvetica, Arial, sans-serif;">"<br clear=3D"none" style=3D"color: rgb(38, =
40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><span =
style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Ar=
ial, sans-serif;">In the startup messages, UHD should put out some commenta=
ry about setting the reference clock, and</span><br clear=3D"none" style=3D=
"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, san=
s-serif;"><span style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neu=
e, Helvetica, Arial, sans-serif;">&nbsp; whether it's locked -- do you see =
a "locked" message?</span><div><span style=3D"color: rgb(38, 40, 42); font-=
family: Helvetica Neue, Helvetica, Arial, sans-serif;">"</span></div></div>=
<div dir=3D"ltr" data-setdir=3D"false"><span style=3D"color: rgb(38, 40, 42=
); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">Yes, it is l=
ocked:</span></div></div><div dir=3D"ltr" data-setdir=3D"false"><div><div>C=
hecking TX: TXLO: locked ...</div><div>Checking TX: Ref: locked ...</div><d=
iv><br></div></div><br></div><div><br></div>
       =20
        </div><div id=3D"ydp2b720386yahoo_quoted_5329141996" class=3D"ydp2b=
720386yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                        On Wednesday, 1 May 2024 at 23:41:11 BST, Marcus D.=
 Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"ydp2b720386yiv1843514943"><div>
    <div class=3D"ydp2b720386yiv1843514943moz-cite-prefix">On 01/05/2024 11=
:00, zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;" class=3D"ydp2b720386yiv184351494=
3ydp8ec9f7f8yahoo-style-wrap">
        <div><br clear=3D"none">
        </div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div id=3D"ydp2b720386yiv1843514943ydpc994c9a6yahoo_quoted_5461441577=
" class=3D"ydp2b720386yiv1843514943ydpc994c9a6yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;">
          <div> On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D.
            Leech <a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com"=
 class=3D"ydp2b720386yiv1843514943moz-txt-link-rfc2396E" rel=3D"nofollow" t=
arget=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv4349751442">
              <div>
                <div class=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv4349751=
442moz-cite-prefix">On
                  01/05/2024 10:11, zhou via USRP-users wrote:<br clear=3D"=
none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div style=3D"font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;font-size:13px;" class=3D"ydp2b720386yiv1843514943ydpc994c9a6yi=
v4349751442ydpb1f78624yahoo-style-wrap">
                  <div dir=3D"ltr">Hi Marcus,</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Thanks for your response.</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">
                    <div><span style=3D"color:rgb(38, 40, 42);font-family:H=
elvetica Neue, Helvetica, Arial, sans-serif;">"Are
                        you setting up clocking identically for both
                        USRPs?&nbsp;&nbsp; That is setting the reference cl=
ock to
                        "external" and the 1PPS source to "external" on
                        both devices?&nbsp;&nbsp; Are you using a single
                        multi_usrp object for all RX channels?"</span></div=
>
                    <div><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Yes, I use multi_usrp
                      multi_usrp::make(<span>'addr0=3D192.168.12.2,second_a=
ddr0=3D192.168.13.2,addr1=3D192.168.14.2,second_addr1=3D192.168.15.2,master=
_clock_rate=3D184.32e6'</span>)<br clear=3D"none" style=3D"color:rgb(38, 40=
, 42);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">
                      &nbsp;<br clear=3D"none">
                      <span><span style=3D"color:rgb(0, 0, 0);font-family:H=
elvetica Neue, Helvetica, Arial, sans-serif;">"external"
                          set for both ref and pps:</span></span></div>
                    <div dir=3D"ltr"><span>usrp-&gt;set_clock_source("exter=
nal")</span></div>
                    <div dir=3D"ltr"><span>usrp-&gt;set_time_source(<span><=
span style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Ari=
al, sans-serif;">"external")</span></span></span><br clear=3D"none">
                      I think this should automatically set both
                      devices.<br clear=3D"none">
                      <br clear=3D"none" style=3D"color:rgb(38, 40, 42);fon=
t-family:Helvetica Neue, Helvetica, Arial, sans-serif;">
                      <span style=3D"color:rgb(38, 40, 42);font-family:Helv=
etica Neue, Helvetica, Arial, sans-serif;">"What
                        type of daughtercards are in your X310?"</span><br =
clear=3D"none" style=3D"color:rgb(38, 40, 42);font-family:Helvetica Neue, H=
elvetica, Arial, sans-serif;">
                    </div>
                    UBX</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Kind regards.</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
   =20
    OK, so what happens if you measure the phase-coherence just between
    channels on the same USRP?<br clear=3D"none">
    <br clear=3D"none">
    In the startup messages, UHD should put out some commentary about
    setting the reference clock, and<br clear=3D"none">
    &nbsp; whether it's locked -- do you see a "locked" message?<div id=3D"=
ydp2b720386yiv1843514943yqtfd99772" class=3D"ydp2b720386yiv1843514943yqt846=
5750995"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div id=3D"ydp2b720386yiv1843514943ydpc994c9a6yahoo_quoted_5461441577=
" class=3D"ydp2b720386yiv1843514943ydpc994c9a6yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;">
          <div>
            <div id=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv4349751442">
              <div>
                <div style=3D"font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;font-size:13px;" class=3D"ydp2b720386yiv1843514943ydpc994c9a6yi=
v4349751442ydpb1f78624yahoo-style-wrap">
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                </div>
                And, to clarify, this is an Octoclock-G, and not a plain
                Octoclock ?
                <div dir=3D"ltr" id=3D"ydp2b720386yiv1843514943ydpc994c9a6y=
iv4349751442yqtfd85029" class=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv4349=
751442yqt3149981368"><br clear=3D"none">
                </div>
                <div dir=3D"ltr" id=3D"ydp2b720386yiv1843514943ydpc994c9a6y=
iv4349751442yqtfd85029" class=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv4349=
751442yqt3149981368">It is OctoClock GPSDO,
                  and Internal is used.&nbsp;<br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <div style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;font-size:13px;" class=3D"ydp2b720386yiv1843514943ydpc994c9=
a6yiv4349751442ydpb1f78624yahoo-style-wrap">
                      <div><br clear=3D"none">
                      </div>
                      <div><br clear=3D"none">
                      </div>
                    </div>
                    <div id=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv434975=
1442ydp5189b7afyahoo_quoted_4632613607" class=3D"ydp2b720386yiv1843514943yd=
pc994c9a6yiv4349751442ydp5189b7afyahoo_quoted">
                      <div style=3D"font-family:'Helvetica Neue', Helvetica=
, Arial, sans-serif;font-size:13px;color:#26282a;">
                        <div> On Wednesday, 1 May 2024 at 14:19:44 BST,
                          Marcus D. Leech <a shape=3D"rect" href=3D"mailto:=
patchvonbraun@gmail.com" class=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv434=
9751442moz-txt-link-rfc2396E" rel=3D"nofollow" target=3D"_blank">&lt;patchv=
onbraun@gmail.com&gt;</a>
                          wrote: </div>
                        <div><br clear=3D"none">
                        </div>
                        <div><br clear=3D"none">
                        </div>
                        <div>
                          <div id=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv=
4349751442ydp5189b7afyiv7691143590">
                            <div id=3D"ydp2b720386yiv1843514943ydpc994c9a6y=
iv4349751442ydp5189b7afyiv7691143590yqt92825" class=3D"ydp2b720386yiv184351=
4943ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590yqt7336830375">
                              <div>
                                <div class=3D"ydp2b720386yiv1843514943ydpc9=
94c9a6yiv4349751442ydp5189b7afyiv7691143590moz-cite-prefix">On
                                  01/05/2024 08:25, zhou via USRP-users
                                  wrote:<br clear=3D"none">
                                </div>
                                <blockquote type=3D"cite"> </blockquote>
                              </div>
                              <div>
                                <div style=3D"font-family:Helvetica Neue, H=
elvetica, Arial, sans-serif;font-size:13px;" class=3D"ydp2b720386yiv1843514=
943ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590ydpc723dc89yahoo-style-w=
rap">
                                  <div dir=3D"ltr">Hi All,</div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">I am trying to use 4Rx
                                    and 4Tx antennas from two X310
                                    USRPs. I hope the received signals
                                    have stable phase relationship but
                                    they don't seem to be. I am
                                    wondering why and how to fix it.</div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">I measured the phase
                                    using the connection as below:</div>
                                  <div dir=3D"ltr"><img title=3D"Inline ima=
ge" alt=3D"Inline image" style=3D"max-width:800px;" class=3D"ydp2b720386yiv=
1843514943ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590yahoo-inline-imag=
e" data-inlineimagemanipulating=3D"true"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">cos(t)+i*sin(t) signal
                                    is split into and received on four
                                    Rx antennas.&nbsp;<span><span style=3D"=
color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif=
;">Two
                                        X310s are connected to the same
                                        OctoClock for 10MHz Ref and PPS.
                                        Tx and Rx commands are all
                                        timed. The measurement results
                                        are as below:</span></span></div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                    <span></span>The Tx signal is
                                    continuous during test. I measured
                                    phase every second for 20 sec. In
                                    the 2nd USRP, the phases are stable
                                    on both antennas while it is not in
                                    the 1st. If I change the Tx signal
                                    to the 1st USRP, then the results
                                    swap - phases become stable in the
                                    1st USRP and unstable in the 2nd.</div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">My first though was
                                    that there might be small CFO
                                    between USRPs even though both are
                                    connected to the OctoClock, but CFO
                                    should have caused linear change.
                                    Here, the phase offset is not linear
                                    and kind of random within 20 second
                                    measurement.</div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">What can be the reason?
                                    Any suggestion will be appreciated.<br =
clear=3D"none">
                                    <span></span><br clear=3D"none">
                                    <span></span>Kind regards,</div>
                                  <div dir=3D"ltr">H.</div>
                                </div>
                                Are you setting up clocking identically
                                for both USRPs?&nbsp;&nbsp; That is setting=
 the
                                reference clock to "external" and the
                                1PPS source to "external" on both
                                devices?&nbsp;&nbsp; Are you using a single
                                multi_usrp object for all RX channels?<br c=
lear=3D"none">
                                <br clear=3D"none">
                                What type of daughtercards are in your
                                X310?<br clear=3D"none">
                                <br clear=3D"none">
                                <br clear=3D"none">
                              </div>
                            </div>
                          </div>
                          <div id=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv=
4349751442ydp5189b7afyqt89423" class=3D"ydp2b720386yiv1843514943ydpc994c9a6=
yiv4349751442ydp5189b7afyqt7336830375">____________________________________=
___________<br clear=3D"none">
                            USRP-users mailing list -- <a shape=3D"rect" hr=
ef=3D"mailto:usrp-users@lists.ettus.com" class=3D"ydp2b720386yiv1843514943y=
dpc994c9a6yiv4349751442moz-txt-link-freetext ydp2b720386yiv1843514943moz-tx=
t-link-freetext" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.=
com</a><br clear=3D"none">
                            To unsubscribe send an email to <a shape=3D"rec=
t" href=3D"mailto:usrp-users-leave@lists.ettus.com" class=3D"ydp2b720386yiv=
1843514943ydpc994c9a6yiv4349751442moz-txt-link-freetext ydp2b720386yiv18435=
14943moz-txt-link-freetext" rel=3D"nofollow" target=3D"_blank">usrp-users-l=
eave@lists.ettus.com</a><br clear=3D"none">
                          </div>
                        </div>
                      </div>
                    </div>
                    <br clear=3D"none">
                    <fieldset class=3D"ydp2b720386yiv1843514943ydpc994c9a6y=
iv4349751442moz-mime-attachment-header"></fieldset>
                    <pre class=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv434=
9751442moz-quote-pre">_______________________________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" class=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv4349751442moz-t=
xt-link-abbreviated ydp2b720386yiv1843514943moz-txt-link-freetext" rel=3D"n=
ofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" class=3D"ydp2b720386yiv1843514943ydpc994c9a6yiv4349=
751442moz-txt-link-abbreviated ydp2b720386yiv1843514943moz-txt-link-freetex=
t" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div id=3D"ydp2b720386yiv1843514943ydpc994c9a6yqtfd03165" class=
=3D"ydp2b720386yiv1843514943ydpc994c9a6yqt3149981368">_____________________=
__________________________<br clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:u=
srp-users@lists.ettus.com" class=3D"ydp2b720386yiv1843514943moz-txt-link-fr=
eetext" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><b=
r clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect" href=3D"mai=
lto:usrp-users-leave@lists.ettus.com" class=3D"ydp2b720386yiv1843514943moz-=
txt-link-freetext" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@list=
s.ettus.com</a><br clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br clear=3D"none">
  </div></div></div><div class=3D"ydp2b720386yqt8465750995" id=3D"ydp2b7203=
86yqtfd04610">_______________________________________________<br clear=3D"n=
one">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users=
@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus=
.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect=
" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></=
div>
            </div>
        </div></body></html>
------=_Part_3352893_1558520350.1714638896083--

--===============5541461855415138007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5541461855415138007==--
