Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3495FC7EF
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 17:07:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0D3D3839A1
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 11:07:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665587232; bh=rJoNwAQEsJpMbuXrcUQd/UiHQw5i1xoQ664wqF26zN0=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=pHDvlrOXspLM6mpEOM383vHxpLmP54QQVbEtbqOYuqlj6FtkfhaaLTRx4VuqSMUlC
	 zVavaPtt5Q3/qZIfyo2WyOXgiy5H+L59gLkgVnK5WTNGtdemmtiHkoOymlO+tvjBJx
	 /pi6nC8IzJVhfFOd/UG2nuJUUXdXBKHozbzlSDV4I5G35ZAyNHuvQBkvBGUYtwOq2p
	 qWzeyVMpfpF23OFH1hras+i0njDzfGZgV/6QCMGGHHQzkkJnWEjqVmv0X67zxZ7KSu
	 sPMNgQCp0RN7rQPLQ75WIAjSNH+vwyeuyYuRktymUp4jJgX05qNoyijgGhywtlY+Au
	 69YiqPBFggKHg==
Received: from sonic322-26.consmr.mail.bf2.yahoo.com (sonic322-26.consmr.mail.bf2.yahoo.com [74.6.132.81])
	by mm2.emwd.com (Postfix) with ESMTPS id BBDD43838FC
	for <usrp-users@lists.ettus.com>; Wed, 12 Oct 2022 11:05:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="LEAYAjl6";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665587157; bh=cndpECqjE5goOHNGm9CEX0+oKIWnM2N7LrMhJP5XZDY=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=LEAYAjl6qS+5cgJMysDPTFKM7W6wvEFnXRLVmZzatLdLhEARRzoFx8OhEaw1uYIn5ol06l2+BiPQMrfuVRdCLEeaCO0nL8ExivghS2CTZ12IPgnpnfTzOp3SjEiRYXxLuQg5c99xNIyqZ55Hhx9A4uhMtBgrQ8XDaipC3iJUr6ZWugOQHVRTatQ5PvsM9bzNmbmTAXVHQY9/RkjdEekczCDBAyqSkaXgqvJ6Cc+1H69U+AVRfOaQ/lHSZV7fpy4X9ENvB8+e9/1gFh5CWiszqe8P/+x0dKcWQJJV4MVvOQkg3hEMLjqBQ58nY+zhnEWFmer0+Z0sENWmQF5rBbhznA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665587157; bh=rqKa/9L90K11B5DasbOtg3WXE79CBzncdv++BOUhnOd=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=YLbV5AqFhOlvUQga/tv43fBQaMxFZX6eKgkbIyS7C5Y39b2qkBlIlWBE+J57b1amHBB+FE6KQSCI/h3BupWyCTgjtAlzEL7NAXcWH9uHvywHcK+DirhSPL3UBZU/euvuMZ439iJSZ6bjo/UUtSrj5A/VkdJFByEmOg8aJwPh98uWynYJczIO+qZ7eTVSJ/fFJPEr0OuGn6WUAB91USjPxYHoK6KgeMmBLaEsvtOdASdzQZkdL/YHLJhgeBpY24Q7Nx9EkQR4B99LC9hy0T63J3+pXUAi7EFJWR570ciHKrP4hlEYbWqvoCxfQDKOhsDNjY269Bow2qxqXAJ2+DFBfw==
