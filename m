Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A48DA76B44
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 17:53:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9860C384E82
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 11:53:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743436389; bh=fNILJgkA0igcpQjmMS5wytfQ79jHLnyBsF3tvkG6oWU=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=uKWuAHi1SGOAvn5Kz6oWpn4d8Pb07AOrprKOxF1JZ0hi8xqM/ZyYGVgt2UVG4Xiy5
	 LAonWa2QBkDuVs3XYWVF1U0jUgCc6r0WGIZLqhzwCghdOtqobH5ZjKyTwp5HkiBxxV
	 wZnbwVNsrURrSBAdI/Lalzgv5W942bSqMi9oEj+NoUMk6XozmuFEDPuwgtT3DFVZfy
	 TiKNjHPFDGzXahMCmbhuWL4+cKSrfjb40lzCrDrZLrfSwAxmxr86AK/TbkmgncGO4k
	 JbexUTCtn/7ONfKW4RRrv1kTowkWR0ry/9eC+y0YTGquAdadWX3gIe1WUFafo6bDwR
	 pzLtjTjYotNqQ==
Received: from sonic309-13.consmr.mail.bf2.yahoo.com (sonic309-13.consmr.mail.bf2.yahoo.com [74.6.129.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 06FC9380C58
	for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 11:52:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="V5kUaDpj";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1743436332; bh=KdReyhQiVQ0HVbgFGfWEZoOLJc4PiBey/s4HwMiwAi8=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=V5kUaDpjIIDE9OjnDv5F+v1FaCJPpLC4cSKAkiwxD3oU+sm+pk3obPltphgu8wblKivBYk/N00oSYEFaCfNV9Z6f2iF70guw12v2BFfQQ7HEHiyUPv36w/GQKbZFJqPaYq/ZiRN3BMng+yx96M0AgitwATJzcogk2onV2TNa1WhF4jzaggClYgrAym2c7XqUyPVmKGtDmlITvXOcv2zuZM2uim/jdv+IUMoGnS1t6vRKQv7DJLSucQrO99wBuZW81QPyU/lACIwbSV/PodgaDDyQpGtPUiUBngde9B24Wh6WvXNoJBCv7i/cMT9x73xqKqFtlAgJhNNvkycKqhsxgA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1743436332; bh=zIMqcXmwOc92zZjV9/Zj9kCKZfDSFkddMWe2iQ2UUcJ=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=lQcQNMUm7gb+E16X9ohKDGBTgw9eW0tvT1OFDFxy0ottlZIX+Kr0PFNvoA/Js2b7Y08wVvXjOQ1W4BMTkKnb/AepKgeWXwbE+vBKVhId60YDPyuhyr7Ez5vv0bzCcORAsz689Qoh84nEskm++rCgt7BYq4NCZXm/v5Yk9erXWjGWb5bAX5yR/7qCEVfMNdINLflszd5e+vjNsl1cKpLil+lObsb3fQvX1OdJjZWW2+sEDMMgO/khdJ7+2Dy7mDWTIEwn2pUIoQh4lufusaTDmOt1h/b6RdjguFNW45RRRiyY2zrxe0yF2nGEfKXM9pn0z9Cv3lxOvwwXfHA7fDW0CQ==
X-YMail-OSG: 3C7QmhkVM1mC5iMimGVXHlOC5lhYTrU31IbCCbQ7.Gssap3UFcagWWEMIF1WidO
 B696gHAy1CnD_SRlVZs.kAfq.XpxDvH_LScC87bTibDH1sQCceOgKZm5vtZ8AQQn5shuMoLQ4DKy
 mvLiTIoLiBzhFXULGajaHrfaDyWcuI74o0AnkvoQEZU4kVfwxeWnXmLZslW4DjacLFClrGhvNffe
 2xfZqbnRxhZGPU8I7_JLM7tRY2Kkb0VtbPu5H66yRD3pssfSa7wXr8KdvzlqLirL1Z3VgNP16S1e
 hlPLKWYultTviFQ8oAUKb6nz3UENxMJ5y0nD.FZIf1J7zxFDqlIEQqhqYMJQXCOb9sc.WFFacVvw
 2_4g32F81V7b5_p_SVBY7NictCK5ESVJlOV3i6cHRxq53SKLnkUitD_cHLGTZp63jut.WSyrfZoH
 q33MmxHVV3pbZVdvTH70tjRybQPFXX7trveCDSEpwcscSBJi25QYl8ErFv68z9nMLmL0kRD3QLwC
 bVMkGgDwCrurEp4dxYCYoVtDOS3_eSC2RTx_qul.YIbOPLmniJ4GkdISSh.Z16g5qG_b6Llh25JG
 D1ZkrV97LN1WNuPawQdJWUPMZemFgmG9tBVqCCTJ_S94T2b6z9SbP1.tBJFYMVyxDEs089m_zY4M
 xx9SGU9hyQOWuyX3OoCHTpMNoc.0F0TQhxo7rsiTExuelu7f.f_2rJ3WuHzZVbEG6SZagqJ6i24Y
 fze0NYbFQJmkGgBNz.YzhH5u1ojQy0GqXJdm.1vMMaozHS0ayIEuMj3efnSr5m5gIRTQmh3YH.Dx
 YvWR9t9hMo.k0RsIMd_Cg6a.aJg.x9dryjFhTiRJlVihDgKwpbmpQzdSbDur_hiU_CT9ivrSUHWH
 mQFzXbgDEOd6DOjUCNjMW67Jg0LePI3HItTrFDybMrVM77eAfyKA54vKXKbCd.IiMbQ.weJRdJYK
 JAcxKGclY7_NIwsN0H6qzCu_htrew6QsywiPfKOhLkZnJBghk7SPk_IBaMFMJEkDqizhJD87tRqM
 0_uZjojDfgk88R3Sho890220unqkC2I7o760gb5CSNGnWtJxKB0Nr.1CYxBIivNv0ThSt3GVdOAH
 YUr7_DV3PBbu20yICgReod8ivHH8NCEqb4V.jdO8xe5R6C4eAP9tkz.fDcSmo_j8pz1TR07Ojri3
 T6shQ2qqvY2TXewDG5ifnpvvfmzT3y59OwpSxU_g6JOJscODCWCWnOFoCnVaVhi0HkC6fwilrceq
 _AtMQ0inW7.lgO1TOzNDKOiQRmr7WVihhBzBnl0wnkyDatWLOldMwjt5wzbZcjD9.0J8pGH8d.FE
 RSTcnX2iVHVpFFLDdQkrkEjVEyg0Sdi1jr59eBoLcbMygJPnvnPeKLaETTuHlAhy3kBqN8ZcJ4qg
 Z8tHSNr0sjv6nkuGib2DeXCv1reyLfMBGeeBoQ0dLt5_ogmybu9Tpnf2EBQM7fRHYn_otQ6HHG1O
 Gw3Q2fh1YP9rX3RSLsxqrpVy8zk72ag4sXtmur_w1.riLtPdxG6F8xT_14uryvLlsq8Ne6ahmLzR
 YEDI3suGCZFElSvEG_9qVPdXhrPwFXSndvL.iafPwCxawTg_O0NxKoidM_SQQAWsnTQNZcQRqFQu
 Yag.q0vZa.rCEFudjwKU59UPnLfUuEUVifVv8Ee5zH1F_07yGIOUPnipTvHWMKyU5ntuqRbrTgdZ
 smiu9EZmAeEHVQaYt8BdKYiQfVPgzxdCHJdPw4jMewLDz4I0BRM8BPNRvDAJ_Qg.TiDRb5nnU7RY
 nkD3k3ysHlhCNspCd0Q_QqdQWnYBkn60Q6C24pj6fMvzOTTaDS5_cJuEXJjG87bdsTE7PuXwCbSb
 NHnJ_Sr0VTu._jPqFlJbKQkurLJ1lMgZ1DJGG9bC90Xk2NjmlKXlrLkyFWYvBfsVVRDutMRgLcn.
 BGCcImQlGxfuMLRGivvrajSgbqnO_AIfvbSLhfGjBSJsylsXbXFyzN0jmgLnQjDXpg4KxRiO8rbM
 o1GAk0DXPgWAMYrhM0PtnqEuTIYVvR.yQQUOz2AlDYu78pYVk2oZCBQXldU_PIRSrbdrwiLRYW.e
 aYVAb5BPl.BBb.dmE81YjRMEDtVRjBBb5nJGtXgLPaX3AIkn5Biu6fUFna_aiOX9YNmDQUGC3LY4
 4yNNMUj8vA62aXkny8Mn6.sakgFFHlSNxoR_EQqVbr7vUsjvuwwEwMcpZm1Ckttjm2wPP7IubeNQ
 Yhn_SV5a1zDw.ZlOhjC58AdOS82sesGZMNx0McWC29w--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 6db93182-2eb2-46ff-86eb-38d3f4745d5e
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.bf2.yahoo.com with HTTP; Mon, 31 Mar 2025 15:52:12 +0000
Date: Mon, 31 Mar 2025 15:51:59 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1606018006.2100559.1743436319414@mail.yahoo.com>
In-Reply-To: <a5f4e895-2921-4c9d-9979-ede6bf91ceb0@gmail.com>
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com> <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com> <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com> <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM> <a5f4e895-2921-4c9d-9979-ede6bf91ceb0@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.23533 YMailNorrin
Message-ID-Hash: 6PBYSNPXOXHWRNG44QQ2RKJTR25I5XUS
X-Message-ID-Hash: 6PBYSNPXOXHWRNG44QQ2RKJTR25I5XUS
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Max Input RF Power in X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6PBYSNPXOXHWRNG44QQ2RKJTR25I5XUS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5831994206987047098=="

--===============5831994206987047098==
Content-Type: multipart/alternative;
	boundary="----=_Part_2100558_1478009756.1743436319413"

------=_Part_2100558_1478009756.1743436319413
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
What is the max input signal power to RF ports in X310?=C2=A0 There is a sp=
ec in the below link:https://www.ettus.com/wp-content/uploads/2024/01/X300_=
X310_Spec_Sheet_2024-01-23.pdfThere are max output powers, but not input po=
wer.
I am using UBX-160 daughterboard.
In=C2=A0https://kb.ettus.com/X300/X310_Getting_Started_Guides, it says that=
"Never apply more than -15 dBm of power into any RF input."
ChatGpt says that "UBX 40: +10 dBm (10 mW)"
What is the max input signal power?
Thanks for any comments,
Zhou



------=_Part_2100558_1478009756.1743436319413
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpcf4bf1c9yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div><div dir=3D"ltr" da=
ta-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">What i=
s the max input signal power to RF ports in X310?&nbsp; There is a spec in =
the below link:</div><div dir=3D"ltr" data-setdir=3D"false"><a href=3D"http=
s://www.ettus.com/wp-content/uploads/2024/01/X300_X310_Spec_Sheet_2024-01-2=
3.pdf" rel=3D"nofollow" target=3D"_blank">https://www.ettus.com/wp-content/=
uploads/2024/01/X300_X310_Spec_Sheet_2024-01-23.pdf</a></div><div dir=3D"lt=
r" data-setdir=3D"false"><span><span style=3D"color: rgb(0, 0, 0); font-fam=
ily: Helvetica Neue, Helvetica, Arial, sans-serif;">There are max output po=
wers, but not input power.</span></span><br></div><div dir=3D"ltr" data-set=
dir=3D"false">I am using UBX-160 daughterboard.</div><div dir=3D"ltr" data-=
setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">In&nbsp;<=
a href=3D"https://kb.ettus.com/X300/X310_Getting_Started_Guides" rel=3D"nof=
ollow" target=3D"_blank" class=3D"">https://kb.ettus.com/X300/X310_Getting_=
Started_Guides</a>, it says that</div><div dir=3D"ltr" data-setdir=3D"false=
">"<span><span style=3D"color: rgb(0, 0, 0); font-family: Lucida Sans Unico=
de, Lucida Grande, sans-serif; font-size: 14px;">Never apply more than -15 =
dBm of power into any RF input.</span></span>"</div><div><br></div><div dir=
=3D"ltr" data-setdir=3D"false">ChatGpt says that "<strong data-start=3D"253=
" data-end=3D"263">UBX 40</strong>: <strong data-start=3D"265" data-end=3D"=
276">+10 dBm</strong> (10 mW)"</div><div dir=3D"ltr" data-setdir=3D"false">=
<br></div><div dir=3D"ltr" data-setdir=3D"false">What is the max input sign=
al power?</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D=
"ltr" data-setdir=3D"false">Thanks for any comments,</div><div dir=3D"ltr" =
data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Zhou=
</div><div><br></div><div><br></div><div dir=3D"ltr" data-setdir=3D"false">=
<br></div></div></body></html>
------=_Part_2100558_1478009756.1743436319413--

--===============5831994206987047098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5831994206987047098==--
