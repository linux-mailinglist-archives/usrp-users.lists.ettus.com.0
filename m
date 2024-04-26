Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 192248B3A21
	for <lists+usrp-users@lfdr.de>; Fri, 26 Apr 2024 16:35:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2826385C4D
	for <lists+usrp-users@lfdr.de>; Fri, 26 Apr 2024 10:35:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714142135; bh=YSXMJJ2JBaXIFJOWWHldGSCX0e6h5ZBvodfvdEqD0nw=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=BjVD6wLW9cezoBS3ekOl+F01M7/UJvfdJhs5zxgRd3FiyMP4U8U3t3Y57dKkoudl0
	 Nvuu7MMGhHBubqAMcYsKjwS8fT+uKQzauIzrMe1q1OixcLQohHAhQFpeJMAxDAkGfP
	 lhDZU9rq4wgvL6snI7DfBW+ajFhM/ZFiIU5FJg3ehLOXOXWR9TQUW/ihvT2upUqvmk
	 YaPVlNJetd8XdW9vC6oDC+pPVKs3rQTURFIrkQ7yYXSmWcoPgXhKx9tMCkfZSffpJd
	 qppxl5z3Ol3Jpc5eNOKmhYqcfSQjj7xKClS7WFyecM/zdrNkHGsgwosDQejTsefByd
	 t/RTo86y+4vqw==
Received: from sonic320-23.consmr.mail.bf2.yahoo.com (sonic320-23.consmr.mail.bf2.yahoo.com [74.6.128.204])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F254385AE7
	for <usrp-users@lists.ettus.com>; Fri, 26 Apr 2024 10:35:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="YotA9TnM";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1714142104; bh=6bHJQ83bp22gkoGsbO5uO7q0GRxqyWONAU++ESEeZnM=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=YotA9TnM4y/f64fseQr63VcBpc8qa3gZpN0IiOWM2swmZwsgxz9JK5tHvlKr4//a7cr7Npe+rhkrbblDgtBfqmV3MaiMADD2dqpbjLjEulrRd70a28w0IYNfSk/CFtMhU78INqooIVTeYp7YqZShfyQ0p+Hbpi6aEdzoEED2pfcLfytGptx6s/gZ2TpDl8/JzdlyD6UurDpOi3s9ls1hyBmX9ESJUFWko2vmx1KORQ1+SGDSIEv5Ptv6Y0lh/fK1y2zZ9wgGlXxZ6XG4YyaF9fV2KT3H3viiviTXsbDG8uUhdTgiqnlUIsXWaBYnGZx+6ESF3mbBHgNy9J9FbZq9qQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1714142104; bh=hQ0l7dXcd473LQNpcnTd5iP8uDINT86bQfK+on2CVwt=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=aOS7MtmNQ4EE4cVlYQLSnRh5uJU19rnd6j+zRSEPLBOVstSrCy2tTeK5u/cvkaazZaV2tCz3bVv/5j2WIBVCcTtUJPIphJ1+lZ31weh4WNT0esEI3DvRuAVgQSwUsPzD457DH/It3Ec29hlYvSbzjOPXED86JEGcNmA45lUxNgDzbh0xcEQFBtfVqhIXRV1wPczRsIPr1NGJzQ6hGhK92b9X7ZfflLO31/ZV5C1jz2NjrJiAoaHNOcu35LIgbnCYdkdKXvAhr1zQ+kDJEBMWwF20jNztk7aBo9/W+wYoQwU09vLjRs7Wd8HDKqM1ic9lKMRprE68698SkL1zQzLUjQ==