X-YMail-OSG: w_bZymAVM1kWf.p6_AZP4t93fcP69SxegB1vK90i0sTo5u.zJaW2ij4Mk0AS8MY
 fVEm7TQiYhSRRHrEpVCwWSPchDPZeXcZZKDjG6boHJXIMGVJNXBdExtAcZzYp9LD5tOGJ2CwVS00
 kaveauYQFAjNARbVLDlo1EJBuqu7e3Jcq14wc_RdxLGJWGW01S0MJvHsqMgpV20gpS0ardjRVn3r
 eBKgEKljuZ2G3c5_E4Ee5InvFGdZR2XXWlYhhSnYNduzTAndNDXQFpBU73UL_NdgM1LvGeB0xWDb
 JhfRr3vCC_eAVlf9gmtk8MiYTJTAuYAdFXrEQ3wKhsrW16Zpy3sc5Dau6eqUTAeSqXmIzIBnZXUn
 5E0_BE0CEFjFfIaitZqhtHdtZM3c7.hbd7_a07yBvzBsGeYMTjOfTqn6WWqubNkiSyGX_BwtyI_6
 SbuYcilweheEP1.010CsDdFgSbCbToPtm4ipK3GSwVGipHGFbncGTsZwQeK17TCLJvYImBMaI0Dv
 fErqvahLoylPyOpNmbS8VkjQVNGEqSPr4rkRcobPUz4WrTZ_LA9LKrQ3IQ5epyh0Fuld6k9QKRrd
 wUn0K4.oS6MSwaQeyaB_xNHFK3BTQ1INw_muJcHptSnL4OOi0mTcCfi882EYA0YhW9KbQwWiFp3j
 PdcH_H_t_7ZDNR609OrRA17ZFfA8N2qzheaTnq5Wm043HZnZ84BrGUuaiXcZKUj2GRnnti.bFRhZ
 gJSlv290CNek8B0fYikMrl3J1LksSLv2yDE3dw.3zr.MEXlUlndwaKzrJZCFoBJZ2JVIbHB4jIGd
 c0e3LPjQtd2pFcHr2MfCSADWotetLnV5KiYyGb4GrtvB9AK5rXO52yfcva_3Yttl7cSDSHMkjsVA
 hbr_y2hTzF9xbiSwcvW0hVkyZVezcRbAQ63uoh3NZPXsAhzMV1Y3R8xbpkcJQQTwDFLaWXxtfgFy
 RW5vZv50nB.NqiekaynJstewr2UdPhT2I5WyEf3u4LUEHYyz5tWFnDoArv22MYXhASQzs0JbSe3Q
 sUdT4J9BqiETX360Bdgzhh98sVGftCbkpUw4kPrBc0.PF112wKCkxFfq4mtRdH88G89ob7gqPzSw
 IbHRxsGetEM_Gs4YFEFUHx30kMtoOot7Af8Fbt3ndI1odla6mmRZwpBWbmhF3vrn_yNdiqXxHWBR
 9g7kxY3VUOSjucbNtepUXpFJltZKPoqULKt0Yvjqxe2u0RZ0x615zTVAe2yL2JkACjyfVMUucvDc
 staABXnfJeH1.89q68.trsovEznLh4UB.UOo_bVWJnAY273nxqRbBUFSXwTDrjPFZNNr8QjSnJHh
 UDG5aV60Zupm5ai2KDSCl3YNYQ2qwBIynKHvyxhIwWlfESSdWK2dKuJc.vSZN27MhPlbURNcJ3fT
 U7gup7foTImeyFZaILLcMaNVm5TaaSuO1kxOxlXQeNy668N4mKsXbbZLaHas8qIgrpeVIcpBNurY
 dYgpfB5qRjQpSdKhJ.AKF3X4P3gdzmhXUi0kKgE8BXLq2_5_myWaHozVrJ...Iml3hj2MAwxfNsf
 JtrZIzjwe4sDgKM7mAJw6k4TyAhGyEbWhUlo7tgg8z2EygZjvjmQqOg8.CogiW2H5tr.ddTvFAKJ
 DO5PdIacBx_0iQYYNLhui2sipmZLfbPWEJs0v.cStmqw7ARsRx2g8PSUBHvz1Af6Rbr_t2VZDyus
 udZxigqrvnzvA5fJEK38ZhkxE0fCC.jtIex3z76DyCpuCBmzY_k9s6TOKKzuQAGWuDDZJBqLQsAc
 hDlK0xAZKbMT5SZbtmb8LrQIM5hM91ydf0lYhQl3nEBZN_pBEWJIgbAXwpWccZQdbx1PVSyy6sPW
 BZzld2tBeBDgqDV46nnrzOqbpvklje2xIOeMzzZ1pWXExDKmb8oWMS1Vx0Mpjf.93mwZ24DBtJDM
 ESsJ6X.eIHiqwr8mM0J0TB664VYaD7KnMMUJSbBPHYdlSQXDrhuhZ7.HHhcna5cL6jL7bTvpByen
 KacjZY0PFQlmU6.NcgidzG.9lHHz.sgHpOfmfXWd1SYa2V3J6XpqXcqgpEW23r6gBWXCwPuX4jkz
 JpFhDYgobz1T65Onk2USBgNUIU.CyLy.HgfukaQrIu1lLt2lhApkKcbz.xwPOWD2q5sJqMH.IYI2
 tca79N4u0MQgwVHLhTpSmn8BQqqvvRi9CpFpU..Q2Enp08aw658YukbMV1dhypaVaEofqpW835Eo
 LYucQ
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic322.consmr.mail.bf2.yahoo.com with HTTP; Wed, 12 Oct 2022 15:05:57 +0000
Date: Wed, 12 Oct 2022 15:05:56 +0000 (UTC)
To: Wade Fife <wade.fife@ettus.com>
Message-ID: <1905931685.487815.1665587156090@mail.yahoo.com>
In-Reply-To: <CAFche=h-mzMYbOJR+QW01rWrLeAsp7EcpDhC8bJLpPs0bG-fqA@mail.gmail.com>
References: <1376300873.302187.1665525196243@mail.yahoo.com> <9D936851-6284-407A-A928-2112A93A3C9D@gmail.com> <1004169650.396598.1665563023045@mail.yahoo.com> <CAFche=h-mzMYbOJR+QW01rWrLeAsp7EcpDhC8bJLpPs0bG-fqA@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.20740 YMailNorrin
Message-ID-Hash: YT3Z263HJ4MXS5GGUJHOBR6BD5CAH3TQ
X-Message-ID-Hash: YT3Z263HJ4MXS5GGUJHOBR6BD5CAH3TQ
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1.0 speed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YT3Z263HJ4MXS5GGUJHOBR6BD5CAH3TQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8595949219130643232=="

