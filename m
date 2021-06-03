Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4238139A1CE
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jun 2021 15:06:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39FD13840A0
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jun 2021 09:06:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="pBR0lWtL";
	dkim-atps=neutral
Received: from sonic307-56.consmr.mail.ne1.yahoo.com (sonic307-56.consmr.mail.ne1.yahoo.com [66.163.190.31])
	by mm2.emwd.com (Postfix) with ESMTPS id 5041E3842D2
	for <usrp-users@lists.ettus.com>; Thu,  3 Jun 2021 09:05:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1622725511; bh=0jFI+GgJTaa0sX0z7MY3EHAd3+JQz7gtJcbpV/v6WYk=; h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=pBR0lWtLd8rP8GilqnWt5v+TZGHPSVxKcO3pHG/4yKprfJWx1DoMU0+6suPuguRXqxdOaiFxJDIfiL5/VnmXtZxqEi3rl/nbN1MyGpiWCIvT5gEJzXVDfeZXE1lWsOvyMg6txsqEcN/M2FZohfRGHhmEc/7N0KA5EiqPzz9LxC37PQP+AFgUOKd3uBtsnXYRau650/snWomxciVsVa2k6emmjav/XTfh8OqLWco9PsZ8Cd39EjsIlWRqKgnofwmdtI1aCOI9py1LrQvuS33Zo18/yqGxYlF4lUcOE1BnT2k6Bh+JknTmqGBdjNccGkP8Ga+cO0CpXWXqTN4xIz7Ucw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1622725511; bh=wottVpJCsp4NprjLIKm/9PrPYLNb4/Agq67IniWM/Z1=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=PjMKE3Ubj+hVNj+UiFhpnzfJbJlMZ0rxkK4uXTXnOSEh3dRpcjTo/z5KvVT06BCAlJdukCJyJZoHlzMbGSLU8+of6XQPqfJsInuA3SJhGY5nRxDOE78EM77S/6Q0LoRU8+9Wu77GM8YgGTZynaVXoXmzKGmiojxFsXFLJwwpc5VJcxaWQsMI0xufcLbb1DTCuPAeq8vPasNSy0WdLlHeAgivwTPtEJCbY+SiuOXjNbWgA8k6ri637gLslyBoipfL3vj/za/Pn5ZDKi8yS/Qqe3v3nepiCQPQliaGD2oOJDnrzV1BGaAPlHkAgxgyYInr3hH5ra87ZjoQ9MYSW0qIvQ==
