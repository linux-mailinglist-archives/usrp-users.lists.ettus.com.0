Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 220E62C6BAD
	for <lists+usrp-users@lfdr.de>; Fri, 27 Nov 2020 19:40:44 +0100 (CET)
Received: from [::1] (port=34762 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kiifh-0003cJ-OJ; Fri, 27 Nov 2020 13:40:41 -0500
Received: from sonic309-21.consmr.mail.ne1.yahoo.com ([66.163.184.147]:37230)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <ampselectronics@yahoo.com>) id 1kiifd-0003Td-R4
 for usrp-users@lists.ettus.com; Fri, 27 Nov 2020 13:40:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1606502396; bh=jjLQ9VmjFOlZfgvE11xS38xDh6WvwGylbUQJ3vANdEc=;
 h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
 b=UwPSiWMcBwl4HF2RTb5DkJOAuViM6knTZHYypLsWhbtLWkYBxcUhqe9GC3u5Bb0s084kmixbqQ7irOQIG6BpgCUBiBm0TpQPYrGrmeWwsmN7VibRJbzFW8wL/J/vLfrS3NLAHCNhpFQmaHMlPvneGogBoj3zxFpVN0Oyq4u4UVwgq1R8kuPFm0RvVqVptUo71KAFJfe3y1Qygp1JMMssMOo4wFkzWPEjSBQqCYzCzJBCibyr7ruQQ3L7/v7TPsX7XNUPTJtHX4J8Bow7hQ5JoHgAnHY/O0sxWa9BIKmZagQkptZrgFJWzI+BIgodDLVxpqYbSGH1t8fzha+d5YS6mg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1606502396; bh=kZ2NsrMjMFFPOwunie2rUTp7Ru/pNe4TlVCb9tAKX96=;
 h=Date:From:To:Subject:From:Subject;
 b=bEb3AQjLqiKmDzzqZG0opHkCE2LOaDzG0I/5h1vDpAVBlBQmG18pWjRWjXetBnB8kRtUCHOFyA078ykm1g06fiECtntSIw0FKnYr+Pq1s/xQGOvteEVYYOIyS4rVV/zW4fz88Lhh9QtVA/6iSopiBmeZfDeqI/guEE9r6JcYA+2xVpZIZE58HEEG4pCutQz78kSjjCEckrfjAkC0INyJ0M7V4XjBwtIFCyNn7ojPGIYMad5QGmiunAApb08Mh7P5Tjsfa7iwSi4D+TAvwN/CWMRmSqha/bSZ6JH8alxoOTqj454qD17UKD2TzKtlRHpg64cRJyTufAXj4maRO2swZw==
