Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C57FA877F5F
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 12:58:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A73BF3854D2
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 07:58:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710158311; bh=/RAQTnEEHF/F8aZpyKMCgm03R/pPhuZEhm3kn1IV9zg=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=UiFUaVEt9KLbIaTVpp+tnryTBaImagj6+digrKdgazM1JCL5n7L6hjL3suwZeod/5
	 VEERgTptDE7GIlYckkQ++zIaZufAzRqd3eb4TG6FPBScGQG1JBy/JOjts6IEikbJsX
	 ZkUWpzYoM95g96g8Fx6D4Td6br2OwB+CQBLao6w/f35tK6N+ZwMm+ihayrbp/kp3r0
	 5JhjerBLiyBgkRHIfOBFpvy6h9b+/aF7LXYQRNKW6yTMQsRmVp9mzwyWHr3i/27IOQ
	 W2MeuLKmMuwgeQUPIvYba2IvydcFJvfBpqssSMsLwn/mI1LSW/wicF6KkwCp6pOW//
	 jOC3QPO1SEn4Q==
Received: from sonic315-13.consmr.mail.bf2.yahoo.com (sonic315-13.consmr.mail.bf2.yahoo.com [74.6.134.123])
	by mm2.emwd.com (Postfix) with ESMTPS id A74BE385496
	for <usrp-users@lists.ettus.com>; Mon, 11 Mar 2024 07:58:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="s4+AY8+V";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1710158291; bh=mvUG51izSVZPqzb5epxUsYTr9yzMYUEl1KqprWgZx0U=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=s4+AY8+Vf0NB1CqOhmjsE78AXrX2XhFnV4FZmRjNWTMvGA+7bwH/Fgs7SSTk9dReXk7nPGdc9UdJYMrK5/5cWptfqv3AygOVZW8dRNOEEx/MLV/96yVcxn6VXrO50vY2qy1nEkoNGEwSX8M0OCtLGh+pLmJhosXUQH7evakIAgU4VL+amlVHuV2I9ITXe9qNwAZyR3me69qzDG+7j3laySiYpS5SBFljS981fjJ5LBbZ77KeRGdXHETrRnNabrR2D5miwNZ7v1LbxkTWOq6vUpBzfOXUKT+5u9twpD/pHEQU/TYrhWsgpbObcD5X9BfYCkbqNzobx0o6yCxkSuF7ig==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1710158291; bh=u8DnzKhRtcyamlQgrfbT8bNBGjTqozpOBs3YeTk39R6=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=G87K6NUpGPawE241ihLD1tXPRWbxk17VJr+dAZ7pfCO/dGZ+DajHO9xdaCcj4DdoZYWPyfDPEk9y+TIlQFgSVc8rDmd/9Im9bmXd9DkYyR2JwCkzvzJRJbPVC30GS6OoVdzJmabPf7Pc2SBP+V/gyj0qUOflpBA88SuVvHg8IOXhJxBTlka0WyOLY/hnpFTOaifPpv9EtsIc1AcA1UUw2kO1wVGn/YhCJUOwA1sWQhIHtjenPPneVat9t6/WYGVaPmyFM/KjlcW+frp+RIxinNKP8HIpswlbuiOs/0c7+5feI4z/rM96mE0fMf5tcu0Y+FlbmzQViauLKHCmTVTf7g==