X-YMail-OSG: 7dGIttsVM1kz4Erh1Il9W.dT.BsL.h_VOyXX_qWPXSWM_wgjyBtSmtRjXlTLi4C
 0IFf6FBl..XdicNpPfemDFHp_CbnuJowcvkS.sseNEzJiUXchYwGwc921QQGA8N2xBkD8oVClM5F
 9gpCK5uOaoWPoa3GEnTggnI4tDtt6MMm7P8aC8kC6OoaasgBvpJqG.jWskIzG2yA00yr0udhpfiz
 gVEl56JQbNFeaO6nRcvs6Z2cFwb2rCKDmBm4CU9ghLxAd4DSlfwKUuPpBzH1mandEkb4ek9_No9v
 s23itFCIe.xsilRfSaQg1BzpCp.OxyrelLF3.N_lnpSSLNDlYzmHPtxM8vgaDjmT4JY_c0EOParb
 tkgkqveTV2z4vhOTzpqhN967mENwgoS9bEP6xNinI8HS64IqUHct34BQdIq_0uLFdC4SF4QYwid_
 rsAQac3xez6uK7BhOPIAeb7PfYcE5W7q_R1EbCfyTcAGBMmaUkVcPZ5f4pd0gTmA8_Kgke62hMGD
 X088NVLD2zh56NNK885XfY3O8Zm_INBdFbx0hXS4s7XULmKzWDXqgnY6NV8KqTG6ss.Pq5sGAMZL
 KQEUBH9vK.RXcg2Gl9npsAAL9z1J9lun2rt9cagmqInsb7E_7jH0BPrEoZ3gxtfB.Rcg.HJslWrE
 i_5jZwbaCRP3fEJJ980dxPtMfHr7JahkXqsQDvLf1etpFvu6navBx5JAfJj.dKQcs3RHYah.9EyX
 ENZsW8XhvHQbAMmX1XN3VFWqa1Hnk8xo3I5.hLfVcHU3C9o_zX3jQvwz_eJ.CSddRz.Yt2mu_i_0
 pT_3vSKzVexgnTX023u6PwoYXVMK1MAXQkTXr40oSHz6wb1B_88rYA79snFhwgL8_KETuIiVaxfw
 YGPUG0iNVkWa5lIWE9NqycqjnhJ4MFyL6RnBhUEzgffnqY4rsruKdNQT67nvrBPboOzrUOz2jhoA
 G82d6dTbU.TCbhVGBG2ro_Y1EIctzC7EvP9bzBiNcySt7UWis97aP_NcALovorZkqkCtOqv_NFaQ
 .poE3usBSyXOUQ9nTrLqS785UsRHW.3C2pIukf.3MavKHQ4MHg9bSvYuDT3HPuIHDrhqIsHhSPuO
 rUMPxwT9NqHVaXI9vzBx550CyazRW5LSIhfb037DRuZnG8FdpuitLL_UHmYCTZsxO.32nDGj8G7g
 6GGcExtQhj2nVG4kOsVCGIuQ0zWE2jvrjcTPdwxq.WWgx71rgKTDDBT65HAMdzRPMiOpmmUxDXcJ
 _d6rAmdvyGaKK.Aus3YOQ8htw4sA3iZYMNQ_l_D5aJEWdIiEwfWHpINqn3k8gxgN4CgwCgdVfFs.
 r0EiTNBhCKsS_XlCchcQXCJMRdM2dY6cL30YyU4H.pj8t9m7BjYHaierFh716yUDcVmKoOyXsYhy
 IMJ1eFmMhENnXnZZvFZnmYFEBJjJ9Ck1C81tCGN6cpC_mrwY2NZui.VPMOmfkayYOzEaG2B8V2A6
 gDibPwvf4tcQmKdOtpnmpuArhj.ZpleP3X5WW2qCSeqVkWXOVbfP4j15ryF8vWgsQwLb9tuU8W3C
 xtT4Z4xyMHQl.4bPqWdxfsbSlVTf_Mm3czK5aZj1KtRAAFuDr5r4eYJb9A87_z9dUtE0ApK7eLp6
 clRGXHoql5CMVDV65L84vWamxmQal0NXFR2MsCxpT8lGIFAETcgGceB_tGPTUTRT2zimptCMzEUQ
 6_RTFZqEP2IxAIR4A7Hu0Nj3j.grhTZSSOsmlF_7fLQkfncyjrvSf4BcPlfXlIANLoIkRbiJ5deH
 ORHT7KruNY9jE0AGV2axIAHM_B6kifMYb.t8D6koNUHV3gYP0_O4BSKsOpH6XON4OwTb_pHPweOg
 QNSg_rg.yKB8JMJZ2pndXh_JIKKhYep6yNIYedDiT3VFkGeRE7vbwWV_OM4UPDE9hI1UyyDtc4LS
 KVRpy3Ex49nQj26tAbC0tshy8IA2uaWq2.I8apddltLb7P5IMfVocSPDqW1Xaqu3b1iUDUw1VzwT
 CCewouPmm9CeedBrfG2vkEVVB.scK57b66MmsTAEI3fRZ6jGBu4SaHfKBTYid5DpmdPTbTTQ7HLF
 7PQ1D209VbLy5r.2IF1672RCcbkQED5NleZazcu8bqyHw6Rot24aYpezXDMz0tZZfbBnqfanexHV
 71jm00gjUWSgfpK6wraojIGFCfZqBZxJbhiJVx9RDQO1xanOO0_66AMC_.R4zrHsJMq0Sx4lRwD7
 shajnUTIP60n0jfhMh0H9pIQPgTwYw6ykbCOdvVYHFACdi986.Z7VqzBqK5BFZ.mhbkW_tlV9NGC
 KJyI7_63Zk6GZ_Hbj_C.wavx8YYmCBCEKTOYvDNah9V1YeqoJm3FT5m5LOYBzmMqPJRDhlKX0LwD
 X3kLUn2RM.dOd8iIEIr8ZIqkjbTw2DODnctk8KiI3okUkvyNJ.4ve_DttU8Y2yBkiZjjlPJq0t61
 I3xAOyJ2E8jQ92y.odRgCU27qS0QDhCjBT4uIBRlJMmT0W0MnHOeZy4tg0n0LOskbw1VIqyjBZwM
 x2SfHrPmHX0zIzczf1YDd7sojQTpFcxkso72V0e.86RB43xnS5tBDB5WtcbcsK_kxhD0czQ5PDKN
 3kR9blOJ94YNRHq.bqWfR0IxGaA77FX_FcTfJ0UBDCx62ZB0isqq7FBBLsYDd_nCsLKDcX57Jg.I
 cZvWfI.NpJGSddOn4UZGJEDozp.pIrZhuEpkSYeNKpzl7wdfA0J0zmethnfPYhPY3wX4XgxzDd.J
 tlQ--
X-Sonic-MF: <ampselectronics@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.ne1.yahoo.com with HTTP; Thu, 3 Jun 2021 13:05:11 +0000
Date: Thu, 3 Jun 2021 13:05:04 +0000 (UTC)
To: viktor@ist.osaka-u.ac.jp, Viktor Erdelyi <viktor@ist.osaka-u.ac.jp>,
	usrp-users@lists.ettus.com