--===============8595949219130643232==
Content-Type: multipart/alternative;
	boundary="----=_Part_487814_240381100.1665587156087"

------=_Part_487814_240381100.1665587156087
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Wade,
Thanks for the information. I will try UHD 4.2.
Kind regards,Hongwei


    On Wednesday, 12 October 2022 at 14:29:00 BST, Wade Fife <wade.fife@ett=
us.com> wrote: =20
=20
 There was a change related to how get_time_now was implemented in UHD 4.0 =
but that was improved in UHD 4.2. I would expect the behavior in 4.2 to be =
more like 3.15 and earlier.
Wade

On Wed, Oct 12, 2022 at 3:24 AM zhou via USRP-users <usrp-users@lists.ettus=
.com> wrote:

 Hi Marcus,
Different OS/kernels in the two systems.In old system with UHD 3.10, the OS=
/kernel are=C2=A0Ubuntu=C2=A016.04.6 LTS (GNU/Linux 4.4.0-176-lowlatency x8=
6_64)In new system with UHD 4.1.0, the OS/kernel are=C2=A0Ubuntu 18.04.5 LT=
S (GNU/Linux 5.4.0-80-lowlatency x86_64)



    On Tuesday, 11 October 2022 at 23:11:50 BST, Marcus D Leech <patchvonbr=
aun@gmail.com> wrote: =20
=20
 Is it the same OS/kernel version in both cases?

Sent from my iPhone

On Oct 11, 2022, at 5:53 PM, zhou <hwzhou@yahoo.com> wrote:



=EF=BB=BF Hi Marcus,=C2=A0
I haven't tried UHD 4.2 or 4.3. I see ULLL sometimes in new system, so actu=
ally I am thinking reverting UHD back to the 3.10.



    On Tuesday, 11 October 2022 at 21:47:30 BST, Marcus D. Leech <patchvonb=
raun@gmail.com> wrote: =20
=20
   On 2022-10-11 16:23, zhou wrote:
 =20
  Thanks Marcus. Yes, I use the get_time_now function to read time inside U=
SRPs.=20
  I also think the newer UHD versions should be better, but the measurement=
s tell differently. The queries to USRPs are sequential. There are 16 USRPs=
 using UHD 4.1.0. I query them sequentially and the time intervals one exam=
ple is as follows (unit: ms):  =20
| 1.683691 |
| 1.606288 |
| 1.629145 |
| 1.790804 |
| 1.685894 |
| 1.736507 |
| 1.471674 |
| 1.424962 |
| 1.460004 |
| 1.403206 |
| 1.435221 |
| 1.394569 |
| 2.043707 |
| 1.509543 |
| 1.853792 |

 =20
  In old system, 24 USRPs use UHD 3.10. The time intervals in one example i=
s (unit: ms):  =20
| 0.385173 |
| 0.296745 |
| 0.284212 |
| 0.273682 |
| 0.278543 |
| 0.274327 |
| 0.279519 |
| 0.274441 |
| 0.276693 |
| 0.296875 |
| 0.275212 |
| 0.307623 |
| 0.309554 |
| 0.28233 |
| 0.28234 |
| 0.275119 |
| 0.283057 |
| 0.277138 |
| 0.279357 |
| 0.276074 |
| 0.277696 |
| 0.276335 |
| 0.280675 |

 =20
 =20
  Though there is some variance in intervals in both systems, the differenc=