X-YMail-OSG: Bc0ncP4VM1kDYtCsI1ZWdnjZ1Bwct7lzu7HdfD6LHOih0jVcoz6rm5w8p_bgJWR
 TuKJAFUGsS0KkO53XGCcOjny8GsMXGb.gzIC88D8Xubm388d0Rn09Pu7MWGl6gb0f4SNbRkF.Uiq
 PDo5XlJ3R7DPI9f3cVROguMCtyLAAalCS.zjDM2LTLn9xI2cdQ_nrgD1gwaqiCLGdgDZbN4wkn3Z
 .NTthnmol1EeJTjHa8o8Ue1TbMmm_BjdEPB38XsEoILvzVJ6kvAQ4iQgKWTDjujwUsUqiMadOVHa
 RYGvRk2vW1lGSrRUYuyYRhm5tNULaKEyftZ4Zh7moiw5P3Lq1zU8t2gP1YOYpJbArj3Qiq6sVzeP
 SIKoNDDiq85C0cEYh8DHQjMLH6R5awihRba.FJtS82TLbJQk4SJ48.HXhEFgw1v4EZn.dYUVD_Z4
 92qFwUGzpatw3K5TkjARoFiBgHANBC1AUDywU9N4p4BINKBoMuvbZSbC0cHJf5u_RrzZTn3i3sP.
 n_ScOSI6JJokniMn_rIy77r4UA3D1on2v7qvCHhJVnKLvfGVoFZn7CJ5yKkSik6gOuNbJyEVPwsd
 1ctzMKhF4qy2Xx3u6TyIkC63BwjR8DMWfOP0aJH6HqDo4aR_RP7lg_Y6xjw6ce0mNZOgbUvkIknF
 fq5ZQi.WRvulsa7v2fo6xYQF0tYGin4QvbZuMwjJKDEsQE8C9ANXw5V6OzZrkiFRm2D3UmV.e2p7
 UkEG7IwGY4CONGi6FKFgrwklAdZGtnmbSgLhmS0s1vCWPZ1u_aO7Jj2n02o3suUG6IlBVgkJMAQP
 e3_aeOqfRDpz_uUDcsw2CvwJjbPNHATIoTqADz9SCfmATxznvdbXx7O_6KRbrLX7aplW53uOMKFF
 9kN2QdoPVMeLxihxH9amd.Ailq9YXk6dcfUekUEjOzOuvh91orLnnoa.fc7Yi_BgNUaHg3wHQYSl
 fj6gvk7RPNd0MRiyVTwYFejz2uHYZ9i.Bef5TegEc7M6MY0_gNK.jWXJrcYdH5gFLNsCC3hFzI4A
 QM7CHw4uAwZ_z1PcEUjPAuvlTqkyfU6YG9TiCIEKrv22fbd1sLb5Xyoomz21_R_tT99zxmqGPVK9
 sIX2T65Z_SQukWQVfOyv1b2KQqRtFJoB8lrZnqFDNS9xbRyOl5P4E4TPTbJL6LGiW6Oih7N.4ACC
 Stq.hP35h01.TQLoFGUzKrOe2SNQmKb4iD6GmSzRnZ2Iz2MuOsy7aFzeGXb97EEovz06.8VcDvtZ
 EDZMyDG3c76WetGVhO5zR21UxURTUsi1Rn5j2KeOuVcNBigk7ZeoJX7YdGm4TxDGSrm9SeTShA5r
 n.V.zv53Z8Mw_eFRSXG_kbhL0I1VPUo8cmC2EkU8a5Nlux6jyGjGMIF_Y3bcZqdySnnzxRLMcfq7
 UdWgdG.T_6siXxuIttj7x9RjsSVWaVLetSXzGRhPAuqmUj71Mz2JFEFy_mJ4AWsdQpiF0L8l0Faj
 _Ogar9HhQgp.t9DlGlNbFLAmqCUvFCJPxkTNc9jhgjJ6Qb3IYx80drGs9tWPKq.h62dGyPpYAf2B
 juFAEcDMGoKevqg6tcGE3XNupvi3BOpiObKevK_CSb3MEx5FT9Tw.lzPdmUIthLWq3KtOiAtBRmD
 IcUkUiJ.R9.cfO3om3tXD1x5sRF2w_WDxyDOLVGU12z_mmAOExwaecNWZi3e6AntRtXQQG5wUj8Y
 8dfvV2c6dymwBo_l5pNQFP7VcDDxXqobMJedg4BXasq53OPmURmj0VIlDnuGp7948cpArb.WOniR
 OOHhMH.RBqzeg6B3BxcTlhhPnGmeixrUpo_enVDQP18sz5E3XJUzNYxgswxSgsBq.Qh9EHQ2yqpv
 i0WagDEIq7vQ.6WiKuydIaFSWc2lpUF5VLI4yreWp89r7bVI21nnajZhvfEKCqj668VSDsckSgWV
 tqMYJbscYsD1d8IZa75te6ZcAwxQDrbIaQb.eUZQQIHDlX7uy3AGRGsiYPVlUvugkHz.vM8i2nD_
 znWwt.inX5dHnist9yf7p0wivpg54zL_HAJNm9fbykJM1euHIH1el.7kkf_lBfvmlMVlTHIZRCOO
 1h88Q7KxnJ8iuD86pMs2TM6KUldQVnJPyXU.OAr_zsPRa_u1_evdZpADl7OQ40NI5OkkTjHSlcXW
 WFkBkNiXzf.W2dLPFmCnyKTSqR1CUo1kTzT.7k_OcXbazaDsXI5LTrTfEtW3927uc43zzP.uoEMQ
 h4WzfsdCzT1Fc0sn0LemhWV6WD5AXgBsKvID6Bavkde1yTkvhig--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 3f6f26ff-8cc3-4e8c-9f1c-02334abe582c
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.bf2.yahoo.com with HTTP; Mon, 11 Mar 2024 11:58:11 +0000
Date: Mon, 11 Mar 2024 11:58:06 +0000 (UTC)
To: "pav.vieira@gmail.com" <pav.vieira@gmail.com>,
	=?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>
