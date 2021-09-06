Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A072402106
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 23:14:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41C3338444B
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 17:14:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="ovc3ecm5";
	dkim-atps=neutral
Received: from sonic317-27.consmr.mail.bf2.yahoo.com (sonic317-27.consmr.mail.bf2.yahoo.com [74.6.129.82])
	by mm2.emwd.com (Postfix) with ESMTPS id 23878383EBD
	for <usrp-users@lists.ettus.com>; Mon,  6 Sep 2021 17:13:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630962796; bh=Wznj0Zhh//EFbdZd4DiXj78Qj4tDLkJhtyHjPxFUrug=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=ovc3ecm54L8Qdb0tqeEoS2fetgibBMw4p2u9NDmMDnLmh+snDrjnVmx1VwzT/trqKGdlKf4txHFwcW7vjH++pIWN5CC9/cbQXIPSRhQiAipj3J6YucrxT72ol9EnvuoOU7jVi94CaUii0/wGG2sXDlIQ8ZN6w1iZ3hk94xFL70f3TGfyABgmnYyCpTO0RSYRnEaV4vQREilGZn48PL/+2z5FKwRAG0/Bmk0mDBTARPIMEfExvp8VNYiPiQCJGJLWNHPMyGErxZ+ACq8jiL0M+8Lm/9E8Bu2GlH1pHVmak669Blwfm9civDMRNfcpNU/4EjVKEsUuZTq58PhZoLsmLw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630962796; bh=HrCttpYZawqfrjFsWIwSrqQXFPeKQMbF0wR9DPphZWF=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=S3MJVeazjmec/NBARlYfBnl5JlGE5eiiK6cOGmSYGQgq+TFRm71Heexak4SHsu5xjvWKh10KkYoTB7BGqnLrwNJ6akO/JfoJF/WaCU2JQs3cW5yGrCz02B2h5mj4T+qK7Wa3N8ssrQOcb/8+3DDCbEB0gDo4p676WfHYrcydfmAh+UB2S/aNt7i5985rrSzArYP7xOPHQ9EO9aMs+HAXdjsnJ4GzV5mDF+qnwHJL4A5f0Zf39Vzl0vrOijqVAgvOw11KzmDXjghmi5HhW1HWw4qTGBMVo/Ts2lgAtEL1uNa4Tj0YDtBsgtnoRjbyAGsZDIcipSpLy+uqNNE3WV+AUQ==