e between old and new systems are significant and reliable. Could you pleas=
e pass my case to the R&D team to confirm?=20
  Thanks, Hongwei =C2=A0=20
 =20
      On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D. Leech <patchvo=
nbraun@gmail.com> wrote: =20
 =20
      On 2022-10-11 12:15, zhou via USRP-users wrote:
 =20
=20
    Hi,=20
  Some of our USRPs are using UHD 3.10 because they are in old systems. and=
 I am also using UHD 4.1.0 in some other USRPs in new system. The USRP prod=
ucts are all NI USRP 2944 (X310). In my applications, I need to use PPS sig=
nal to synchronize multiple USRPs. After applying PPS signals, I read back =
the time in USRPs one by one. Because of network delay, there is some diffe=
rence between the readings. However, the difference is much bigger in UHD 4=
.1.0.=C2=A0=20
  The interval between two USRPs using UHD 3.10 is about 0.2ms while it is =
about 1.4ms in UHD 4.1.0=20
  Does this mean that UHD 4.1.0 is slower than UHD 3.10?=20
  Thanks for any suggestion,=20
  =C2=A0Hongwei
 =20
       =20
 Have you tried UHD 4.2 or UHD 4.3?
=20
 I'll point out that the performance-critical aspect is the streaming perfo=
rmance.=C2=A0=C2=A0=C2=A0=C2=A0 The latency on get_time_now() shouldn't mat=
ter
 =C2=A0 that much, unless you're trying to use it for synchronization, and =
you really should be doing that.=C2=A0 That's what set_time_next_pps()
 =C2=A0 and friends are for.
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
------=_Part_487814_240381100.1665587156087
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp96e1dd72yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Wade,</div><div dir=3D"lt=
r" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">T=
hanks for the information. I will try UHD 4.2.</div><div dir=3D"ltr" data-s=
etdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Kind regar=
ds,</div><div dir=3D"ltr" data-setdir=3D"false">Hongwei</div><div dir=3D"lt=
r" data-setdir=3D"false"><br></div><div><br></div><div><br></div>
       =20
        </div><div id=3D"ydpb1963406yahoo_quoted_5731407288" class=3D"ydpb1=
963406yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, 12 October 2022 at 14:29:00 BST, Wade Fif=
e &lt;wade.fife@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpb1963406yiv2742094143"><div><div dir=3D"=
ltr"><div>There was a change related to how get_time_now was implemented in=
 UHD 4.0 but that was improved in UHD 4.2. I would expect the behavior in 4=
.2 to be more like 3.15 and earlier.</div><div><br clear=3D"none"></div><di=
v>Wade<br clear=3D"none"></div></div><br clear=3D"none"><div class=3D"ydpb1=
963406yiv2742094143gmail_quote"><div id=3D"ydpb1963406yiv2742094143yqt65428=
" class=3D"ydpb1963406yiv2742094143yqt3429650382"><div dir=3D"ltr" class=3D=
"ydpb1963406yiv2742094143gmail_attr">On Wed, Oct 12, 2022 at 3:24 AM zhou v=
ia USRP-users &lt;<a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.c=
om" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br clear=3D"none"></div><blockquote style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex;" class=3D"ydpb196=
3406yiv2742094143gmail_quote"><div><div style=3D"font-size:13px;font-family=
:Helvetica Neue, Helvetica, Arial, sans-serif;"><div style=3D"font-family:H=
elvetica Neue, Helvetica, Arial, sans-serif;"></div>
        <div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;">Hi Marcus,</div><div dir=3D"ltr" style=3D"font-family:Hel=
vetica Neue, Helvetica, Arial, sans-serif;"><br clear=3D"none"></div><div d=
ir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-seri=
f;"><div><div>Different OS/kernels in the two systems.</div><div dir=3D"ltr=
">In old system with UHD 3.10, <span><span style=3D"color:rgb(0,0,0);font-f=
amily:Times New Roman;font-size:medium;">the OS/kernel are&nbsp;</span><spa=
n style=3D"color:rgb(0,0,0);font-family:Times New Roman;font-size:medium;">=
Ubuntu&nbsp;</span></span>16.04.6 LTS (GNU/Linux 4.4.0-176-lowlatency x86_6=
4)</div></div><div dir=3D"ltr"><span><span style=3D"color:rgb(0,0,0);font-f=
amily:Times New Roman;font-size:medium;">In new system with UHD 4.1.0, the =
OS/kernel are&nbsp;</span><span style=3D"color:rgb(0,0,0);font-family:Times=
 New Roman;font-size:medium;">Ubuntu 18.04.5 LTS (GNU/Linux 5.4.0-80-lowlat=
