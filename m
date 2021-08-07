Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA973E3722
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 23:40:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AA50384540
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 17:40:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="pJx2tU7o";
	dkim-atps=neutral
Received: from sonic311-14.consmr.mail.bf2.yahoo.com (sonic311-14.consmr.mail.bf2.yahoo.com [74.6.131.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 118EB383E66
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 17:39:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628372393; bh=rKcCpV2kp2Fh2T2vDV3RYGccNCyDl2B6z0L/ZmlYtPw=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=pJx2tU7ouPYYmJs/fBd7u7WDlVOyc9OL48cK0ICvLvOdHUYUnjoEKpSm3Y1mphOamoBWQUeXESXqNFx1qaDt175oWipPJkbD2xmJ81Divh/Zffs3gkwwbCZC6LCCBEi3umHeqwutg+VU2E4QbSpZyDmJzQim3BFdyHnQSsbhkVH2pMaWMqkFxTtv3NTc4UTmEowFjOecW7OrBO1E0l2g8QeZsYQxaaUFGHwndE2YfK0xON6+8r67o3SYo/I1RJ5CXDlRuel27dvlJ2Vj4FJrnSUm0+eQ5Kq6G6xrHfWWF7tIvjyrV5xDOk0UIByXokKcasL+fyakvg1uMoTuX/QIeA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628372393; bh=TupaUnOs+MHeyBjTMU/Al9894N1Jg7B/UOxz81/8LMM=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=lKITqiJoo+TPv5P7Q+5CF6Hr72wHrh42EctYz4iwGSTzbuNiCjwmtgOjJgcekrO1UZnEalstNkXpi+GioSycDgZlIb8IkX2SvUDM0DW/5HOVY8wbu0mlvx5TZUC8SBAZvL1UJk33l8qpvJ6/aEcLup3FUtPGhDzyqrTyj0Kk+6I0UCXTpuW6UfCVxkbUAQ5dqoayOkvfeGqNFw2TWi8y0PGmfK9KpyKaI9qi5VA6BE6ZEw48bSM1n3AWgycL3jH36FCPTj8cpKTsHOzJK3kpkbphYOXO/Gx7+g2rgzNUbHn8k6oGP35XZNlw5Sl0PZGdx+6HTym295hLDRV1t5IuFw==
X-YMail-OSG: bW3mZ.QVM1ng1_dZPAvaWVWrwkqPFdPzN9O.LyPpFUAGir.Jiw.kOOqEz1Jqyz0
 SoQSs4hRQTuj09lqVYf9PlaN75tXjPNwlVe9nNv_.KLV3tt9KKsJCYdhgFjF14bEtAYQoMWyUjyU
 eX6PXyDqNPgdFe13VQYT.8U5g3V36wYP1Q.SyRo_fxb.9ncdu4.NdKFL5P0wknVD77pZdr0AIv5s
 W_aR1VX3Tm_oBauM1jEMZCAYluIZ4gzlRgmSCsJ9.9Nz2zm03z6Z7e8GiuAGrQly3LxHGGorqEYP
 Bk0X8GBBugJ3o6mfCruU_wiE_xNXzYT7giNjnwH37w8S8iFSX2.YlL6FkY7vuW99cPUKBUAX667N
 CYBnV.kTltHFS1DlDJpzraEH9p.Mb_XQutm1i.OxVj5YvmnKgD5aUtZndT5mPoI9zZXCbwQa.DmB
 tEuDIbsGzKDSZNnH16p_ERDmhyrbJW8S.ptbmjqCGDgk0gw3AgstsnRr1ESRTPTBLBB.I74yzWqC
 qnhsR_Yv5eMSXJKDubcpHg11DRr9hmbuuNHeDzccDJIk5zfCUDi4nTx7yoIhyyYEglUT2mziwEbE
 EVaE.FO6Fmk6i8IncV7kbUQzDo6a4wKO6uFu6qVR7Gzl7_DooL795PNnjHspcipmTQHGyRkwOGrm
 uaLfT4QcIWM0Vvkha_Km9_1i8NahlTCMVnzzzFOVs9zcIUnK4qFpew8I.0in1nEFCxqpILjhq.Uj
 rAH40FtWyO4A_owHDr_BbBaa38Al28JPWDWZ1sJPenFeCFO2o5YPIHJRQf3V0tD9hIFN2Mc_Ldes
 8RhcQxMbGWtXKOF4v94KdWAqWT_Tvhgslmgh5QQYkpexesW4WrVtxMiD0.q1bP6XgY_Jird62Mkb
 Vly6yhgfwwKvpJUjLYLnJ4WpNwRiZKXMJ6isM1U1Xm3XjF2hy4TGOUvmm6l5L0WHkFJpg46NGjch
 KklDhKq0XXvLUM5lKxWtxgynoBY19axpuyU_tD_sDgFjoi19xDsMOhP7R5ZAZyDnpCjzQJNDGu7F
 esvU8jPjl3X8gIZs2ohjif8TVg.VDBVOTjn6lWOcDXzwS4WpJoPWnuGl0E0jUsL6NaFNukNikBp8
 UYoNQYkACJ4lSRJPjbwX5xUCklhiDj9nd2v1Aqg80e00RXsIEUmgWWY1RurvXj2FfKAFseYuPKrH
 hlKyZwVTffdKWOGGnqs1rERxL1RycrFrCPZ8tS4tOCd3qOy7Xnk7AQhrpaTNwrm81c8ztfcVp1GF
 UilEuBp0MPlICmHHduyl_HZw2oYKUn34CUQdBQK.ie.MNRvW6Xikmta1g_6YDLFASRp.dhO5JaIh
 PBHON._2QQB9cw3jiCOIsQsbtUpjwKToRzC3XWnbpDL78YIsBLzJEw3B1E0OAi5oSZVY2zXSxfUN
 EBCV5slFWIf7nAuk0wa.vzIqt7X0Zvo.lmiLV45qE7jI0vj3q9hqoWOMYooMEWjLtC98huDjwc0E
 yNa0a3qEWLD6TTKvVslaX3l76TrwYta5lGc3gPvFttyJUfStFAK9hRsShVV_V1Pc0uTqDeOhddJT
 mnkDGVcWv9qkPHQkGdVt6MiUz.Zr7noHyP6JbQycc_2f0ujQ2K9hsColgOnh7bQwweyRgEYFBP_g
 hCx.73kTBWMA974UIwjxAfInBW2r_LCxkAr1oQs0zslJNe6d9B0ZjNuMFwDd8q8D.sCMoF5JrUSF
 NoPXSfnhRLRov700Stcm7bvcsQCPYrDVicbb9hkb4Yi3oDDQVC9Je_y4a7wC9vx29.k7WZEKtjMH
 _NfXkzLWk5oEdBDLf5wD.aQpkgTCJmEdnwQr6sZyxqKUM7MeEJ6rcBEmAEtSMgMM7JlZhBXAgXt2
 iWASd1KTuAixu6pxonct_udbFOfehxXaVx8NecMgogju8cUIDIwi8ZrrBRonxxDz3VSKupjamDRu
 vXlnxKx72FHBvWhZ4PTgZ6U_sGryfbgngDj0DXCGpJbpy.1lrrDtY0vZDlaqluZ1YJNJHXx_JhBu
 ZDQwRoag.0.HNDsMSKYu73vmRIMDKh5ZNQ_FqyNoUUSpCQ48a9O2fEA2fPPy1I4IG9V_qfHFL6Xf
 go3ICroqZtDh8FuTnlYjPO62DMnWH0lqnnKoiBXYKprSsoOd3M3OWyE.6Vi6K66KK95k3cJwYPnH
 wTYqngIakv.XcFrxat7jNjmqiModWb6ORVUbNDWDFlPwaU_TDK_CnGJ8fWC29whQLszr6O2ykcHt
 UR4upmp7_qEaaYLHBbE2_WuSjjI6otCQRkmDT6Eg8Wd4c5wpqnAIjsuvN63k9AvcSg1BVU_gVIh_
 _08W6QF4heKqr_o_FI0YnYik1E.kTW8bx4G5Wlwtb_ZdMOTgLr_OSDAGY80thiF3vHPO1YUqwtTn
 ZsCEErCXqPTtmWguPpu.NM5LiulpU_zrbGold_7Fct6rGhBRRWihsyUFq4C3HCXUkvPeVa1tKvvD
 jA1bXsFSMNwY17B2L7NGDMXWIrdhJrPghfEOya41iJ.nQbXyufJCGb3qlkiGFkrc.LeUit5_iAXa
 VvewjtGvcHI0PUWNV23WNPvbHiA8dqbsEwww48LtpnHTkOXI8sX._gFGwFiM5uMXiXEzjdF__cTO
 .PiX2YA--
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.bf2.yahoo.com with HTTP; Sat, 7 Aug 2021 21:39:53 +0000
Date: Sat, 7 Aug 2021 21:39:49 +0000 (UTC)
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID: <54441779.134698.1628372389392@mail.yahoo.com>
In-Reply-To: <CAL7q81vgrDp-386LOxyGZRXuevhuRd1iMPoKpK5=1=Cs1oUX=g@mail.gmail.com>
References: <1196360689.69773.1628300602833.ref@mail.yahoo.com> <1196360689.69773.1628300602833@mail.yahoo.com> <CAL7q81vgrDp-386LOxyGZRXuevhuRd1iMPoKpK5=1=Cs1oUX=g@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18796 YMailNorrin
Message-ID-Hash: UTUS52DQURT3BO6WRJQJUK5B2ENSB4IS
X-Message-ID-Hash: UTUS52DQURT3BO6WRJQJUK5B2ENSB4IS
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Confusion about fpga image to use for RFNoC Replay example
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UTUS52DQURT3BO6WRJQJUK5B2ENSB4IS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3482112800351436109=="

--===============3482112800351436109==
Content-Type: multipart/alternative;
	boundary="----=_Part_134697_2078927009.1628372389390"

------=_Part_134697_2078927009.1628372389390
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Understood.=20

Also, I noticed in UHD 4.0 there is an rfnoc_replay_samples_from_file.cpp t=
hat exists instead of the replay_samples_from_file.cpp mentioned in UHD 3.1=
5 so are the steps to building the replay example the same as highlighted i=
n the link=20
https://kb.ettus.com/Using_the_RFNoC_Replay_Block
    On Saturday, August 7, 2021, 12:49:35 AM EDT, Jonathon Pendlum <jonatho=
n.pendlum@ettus.com> wrote: =20
=20
 Hi,
Those instructions are for UHD 3.15. With UHD 4.0, the replay block is incl=
uded by default in the N310, as you can see here in the N310's FPGA image y=
aml file:=C2=A0https://github.com/EttusResearch/uhd/blob/UHD-4.0/fpga/usrp3=
/top/n3xx/n310_rfnoc_image_core.yml#L71.
Jonathon
On Fri, Aug 6, 2021 at 9:44 PM Tellrell White via USRP-users <usrp-users@li=
sts.ettus.com> wrote:

Hello=20
Currently, I'm trying to reproduce the RFNoC replay example shown at the fo=
llowing link
https://kb.ettus.com/Using_the_RFNoC_Replay_Block
using the USRP N310. The version of UHD that I'm using is 4.0, which by def=
ault already has RFNoC enabled. According to the link=C2=A0 above, if you'r=
e using the N310, than you're instructed to modify the file fpga-src/top/n3=
xx/n3xx_core.v with the appropriate changes which instantiates the noc_bloc=
k_replay instead of noc_block_axi_dma_fifo, and then rebuild the image. My =
question is if I'm using UHD 4.0, do I need to make any of the changes disc=
ussed above or is the RFNoC replay block already included in the default N3=
10 FPGA image as highlighted in the following link, which is more updated?=
=20

https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Setting_Up______=
_________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

 =20
------=_Part_134697_2078927009.1628372389390
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp584ef9feyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Understood. <br></div><div d=
ir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"=
false">Also, I noticed in UHD 4.0 there is an rfnoc_replay_samples_from_fil=
e.cpp that exists instead of the <span>replay_samples_from_file.cpp mention=
ed in UHD 3.15 so are the steps to building the replay example the same as =
highlighted in the link </span><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse"><a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" rel=3D"n=
ofollow" target=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Bloc=
k</a></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_8848751801" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Saturday, August 7, 2021, 12:49:35 AM EDT, Jonathon =
Pendlum &lt;jonathon.pendlum@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv0763106760"><div><div dir=3D"ltr">Hi,<di=
v><br clear=3D"none"></div><div>Those instructions are for UHD 3.15. With U=
HD 4.0, the replay block is included by default in the N310, as you can see=
 here in the N310's FPGA image yaml file:&nbsp;<a rel=3D"nofollow noopener =
noreferrer" shape=3D"rect" target=3D"_blank" href=3D"https://github.com/Ett=
usResearch/uhd/blob/UHD-4.0/fpga/usrp3/top/n3xx/n310_rfnoc_image_core.yml#L=
71">https://github.com/EttusResearch/uhd/blob/UHD-4.0/fpga/usrp3/top/n3xx/n=
310_rfnoc_image_core.yml#L71</a>.</div><div><br clear=3D"none"></div><div>J=
onathon</div></div><br clear=3D"none"><div class=3D"yiv0763106760gmail_quot=
e"><div class=3D"yiv0763106760yqt3340713668" id=3D"yiv0763106760yqt08470"><=
div class=3D"yiv0763106760gmail_attr" dir=3D"ltr">On Fri, Aug 6, 2021 at 9:=
44 PM Tellrell White via USRP-users &lt;<a rel=3D"nofollow noopener norefer=
rer" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br clear=3D"none"></div><blockquote class=3D"yiv07631067=
60gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(=
204,204,204);padding-left:1ex;"><div><div style=3D"font-family:Helvetica, A=
rial, sans-serif;font-size:13px;"><div dir=3D"ltr">Hello <br clear=3D"none"=
></div><div dir=3D"ltr">Currently, I'm trying to reproduce the RFNoC replay=
 example shown at the following link</div><div dir=3D"ltr"><br clear=3D"non=
e"></div><div dir=3D"ltr"><a rel=3D"nofollow noopener noreferrer" shape=3D"=
rect" target=3D"_blank" href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay=
_Block">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a></div><div dir=
=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">using the USRP N310. The=
 version of UHD that I'm using is 4.0, which by default already has RFNoC e=
nabled. According to the link&nbsp; above, if you're using the N310, than y=
ou're instructed to modify the file<span> <code>fpga-src/top/n3xx/n3xx_core=
.v<span> with the appropriate changes which instantiates the <code>noc_bloc=
k_replay</code> instead of <code>noc_block_axi_dma_fifo</code>, and then re=
build the image. My question is if I'm using UHD 4.0, do I need to make any=
 of the changes discussed above or is the RFNoC replay block already includ=
ed in the default N310 FPGA image</span></code></span> as highlighted in th=
e following link, which is more updated? <br clear=3D"none"></div><div dir=
=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><a rel=3D"nofollow noope=
ner noreferrer" shape=3D"rect" target=3D"_blank" href=3D"https://kb.ettus.c=
om/Getting_Started_with_RFNoC_in_UHD_4.0#Setting_Up">https://kb.ettus.com/G=
etting_Started_with_RFNoC_in_UHD_4.0#Setting_Up</a></div></div></div>______=
_________________________________________<br clear=3D"none">
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br cl=
ear=3D"none">
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_=
blank" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@li=
sts.ettus.com</a><br clear=3D"none">
</blockquote></div></div>
</div></div></div>
            </div>
        </div></body></html>
------=_Part_134697_2078927009.1628372389390--

--===============3482112800351436109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3482112800351436109==--
