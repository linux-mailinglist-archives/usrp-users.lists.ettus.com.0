Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E014F70B1F1
	for <lists+usrp-users@lfdr.de>; Mon, 22 May 2023 01:00:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F1C73844FA
	for <lists+usrp-users@lfdr.de>; Sun, 21 May 2023 19:00:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684710042; bh=Ec99m8H8k6VpvblLlccVwX7KnzkwXEkh/uc5K+WMcVs=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=u7BpgAjh7yL7U3sQ9p0s5j6VCK7tHzmR20XhTsnPGDx889LtjJ4PEBfN2gQOtU1jq
	 lJ80ehuOmhIfsQOBC48Rpv0DxWuFY7GDqFi20Qu/U6QUHuiJDvuzaTBXzrAfhjwwOl
	 SgCd+65etCxkZ8K5QvgIARndZsKvC8dAvowJLM1rc1vk5ML/TJFCP2xpibBU2sI7dP
	 dYcpLE7kDZcLZ41lM8nc1k0UdswH4Nf0erb1zKKt9b2pdG8TIC4UZ3iXv1gJ3qh6G8
	 YKXqo919xrs3NRrEZTU4g1HJoj9/X44Nm8R4JuyCUE2j/D3vDuyYOTAOwBCnth8Zr6
	 q7lYgjKD9Cwgg==