ency x86_64)</span></span><br clear=3D"none"></div></div><div dir=3D"ltr" s=
tyle=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><br clea=
r=3D"none"></div><div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helv=
etica, Arial, sans-serif;"><span><span style=3D"color:rgb(0,0,0);font-famil=
y:Times New Roman;font-size:medium;"><br clear=3D"none"></span></span></div=
><div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><=
br clear=3D"none"></div>
       =20
        </div><div id=3D"ydpb1963406yiv2742094143m_8572441594459247022ydp53=
b3515yahoo_quoted_6040645863">
            <div style=3D"font-family:Helvetica, Arial, sans-serif;font-siz=
e:13px;color:rgb(38,40,42);">
               =20
                <div>
                    On Tuesday, 11 October 2022 at 23:11:50 BST, Marcus D L=
eech &lt;<a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com" rel=3D"n=
ofollow" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"ydpb1963406yiv2742094143m_85724415944592470=
22ydp53b3515yiv3505151442"><div>Is it the same OS/kernel version in both ca=
ses?<br clear=3D"none"><br clear=3D"none"><div dir=3D"ltr">Sent from my iPh=
one</div><div dir=3D"ltr"><br clear=3D"none"><blockquote type=3D"cite">On O=
ct 11, 2022, at 5:53 PM, zhou &lt;<a shape=3D"rect" href=3D"mailto:hwzhou@y=
ahoo.com" rel=3D"nofollow" target=3D"_blank">hwzhou@yahoo.com</a>&gt; wrote=
:<br clear=3D"none"><br clear=3D"none"></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div style=3D"font-family:Helvetica Neu=
e, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir=3D"ltr">Hi Marcus,&nbsp;</div><div dir=3D"ltr"><br clear=
=3D"none"></div><div dir=3D"ltr">I haven't tried UHD 4.2 or 4.3. I see ULLL=
 sometimes in new system, so actually I am thinking reverting UHD back to t=
he 3.10.</div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><b=
r clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div><br c=
lear=3D"none"></div>
       =20
        </div><div id=3D"ydpb1963406yiv2742094143m_8572441594459247022ydp53=
b3515yiv3505151442ydp73a21c8yahoo_quoted_6186119582">
            <div style=3D"font-family:Helvetica, Arial, sans-serif;font-siz=
e:13px;color:rgb(38,40,42);">
               =20
                <div>
                    On Tuesday, 11 October 2022 at 21:47:30 BST, Marcus D. =
Leech &lt;<a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com" rel=3D"=
nofollow" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"ydpb1963406yiv2742094143m_85724415944592470=
22ydp53b3515yiv3505151442ydp73a21c8yiv0843887143">
 =20
   =20
 =20
  <div>
    <div>On 2022-10-11 16:23, zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-seri=
f;font-size:13px;">
        <div dir=3D"ltr">Thanks Marcus. Yes, I use the
          get_time_now function to read time inside USRPs.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I also think the newer UHD
          versions should be better, but the measurements tell
          differently. The queries to USRPs are sequential.</div>
        <div dir=3D"ltr">There are 16 USRPs using UHD
          4.1.0. I query them sequentially and the time intervals one
          example is as follows (unit: ms):</div>
        <div dir=3D"ltr">
          <div>
            <table style=3D"border-collapse:collapse;width:48pt;" width=3D"=
64" cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><colgroup span=3D"1"><=
col span=3D"1" style=3D"width:48pt;" width=3D"64"></colgroup><tbody><tr sty=
le=3D"min-height:15pt;" height=3D"20"><td align=3D"right" colspan=3D"1" row=
span=3D"1" style=3D"width:48pt;min-height:15pt;" width=3D"64" height=3D"20"=
>1.683691</td></tr><tr style=3D"min-height:15pt;" height=3D"20"><td align=
=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;" height=3D=
"20">1.606288</td></tr><tr style=3D"min-height:15pt;" height=3D"20"><td ali=
gn=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;" height=
=3D"20">1.629145</td></tr><tr style=3D"min-height:15pt;" height=3D"20"><td =
align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;" heig=
ht=3D"20">1.790804</td></tr><tr style=3D"min-height:15pt;" height=3D"20"><t=
d align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;" he=
ight=3D"20">1.685894</td></tr><tr style=3D"min-height:15pt;" height=3D"20">=
<td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;" =
height=3D"20">1.736507</td></tr><tr style=3D"min-height:15pt;" height=3D"20=
"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;=
" height=3D"20">1.471674</td></tr><tr style=3D"min-height:15pt;" height=3D"=
20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15p=
t;" height=3D"20">1.424962</td></tr><tr style=3D"min-height:15pt;" height=
=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height=
:15pt;" height=3D"20">1.460004</td></tr><tr style=3D"min-height:15pt;" heig=
ht=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-heig=
ht:15pt;" height=3D"20">1.403206</td></tr><tr style=3D"min-height:15pt;" he=
ight=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-he=
ight:15pt;" height=3D"20">1.435221</td></tr><tr style=3D"min-height:15pt;" =
height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-=
height:15pt;" height=3D"20">1.394569</td></tr><tr style=3D"min-height:15pt;=
" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"mi=
n-height:15pt;" height=3D"20">2.043707</td></tr><tr style=3D"min-height:15p=
t;" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"=
min-height:15pt;" height=3D"20">1.509543</td></tr><tr style=3D"min-height:1=
5pt;" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=
=3D"min-height:15pt;" height=3D"20">1.853792</td></tr></tbody></table>
          </div>
          <br clear=3D"none">
        </div>
        <div dir=3D"ltr">In old system, 24 USRPs use
          UHD 3.10. The time intervals in one example is (unit: ms):</div>
        <div dir=3D"ltr">
          <div>
            <table style=3D"border-collapse:collapse;width:48pt;" width=3D"=
64" cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><colgroup span=3D"1"><=
col span=3D"1" style=3D"width:48pt;" width=3D"64"></colgroup><tbody><tr sty=
le=3D"min-height:15pt;" height=3D"20"><td align=3D"right" colspan=3D"1" row=
span=3D"1" style=3D"width:48pt;min-height:15pt;" width=3D"64" height=3D"20"=
>0.385173</td></tr><tr style=3D"min-height:15pt;" height=3D"20"><td align=
=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;" height=3D=
"20">0.296745</td></tr><tr style=3D"min-height:15pt;" height=3D"20"><td ali=
gn=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;" height=
=3D"20">0.284212</td></tr><tr style=3D"min-height:15pt;" height=3D"20"><td =
align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;" heig=
ht=3D"20">0.273682</td></tr><tr style=3D"min-height:15pt;" height=3D"20"><t=
d align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;" he=
ight=3D"20">0.278543</td></tr><tr style=3D"min-height:15pt;" height=3D"20">=
<td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;" =
height=3D"20">0.274327</td></tr><tr style=3D"min-height:15pt;" height=3D"20=
"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15pt;=
" height=3D"20">0.279519</td></tr><tr style=3D"min-height:15pt;" height=3D"=
20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height:15p=
t;" height=3D"20">0.274441</td></tr><tr style=3D"min-height:15pt;" height=
=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-height=
:15pt;" height=3D"20">0.276693</td></tr><tr style=3D"min-height:15pt;" heig=
ht=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-heig=
ht:15pt;" height=3D"20">0.296875</td></tr><tr style=3D"min-height:15pt;" he=
ight=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-he=
ight:15pt;" height=3D"20">0.275212</td></tr><tr style=3D"min-height:15pt;" =
height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"min-=
height:15pt;" height=3D"20">0.307623</td></tr><tr style=3D"min-height:15pt;=
" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"mi=
n-height:15pt;" height=3D"20">0.309554</td></tr><tr style=3D"min-height:15p=
t;" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D"=
min-height:15pt;" height=3D"20">0.28233</td></tr><tr style=3D"min-height:15=
pt;" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=3D=
"min-height:15pt;" height=3D"20">0.28234</td></tr><tr style=3D"min-height:1=
5pt;" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" style=
=3D"min-height:15pt;" height=3D"20">0.275119</td></tr><tr style=3D"min-heig=
ht:15pt;" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" sty=
le=3D"min-height:15pt;" height=3D"20">0.283057</td></tr><tr style=3D"min-he=
ight:15pt;" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1" s=
tyle=3D"min-height:15pt;" height=3D"20">0.277138</td></tr><tr style=3D"min-=
height:15pt;" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"1"=
 style=3D"min-height:15pt;" height=3D"20">0.279357</td></tr><tr style=3D"mi=