X-YMail-OSG: gPJtfVgVM1lIvYzKnPCdk7vLvtIFRZ_bC7o02TrlRP5izpDD13c1LjI951EhR4D
 BNgnF8WYpNb_e0eIs.SaEY6ZgWzbtlR234NXBMEbV8VxqlsEaxs1y5TGDoeX_gdf6ryfesaepqxg
 JxZt7aJGm.1UhTe2BE8zQDVm1rarOzboOOCxuLTwciNtIiAl3uI0dDXftuRICaeMVYPL.9_okbTP
 RwsgT7YjYknrVcedEt5GC_S_w5RRq0wJ0gITjOsSHCUQk3sNUKbyb1J_6yETrERjCqQnRto4TMNr
 5oK04fA5PEwXaYxlwfEWI6t4i0fE8sATQElBwK4jv206D7I.zPlTTPODl_fvI37BKUkoS55cq3Ec
 tWDH0Kgur4KjQDUEiWyL2PpK8yT7dAXxWal5KkmpymTge2fyUc0o.jg0TvQwUtS1.Ut4uoe3yD6.
 WJt5JdHzY1Vqo8XSzS10HF5wUqYT3DJHn6tLSon02In3.U5ypPHbxvTOa1HmJeS1rCeX.hOb5Dq3
 sKSvFXVOUrrxGPFxDtKzsCAgwnvuGOpagXyVYbKGeozoQ9AmkYdARLOw2t6M3mSQOJiZJ1ig3ruO
 wKkC1m0YUPpLhknhU3NRK0IcXE3C30vas3QswOASuJfCgw4wwsxTyMhA5M.cXcjhsTFr5.5fFhtx
 9IkoAUWLeG0x9uCw_2RHxXLc2LF.1Mdq1D2rDqqFei161V_.epibz7ibRLPS7U14Npg3g.hv43Gn
 Qb0_3374AEK5PAAmXQMgV.Fd0SEW_.Ur7zQ_IFWW.I5nloSGBt9LhZPh26Z2DOVh5rPTiCkzAazJ
 cvQwQjNvrP2_Mu543KK49A_P_1f62IKJ2izYlyNhiK6jfY9cWnUlnSvEve5e6zM.sCBesliuNpIx
 JAchqoEspKNMpya6tIJPKOJ_Mqhdyiu7EfYQ0N1lJ5FYO9LHILw9xwH2MJqNVV7ECT3KnEaRACUI
 5aaJWH2LHAVTFa3nRkBJSXx6Lavm8aQYZCjEBIkp9.jYlLp72n6s0jjMPSCGFrlffqXKNMt3nAuV
 lUicqWiaPe6lYlpn_gG0ZCCtrwB3b3jF2856W4b2yY4.bHyMciCuwOJpHcpDeqBqUmItzMoxxdxp
 lQjjktsqdBjaXBUpW5m9VhYkoEGr9VWjYxB4TlCqByOR9QX1kJkHe2arADCsHGRWdUD9z0L.RSX9
 nTozabMYqmISY9CUJ3hBdLfN3eyHsxKxmmMuQULKaRtVArneWaQX2f9lC4ovsiI_p5lPxKT61htO
 8CQTO35FUo2ipY88x9y43WPcqKuB90e8GPxiOo4wsBzMZDgOVBm.njeCo.8C4HBFtWhkqAx7klcJ
 KwAEybM3EeVSkXg1DK9SwFKA_qvJ2GQiMD8zPT3RPoclhD00N8ymp6Cp.MJvnueVfgXdsJszjtD1
 GFZowkoVqNii4Oj41WTRacV6EyGHnjQlp2XxSlVS.dGT0kvd74NmAHWei1s62YDvhBlh6bR4cMZX
 DoY0fWDe6JA99EYAbRaL0Ell3ZZtIpoLCShTZkKzC8RRR20NH7h9xIwMhgL3yM6ne7XZiIXQyxxQ
 BezJAOFm2GCOA8mfIFKlHWzIQkXsFArqIQYc4.BLZqWdsxgELv0lCDbVCM_AHtDR.cnicPrIV7xV
 cz3gubrfvkX_q50lwbC8M15fWkidXUbn4DRMUHL8HTquAIVR74ytA8MMBpIkVwRac_Fgi4NXygnw
 _y.LlcNF9HsTDY6Wpxl1kKISVvU5LzoBnNbpa6ScJ_qyms4vt2cUjcT92ZB2qVbUO1MZmzYOoXa8
 VdeRPNrCawSOSVkAnKk_ONh.dUkaIN9yBzirX4U_gXb9RyjMcYu3K2.AwngqLn_o4Wa2wS2nfEMP
 iA7b2aPrSZ5Vlz20v9bwSLkR5hMpPvKlLLdvBj5I1Ellb4Mr575_mqnwIEnlvN4J2maORiwvSXFG
 QANrE1ZqnPMFqRC3XaQ7zCeiMjHr8MfacYeir4HrsSsXbYMfaAmk9M9tE89mRH6NSp7wWsuLsBu_
 bQfLsu1W_QtUD2qTu381Nbqi8bVswrc1FhHm4kECaalX5QqrFoqytIOWDupiuuhHKfs3Cje3LacW
 qapPxBAkv2MUk5ciEaa6NDVG0y0ndzM1fZlhJOeXHMdb7VVQ7KBz4yRPNcCXne_HQmEblXAdJute
 0Xv0bXmsQyvtMonVUmWSGLL1pDNlRe4_TsXGklPCm_BO9q7CYx1PymCoKfWtycsJcExTEUe1gUWv
 GvLxIYBLAP.eWyZZwhMD19CDa1MsYJyvEW8m6DwYpCvh_ask5uQWE7zXQV5xL
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Mon, 6 Sep 2021 21:13:16 +0000
Date: Mon, 6 Sep 2021 21:13:07 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <985193204.1564657.1630962787077@mail.yahoo.com>
In-Reply-To: <048e44e1-7a98-3502-e0c9-d4f89aea1f15@gmail.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com> <78915145.1401871.1630855703615@mail.yahoo.com> <4afe8421-25a7-4607-cb3e-77de5a2e048f@gmail.com> <1905083994.1719552.1630939087195@mail.yahoo.com> <048e44e1-7a98-3502-e0c9-d4f89aea1f15@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: XKSNN3Z4V2OJBFESRKWC4UZZJZTUJQV3
X-Message-ID-Hash: XKSNN3Z4V2OJBFESRKWC4UZZJZTUJQV3
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.10+X310USRP: Error in Rx in Final Stage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XKSNN3Z4V2OJBFESRKWC4UZZJZTUJQV3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============1559210791680430235=="