X-YMail-OSG: GNdQImwVM1kn8NwbcJVsnV3L4RShKD9hCF9v4iLrtevyBd9eUneiORcgmevTR.G
 BQQyqqq2OJvtY_UGZ6a0i6rLIwq._9AC2aO7rXR7xnMSDLfdg8zmvorWrPWnyv5ba4Fv5Cfov3qI
 4Tkbq3OIGniQLKlegwMXCG5D2SzJ8h.EIUlaxl7WKBr51.w_ye39ehl1kEeN7HTTsCo46GnTwHAw
 ncyyOgut14yG.N6ekfQFt88WCe_0AoEka80wxtwL0k_zmwfKNCMoLAPRXi_E31TK7VUdTzw10nq.
 b4xUbptp8ptvTfEm3hHp6ur19oJSSQDTYo9bN9.1PWBng3iWxIZhV_gbq0kfVId.IMuVcZWhU_uy
 aBMHoqhX6xHF6T9MtYbm2JaPB1b4JEw8MUl5FcPMibvJRB.Gc77D2HFJSN6jyUquv92x.vBTwBjK
 SBHjF0G.xeGiM19vNu0oGqiQmkfQe7EK.1dAruR2K9TM9P1Qb4djnhrJnEclfRAN3RwtrECp2Rh0
 ykmrTjEUXBIxpi1LbK5B3qyuQ1vK6fnMtNwaFoeM8OPyvcBFFEx9w2mGgiFp4EciqVwpDmmq9XlO
 hwgSuTt.dUtPedGwmgyXegxkbfvHCZy07MYsdAcYQRHOChPACmfdVZZ3ugTndriJgbTY_k3dJiv_
 f2aK9SolPx5G3S0xe5M_xfjl2wTfms1JZj_hFWlcqCc8IKeZ0OL4rle.05LDAh3FeIwlnzf5kTEc
 Wf_7koIBj0xr6QPz9ndhxs4VUmONkcORAe2Popu7082mFF7lWJXWUhbxMq9XrqDgS4aztiCQ8vnm
 o6g8fsa0V8kSks9FnCB7JK_7KNM3eY4l6lz2KYqdgwhf3VRjuRZ4G8H7YjcqRRZr8O._dHLP7xys
 anPweNA2xGEyE2xlbvAHbxiYdBOyTldwlMLOJieawny9MM9gEShZIe_.XMYizNNDynBxCX766LkZ
 PNBoMSXJ9fWqsRZrTMI2J7mr07bHVk55H9N5zQJXja4egk_IVqGPQOTgazGNdB8EGQhnb2bBLoOC
 aHCfGBEeB49kO.ttr2CPjmsGAs5hMaYtszveLOYDQXPsre0_T7ug0vPhZZjP84spem2UMbB.Oiqb
 faG6fD6FQESbUCZn6qP_QytMKxaSQA2b46K7lv6ctBT1QJsRqjyvuAwGhh5BfggXbSMKWmHJEn5S
 vKOGUUu_22pn5LErEk.hP9pYtdYgHPUKzG72ptZI5YGqxiWHNT.JHnzhVRJoP5FHvde99fSb3wZq
 exdp.av.bCakIxtEbh1I9YM8qI9oCdnVN._UBwjyteaS59WpLubrAfzVgrwV9RQpuU2TaBK0ep7u
 9ac9E2Dz0R3oVpQjCPiCqdeHKjbz8_FD5TK_1.sx4xAXscnfNGW2DM3dhSPlymVYLCz9YcOUHNDo
 c30GsY_K4C8Uiuuo6Ng7xrbiwcux7SwveZcb1J4bEqJ3qDaIewqcfhYG2OcQgnc1GLvsKiTLIRLJ
 JfHD4d2ownEgeM_O46SD0KZpf1S2Z_WdG42Oyi0ivl6UYvK1G_vc0iztMldVGV6Ef7Vk61GI13NH
 sNrEZO5dn8UY0h5kY6rkqiLRU0sCXZ_FPP.kjamnftIyYgMJFHJWysJmm70oXFRSNJSYbRa.KrY_
 nkND9ZAoJwo1qWZx2FPmBIXON7oTcN4WCdY2S7z9GvTk.iyYDx8Xj5TAuJm9hzEnD94gE.OJYUGK
 ege1J7nzNBqzwcJzyd9ecAo37qsyMGjCErzFmk4xTqvVEjrrysQIvL7u1Gvvp1ZhijQp4ib_dlo4
 ByiLhtd4IOlRgO7IhglFU7OJn2o5qs6Br83SvOWDozvDufaZ7ldv.lj6RvBObfMq8TxYXh4a.2X6
 oeBFrktZ5U2aWGmSdAlMs.K.GKlf0olmTECiPEgHaT2.d.GGNIp4Cf_tSEgkkoSqrRYaJNXgMAjd
 6rzVDjQhzo1bAiv7MTW4L0TSNC40mGALtGJXv9.KCNkwcvObKdJKqensl5WycnghHDihH3vBdw2U
 rj0crFbleN9MZWtMPbxIdi1xxoK3HTpbtqnJ_y0NS0YobpnoUVqKti6mSgHKIp3Q1U2JN_Wk3Ixu
 ERK.SEpJJZkryT0PQNj7FvFOljT5T0CEgVT1gIMrveOyS0H5d6kRvopRwt1l7qc6.yNt34ig0cTf
 1GYH3q30PdFs5EIWmAkCzRqE7V6ESncWDaY1lh31PIkY8pStq3GIaStuNgjmBTYTvsnp8J05Riic
 xpBgCTsUOYtZsBlis4Ub8LctEPu0QE2hAA4MXLw--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 7497b949-8c05-4d12-93f5-f357aaf2aa07