Message-ID: <320657625.1530401.1710158286433@mail.yahoo.com>
In-Reply-To: <wchjtavhpj73g4k3ulfjfyfqkokluxpodbrgytzgvoipmwyp3k@awtxn4hyhtc2>
References: <DXqddbquXjsPjnaVFxPY9x2JfSaayRo4pHfgsSnjqs@lists.ettus.com> <wchjtavhpj73g4k3ulfjfyfqkokluxpodbrgytzgvoipmwyp3k@awtxn4hyhtc2>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22129 YMailNorrin
Message-ID-Hash: XR4Z2FXLILJGYUO3SF7CHZ6Z6BY76JZE
X-Message-ID-Hash: XR4Z2FXLILJGYUO3SF7CHZ6Z6BY76JZE
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XR4Z2FXLILJGYUO3SF7CHZ6Z6BY76JZE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7221230225917477051=="

--===============7221230225917477051==
Content-Type: multipart/alternative;
	boundary="----=_Part_1530400_1859180290.1710158286431"

------=_Part_1530400_1859180290.1710158286431
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Pedro,=C2=A0C=C3=A9dric,
I did some experiments with X310. I tried calibration with and without 30dB=
 loopback connection. I found that performance was very similar in both app=
roaches, so the conclusion is that loopback connection is unnecessary. Mayb=
e, the circuit in USRP had been changed since we first got it from Ettus ab=
out 6 years ago. BTW, I am using UHD=C2=A04.4.
Another important thing I found is that USRP must be power cycled after cal=
ibration, otherwise, its performance would be poor. In my case, the SNR was=
 about 14dB worse if not power cycling the device.=C2=A0
Kind regards,Hongwei=C2=A0=C2=A0

    On Thursday, 7 March 2024 at 08:52:58 GMT, C=C3=A9dric Hannotier via US=
RP-users <usrp-users@lists.ettus.com> wrote: =20
=20
 Hello Pedro,

On 2024-03-06 22:02 +0000, pav.vieira@gmail.com wrote:
> I'd like to know if you managed to obtain information about the calibrati=
on process?

I did not.
However, Rob also mentioned that the ports should be left unconnected.
I would recommend to stick with what is written
in the official documentation.