--===============1559210791680430235==
Content-Type: multipart/alternative;
	boundary="----=_Part_1564656_186515838.1630962787074"

------=_Part_1564656_186515838.1630962787074
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks for your explanation, Marcus.
The number of samples is based on the sampling rate. I am using X310 USRP. =
Its sampling rate is equal to its master clock, 184.32MHz. Usually I captur=
e signal for 20ms, so the number of samples =3D 20*184320.We have many X310=
 USRPs and have been using UHD3.10 for a few years. We have been capturing =
signals without extra trailing 0s. There is no problem so far. Because it i=
s stable, we don't upgrade UHD even though new UHD versions come out.=C2=A0=
Only until recently, we need to use higher sampling rate for new signals wi=
th=C2=A0wider band. I am using N321 USRP for this. We use the latest UHD fo=
r this USRP. Though the new system is intended for the new USRP, I also try=
 to use it on the old X310 USRP, then I find this capture problem. Not all =
test cases fail with this new UHD. In some cases, the EVMs are all good; on=
ly in some test cases, the last EVM is bad.
I haven't observed this EVM issue in the UHD4.1.0+N321 combination. It only=
 happens in UHD4.1.0+X310 sometimes, and it is repeatable. At the moment, m=
y workaround is to do 1ms extra capture for UHD4.1.0+X310 combination.
I do have other problem with N321. I will start another thread for it. Hope=
 you can continue to help.


    On Monday, 6 September 2021, 16:18:00 BST, Marcus D. Leech <patchvonbra=
un@gmail.com> wrote: =20
=20
  On 2021-09-06 10:38 a.m., zhou wrote:
 =20
=20
 Hi Marcus,=20
  Thanks for your comments. What is group-delay in FPGA? I had a guess that=
 there was some delay between the time instance when FPGA issued Rx command=
 and the time instance when ADC started to sample. Does group-delay mean th=
is?=20
  I use time-based capture - specify a start time and specify the number of=
 samples to capture,=C2=A0 uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::=
STREAM_MODE_NUM_SAMPS_AND_DONE);
  stream_cmd.time_spec =3D time_spec
  stream_cmd.num_samps =3D=C2=A0num_requested_samples
 =20
  In a while loop, I keep calling=C2=A0rx_stream->recv() to receive samples=
.=C2=A0When the number of samples are received, capture is done.=C2=A0=20
  The samples are saved in buffer when calling recv(); after all samples ar=
e received, they will be saved into a file and processed offline.=20
  From the EVM results, I don't think the whole timing is shifted between t=
he two UHD versions, otherwise, the whole EVM should become worse, but we o=
nly see the final EVM becomes worse. It looks to me that FPGA is "releasing=
" ADC earlier than it should. If I increase=C2=A0num_requested_samples, tha=
t seems to delay its release.=C2=A0=C2=A0=20
  Look forward to your further comments.=C2=A0=20
  Many thanks,=20
  Hongwei=20
   Group delay is a property of any filtering element in a signal-processin=
g chain.=C2=A0 Whether it's an analog filter or digital filter.=C2=A0 Any S=
DR=C2=A0 that has an ADC clock
 =C2=A0 that is higher than the host-side sample rate will need a digital d=