X-YMail-OSG: zArycGIVM1kLsCdOV10RGlfcEPPI.VF6AbeuGTSyFvaiG_41jlLpJEGBk1eLXab
 2UaV2ti8WuDpMLDpOj9WNxC6LznNwV4g3aKm_C7AnYI3DSymd4OMq02KAX8URv15YMjXsjkE5CiT
 JtqJiRJaUDtKqOubp8k8XgUxQtVy_VNvst34Gf1vOxzjYjs..lWyZWkhCDNqlwpD2V_TMs56VX8x
 Rsbj0OW_0ts75lSm9DXqagoJNA2ZEs6Tp6SseDMUNfhOBFv0MMzAc6Mjuwmruy4g0Mb4bRljY5Wm
 rErFyZgFepSg9dGaeNA0suN3uL0iuVNULYLVRZPM9rROToznN9wPJLejC3Z05JgI_JDW.PUs9Jzr
 AZ2YDoTuE9Nd6mnPMxKIYwwk38P0DiJfOSj3zOHpRZSzoqLZXaNr_qnPz_qu0muNbMZsuDZTBYhg
 utkvFQ_rp8E1paMorEDvXHD_SINYjvRYSSmfXaJ8QnPDkWukltb2S584WZcL8tOlbHakf2Cf68zn
 uJeRKXsqVyGfpG4xIOVoWHtsq4Js2L9Ptw4MVXAf7_2k8sSURNV57xuw5f6ZJzl.IkkbgGAxNdw1
 hCvXe67Rpcq19g4a4fV_QOoCxWwWrAnuRp0ZvE7FWu08BGPUL4RMeU84EuL5vxvSQUuBUXVJCt0Z
 sutgN8l8icmJ2uQa89v7lMBg5I9OMW3n8ALzA6RybKVNuLJ33Zfu37tgqA3KnIiaIWAkDEYuTYgi
 WFoBHx.EuWC3SS.byIUd4U9NWMK.A6JgyTv87cvp5.XH7m6h3f3h9vxoSmYaIuUEWvIorjAKge4b
 7em4zP_pNNtb1Mnv2jPxXpzVumErJUdPsYozT5GBbmUg8Wlic3zlXYByh14dXraSLzZWwevbgHa1
 qP51no9mnTzDfMymk4ahRJSTDmOp0wh1S3mvP_Uw8aZE8UBD47xz3z6ybqhtE1Zmad2JgoZqjQW4
 IZaVGKEDFHeRFGCb095H4DOViq9kY6A5klA3to6a17iIHU6XAbKvRNlpR6NFCtpHU2mq0xzYl_KC
 ikZ8hOjwbWT8uSzIb3mFAZSLQ701r6_An5AZd6hnQigS_tgKHFan1YDBF4j5MOSaa_zW8M_ECPwW
 pm026exiHEeux6PUZHlUyUEhLft24EuTOXysoKxYl5n_PCzNl7dYNlAEVB0i0rOEP8kdAeBaWn97
 KndS8gda1XmbO1Ru_PBYxtn2CkCfsNfkaYXaoTVZjwxs.9Ew451Ha9t.pEXy25jE.H7KbMg2pJVc
 dtI1tEHzwcdBSsNYadMWR595SQ87OnkL.X9tqR9gumGggAhsPCwQrPfmndcmrYOuSNiKNe.UyKEy
 CVzwWw6CJc686G40qiKhlfaT422I4XV_Z6toSYJ7vN.FoiygiSTrIryYmt_DRrQzTocBbuj1QMr8
 9AbWOrycmHXd4oWeNURNJtS6hNDq6UCZjpb7Clgf5uTq9.EjceB23yJEIcZoi2Ea4fWlWZztbVey
 ZpizsviC6DHtc1JonufAORm575FyfHmLUAxGXfTXGbm3RlrBYFFlGKH7dOkyrwPOZmgYRWk8pLf5
 RJl6WdrdVnrHhsWJkhf9bwW0l57jqadVej8Gz8xaMQIi.YOVrGq.5ziuVP7AJqBnQxq8IUUDbksZ
 2b9B2x9M2HgZPRDY9znjyhOy6vF8LxmamMdI60LDBgLOrm5EiEV8kr65SHd1sFSizMnBe6tQh8uq
 oLb7OcGdxapofNr6o0K6XGFtMMncK9TWBvxIyTqtz_ib6odKjwf0NKOiWd0KblWmpe.zaxWQvTM_
 C1wjXeUCsMM57S12_2UrmWcw1zDXJKtGhe1QSL78XdKtDCye6cNjXkTdrEsIRZLgfqEdg96ThKQR
 E.unHsihGd6RY1FRPQxs6onKD6tMwxibqWfGa1fK5thrKxLrfIf.zj6Ap2.I9MQ01AQjXNCUJrGl
 _H4F.KMPL.gYPE7T3fXo7Xmh2NEKJ3K.aCmlP38FfHxWZytEKP0vv_zozli4gU3XgCcvbYFXowZ6
 FK_qOtlDxFUVlXCcFCyjUhWeSbaN2E8eucxkFv_4eckUCsQICGaw68bGFdy.LG5c7_YHlIufAoCs
 .8BILoOnfppKLBJUxA5Ki9.WsHHAlucpdD_sHqfsZrUaUXYXcM89RPhyswdq12iWnMkKVwtBXFNc
 pyTiNTFlglXQhlfud62vUNOPZ__BAN_uL7_CvCIxNnnq45Scz4.SatU8Hq94zvxfL5DyhufgBPvC
 GLM0JKTn6TMvM0UUtlBCAb4XsCHaBcMe7nq8DkFHoATlDynBkhKdAnuGtNbA5wfEIIu3JiBvIV02
 MGNJnaStOFB3dFjDIUc9EAjl7kiBj1O3jUSKeSAD5GUiqWos0Sp8ok9KQdHPhnXer8Ag2YLsCT_B
 qkPFCG3UGFUqWgy0oY4CTdj16JAi_5WvP3qF2e7h_coIOAot_VvT6NmbT.YbGhKYp9LyQ7nLhnCx
 7m8qDalvpf2Rf62fDC_cq82bK8HogClQ1vKUyktZOs6ZxzJcYMaudD25L6YScZCBmoXblMqE4xOB
 qsoM2HsGuz2AfvxiYmwLSlglHO8CsgySRudZWjXrdmxWj54eYYLn1PZniC49NBf5gjVCgIoEgB8b
 a1oiTQU4OYEbDXzQgiqjcrbMjp8V2dx3RN1qDUko7GhIROkR1RC_Ao.ZZqxT62TIFT5GbLx2lnqL
 GDAe0x0fgPJyEhbQHdZRDSm5SJ6HC63eVuHwI9luHn4Mnh20xf3HbzLGHmM.PjbPU_pGH6RCCmw0
 lVKuxmGB18c9kAmrnrN1YzDCzoSIP_79HCuWbu_dX1AviWuYgKEJxXu6NKAkz6D2_05fIKPrG_X6
 JyK3dzCPpIx4DB5eZpUI0kA4_D3IV6bPt8MUSOgJlHC9.q6ov_gqveUeKAAEt8VPIeKiTqNKWwcQ
 6OA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Fri, 27 Nov 2020 18:39:56 +0000