n-height:15pt;" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=3D"=
1" style=3D"min-height:15pt;" height=3D"20">0.276074</td></tr><tr style=3D"=
min-height:15pt;" height=3D"20"><td align=3D"right" colspan=3D"1" rowspan=
=3D"1" style=3D"min-height:15pt;" height=3D"20">0.277696</td></tr><tr style=
=3D"min-height:15pt;" height=3D"20"><td align=3D"right" colspan=3D"1" rowsp=
an=3D"1" style=3D"min-height:15pt;" height=3D"20">0.276335</td></tr><tr sty=
le=3D"min-height:15pt;" height=3D"20"><td align=3D"right" colspan=3D"1" row=
span=3D"1" style=3D"min-height:15pt;" height=3D"20">0.280675</td></tr></tbo=
dy></table>
          </div>
          <br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Though there is some variance
          in intervals in both systems, the difference between old and
          new systems are significant and reliable.</div>
        <div dir=3D"ltr">Could you please pass my case
          to the R&amp;D team to confirm?</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Thanks,</div>
        <div dir=3D"ltr">Hongwei</div>
        <div dir=3D"ltr">&nbsp;</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div id=3D"ydpb1963406yiv2742094143m_8572441594459247022ydp53b3515yiv=
3505151442ydp73a21c8yiv0843887143ydp2ff4a00eyahoo_quoted_6295737119">
        <div style=3D"font-family:Helvetica, Arial, sans-serif;font-size:13=
px;color:rgb(38,40,42);">
          <div> On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D.
            Leech <a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com"=
 rel=3D"nofollow" target=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wro=
te: </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"ydpb1963406yiv2742094143m_8572441594459247022ydp53b3=
515yiv3505151442ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287177">
              <div id=3D"ydpb1963406yiv2742094143m_8572441594459247022ydp53=
b3515yiv3505151442ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287177yqt68152">
                <div>
                  <div>On
                    2022-10-11 12:15, zhou via USRP-users wrote:<br clear=
=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue, Helvetica, Aria=
l, sans-serif;font-size:13px;">
                    <div dir=3D"ltr">Hi,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Some of our USRPs are using UHD 3.10
                      because they are in old systems. and I am also
                      using UHD 4.1.0 in some other USRPs in new system.
                      The USRP products are all NI USRP 2944 (X310).</div>
                    <div dir=3D"ltr">In my applications, I need to use PPS
                      signal to synchronize multiple USRPs. After
                      applying PPS signals, I read back the time in
                      USRPs one by one. Because of network delay, there
                      is some difference between the readings. However,
                      the difference is much bigger in UHD 4.1.0.&nbsp;</di=
v>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">The interval between two USRPs using
                      UHD 3.10 is about 0.2ms while it is about 1.4ms in
                      UHD 4.1.0</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Does this mean that UHD 4.1.0 is
                      slower than UHD 3.10?</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Thanks for any suggestion,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">&nbsp;Hongwei<br clear=3D"none">
                    </div>
                    <br clear=3D"none">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Have you tried UHD 4.2 or UHD 4.3?<br clear=3D"none">
    <br clear=3D"none">
    I'll point out that the performance-critical aspect is the streaming
    performance.&nbsp;&nbsp;&nbsp;&nbsp; The latency on get_time_now() shou=
ldn't matter<br clear=3D"none">
    &nbsp; that much, unless you're trying to use it for synchronization, a=
nd
    you really should be doing that.&nbsp; That's what set_time_next_pps()<=
br clear=3D"none">
    &nbsp; and friends are for.<br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div>

</div>_______________________________________________<br clear=3D"none">USR=
P-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.e=
ttus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>=
<br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect" href=
=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_bl=
ank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div>
            </div>
        </div></div></blockquote></div></div></div>
            </div>
        </div></div>_______________________________________________<br clea=
r=3D"none">
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com<=
/a><br clear=3D"none">
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave=
@lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div>
</div></div></div>
            </div>
        </div></body></html>
------=_Part_487814_240381100.1665587156087--

--===============8595949219130643232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8595949219130643232==--