own-converter (DDC) and that involves a digital filter.=C2=A0 That digital =
filter has group delay
 =C2=A0 (usually on the order of 10s of sample times).=C2=A0 Different vers=
ions of UHD might employ slightly different versions in the DDC portion of =
the FPGA, leading
 =C2=A0 to slightly-different group-delay behavior.
=20
 If you're calculating the number of samples you need based on something li=
ke:
=20
 number-of-frames-I-want X number-of-samples-per-frame
=20
 Then there is ALWAYS the chance that the last frame will get cut off.
=20
 Just as you usually need to "pad" the TX side with a few trailing 0s, so t=
oo should you extend your receive for a few samples beyond what you exactly=
 need.
 =C2=A0 This has always been true.=C2=A0 That you "got away" with it in UHD=
 3.10 was likely just a matter of luck.
=20
=20
=20
 =20
 =20
      On Sunday, 5 September 2021, 20:47:39 BST, Marcus D. Leech <patchvonb=
raun@gmail.com> wrote: =20
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
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1564656_186515838.1630962787074
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp861463e0yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your explanation,=
 Marcus.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"=
ltr" data-setdir=3D"false">The number of samples is based on the sampling r=
ate. I am using X310 USRP. Its sampling rate is equal to its master clock, =
184.32MHz. Usually I capture signal for 20ms, so the number of samples =3D =
20*184320.</div><div dir=3D"ltr" data-setdir=3D"false">We have many X310 US=
RPs and have been using UHD3.10 for a few years. We have been capturing sig=
nals without extra trailing 0s. There is no problem so far. Because it is s=
table, we don't upgrade UHD even though new UHD versions come out.</div><di=
v dir=3D"ltr" data-setdir=3D"false">&nbsp;</div><div dir=3D"ltr" data-setdi=
r=3D"false">Only until recently, we need to use higher sampling rate for ne=
w signals with&nbsp;<span><span style=3D"color: rgb(0, 0, 0); font-family: =
Helvetica Neue, Helvetica, Arial, sans-serif;">wider band. I am using N321 =
USRP for this. We use the latest UHD for this USRP. Though the new system i=
s intended for the new USRP, I also try to use it on the old X310 USRP, the=
n I find this capture problem. Not all test cases fail with this new UHD. I=
n some cases, the EVMs are all good; only in some test cases, the last EVM =
is bad.</span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><sp=
an style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Ar=
ial, sans-serif;"><br></span></span></div><div dir=3D"ltr" data-setdir=3D"f=
alse"><span><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue=
, Helvetica, Arial, sans-serif;">I haven't observed this EVM issue in the U=
HD4.1.0+N321 combination. It only happens in UHD4.1.0+X310 sometimes, and i=
t is repeatable. At the moment, my workaround is to do 1ms extra capture fo=
r UHD4.1.0+X310 combination.</span></span></div><div dir=3D"ltr" data-setdi=
r=3D"false"><span><span style=3D"color: rgb(0, 0, 0); font-family: Helvetic=
a Neue, Helvetica, Arial, sans-serif;"><br></span></span></div><div dir=3D"=
ltr" data-setdir=3D"false"><span><span style=3D"color: rgb(0, 0, 0); font-f=
amily: Helvetica Neue, Helvetica, Arial, sans-serif;">I do have other probl=
em with N321. I will start another thread for it. Hope you can continue to =
help.</span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><span=
 style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Aria=
l, sans-serif;"><br></span></span></div><div dir=3D"ltr" data-setdir=3D"fal=
se"><span><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, =
Helvetica, Arial, sans-serif;"><br></span></span></div><div><br></div>
       =20
        </div><div id=3D"ydp98e98598yahoo_quoted_1775407810" class=3D"ydp98=
e98598yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 6 September 2021, 16:18:00 BST, Marcus D. Le=
ech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp98e98598yiv3028384882"><div>
    <div class=3D"ydp98e98598yiv3028384882moz-cite-prefix">On 2021-09-06 10=