Kind regards
--=20

C=C3=A9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1530400_1859180290.1710158286431
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpb1b0726dyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Pedro,&nbsp;<span><span s=
tyle=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif;">C=C3=A9dric,</span></span></div><div dir=3D"ltr" data-setd=
ir=3D"false"><span><span style=3D"color: rgb(38, 40, 42); font-family: Helv=
etica Neue, Helvetica, Arial, sans-serif;"><br></span></span></div><div dir=
=3D"ltr" data-setdir=3D"false"><span><span style=3D"color: rgb(38, 40, 42);=
 font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">I did some exp=
eriments with X310. I tried calibration with and without 30dB loopback conn=
ection. I found that performance was very similar in both approaches, so th=
e conclusion is that loopback connection is unnecessary. Maybe, the circuit=
 in USRP had been changed since we first got it from Ettus about 6 years ag=
o. BTW, I am using UHD&nbsp;</span></span><span style=3D"color: rgb(38, 40,=
 42);">4.4.</span></div><div dir=3D"ltr" data-setdir=3D"false"><span style=
=3D"color: rgb(38, 40, 42);"><br></span></div><div dir=3D"ltr" data-setdir=
=3D"false"><span style=3D"color: rgb(38, 40, 42);">Another important thing =
I found is that USRP must be power cycled after calibration, otherwise, its=
 performance would be poor. In my case, the SNR was about 14dB worse if not=
 power cycling the device.&nbsp;</span></div><div dir=3D"ltr" data-setdir=
=3D"false"><span style=3D"color: rgb(38, 40, 42);"><br></span></div><div di=
r=3D"ltr" data-setdir=3D"false"><span style=3D"color: rgb(38, 40, 42);">Kin=
d regards,</span></div><div dir=3D"ltr" data-setdir=3D"false"><span style=
=3D"color: rgb(38, 40, 42);">Hongwei</span></div><div dir=3D"ltr" data-setd=
ir=3D"false"><span style=3D"color: rgb(38, 40, 42);">&nbsp;&nbsp;</span></d=
iv><div dir=3D"ltr" data-setdir=3D"false"><span style=3D"color: rgb(38, 40,=
 42);"><br></span></div><div><br></div>
       =20
        </div><div id=3D"ydpb1dd9fd4yahoo_quoted_0544396447" class=3D"ydpb1=
dd9fd4yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Thursday, 7 March 2024 at 08:52:58 GMT, C=C3=A9dric =
Hannotier via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>Hello Pedro,<br clear=3D"none"><br clear=3D"none">On 2=
024-03-06 22:02 +0000, <a shape=3D"rect" href=3D"mailto:pav.vieira@gmail.co=
m" rel=3D"nofollow" target=3D"_blank">pav.vieira@gmail.com</a> wrote:<br cl=
ear=3D"none">&gt; I'd like to know if you managed to obtain information abo=
ut the calibration process?<br clear=3D"none"><br clear=3D"none">I did not.=
<br clear=3D"none">However, Rob also mentioned that the ports should be lef=
t unconnected.<br clear=3D"none">I would recommend to stick with what is wr=
itten<br clear=3D"none">in the official documentation.<br clear=3D"none"><b=
r clear=3D"none">Kind regards<br clear=3D"none">-- <br clear=3D"none"><br c=
lear=3D"none">C=C3=A9dric Hannotier<div class=3D"ydpb1dd9fd4yqt2250699660" =
id=3D"ydpb1dd9fd4yqtfd66684"><br clear=3D"none">___________________________=
____________________<br clear=3D"none">USRP-users mailing list -- <a shape=
=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none">To unsubscrib=
e send an email to <a shape=3D"rect" href=3D"mailto:usrp-users-leave@lists.=
ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_1530400_1859180290.1710158286431--

--===============7221230225917477051==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7221230225917477051==--
