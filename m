Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EF87133FE
	for <lists+usrp-users@lfdr.de>; Sat, 27 May 2023 12:23:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DC3E383575
	for <lists+usrp-users@lfdr.de>; Sat, 27 May 2023 06:23:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685183005; bh=bugzVFowk9vL8ofreckN+77dnOiBS6ZL6CQdftE4UKo=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=EkTvOV9eK57JGWcGZgrG+8iVROWMR54DmKnCgjGiVxsBAbjZCuZhAjQ/bwfFeVTYZ
	 dUIZon03mzrv777+6q8vg7PcvcUPkZgyHceXmvkk4CDb0ofe6jGOTN/SazbaLA9QtR
	 Bdk3YA9H0ucZbpGZ40JnGSjO41FxgsEVzowYPHdUO7uChdi3DHHvMvFzgPlgSQHV31
	 DVrGVSr8nU1f56YT954OUEaxBFbPCiPDetmi7ywaGy2dr+mAS27ERuXGtRBi2ONUkW
	 S9OOyuvOLC7DnTfpFGpgY9IPz+1CREx5UNJO+YHAEU5UTMAjvqlkKwFhiebRtuUIoC
	 cPy7LJPzKd1hw==
Received: from sonic311-13.consmr.mail.bf2.yahoo.com (sonic311-13.consmr.mail.bf2.yahoo.com [74.6.131.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 44249383575
	for <usrp-users@lists.ettus.com>; Sat, 27 May 2023 06:22:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="QBGhKKsp";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1685182945; bh=SUj7Fz0xRoSgEbh4hOtq2I+05KTmkYzwqcasTAHYpfQ=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=QBGhKKspW4HTzElUNCfNCkfmfhPAhb4ObpYaMYJyFSc86OnHA+QRUNDkY8drDzpuoXLDNHNfO2RFmaHZt9qxTF8qhAJr72v3o4R/iR17KCZghRRzcrsg17WmM02q6noUS4qOvaaCSbk4TeIibEmNiQXRFO6sN9qgKIUyUpL0k0CEf6KDn+Gnt1JFkdTnDDYUTeeF5bwFEIjUNd7JfobVUUiAh4ag+g4jDLisELiND03mgarzEBpSho9jP6qTT+YtuyVf/e/sUifu1pf2HmomrILCAeEJbmLywY/kHxA0iW2v1o4PdxDCxnLpaNffaPSfSgcDNo9WT4r0cNZA7CEvQA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1685182945; bh=YMPh2gTleoOnnjh/3gIdo050a+2XZ0SaBMtY8EJA2QS=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=BSfKsbUzdPYirG+e/TtzPtJwNoUmWUu5d4fBxWNT4Zdop5cAhfgerml5k2kFyyLOYK6skVUk15SFYjT0BvgotraOgceJ4soGPvy/wQreM46EmkLK+Cbperlq/nYNn6LvLjLla+hhNdgkovdk/kZRNx/YybDTZAQPcTaAg4bxsrfIVPcbUk5CnYPlyktc4wdW664Ss0vdACAZhQWQJ/qT681I7mDeV1t0fGehWzxmLGjxAVd94+TF53el13hAifqXJcXa/5lLVJ6p0B4ekWe7dxRiPijHfvDykJ9Vk3MX3DdjkUxNbsQE2/4OqVb1RkktRj3yY3HByEsAGtwRfil5TA==
X-YMail-OSG: e09USCUVM1ndm0tGFlvBSh75rJO5CMYeQpXkf4LRpfIKImQ65mTcbdIXCYnnipl
 tlVSsOuVmTkBj1GrkZOhDw99hkryaEj2_Sbq2b4gTph.HiiNRJ6.L6jDbvSoK9jDEJmSo64kd7Ig
 4G3yyYLUn00hFRLSj1sbwjMe0bxC9GQfzhUXkGeCBCbLe8awwlY1iK.UMeUMDA17UduedjpkOBVd
 HKvjmVFQk81H0SjWe2a8e9jr5mWKkInXDp5yL68TlOffkmhUaZAIuu6QD_6ki7gGYqza38BrWUhp
 FlVBBXx4EYE4LLlxjSEx_S2VD49J2QKvNgkHjeRni1t3HCR1kUmOTDh7MhlcjhnCQYY2NEEyhEri
 3aiaLX6bLDc.ciSoN9Xr75hatyfdbZGWAd3RSpYfw8fgFYESGeaB2tQr53v1SJWZevq45NZe6FGG
 i2bejBbYS6.h9wCaU5Hk8y4kMsM5e_Un7ZbldVrHYhCXkjARqiImjDbXIMIbZVvSbMwEzUnrOKrM
 0r3NOEiJNc5CsCwtQDgqwxCo9Gw4WT0SFJ5vmq_vKywLs3lUl7yowUEtzjx31C6_qvFXcVd7uzXX
 KyM5c3i_0BIzSnZ47A8qulM5n1VSit8TzIwXXKw9MY7LocTM7CSGcorE_CqUcUGos4wA.LudsXO9
 QBmqOuE_WX2mx5lyR5jRdoFgtWT9YEbdp2Z7oPpMWQOGkQcOKWStY8WJ_jYOxpJI3E8lvDEc9ZHn
 uIgn8hIDum5Q1OWiKypRK9RMl4XnuFm5oOudGkwETS9M6TLNoIElKoITRWbcPFNfxpnSbpWFVGgz
 R.hhb.qdZkL3YcIzXADkGW192Y2RhUESmFxPB7_AODrnIZk5vUcL6MfEg7pA2NM8TRiT5Mn8F.TL
 OoY4yTPnX1jSh5Oz.CiRqOHmfX697MZTdTnnsRXm0iPiXILDJNcBCOJOI8scH3Fi.HU8WtbnuD28
 JThdiciS6dRPFb7qxQOoCvKw5ed00YAaOtM5Y9GrUXdaBzDaZsy749vSJhpIgsHXWxOyKhfGw9Dm
 TSpTq824b4WtsBOBncFAQIS2EU4GML.Av3FqvocdUrtVeogEuNv2ATOREojE3e0YRR.sSh5a1qck
 ZwgmRNGr9gn1oL3cOgM3kOebdJtx0eFBNoyCPkqxTTaUvt3OrF.wUln1qDXc6PFEkMmd91wyw4vE
 2CD2.bFsJuYObOWs5pg6oBIEXiQ5gVKnXH._hTWWLLAnyJuLJQXZ_3W2bwSmFe07gSyLP9CCAXkW
 TJ5AFicL.I7baUbUaf8yMoeWO8kurLoCNFLZUnZg8nKQP3s5YqmFQwgTXz_tD_zw1SWVPJdEuRG_
 ddF3s0s1jXffXbaAGdDLQdAVQWAmWpqwtar8lyR6qXfLC1YiBKpUDkhoFk5DND_4TIgYjuvI2_tC
 XOwgrwoPqRF3CW.QuHRJ0KOByZBKUnX1KTBruJL3IB4ju78mXpQ.eLOSnN1GOqfay_DRxarmMy23
 VA2ru05J2hAYjVeU4PpJHnS_ZpNoRSuNnjg_Mc.27AzfAUMD4a9IuM_s0mwp9EhIBFAIstv0idtp
 n1p9ZlOflApOx6Dui5H0B4OWVicMDdaWpT3O59pfuAdNG0tB.CfaHSf.364eXKFe3YD0u5dWquDd
 40un9nIKO5PPfkpOCEXg746moABwrs7FYd4vtk.FNnxMHhigcC7TSTOVgKQ1VCUPD4X.hclYxyCb
 14wXoJtG8kaBx8bhCRSV_mCHQvvEbNz3woYiAIeDt51TcQ_WfhpMEe5bM4hnjXp.zGkEqPkMOGzc
 N1_NeO6FZ8kr_.CVT1OLQYf8FQrrRfTK1cxWtbORMhsG0bl5SF1bIznwWIFJS0fDSsDAmPqc6Sx0
 DZmLgWAfYC2HW9XmPmGXnE2HJBOo0WqZQ8IjcxdVT3lTZ2Hpp2fhO7m7mYGigWOc8jIF3jtAzs2j
 Z8CRXSF_TbUTUTIB7PTCJkEr.61QvxUTiMy_onFyiDJvNOp94I3AejFY3q.U8XXDxukf7vptp1n8
 1qpM7LKyOeQKIKAU_WHE2qWlM60W6mxMbhsZ_vJk5KJcCKx8vPkI1tQRHDLEBM48nlNRUWR5T8h0
 GiybimOmnJEGNlduIw0HKYc2H_tG1R0ZsXhUprRWiIMUyxsZGDGUBZRr2w7Zb.yPxLri5qYxv0FQ
 xq_ffCodMPeUYAuRQmdYUw7NAP5cqhe2yDoBz30sMzBQzvxbJgVkDPD2JE_sNe6A2f7BvrnjkKZB
 NqIcUW9JQsm5A8gmA1uGZ07zy8zzGHq8asmpRuZAKCgIXhv_142mEbBKkyGCZdRHGwMkagSQibgT
 swWFgq.eMEHQCWUMZEpd6uaLx8ZXjVO6nuZmFYY17A7lg6ZQ37Z6l_xRvj0IjveLeuhlSct1xH7F
 FKqSl4lJjuRUUd5vI0LCIS0EzepczJgMeUER3N1ced3jaRWTYzetudcVga_R_TRF903uULGGSXje
 ltxZgaaRAhSbwYqMft2HAu_Q1EbSBR4eXVUW05QRAVMmEn_prLKUI0XB3ixK0Il5qAvGsmlYoaJC
 eFBHfOLfFb.Xo5JsqUzrsDeyneeVwsqYG46aPEpMuJf_pw7ExjOxIFQbfMwdP8Bva5TMc
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 87b38a66-0d32-4cbf-9706-cc20f12f28d0
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.bf2.yahoo.com with HTTP; Sat, 27 May 2023 10:22:25 +0000
Date: Sat, 27 May 2023 10:22:22 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1226646462.1779766.1685182942468@mail.yahoo.com>
In-Reply-To: <8c35be79-3e61-b671-6bf0-7c05941eb3ee@gmail.com>
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com> <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com> <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM> <936520968.215976.1684620209911@mail.yahoo.com> <3a73567e-d3c6-83cc-b3ac-0004226581b0@gmail.com> <17799965.336600.1684709874320@mail.yahoo.com> <d8fd2fe9-5449-e2b4-452e-4453045bb21e@gmail.com> <593975973.1685186.1685124691584@mail.yahoo.com> <8c35be79-3e61-b671-6bf0-7c05941eb3ee@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_Part_1779765_48615124.1685182942468"
X-Mailer: WebService/1.1.21495 YMailNorrin
Message-ID-Hash: DGG2JMVMUJXDUEW5M2QTN5G3WUTLVO2M
X-Message-ID-Hash: DGG2JMVMUJXDUEW5M2QTN5G3WUTLVO2M
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receive with UHD4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DGG2JMVMUJXDUEW5M2QTN5G3WUTLVO2M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>

------=_Part_1779765_48615124.1685182942468
Content-Type: multipart/alternative;
	boundary="----=_Part_1779764_2117809675.1685182942415"

------=_Part_1779764_2117809675.1685182942415
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
The sampling rate can be 30.72MHz or 184,32MHz. It can vary in different te=
st cases.Below are the final parts of the pass and failed captures (fs=3D30=
.72MHz):With eye, we can hardly see difference between these two captures. =
EVM is not bad in the failed case but CRC failed.I am not too worried about=
 this problem because I have the solution. I reported it as a possible issu=
e in usrp.
Have a nice weekend,


    On Friday, 26 May 2023 at 20:05:28 BST, Marcus D. Leech <patchvonbraun@=
gmail.com> wrote: =20
=20
  On 26/05/2023 14:11, zhou wrote:
 =20
=20
 Hi Marcus,=20
  Sorry for the late response. My system setup:=C2=A0 - UHD 4.4 - Ubuntu 22=
.04 server version - USRP: X310
 =20
  The capture code:   uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi=
_usrp::make("addr=3D192.168.12.2, second_addr=3D192.168.13.2, master_clock_=
rate=3D184.32e6"); uhd::stream_args_t stream_args_rx("sc16", "sc16"); strea=
m_args_rx.channels.push_back(0); stream_args_rx.channels.push_back(1); uhd:=
:rx_streamer::sptr rx_stream =3D usrp->get_rx_stream(stream_args_rx); uhd::=
stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);=
 stream_cmd.num_samps =3D num_requested_samples; stream_cmd.stream_now =3D =
false; stream_cmd.time_spec =3D uhd::time_spec_t(ul_time_spec); rx_stream->=
issue_stream_cmd(stream_cmd); size_t num_rx_samps; unsigned long num_total_=
samps =3D 0; while(num_requested_samples !=3D num_total_samps) { =C2=A0 =C2=
=A0num_rx_samps =3D rx_stream->recv(buff, num_requested_samples, md, 5.0); =
=C2=A0 =C2=A0num_total_samps +=3D num_rx_samps; } =20
  If I capture exactly num_requested_samples, then the final part of the ca=
pture will not be good. I have to capture 1ms more. In UHD 3.10, I don't se=
e this problem.
 =20
  Thanks for any feedback.=20
 =20
  I don't see where you set the sample rate--what is your sample rate?
=20
 Can you perhaps share a time-domain plot of the last samples in the case w=
here it doesn't work right?
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1779764_2117809675.1685182942415
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp32ecd0f9yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>The sampling rate can be 30.72MHz or 184,32MHz. It can vary in different t=
est cases.</div><div dir=3D"ltr" data-setdir=3D"false">Below are the final =
parts of the pass and failed captures (fs=3D30.72MHz):</div><div dir=3D"ltr=
" data-setdir=3D"false"><span></span><span></span><img title=3D"Inline imag=
e" alt=3D"Inline image" src=3D"cid:8a765a10-d87b-b353-eb41-dd67903a2d82@yah=
oo.com" class=3D"yahoo-inline-image" draggable=3D"false" style=3D"max-width=
: 689px; width: 100%;" data-id=3D"<8a765a10-d87b-b353-eb41-dd67903a2d82@yah=
oo.com>"></div><div dir=3D"ltr" data-setdir=3D"false">With eye, we can hard=
ly see difference between these two captures. EVM is not bad in the failed =
case but CRC failed.</div><div dir=3D"ltr" data-setdir=3D"false">I am not t=
oo worried about this problem because I have the solution. I reported it as=
 a possible issue in usrp.</div><div dir=3D"ltr" data-setdir=3D"false"><br>=
</div><div dir=3D"ltr" data-setdir=3D"false">Have a nice weekend,</div><div=
 dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydp558e8d4fyahoo_quoted_5920007757" class=3D"ydp55=
8e8d4fyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, 26 May 2023 at 20:05:28 BST, Marcus D. Leech=
 &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp558e8d4fyiv1273537711"><div>
    <div id=3D"ydp558e8d4fyiv1273537711yqtfd05105" class=3D"ydp558e8d4fyiv1=
273537711yqt9864199667"><div class=3D"ydp558e8d4fyiv1273537711moz-cite-pref=
ix">On 26/05/2023 14:11, zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div></div><div id=3D"ydp558e8d4fyiv1273537711yqtfd9508=
7" class=3D"ydp558e8d4fyiv1273537711yqt9864199667"></div><div><div style=3D=
"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" =
class=3D"ydp558e8d4fyiv1273537711ydp361dbc4yahoo-style-wrap"><div id=3D"ydp=
558e8d4fyiv1273537711yqtfd69564" class=3D"ydp558e8d4fyiv1273537711yqt986419=
9667">
        <div dir=3D"ltr">Hi Marcus,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Sorry for the late response.</div>
        <div dir=3D"ltr">My system setup:&nbsp;</div>
        <div dir=3D"ltr">- UHD 4.4</div>
        <div dir=3D"ltr">- Ubuntu 22.04 server version</div>
        <div dir=3D"ltr">- USRP: X310<br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">The capture code:</div>
        <div dir=3D"ltr">
          <div>
            <div>uhd::usrp::multi_usrp::sptr usrp =3D
              uhd::usrp::multi_usrp::make("addr=3D192.168.12.2,
              second_addr=3D192.168.13.2, master_clock_rate=3D184.32e6");</=
div>
            <div>uhd::stream_args_t stream_args_rx("sc16", "sc16");</div>
            <div>stream_args_rx.channels.push_back(0);</div>
            <div>stream_args_rx.channels.push_back(1);</div>
            <div>uhd::rx_streamer::sptr rx_stream =3D
              usrp-&gt;get_rx_stream(stream_args_rx);</div>
            <div>uhd::stream_cmd_t
              stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE)=
;</div>
            <div>stream_cmd.num_samps =3D num_requested_samples;</div>
            <div>stream_cmd.stream_now =3D false;</div>
            <div>stream_cmd.time_spec =3D uhd::time_spec_t(ul_time_spec);</=
div>
            <div>rx_stream-&gt;issue_stream_cmd(stream_cmd);</div>
            <div>size_t num_rx_samps;</div>
            <div>unsigned long num_total_samps =3D 0;</div>
            <div>while(num_requested_samples !=3D num_total_samps)</div>
            <div>{</div>
            <div>&nbsp; &nbsp;num_rx_samps =3D rx_stream-&gt;recv(buff,
              num_requested_samples, md, 5.0);</div>
            <div>&nbsp; &nbsp;num_total_samps +=3D num_rx_samps;</div>
            <div>}</div>
          </div>
          <br clear=3D"none">
        </div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0);font-famil=
y:Helvetica Neue, Helvetica, Arial, sans-serif;">If I capture exactly
              num_requested_samples, then the final part of the capture
              will not be good. I have to capture 1ms more. In UHD 3.10,
              I don't see this problem.</span></span><br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Thanks for any feedback.</div></div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <br clear=3D"none">
      </div>
   =20
    I don't see where you set the sample rate--what is your sample rate?<br=
 clear=3D"none">
    <br clear=3D"none">
    Can you perhaps share a time-domain plot of the last samples in the
    case where it doesn't work right?<div id=3D"ydp558e8d4fyiv1273537711yqt=
fd66592" class=3D"ydp558e8d4fyiv1273537711yqt9864199667"><br clear=3D"none"=
>
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div><div class=3D"ydp558e8d4fyqt9864199667" id=3D"ydp558e8d=
4fyqtfd82187">_______________________________________________<br clear=3D"n=
one">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users=
@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus=
.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect=
" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></=
div>
            </div>
        </div></body></html>
------=_Part_1779764_2117809675.1685182942415--

------=_Part_1779765_48615124.1685182942468
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="1685166693804blob.jpg"
Content-ID: <8a765a10-d87b-b353-eb41-dd67903a2d82@yahoo.com>

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
AElFTkSuQmCC

------=_Part_1779765_48615124.1685182942468
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

------=_Part_1779765_48615124.1685182942468--