:38 a.m., zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div class=3D"ydp98e98598yiv3028384882ydpe09f=
327fyahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial=
, sans-serif;font-size:13px;">
        <div dir=3D"ltr">Hi Marcus,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Thanks for your comments.</div>
        <div dir=3D"ltr">What is group-delay in FPGA?
          I had a guess that there was some delay between the time
          instance when FPGA issued Rx command and the time instance
          when ADC started to sample. Does group-delay mean this?</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I use time-based capture -
          specify a start time and specify the number of samples to
          capture,&nbsp;</div>
        <div dir=3D"ltr">uhd::stream_cmd_t
          stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br=
 clear=3D"none">
        </div>
        <div dir=3D"ltr"><span><span>stream_cmd.time_spec
              =3D time_spec</span><br clear=3D"none">
          </span></div>
        <div dir=3D"ltr"><span><span><span>stream_cmd.num_samps
                =3D&nbsp;<span>num_requested_samples</span></span><br clear=
=3D"none">
            </span></span></div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">In a while loop, I keep
          calling&nbsp;<span>rx_stream-&gt;recv() to receive samples.&nbsp;=
</span>When
          the number of samples are received, capture is done.&nbsp;</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">The samples are saved in
          buffer when calling recv(); after all samples are received,
          they will be saved into a file and processed offline.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">From the EVM results, I don't
          think the whole timing is shifted between the two UHD
          versions, otherwise, the whole EVM should become worse, but we
          only see the final EVM becomes worse. It looks to me that FPGA
          is "releasing" ADC earlier than it should. If I increase&nbsp;<sp=
an><span style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica,=
 Arial, sans-serif;">num_requested_samples, that
              seems to delay its release.</span></span>&nbsp;&nbsp;</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Look forward to your further
          comments.&nbsp;</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Many thanks,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Hongwei</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
      </div>
   =20
    Group delay is a property of any filtering element in a
    signal-processing chain.&nbsp; Whether it's an analog filter or digital
    filter.&nbsp; Any SDR&nbsp; that has an ADC clock<br clear=3D"none">
    &nbsp; that is higher than the host-side sample rate will need a digita=
l
    down-converter (DDC) and that involves a digital filter.&nbsp; That
    digital filter has group delay<br clear=3D"none">
    &nbsp; (usually on the order of 10s of sample times).&nbsp; Different v=
ersions
    of UHD might employ slightly different versions in the DDC portion
    of the FPGA, leading<br clear=3D"none">
    &nbsp; to slightly-different group-delay behavior.<br clear=3D"none">
    <br clear=3D"none">
    If you're calculating the number of samples you need based on
    something like:<br clear=3D"none">
    <br clear=3D"none">
    number-of-frames-I-want X number-of-samples-per-frame<br clear=3D"none"=
>
    <br clear=3D"none">
    Then there is ALWAYS the chance that the last frame will get cut
    off.<br clear=3D"none">
    <br clear=3D"none">
    Just as you usually need to "pad" the TX side with a few trailing
    0s, so too should you extend your receive for a few samples beyond
    what you exactly need.<br clear=3D"none">
    &nbsp; This has always been true.&nbsp; That you "got away" with it in =
UHD
    3.10 was likely just a matter of luck.<div class=3D"ydp98e98598yiv30283=
84882yqt5387678254" id=3D"ydp98e98598yiv3028384882yqtfd99070"><br clear=3D"=
none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div class=3D"ydp98e98598yiv3028384882ydpe09f327fyahoo-style-wrap" st=
yle=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:1=
3px;">
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0);font-famil=
y:Helvetica Neue, Helvetica, Arial, sans-serif;"><br clear=3D"none">
            </span></span></div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div class=3D"ydp98e98598yiv3028384882ydpb3a0926yahoo_quoted" id=3D"y=
dp98e98598yiv3028384882ydpb3a0926yahoo_quoted_1405315321">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;">
          <div> On Sunday, 5 September 2021, 20:47:39 BST, Marcus D.
            Leech <a shape=3D"rect" class=3D"ydp98e98598yiv3028384882moz-tx=
t-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com" rel=3D"nofollow" t=
arget=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"ydp98e98598yiv3028384882ydpb3a0926yiv5783056899">
              <div class=3D"ydp98e98598yiv3028384882ydpb3a0926yiv5783056899=