Message-ID: <495983099.3160297.1622725504093@mail.yahoo.com>
In-Reply-To: <d56d40c3-d744-9da2-3db8-30671ed15ac3@ist.osaka-u.ac.jp>
References: <b08d9a95-65ce-2544-241f-0706942aa9f8@ist.osaka-u.ac.jp> <86806861.3166323.1622721223239@mail.yahoo.com> <d56d40c3-d744-9da2-3db8-30671ed15ac3@ist.osaka-u.ac.jp>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18368 YahooMailAndroidMobile
Message-ID-Hash: EBIHVLY32U6WWI5S3TZCUBHXRTJFGH3Q
X-Message-ID-Hash: EBIHVLY32U6WWI5S3TZCUBHXRTJFGH3Q
X-MailFrom: ampselectronics@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Center frequency drift on USRP B-series even with Octoclock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EBIHVLY32U6WWI5S3TZCUBHXRTJFGH3Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: aneesh patel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: aneesh patel <ampselectronics@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7278153320498669925=="

--===============7278153320498669925==
Content-Type: multipart/alternative;
	boundary="----=_Part_3160296_2121098707.1622725504092"

------=_Part_3160296_2121098707.1622725504092
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Great info and thanks for the use case. Makes sense for the precision you n=
eed for your situation.
Since really it's just IO, basic driver calls, and instrumentation and your=
 specs support all of that (assuming no weird nuances / I say this to cover=
 myself ha), your sample methods seems great.=C2=A0
Given there is no issue with the b-series hardware (I actually can't recall=
 if that's in spec for real life use cases but I actually learned something=
 here from looking at your charts if it is), it seems you need the higher p=
recision X series to get right to work unless there is a whiz-bang solution=
 for realtime clock drift corrections at the precision you need for the b-s=
eries.
Best of luck! Lots of experience in this forum.
Aneesh=C2=A0
Sent from Yahoo Mail on Android=20
=20
  On Thu, Jun 3, 2021 at 8:39 AM, Viktor Erdelyi<viktor@ist.osaka-u.ac.jp> =
wrote:   _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20

------=_Part_3160296_2121098707.1622725504092
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div id=3D"yiv9121330354"><div id=3D"yMail_cursorElementTracker_16227250587=
16">Great info and thanks for the use case. Makes sense for the precision y=
ou need for your situation.</div><div id=3D"yMail_cursorElementTracker_1622=
725161037"><br></div><div id=3D"yMail_cursorElementTracker_1622725161876">S=
ince really it's just IO, basic driver calls, and instrumentation and your =
specs support all of that (assuming no weird nuances / I say this to cover =
myself ha), your sample methods seems great.&nbsp;</div><div id=3D"yMail_cu=
rsorElementTracker_1622725065432"><br></div><div id=3D"yMail_cursorElementT=
racker_1622725066330">Given there is no issue with the b-series hardware (I=
 actually can't recall if that's in spec for real life use cases but I actu=
ally learned something here from looking at your charts if it is), it seems=
 you need the higher precision X series to get right to work unless there i=
s a whiz-bang solution for realtime clock drift corrections at the precisio=
n you need for the b-series.</div><div id=3D"yMail_cursorElementTracker_162=
2725351925"><br></div><div id=3D"yMail_cursorElementTracker_1622725352065">=
Best of luck! Lots of experience in this forum.</div><div id=3D"yMail_curso=
rElementTracker_1622725239486"><br></div><div id=3D"yMail_cursorElementTrac=
ker_1622725239602">Aneesh&nbsp;</div><div id=3D"yMail_cursorElementTracker_=
1622725112587"><br clear=3D"none"><div id=3D"yiv9121330354ymail_android_sig=
nature"><a rel=3D"nofollow noopener noreferrer" shape=3D"rect" id=3D"yiv912=
1330354ymail_android_signature_link" target=3D"_blank" href=3D"https://go.o=
nelink.me/107872968?pid=3DInProduct&amp;c=3DGlobal_Internal_YGrowth_Android=
EmailSig__AndroidUsers&amp;af_wl=3Dym&amp;af_sub1=3DInternal&amp;af_sub2=3D=
Global_YGrowth&amp;af_sub3=3DEmailSignature">Sent from Yahoo Mail on Androi=
d</a></div> <br clear=3D"none"> <blockquote style=3D"margin:0 0 20px 0;"> <=
div style=3D"font-family:Roboto, sans-serif;color:#6D00F6;"> <div>On Thu, J=
un 3, 2021 at 8:39 AM, Viktor Erdelyi</div><div class=3D"yiv9121330354yqt34=
46864412" id=3D"yiv9121330354yqtfd35010"><div>&lt;viktor@ist.osaka-u.ac.jp&=
gt; wrote:</div> </div></div><div class=3D"yiv9121330354yqt3446864412" id=
=3D"yiv9121330354yqtfd42160"> <div style=3D"padding:10px 0 0 20px;margin:10=
px 0 0 0;border-left:1px solid #6D00F6;"> _________________________________=
______________<br clear=3D"none">USRP-users mailing list -- <a rel=3D"nofol=
low noopener noreferrer" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a><br clear=3D"none">To unsubscribe send an email =
to <a rel=3D"nofollow noopener noreferrer" shape=3D"rect" ymailto=3D"mailto=
:usrp-users-leave@lists.ettus.com" target=3D"_blank" href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear=3D=
"none"> </div> </div></blockquote></div></div>
------=_Part_3160296_2121098707.1622725504092--

--===============7278153320498669925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7278153320498669925==--