Received: from sonic314-14.consmr.mail.bf2.yahoo.com (sonic314-14.consmr.mail.bf2.yahoo.com [74.6.132.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 7C962381189
	for <usrp-users@lists.ettus.com>; Sun, 21 May 2023 18:59:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="swf0OpXa";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684709983; bh=qnwBwLPpfkm6roeBtmsnnt8cc2RxDqMM/K/7+Fk9lr0=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=swf0OpXaLNVbhdaOxoIo7SkvM1j8FtunXReV+drnLpLMge38KtAsf6ws/c2w0LwVzZ1Kgw4ZaCjwpJifZkNb769jKBSKmawjqyf2HqCUk4lSTfpMoPQMSJygbostu2D7mklkwNQgtAzACD17B6HO0O7EKiuIAb6oR8rmFNfvhFHv2AqSQQ7H5ixN/MxZ/uy47kQwTYEn4mS08HHDwgjwlK378LDRIOEM+nwYe6fj8G5eit6XiJSjTeqSDC/Amy1wXYs2NElKrfIprUH3jniAesunjBbWrZ/OGsOkwtT6rxz9U7y0l5l7oqeBiRdzK+IGQbulQ2wd+v6boxxBP7ZucQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684709983; bh=yP07SOqyd9Ji1EVOmyrFF0HjQc17lh/+t4U9V9GdQ9R=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Fp+3+anS4A8VjabbQRahJqjGIEVV0Stz87xWgIoFS6JOAWvVx1O+sgbI/xOGxHKTC3kfNFMHbMQNUWBER113zwtEUs/JNpwlL/T5pOJFoGDuFwM8TzdAC6rjmMSSvQDq2g2W4a2h13OIo4xw7FDyv2DaCvEcyMBy/SPnFONNR6w//9xeW8iZN1oMQhEJpx+fOeVUKoy2K7Jgi9uJS+apaJB9+v4GSvFbqqJV35Z1xvInB7HFSPMBy0pEHtYA8Nq3yEjVNBiVlgp4JAiY1zzbeI6846BVSO64DHjNqaw5sXP4WphhbhlKNsa8lBWKe+q101zJzvcF7ZehHoyrJ9szIA==
X-YMail-OSG: WX57gNUVM1kghsHPG0wL6R0.oXeY8MBTfjOr8oHv6TIa85le9vxTOK64yavGo3o
 Ri5nqJiDuf4PNDsPsDqCyEy4G.efhE7NyEWAduLazRlQ0qJ9IJUHo3iAgPMvrLHzMLXnuAIPINsl
 ta.di2MTuFviShIu_l9IPodw8JWwzCwdR7gX3qhECeO51bIscssXghySU4i5yjweRKTZSIKmnoyM
 CbmA78BEk0NvsrmOO1SCra9XNW03EDtojfAWZNXgTbSy51qVArWSNq4yfeVrJRs681a4c0BrfQ65
 F3Kou3PYOgHnE3D84zVxwrIhTUpupLtho3Q_hSVXxcHviYhsf0key7H91nDVWadpqx8.jnJxhau6
 0ltsqpAQTOkR5p11Zqie9ZVJWQ2.WTeQ06b8ppDC07Fp62khKtqtQhHHTy1afVJ7AxvvCdnFeTvn
 9GzqDzyoTOYbl14IQYnyPfZkQYMDkRCh.lfSGovPtw2rEhQ1trsQFgyZNZpO8FIhbzs8dfLCmnKz
 ox55Y0d_6oQl7uOhgPenx6X3HityohYAR7ZwarQUwbYZ.AfHAxGJjDi1ICRzT96iEhUinBa_hgFw
 mpsO4.xPMEQz5TT5lcjnMQ3A9U0Zw89QG9k9LDNIF8Bov0GSx21XCAVxiVDaQqj0.HnymKhVw7I0
 PPGTV6gCD5vXPhXQRCeM_A37ayFbr48F0yBbVtoGGm_EegN3cdQ.P.GxRNc7KHJBCBanUAwUC0mj
 rIzD6PcGWSfljoCBrrq9kw7J3cPkEtyB2D2O00jX78cMU7CknbuzBfgN9_tQ4CpgZTWwef5Al7bK
 8CJpAtZCY_sf5ox2GC91.5XkmLBYuImntgKcb7gHqW5WmRoBOiArIKrWeoYQqUkl_xOZaPGI.Hw1
 bD3tVGs9VxipcTdgZQfiXPTJoMtU1fBlTNZv_25tfhCw0Dja_3rQhq7udskg4tauO9xLnEnPpRCF
 rqiNpE2Q6ot3w1gQ4iqLYkkUH1VWRexp4PLa1x0SkY77zSpvwFtea.cqCcGvzi6plumVWUvFCMzB
 Hyq.ow1rjmFI4qWALK0vp8jzK0l2NSS6Ws0stI7JUk.YoZmOVk6_w7O4ohLbyAi2X.qHbBn2KYbz
 9N2dQ0l_td0If0JHSVFyYqXUSKR128IKeC_iTzJGNPs763biNjmoX_Xqosn_nGqi1f4.v5YLf7PL
 MnquihEH9tt9KXeTCyMlBeEBfl7_JxXJPsI9MYD97cj8dwEvJYQfwNFo4TFmxSLIR8oqYDPmhEE9
 hmjepsZ7fCIhkIRmOU1yDCqQX4pK.l9HBtHnrdUitYtfTez40N5LYDZh9kx4kl7y1fZWIl.j7Yrx
 aob.Ty4es6SSn254JVAuUVW32Nmfef3yDAjVV2wwZreCcMyFU_KCaErg8W01Yr3LxXDcb5sLUOmW
 7Y0MPRnUcliLyyao5uiN5XSXOtMWwtqagHQcYKYYIkWS6KC_vNO9T0pvSkLEEGj0oBmNhexoxsET
 K2R_soDomjBn_smjtY2Sc.jv2TPoNCtEsr6368_scUXAr6HIk52pAggYzDKrS6sDl2PUQfgLLk1K
 M7hB48D0mH9PYGdC1ljtZH1HVOEg5gYlRFm4.eKCZ4vZAXPeSMwue0.3F9p5Rnxz1B_AASjb2bvk
 _v6rrwFT99akT065rX9CyfiUKYd.C1BYj2pZl9NnpHrf.Y._BFwJ5kGHxj_Uh80T.qDU9rkLV9it
 xUIYNiNLp2LrPPv8PtZomcygjID1svQ0wyuKzU8rnYngKIizbSpXVo_B8aBCi0zn4TJ3YZCpNyWb
 RlAEHIiR5WAgTCDGcvhv8mVQFuzHT3q2E4QnzW1JbSWx7jAwdMOScDWbiPLm0s92Li3s4hMh_z9w
 PntR9lnnxjJRbzAQvi9c_.vWTODM6n5TpxbAccNCBlY.4FXQYE29ltp22imlHA7xDEoIzIAmR.mI
 ZvcXEGkvVUzBbzCNwzEbGFZAhCPW0YuuiTV3zQtWPLZX2a0QYtfkv_DNy71acq9ErhM.gagGHoIK
 ZoYlqTSep0QJx.FAho4XDovLxZDczaQDoF4JRvotn5LufkzzTcz4d3W4gCsfp8FkS3J8iitJ6FcC
 _RPO1ByW_e4ykgiU2ucMaUiRMUcih6tQPspkBQmsJ5gcl6fiX7Wsdu8vm8pmkAmZU_I6uyRzPTHK
 ype4Mkv.My5fF.taJ43SwqQ_r.RuVC0WOt54trkqFpKlI0rZSzt6hrzba3M.8iKr2Dgy_svV0mAl
 SzBZ28n3iQVgvygSMf7QnAzxf0GM0SA--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 905dc4c7-cb56-4179-b09e-c14358334982
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.bf2.yahoo.com with HTTP; Sun, 21 May 2023 22:59:43 +0000
Date: Sun, 21 May 2023 22:57:54 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <17799965.336600.1684709874320@mail.yahoo.com>
In-Reply-To: <3a73567e-d3c6-83cc-b3ac-0004226581b0@gmail.com>
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com> <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com> <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM> <936520968.215976.1684620209911@mail.yahoo.com> <3a73567e-d3c6-83cc-b3ac-0004226581b0@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21495 YMailNorrin
Message-ID-Hash: OLBCD2PB5CQ2FO44IF4P7OVZIPIB5JKF
X-Message-ID-Hash: OLBCD2PB5CQ2FO44IF4P7OVZIPIB5JKF
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receive with UHD4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OLBCD2PB5CQ2FO44IF4P7OVZIPIB5JKF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4333869000716525282=="

--===============4333869000716525282==
Content-Type: multipart/alternative;
	boundary="----=_Part_336599_1164754138.1684709874319"

------=_Part_336599_1164754138.1684709874319
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks Marcus. Yes, I have observed that people are using USRPs for differ=
ent applications. My application is for gNB simulation for 5G. Slot is a te=
rm for signal structure in time domain in physical layer in 5G. Generally, =
its length is 1ms.
Your guess is correct. I am doing timed capture for an exact number of samp=
les. The transmitter transmits signal endlessly, and the capture is on dema=
nd.Now I have to capture 1ms more than what my analysis requires. The 1ms e=
xtra signals are discarded in analysis but they did protect the signals I n=
eed.It seems that the receiver shut down too early.


    On Saturday, 20 May 2023 at 23:14:16 BST, Marcus D. Leech <patchvonbrau=
n@gmail.com> wrote: =20
=20
  On 20/05/2023 18:03, zhou via USRP-users wrote:
 =20
=20
 Hi,=20
  I installed UHD 4.4 recently. I use USRP for both transmission and receiv=
e. I find that EVM in the tail part of the captured signal is higher, e.g.,=
 in a 20-slot capture, in the first 19 slots, EVM~=3D 1.2%, but in slot#20,=
 evm ~=3D2.9%.=20
  UHD 3.10 was fine. I have found this problem in UHD 4.0 and UHD 4.1. Now =
it still exists in UHD 4.4. My solution is to capture 1ms more than what I =
need.=C2=A0=20
  Is this a bug in FPGA?=20
  Thanks, Hongwei=20
  Without telling us what you mean by a "slot", and exactly how you're capt=
uring, it's impossible to say.=C2=A0=C2=A0 Remember, applications
 =C2=A0 of USRPs are *incredibly diverse*, so if you're using nomenclature =
that is specific to your particular work, others may not
 =C2=A0 understand what it is you're doing.=C2=A0=C2=A0 Please be more spec=
ific.
=20
 My guess is that you're doing a timed capture for an exact number of sampl=
es, and that timing has become a bit more
 =C2=A0 "tight" in more recent releases, so you're capturing samples as the=
 receiver is shutting down, or the transmitter is
 =C2=A0 shutting down.
=20
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_336599_1164754138.1684709874319
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpe6c642e6yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Thanks Marcus. Yes, I have observed that people are using USRPs for different applications. My application is for gNB simulation for 5G. Slot is a term for signal structure in time domain in physical layer in 5G. Generally, its length is 1ms.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Your guess is correct. I am doing timed capture for an exact number of samples. The transmitter transmits signal endlessly, and the capture is on demand.</div><div dir="ltr" data-setdir="false">Now I have to capture 1ms more than what my analysis requires. The 1ms extra signals are discarded in analysis but they did protect the signals I need.</div><div dir="ltr" data-setdir="false">It seems that the receiver shut down too early.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><div><br></div>
        
        </div><div id="ydpac98b132yahoo_quoted_5534964263" class="ydpac98b132yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Saturday, 20 May 2023 at 23:14:16 BST, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydpac98b132yiv2421597430"><div id="ydpac98b132yiv2421597430yqt84086" class="ydpac98b132yiv2421597430yqt8146242889"><div>
    <div class="ydpac98b132yiv2421597430moz-cite-prefix">On 20/05/2023 18:03, zhou via
      USRP-users wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div><div><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class="ydpac98b132yiv2421597430ydp7a60654eyahoo-style-wrap">
        <div dir="ltr">Hi,</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">I installed UHD 4.4 recently.
          I use USRP for both transmission and receive. I find that EVM
          in the tail part of the captured signal is higher, e.g., in a
          20-slot capture, in the first 19 slots, EVM~= 1.2%, but in
          slot#20, evm ~=2.9%.</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">UHD 3.10 was fine. I have
          found this problem in UHD 4.0 and UHD 4.1. Now it still exists
          in UHD 4.4. My solution is to capture 1ms more than what I
          need.&nbsp;</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">Is this a bug in FPGA?</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">Thanks,</div>
        <div dir="ltr">Hongwei</div>
        <br clear="none">
      </div>
    
    Without telling us what you mean by a "slot", and exactly how you're
    capturing, it's impossible to say.&nbsp;&nbsp; Remember, applications<br clear="none">
    &nbsp; of USRPs are *incredibly diverse*, so if you're using nomenclature
    that is specific to your particular work, others may not<br clear="none">
    &nbsp; understand what it is you're doing.&nbsp;&nbsp; Please be more specific.<br clear="none">
    <br clear="none">
    My guess is that you're doing a timed capture for an exact number of
    samples, and that timing has become a bit more<br clear="none">
    &nbsp; "tight" in more recent releases, so you're capturing samples as
    the receiver is shutting down, or the transmitter is<br clear="none">
    &nbsp; shutting down.<br clear="none">
    <br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div><div class="ydpac98b132yqt8146242889" id="ydpac98b132yqt58347">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_336599_1164754138.1684709874319--

--===============4333869000716525282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4333869000716525282==--
