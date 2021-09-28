Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EB441A475
	for <lists+usrp-users@lfdr.de>; Tue, 28 Sep 2021 03:03:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E09373843FC
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 21:03:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="t83jndkx";
	dkim-atps=neutral
Received: from sonic308-3.consmr.mail.bf2.yahoo.com (sonic308-3.consmr.mail.bf2.yahoo.com [74.6.130.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E37E38391E
	for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 21:02:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1632790973; bh=lb+d8h3xmhPAW/dM4b7CYVhqy+9f8Le6DvohqIM8pd4=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=t83jndkxgBnfCmohsXRj2/xoB019t4BR2oRGNu1vcroMmBzXe5kywfKW0mHkT8RRkmec9VceaoQnaSJsMh8UHD6EDNjxgT3/56+1KjfoqS4yZCDXVmaCXwCk0A7kQYvYMTYmmb3Y/qlMQIfyJvyKa3WMDPaR+rCiMLSlIIgE8E2Lq+HTk1ccY1JvVxXLLsTWhjbaePu56izFBe/hHTTIPqRGEvZYimvhTNQ+EKFhb9MW9KKIwSxuAeytFbiXEeysVL2RGi8SdiznHoeF1+rW7QWr8I92cMnNrnOekP8y0CMYwyqKlRfCoBS6ZxntR8SYTBoBc6LjBkh2qXIUxcQfgA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1632790973; bh=ZKJiljiAxSs8hnWwUgWwcvI2PZkUXXF7Wz6a6iUyIOW=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Et6ZNMWgrCNaPh2U0GTUcC72LiFd5Z8e88UrsVCwUkWNB4An3D2kdG/S2/JPayMzSz98ZbdnYyUwAJKurjeXKm38uLK7ciCr/81d0T/Mfg7hRzT5Zlad9IHm0L+mGX/BYl78DzCrrYopSlJrLmNSh8FOi4qWjIREzflGZ8G+4sbVmdpDKy2Q1Radbkp7sKKqJqLjnCf99FeY8S+DT/pI5dB3hd+lICJMePQBNt7msqN2X/T6cz/TLwsnHWbVhuvFy0ee18mzJHHu1kZQxA6IzPns6b+faKvqg7LNtr84bNH9ZlRxUWa95zvdpuYV5tXvKt2fuxoNTWYLJ4WmMTYjaw==
X-YMail-OSG: 9Xd1GDUVM1nrM1GutE9Eh1DXGb4hww5mzDHp05WQciB_7Mz_0LQjJ8hd3XW1ZIR
 Cj9_SZJukKCx21Fi4ycXRc5PjxESkIx_a2flXfm.kY0H_4MRl5GmLsSZEUaeidAw6y3pL4bmZcDL
 0Rsh2Io7s6d4FkfdkW_jjsWuEirv60wHf1Weasax5NDF061xp8zgk_GP4Hdpuntot2BTxLOUBml2
 M7RFO.wC4XmeMSqPtf2ThEWW9RE5BBkhdg.9BLhK6HZ7OKsfHfu3mNEbzbOGqmJ2R3rnWVTxpXgC
 8fD1Gpt2dvRV3Nq1Bx0J8R5vFjLa71DLu9T7.Yp5jW85ahmvkGu8r0i1eh4tEo7nuaueGKsjVuNw
 o3zt5qyV_EtAlVgdmvNlGT7jDjg0Nq5yVO2hoSD_27hQh__eh9ZCpMBG_UQ_lJVQwjwsuBj.Lzko
 LCxVOlrWFcm92eLt0T3o0wgVe3kGtyp9V3X3Oty4FhEXQ.T0QVG1BpBYV_jKRyfUbza4wfz0wmjA
 fd2r9oz4eWgc_eZh6vzobxhFzCiCdcOOGQpPcTSN8DRRtbNAmGn_Zd997Xvdl6BYFDbQTsCuod.N
 5V.7ahBwZtI7HZK_lutCLrW3OrEMz0rOkmNHp7LcsQ3c3csU.UVAXQF._faTNVDk.PqNEDYuuSAC
 p7kyVNP4JzDC0zoHuIaMu1T4cueUDtaBFi1wr9drF8Nvn.PIVzhRi7HlFhuxCIBdong04ZhgcJLm
 TDQtRqdUfKVDAnoTuRGEKRLrr2uV0orayyKYai_38Bo2x6P2aQ.uJKKgtgp5gvQ0Nj9eI6sXitcI
 dWr5vDUDeMEeIukSNFdx75yLh4t2aRFTpn52DjQNO8RMR66sm3hoFdO0d.C1f7B6hA27KbH1GWe0
 WMyfqrsycmOeIh3KYqMoUjrQXBqeAq9gEXHzP9C6A3_tFCcgnG_r.TnFGcskcp5l4c4ZprTR8_EZ
 lwN6EZZY0dnU76BK.EKlUROJBVB6E9jIuRjRi0vSnRVFzdiM7mhwlfxUXlQRSuUpBAYIwGYiCF9O
 KAcEr4zWsIbLNeN33KjvQ.zwh6dVb7owHn3H0GcDCE11XQUQ1evzuV1VmHM9p14xu0yCunXPbebE
 Xo5r0ZZmlS_Whoxt5.UcgZE4h.67uYDgvdovMAI0jPo5I73Q4omLJz7k27wUfAW1KXP9GTM2sR8j
 cPwK6oV9SordyjhbPv4lXBGSCSzkjxF9ZdC2p.tMMU3Kuy9MyAJJAh2pOcJfrjFqjNhInhHEdS9w
 U4bfAN0sWSZVTDLDcktfFFlYyz0F52fXsJQPGF3YZZ3O_g88F4TBu4mpO8R3UaKgLdKK95kDpg0t
 .ZTKiTcT8oKzDqwJ4YUtCnZKj_G0NsRZvcR9gsMl403pQfvzKS2HBWfFrvb1v7PZcZd65L72Ex8y
 9y3Dda.2wCoXRzLXYATsmkojNeDqsTuCflpuEJedCeHQMIAlcMxV1bLXWvfokwtoSSpUwtyV0e38
 ISvXwBibR6ak.OcGQxIL9B9CkKgIF4vAsZNdlyjzsO8EjbDArfNRvdLMuosz6y11aiWlcB7cYSHU
 On6dtAEvNktpARB5JiF_R77PK6oQzKioA..vt4YyiO.hadUVBaWKL3MUTlOc_HT16nm_7SKo_VkE
 CG0UhVh39EshI3gdh_ETuwub_uBwvfoImp_P14B66qCOYOu9cDuoaaW2s3WBltt5n73u_JdjVQyR
 lARTKrn9FuNjmYJI1hcYdbJ2g_vbzcRx0gbeNkGBuEH5XCFXFpY3Z5SnjrlfxvH4ZDNQmrfQD7YS
 1fxeoe_gyRlz2VVd1SbVbt1ukJTEuwPNooTf0q4Y9JECvGGg.ruDlsa2bslfLhspbGS22X5RsmyZ
 j16IDfq2fn2TMNNVDA8U28YLgvw_2tHgup0kV0QVpR7Blb.1vNqy3lMx6a5AlYNPhN8oRC7hsd24
 OR9Izjl2skUJhUsJcKx2UMgqEdm9A.AF0XVYudPTveObnKPZsb211U2XglYhnc.hLgolf5oZ1G1r
 __bBO3LRvbZZgjOdoyDotjROe.J.JXG3b5BwVxVQpB_AoOnLguSbl84FB7A8WOU0NBO_f6unRWoL
 gp3nRDs6Nhvjtm4T0_8m5J7uz9UujLdOVuXb7axhNS6Nqm8qDwIBkOxEbvvxbPZbqnOIWARs26sy
 W.wKrdVHOGAU5GTPSj3RqGK5aKo3ez46jV5xLXzSoyaD.uAK2xasjgr8hBwbe4vt_WFW_nEbjD1z
 ezMQ7orQ8f1Sj.nFQ0JrzUya3bNpfszPEdAQLA_Gm6lr8F4UPD09sq7.aSwwrCj03D3KGbj3sTGQ
 D0NCAdmK1
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Tue, 28 Sep 2021 01:02:53 +0000
Date: Tue, 28 Sep 2021 01:02:51 +0000 (UTC)
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID: <351392126.1248499.1632790971208@mail.yahoo.com>
In-Reply-To: <AF84E197-4329-4C6B-A48D-2DDBAE9AE5C9@gmail.com>
References: <599675072.1235424.1632788672233@mail.yahoo.com> <AF84E197-4329-4C6B-A48D-2DDBAE9AE5C9@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19043 YMailNorrin
Message-ID-Hash: NPHVQFZR6NBUH2NAHFXB3VFAYJ2WQWY3
X-Message-ID-Hash: NPHVQFZR6NBUH2NAHFXB3VFAYJ2WQWY3
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems cross compiling for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NPHVQFZR6NBUH2NAHFXB3VFAYJ2WQWY3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8101430200124674033=="

--===============8101430200124674033==
Content-Type: multipart/alternative;
	boundary="----=_Part_1248498_2054790075.1632790971206"

------=_Part_1248498_2054790075.1632790971206
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Marcus=20

From looking under sysroot, it appears that there is stuff under it as show=
n here


apg@apg-virtual-machine:/usr/local/oecore-x86_64/sysroots/cortexa9t2hf-neon=
-oe-linux-gnueabi$ ls
bin=C2=A0=C2=A0 data=C2=A0 etc=C2=A0=C2=A0 lib=C2=A0=C2=A0=C2=A0 mnt=C2=A0=
=C2=A0 run=C2=A0=C2=A0 sys=C2=A0 usr
boot=C2=A0 dev=C2=A0=C2=A0 home=C2=A0 media=C2=A0 proc=C2=A0 sbin=C2=A0 tmp=
=C2=A0 var


I looked into some of the directores like /bin, /lib, and /boot and there a=
re things within the directories so there is stuff there. Do I need to list=
 sysroot under PATH so that it can be seen? Also, am I using/calling the cr=
oss-compiler correctly from the command line as indicated above?




    On Monday, September 27, 2021, 8:53:49 PM EDT, Marcus D Leech <patchvon=
braun@gmail.com> wrote: =20
=20
 Have you confirmed that there=E2=80=99s =E2=80=9Cstuff=E2=80=9D under the =
sysyroot that is being pointed to in that $CC variable?

Sent from my iPhone

On Sep 27, 2021, at 8:26 PM, Tellrell White via USRP-users <usrp-users@list=
s.ettus.com> wrote:



=EF=BB=BFI'm trying to cross-compile a simple "hello world" c file on a hos=
t system running ubuntu 18.04. I installed version UHD_4.0.0.HEAD-0-g90ce60=
62 and I have the same version of UHD running on the N310 I'm using. As ins=
tructed, I followed the steps under "Obtaining an SDK" and "SDK Usage" at t=
he following link=20

https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk an=
d the command $CC -dumpmachine shows the correct result as shown.=20


apg@apg-virtual-machine:~$ $CC -dumpmachine
arm-oe-linux-gnueabi
My issue is when i try to compile a simple hello world.c file I get the fol=
lowing=20

apg@apg-virtual-machine:~$ arm-oe-linux-gnueabi-gcc hello_world.c=20
hello_world.c:1:10: fatal error: stdio.h: No such file or directory
=C2=A0=C2=A0=C2=A0 1 | #include <stdio.h>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~~~~
compilation terminated.

Not sure why i'm getting this simple error at the moment but the proper env=
=C2=A0 variables have been set as shown
apg@apg-virtual-machine:~$ echo $CC
arm-oe-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dco=
rtex-a9 --sysroot=3D/usr/local/oecore-x86_64/sysroots/cortexa9t2hf-neon-oe-=
linux-gnueabi
Perhaps there are some add'l paths that I need to be set ??

















_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

 =20
------=_Part_1248498_2054790075.1632790971206
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp2496375yahoo-style-wrap" style=3D=
"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Marcus <br></div><div dir=3D=
"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false=
">From looking under sysroot, it appears that there is stuff under it as sh=
own here<br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse"><div>apg@apg-virtual-machine:/usr/local/oecore-x86_64/sysroots/cortexa=
9t2hf-neon-oe-linux-gnueabi$ ls<br>bin&nbsp;&nbsp; data&nbsp; etc&nbsp;&nbs=
p; lib&nbsp;&nbsp;&nbsp; mnt&nbsp;&nbsp; run&nbsp;&nbsp; sys&nbsp; usr<br>b=
oot&nbsp; dev&nbsp;&nbsp; home&nbsp; media&nbsp; proc&nbsp; sbin&nbsp; tmp&=
nbsp; var<br><div><br></div><div><br></div><div dir=3D"ltr" data-setdir=3D"=
false">I looked into some of the directores like /bin, /lib, and /boot and =
there are things within the directories so there is stuff there. Do I need =
to list sysroot under PATH so that it can be seen? Also, am I using/calling=
 the cross-compiler correctly from the command line as indicated above?<br>=
</div></div><div><br></div></div><div dir=3D"ltr" data-setdir=3D"false"><br=
></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_3316240964" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, September 27, 2021, 8:53:49 PM EDT, Marcus D=
 Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv7417892434"><div>Have you confirmed that=
 there=E2=80=99s =E2=80=9Cstuff=E2=80=9D under the sysyroot that is being p=
ointed to in that $CC variable?<br clear=3D"none"><br clear=3D"none"><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br clear=3D"none"><bl=
ockquote type=3D"cite">On Sep 27, 2021, at 8:26 PM, Tellrell White via USRP=
-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br clear=3D"none"><br clea=
r=3D"none"></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=
=EF=BB=BF<div class=3D"yiv7417892434yahoo-style-wrap" style=3D"font-family:=
Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div class=3D=
"yiv7417892434yqt7797519226" id=3D"yiv7417892434yqt04076"><div dir=3D"ltr">=
<div dir=3D"ltr">I'm trying to cross-compile a simple "hello world" c file =
on a host system running ubuntu 18.04. I installed version <span>UHD_4.0.0.=
HEAD-0-g90ce6062 and I have the same version of UHD running on the N310 I'm=
 using. As instructed, I followed the steps under "Obtaining an SDK" and "S=
DK Usage" at the following link <br clear=3D"none"></span></div><div dir=3D=
"ltr"><span><br clear=3D"none"></span></div><div dir=3D"ltr"><a rel=3D"nofo=
llow noopener noreferrer" shape=3D"rect" target=3D"_blank" href=3D"https://=
files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk">https://f=
iles.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk</a> and the=
 command $CC -dumpmachine shows the correct result as shown. <br clear=3D"n=
one"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br c=
lear=3D"none"></div><div dir=3D"ltr"><div>apg@apg-virtual-machine:~$ $CC -d=
umpmachine<br clear=3D"none"><div>arm-oe-linux-gnueabi</div><div><br clear=
=3D"none"></div><div dir=3D"ltr"><div>My issue is when i try to compile a s=
imple hello world.c file I get the following <br clear=3D"none"></div><div>=
<br clear=3D"none"></div><div>apg@apg-virtual-machine:~$ arm-oe-linux-gnuea=
bi-gcc hello_world.c <br clear=3D"none">hello_world.c:1:10: fatal error: st=
dio.h: No such file or directory<br clear=3D"none">&nbsp;&nbsp;&nbsp; 1 | #=
include &lt;stdio.h&gt;<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br clear=3D=
"none"><div>compilation terminated.</div><div><br clear=3D"none"></div><div=
><br clear=3D"none"></div><div dir=3D"ltr"><div>Not sure why i'm getting th=
is simple error at the moment but the proper env&nbsp; variables have been =
set as shown</div><div><br clear=3D"none"></div><div>apg@apg-virtual-machin=
e:~$ echo $CC<br clear=3D"none"><div>arm-oe-linux-gnueabi-gcc -mthumb -mfpu=
=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 --sysroot=3D/usr/local/oecore-=
x86_64/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi</div><div><br clear=3D"n=
one"></div><div dir=3D"ltr">Perhaps there are some add'l paths that I need =
to be set ??<br clear=3D"none"></div><br clear=3D"none"></div></div><div di=
r=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></di=
v><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"n=
one"></div><br clear=3D"none"></div><div><br clear=3D"none"></div></div><di=
v dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none">=
</div><br clear=3D"none"></div><div><br clear=3D"none"></div></div><div dir=
=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div=
><div><br clear=3D"none"></div><div><br clear=3D"none"></div><div><br clear=
=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"><span></span><span></sp=
an><span></span></div></div></div></div><span>_____________________________=
__________________</span><br clear=3D"none"><span>USRP-users mailing list -=
- usrp-users@lists.ettus.com</span><br clear=3D"none"><span>To unsubscribe =
send an email to usrp-users-leave@lists.ettus.com</span><br clear=3D"none">=
</div></blockquote></div></div></div>
            </div>
        </div></body></html>
------=_Part_1248498_2054790075.1632790971206--

--===============8101430200124674033==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8101430200124674033==--