Date: Fri, 27 Nov 2020 18:39:47 +0000 (UTC)
To: aneesh patel via USRP-users <usrp-users@lists.ettus.com>, 
 Andrew Payne <wandrewp@gmail.com>, 
 Andrew Payne via USRP-users <usrp-users@lists.ettus.com>, 
 usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1354599131.2145920.1606502387534@mail.yahoo.com>
In-Reply-To: <1129435812.2163671.1606502063242@mail.yahoo.com>
References: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
 <82C8BA12-2EC5-45E9-9446-1890860A8F30@gmail.com>
 <CAB50+dT2ah526Vw7gp7q0UYNw5iWA8zt0Gyx0hOhhSF5F1Lxag@mail.gmail.com>
 <CAB50+dSFc_DDhR=-dyN85vGG_utfRwhc1Dvjciv_q3K6U3_GcA@mail.gmail.com>
 <CAB50+dTqG7GiBOn=3vBMu=n5MNS-XvpJqsw_QryGkjeP=OWQkA@mail.gmail.com>
 <1129435812.2163671.1606502063242@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.17111 YahooMailAndroidMobile YMobile/1.0
 (com.yahoo.mobile.client.android.mail/6.15.1; Android/11; RP1A.201105.002;
 flame; Google; Pixel 4; 5.4; 2148x1080; )
Subject: Re: [USRP-users] Fwd: E310: Change MAC Address?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: aneesh patel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: aneesh patel <ampselectronics@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8838524826651855059=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8838524826651855059==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2145919_521078273.1606502387532"
Content-Length: 2564

------=_Part_2145919_521078273.1606502387532
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Correction as the last post was from memory/apologies.
Package: device-tree-compiler
executable: dtc
Happy holidays.=C2=A0
Amp

Sent from Yahoo Mail on Android=20
=20
  On Fri, Nov 27, 2020 at 1:35 PM, aneesh patel via USRP-users<usrp-users@l=
ists.ettus.com> wrote:   _______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
 =20

------=_Part_2145919_521078273.1606502387532
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Correction as the last post was from memory/apologies.<div id=3D"yMail_curs=
orElementTracker_1606502287017"><br></div><div id=3D"yMail_cursorElementTra=
cker_1606502287137">Package: device-tree-compiler</div><div id=3D"yMail_cur=
sorElementTracker_1606502325001"><br></div><div id=3D"yMail_cursorElementTr=
acker_1606502326042">executable: dtc</div><div id=3D"yMail_cursorElementTra=
cker_1606502342679"><br></div><div id=3D"yMail_cursorElementTracker_1606502=
342799">Happy holidays.&nbsp;</div><div id=3D"yMail_cursorElementTracker_16=
06502346457"><br></div><div id=3D"yMail_cursorElementTracker_1606502346596"=
>Amp<br><br><div id=3D"ymail_android_signature"><a id=3D"ymail_android_sign=
ature_link" href=3D"https://go.onelink.me/107872968?pid=3DInProduct&amp;c=
=3DGlobal_Internal_YGrowth_AndroidEmailSig__AndroidUsers&amp;af_wl=3Dym&amp=
;af_sub1=3DInternal&amp;af_sub2=3DGlobal_YGrowth&amp;af_sub3=3DEmailSignatu=
re">Sent from Yahoo Mail on Android</a></div> <br> <blockquote style=3D"mar=
gin: 0 0 20px 0;"> <div style=3D"font-family:Roboto, sans-serif; color:#6D0=
0F6;"> <div>On Fri, Nov 27, 2020 at 1:35 PM, aneesh patel via USRP-users</d=
iv><div>&lt;usrp-users@lists.ettus.com&gt; wrote:</div> </div> <div style=
=3D"padding: 10px 0 0 20px; margin: 10px 0 0 0; border-left: 1px solid #6D0=
0F6;"> _______________________________________________<br clear=3D"none">US=
RP-users mailing list<br clear=3D"none"><a shape=3D"rect" ymailto=3D"mailto=
:USRP-users@lists.ettus.com" href=3D"mailto:USRP-users@lists.ettus.com">USR=
P-users@lists.ettus.com</a><br clear=3D"none"><a shape=3D"rect" href=3D"htt=
p://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"=
_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<=
/a><br clear=3D"none"> </div> </blockquote></div>
------=_Part_2145919_521078273.1606502387532--


--===============8838524826651855059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8838524826651855059==--