Received: from sonic.gate.mail.ne1.yahoo.com by sonic320.consmr.mail.bf2.yahoo.com with HTTP; Fri, 26 Apr 2024 14:35:04 +0000
Date: Fri, 26 Apr 2024 14:34:59 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <4696440.2274615.1714142099362@mail.yahoo.com>
In-Reply-To: <e0fdc474-d16d-442a-8d6b-ded19e76a979@gmail.com>
References: <zOJJ7EgLjbGE8l37A47H9XZKXDcRKXcbAYZ0Ql4IgBg@lists.ettus.com> <BN2P110MB1747CB3FD646EE5CC091A28AB712A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM> <e0fdc474-d16d-442a-8d6b-ded19e76a979@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22256 YMailNorrin
Message-ID-Hash: ISJOONI2EBRJ5PHVPJQAVGTVD4PSFCW2
X-Message-ID-Hash: ISJOONI2EBRJ5PHVPJQAVGTVD4PSFCW2
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 self-calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ISJOONI2EBRJ5PHVPJQAVGTVD4PSFCW2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0029683982944454506=="

--===============0029683982944454506==
Content-Type: multipart/alternative;
	boundary="----=_Part_2274614_371692079.1714142099362"

------=_Part_2274614_371692079.1714142099362
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hello all,
When calibrating X410=C2=A0uhd_cal_tx_dc_offset=C2=A0 --verbose --args=3D'1=
92.168.20.2,mgmt_addr=3D192.168.6.99' --freq_start 2e9 --freq_stop 7.2e9 --=
precision 0.00001 --freq_step 5e6 --subdev=3D"A:0"

Error happened:Error: This board does not have the CAL antenna option, cann=
ot self-calibrate.

Looking at the pagehttps://files.ettus.com/manual/page_calibration.html
X410 uses ZBX daughterboard. It seems that X410 can't use the self-cal comm=
ands.
Then how to calibrate it?
Thanks,H.

------=_Part_2274614_371692079.1714142099362
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp569d4a9byahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hello all,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>When calibrating X410&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><s=
pan>uhd_cal_tx_dc_offset&nbsp; --verbose --args=3D'192.168.20.2<span>,mgmt_=
addr=3D192.168.6.99</span>' --freq_start 2e9 --freq_stop 7.2e9 --precision =
0.00001 --freq_step 5e6 --subdev=3D"A:0"</span><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false"><span><br></span></div><div dir=3D"ltr" data-setdir=3D=
"false">Error happened:</div><div dir=3D"ltr" data-setdir=3D"false"><span>E=
rror: This board does not have the CAL antenna option, cannot self-calibrat=
e.</span><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div di=
r=3D"ltr" data-setdir=3D"false">Looking at the page</div><div dir=3D"ltr" d=
ata-setdir=3D"false"><a href=3D"https://files.ettus.com/manual/page_calibra=
tion.html" rel=3D"nofollow" target=3D"_blank">https://files.ettus.com/manua=
l/page_calibration.html</a><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>X410 uses ZBX daughterboard. It seems that X410 can't use the self-cal com=
mands.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"lt=
r" data-setdir=3D"false">Then how to calibrate it?</div><div><br></div><div=
 dir=3D"ltr" data-setdir=3D"false">Thanks,</div><div dir=3D"ltr" data-setdi=
r=3D"false">H.</div><div><br></div></div></body></html>
------=_Part_2274614_371692079.1714142099362--

--===============0029683982944454506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0029683982944454506==--