yqt3445910838" id=3D"ydp98e98598yiv3028384882ydpb3a0926yiv5783056899yqt1767=
2">
                <div>
                  <div class=3D"ydp98e98598yiv3028384882ydpb3a0926yiv578305=
6899moz-cite-prefix">On
                    2021-09-05 11:28 a.m., zhou via USRP-users wrote:<br cl=
ear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div class=3D"ydp98e98598yiv3028384882ydpb3a0926yiv578305=
6899yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial=
, sans-serif;font-size:13px;">
                    <div dir=3D"ltr">Hi All,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I have a problem in using X310 USRP
                      after upgrading UHD from 3.10 to 4.1.0. I am using
                      it to capture NR5G radio signal in UL. After
                      analyzing the captured signal, the quality in the
                      last subframe is worse than the earlier subframes.</d=
iv>
                    <div dir=3D"ltr">EVM =3D</div>
                    <div dir=3D"ltr"><span><span style=3D"color:rgb(23, 43,=
                           77);font-family:-apple-system, BlinkMacSystemFon=
t, Roboto, Oxygen, Ubuntu, sans-serif;font-size:14px;background-color:rgb(2=
44,                           245, 247);">[1.014, 1.08, 1.055, 1.053, 0.954=
,
                          1.043, 1.145, 1.112, 1.162, 1.072, 1.131,
                          1.125, 1.038, 1.08, 1.003, 1.1, 0.972, 0.941,
                          1.046, 0.917, 1.01, 1.023, 1.025, 0.982,
                          1.101, 1.044, 1.089, 0.987, 0.923, 1.022,
                          1.012, 1.009, 1.021, 1.037, 0.998, 1.112,
                          1.112, 0.981, 0.987,&nbsp;</span><font style=3D"f=
ont-family:-apple-system, BlinkMacSystemFont, Roboto, Oxygen, Ubuntu, sans-=
serif;font-size:14px;background-color:rgb(244,                           24=
5, 247);" color=3D"#de350b"><b>2.785</b></font><span style=3D"color:rgb(23,=
 43,                           77);font-family:-apple-system, BlinkMacSyste=
mFont, Roboto, Oxygen, Ubuntu, sans-serif;font-size:14px;background-color:r=
gb(244,                           245, 247);">]</span></span><br clear=3D"n=
one">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">When using UHD 3.10, I had no such
                      problem.<br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">
                      <div>
                        <div dir=3D"ltr">If I deliberately capture one
                          more subframe with UHD 4.1.0 but ignore it
                          when analyzing the signals, I will have good
                          EVM.</div>
                      </div>
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                      <div dir=3D"ltr">Is this a bug in FPGA for UHD4.1.0
                        in X310?</div>
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
                  My guess is that there are just slight timing and/or
                  group-delay deifferences between the two FPGA
                  releases, and your capture time is just slightly too
                  short<br clear=3D"none">
                  &nbsp; to account for that.<br clear=3D"none">
                  <br clear=3D"none">
                  It is inevitable that going from a quite-old release
                  to very&nbsp; much newer (latest) release that there will
                  be subtle things like group delay differences between
                  the<br clear=3D"none">
                  &nbsp; two FPGA implementations.&nbsp; <br clear=3D"none"=
>
                  <br clear=3D"none">
                  How do you decide when you are "done" capturing?&nbsp;&nb=
sp;&nbsp;
                  How are you capturing?&nbsp; Do you do your processing in
                  real-time, or do you capture to a file then<br clear=3D"n=
one">
                  &nbsp; process the file.<br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydp98e98598yiv3028384882ydpb3a0926yqt3445910838" =
id=3D"ydp98e98598yiv3028384882ydpb3a0926yqt23932">_________________________=
______________________<br clear=3D"none">
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
    </blockquote>
    <br clear=3D"none">
  </div></div></div><div class=3D"ydp98e98598yqt5387678254" id=3D"ydp98e985=
98yqtfd52046">_______________________________________________<br clear=3D"n=
one">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users=
@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus=
.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect=
" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></=
div>
            </div>
        </div></body></html>
------=_Part_1564656_186515838.1630962787074--

--===============1559210791680430235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1559210791680430235==--
