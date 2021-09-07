Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B981402818
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 13:56:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6725138466C
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 07:56:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="sRyAygIg";
	dkim-atps=neutral
Received: from sonic306-1.consmr.mail.bf2.yahoo.com (sonic306-1.consmr.mail.bf2.yahoo.com [74.6.132.40])
	by mm2.emwd.com (Postfix) with ESMTPS id 3612B384037
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 07:54:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631015687; bh=Kx7lFB+0olb+QRCQcwrg7CE+5YmxmZKaZ0br4lcVMmY=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=sRyAygIgAIRs04M+qBMP2/eYHLHL0mdY5jEuSn/9pAWOZxaulNq2VyP2vO9ZM6W3Vf3Taj2ZD/NSwVB6CEHI/CiSuRCBeTz/zyHVoCVK9yS6rtJcGUm3bLdV3FkqfX0jXZqnT9H9qbG07R6gmZbAWUc8tnKaSvuK8J0TMHFMJI9FmAN+PmgdHCqhKbIr+TzkVXdD7lwkbhNJUfImhdP0OgR4rt4WVtcEZp7TiSx0Zk1xqrfoQ9w6mjM427Zd8pkyYXDJ50DiAljhro4npRSkyc0Kdf5brWcvyQ4yB1F/5Pjoubjx4+0RPtfsaSeibXLvyLeCn1gavp2n7eVfad1BSA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631015687; bh=xp+alBcMsWEqg8fb/NK3rvF/uTdf21u2fYU3aBsBGmW=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=qYgwKI3H7poVZ6JtxX1qks6MCWI2EWBG23AAQAppzNHXLXfFk0ORaLQgMonecSJnPn5OLeKMvAlbCw9FPufR1Bhhu2d1F2LfMe1aYjwvNRHVGUxliaWAg57wk/7QU4Z8ZkuykxlGRoNdKJgYOzUQH0Hy1iVKTgA6xSVnrKdRmi2JiyjPjv3gP0ReR6bKNwrL4JB/QFyG5N+rTLJ3zYgdsX9LUST8YC/8SOJo9/PL/CxnAl1fV2kpTYTJv4HBYZH+CzYY5aedeOi8Ac6t+Q6vdhfPkh68BxvrN2ZieqSMPUPxQpsIbEsQhwX9OXNp05JA0cYoDTppR7hVkGjDgcWNKg==
X-YMail-OSG: KqV7A34VM1n7F3Kn2W04wUJ5YOouNdZuLvGxZqK3dNxoUiBRUg9WvtH55Fick0r
 L8TEkawP6ATPjynDHMC0nGjt2_gMZwhRBwgZS2y3owtwtImG4l2C7_R6Aswi_pOdtxsU10m.yTm2
 Mc5Da8pwC61H749ctS1kRR7uaXFQoMvI_VbrFWb00R8quo7Qi6haWRN_1zj9I.CAGdrPCRQxSa3f
 yKq.oE3FBgxtu19YzWHsha7RmCOMpeQIeo.FW5uH8_49ma_Kc0aqAjenVbrAp9h0x.hBnYyLqYVC
 Q.K_hy4FdUAVjNmsuT.OM4mcm1vFo.MoLRFwTZD4Ugih7_nxiG9AEjY06DFf6IWgnJ1.0XCvRBOi
 zWey3wyC6ZUYqW5MCexTRquLJenRCxiKeoPWiI26pFRuwvOy1naobSWOialynSPMy0zx1W5DiT_F
 pUnZSf2cRunMC4X_ICIhfWWF7rU0W2NXGHWm8ZdXP9QHTJqYS3yq6p37yE9rCcX5lVtZVWewq0St
 X26zNvtiGmZXGCeqy9kuxbkjrbWjAFWaIuUMauzJRV05dCV8EjvS.wv8s9w35hIgt6ofUt7Esbrk
 mGmM078l4Ue0dqaa5ToSj0OjJMr5CVjVxBr7oIlqQpWMNcPC4HPk0LTaNh3ALNEweaRk_Aqz.xjJ
 VTMY6VT9K9oAJjlRRreu0KwXGmoL1Iajzqw_1iqlpODT_GkeU6Eqfo9TztHBMUnZjUYFE1Byf5bb
 TIOh56yN2myJj.5UMMlNDxvpcLxArhoHHpDguHJoprL7Xs1I.MXUJW85ORqOLrpOiNycZdcFiPbs
 lmIEaczCJ3MqRLBanALAliWFaZvI8FgL43zsxaig5O..lh6KfY6hkK3BxSr2Vrh8gyaJxhoIkcsV
 ZQDzDuKYxgGx4DeLj_tXRbzWCiDfaeLdpyaHadhuxmrW6JRt.3cuGZrFjBn2FsHOk6He60.VdC0e
 y_xYsn6AhsHPfwqkFVjjVxo885pevMg4vVZM9etEiSYZLVn0mxkVAvZCogWpnjv3XtagqNMJAmLX
 TVfiEFI_L0TQTomFwSd.DkOm80cMvEI_B9fqZvuBV4w3rfKJCT5Xs29xE002Ic0p3UgIiP4jNyNM
 U0UtaZvWiiannGpjnNGh1xbg9wyyQiuqzTrlpmGB_Wz93XVpFb1aO.Axc5ai5aTxvZwcA4TfgtID
 81XXz00he9Qwiv5NSXB8j8pFFv71XOKSV9X1lGfdd2KI8A.y6FCIWpCnW8WbdhDOFmA_C1M5XiY5
 ZFXqE37vDRMcoOMP5vKadwczUIEHdpgnz5NMVQ_ntKIA0SNRWf_jCfoXU845hjJyKD8MfNhUSynd
 joUinARGbGieTI3p4WbjqHMJncDJklewH6h4.jganSLC3U3qwFd2wrg5jMImKVGx2Lo6nZXAnK.k
 cPptwN8HJtN_HunvYaIqc9yipiPL6kqQrf_DJ0TL6aXzBZ3j01tFMWs7Dp4k8zZTEYTRBE2uV3s3
 xgL7dVgtgldJ2ikTN9Lh44oSoN3JCpHmk.ezXM.xas0hhv3oG3hv0fIJHu3Cq1NkLfzlx5oFUsf7
 TFKpwEDkFIRwYHSNlf5oYI3O6LK9OrOU38bE4axZKv6aFwGngXdXhxWOf8BHvM2ysBsxYmn6kXVq
 NGu0a1NmC6ZmT.PeG_p1fAj2OXMgzF.JTVQDwHfnViVWM887gyqSRSMcWl6av_rT4VweOUNxsRKt
 DDCLyG5b7sl30_OXtCI7AjIm44XQ2jsEsPesL7.Vd2dmoThZ0oTVoNUYHVPRj4am24_bliXxs56.
 c_TyMgctfBefW4j_glO8gID.7oAoY2l7pkcB4yjon3ofjleZkhJy2FvegcH6LNQPJiFgWrkc5hS.
 r.WQGPc0LpTzhnVfCEmH_dH0EGXHPlPZDUsZ54IoEODTzvTXBjO69EHFhZPx.qw5zl_b1osZDY5Q
 p8HdycHrHdwDH2LboqIie772v5Ql..KLKpR4lgXk8zVU4yWi1TWOewkC.sDf_AKk-
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.bf2.yahoo.com with HTTP; Tue, 7 Sep 2021 11:54:47 +0000
Date: Tue, 7 Sep 2021 11:54:43 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <715684581.1865263.1631015683450@mail.yahoo.com>
In-Reply-To: <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com> <78915145.1401871.1630855703615@mail.yahoo.com> <606552990.1786539.1630963952986@mail.yahoo.com> <147565774.1577833.1630969165270@mail.yahoo.com> <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: 3DQD675TOVF2MLILRDRENIOZDBTLRLIO
X-Message-ID-Hash: 3DQD675TOVF2MLILRDRENIOZDBTLRLIO
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3DQD675TOVF2MLILRDRENIOZDBTLRLIO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0682933050308490525=="

--===============0682933050308490525==
Content-Type: multipart/alternative;
	boundary="----=_Part_1865262_1553220206.1631015683445"

------=_Part_1865262_1553220206.1631015683445
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks Marcus. What is the reason for Rx packet drop in N321? I have confi=
gured the same MTU on both ends of the connection. Interestingly, there is =
no Tx packet loss but Rx.

    On Tuesday, 7 September 2021, 00:05:57 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
=20
  On 2021-09-06 6:59 p.m., zhou wrote:
 =20
=20
 Hi Marcus,=20
  Could you please help on this? I find some confusing information on MTU c=
onfiguration in different ettus web pages: https://files.ettus.com/manual/p=
age_transport.html=C2=A0:=C2=A0 MTU=3D8000 for 10GigE
  https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=C2=A0: =
MTU=3D9000 for 10GigE
 =20
  Which one is correct? :=C2=A0=20
  Thanks.  They're both valid, in that a larger MTU tends to improve bulk p=
erformance at high sample rates.
=20
 The caveat is that BOTH SIDES of the connection have to "agree" on the MTU=
, and some host controllers
 =C2=A0 will happily accept a large MTU, but be unable to actually support =
it, although that situation is NOT one
 =C2=A0 that I have seen in 10GiGe controllers--they inherently want to sup=
port "jumbo frames".
=20
=20
=20
 =20
 =20
      On Monday, 6 September 2021, 22:33:35 BST, zhou via USRP-users <usrp-=
users@lists.ettus.com> wrote: =20
 =20
             Hi,=C2=A0 =20
  I have a problem with the N321 USRP. I find packet dropped in USRP but no=
t in host. In host, I am running Ubuntu 18.04.=20
 =20
=C2=A0Below is the ifconfig result in N321:
=20
root@ni-n3xx-320CAAB:~# ifconfig
=20
eth0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2=
F:32:36:BA
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:192.168.10=
.165=C2=A0 Bcast:192.168.255.255=C2=A0 Mask:255.255.255.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUNNING=
 MULTICAST=C2=A0 MTU:1500=C2=A0 Metric:1
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:618374 er=
rors:0 dropped:11485 overruns:0 frame:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:193714 er=
rors:0 dropped:0 overruns:0 carrier:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:39776733 (3=
7.9 MiB)=C2=A0 TX bytes:14546432 (13.8 MiB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Interrupt:27 Base ad=
dress:0xb000
=20
=C2=A0
=20
int0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr AE:CD:B=
A:E1:CF:96
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:169.254.0.=
1=C2=A0 Bcast:169.254.0.255=C2=A0 Mask:255.255.255.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUNNING=
 MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:456 error=
s:0 dropped:0 overruns:0 frame:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:15 errors=
:0 dropped:0 overruns:0 carrier:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:37392 (36.5=
 KiB)=C2=A0 TX bytes:2770 (2.7 KiB)
=20
=C2=A0
=20
lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Local Loopback
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:127.0.0.1=
=C2=A0 Mask:255.0.0.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP LOOPBACK RUNNING=
=C2=A0 MTU:65536=C2=A0 Metric:1
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:89 errors=
:0 dropped:0 overruns:0 frame:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:89 errors=
:0 dropped:0 overruns:0 carrier:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:7480 (7.3 K=
iB)=C2=A0 TX bytes:7480 (7.3 KiB)
=20
=C2=A0
=20
sfp0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2=
F:32:36:BB
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:192.168.12=
.2=C2=A0 Bcast:192.168.12.255=C2=A0 Mask:255.255.255.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUNNING=
 MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:6239 erro=
rs:0 dropped:804 overruns:0 frame:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:5669 erro=
rs:0 dropped:0 overruns:0 carrier:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:18466697 (1=
7.6 MiB)=C2=A0 TX bytes:18417536 (17.5 MiB)
=20
=C2=A0
=20
sfp1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2=
F:32:36:BC
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:192.168.13=
.2=C2=A0 Bcast:192.168.13.255=C2=A0 Mask:255.255.255.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUNNING=
 MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:24868 err=
ors:0 dropped:796 overruns:0 frame:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:24613 err=
ors:0 dropped:0 overruns:0 carrier:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:20486915 (1=
9.5 MiB)=C2=A0 TX bytes:19611643 (18.7 MiB)
=20
=C2=A0
=20
Below is ifconfig result in host:
=20
user@USRP-SERVER:~$ ifconfig
=20
eno1:flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 192.168.10.143=C2=A0 netmas=
k 255.255.255.0=C2=A0 broadcast 192.168.255.255
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 fe80::b27b:25ff:fe1d:9e4e=
=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ether b0:7b:25:1d:9e:4e=C2=A0 txq=
ueuelen 1000=C2=A0 (Ethernet)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 5604=C2=A0 bytes 4164=
35 (416.4 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 404=C2=A0 bytes 68556=
 (68.5 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0 dropped 0 over=
runs 0=C2=A0 carrier 0=C2=A0 collisions 0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 device interrupt 16=C2=A0 memory=
 0xd2100000-d2120000
=20
=C2=A0
=20
enp1s0f0:flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 9000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 192.168.12.1=C2=A0 netmask =
255.255.255.0=C2=A0 broadcast 192.168.12.255
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 fe80::faf2:1eff:fe42:dddc=
=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ether f8:f2:1e:42:dd:dc=C2=A0 tx=
queuelen 1000=C2=A0 (Ethernet)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 294=C2=A0 bytes 35184=
 (35.1 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 395=C2=A0 bytes 37148=
 (37.1 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0 dropped 0 over=
runs 0=C2=A0 carrier 0=C2=A0 collisions 0
=20
=C2=A0
=20
enp1s0f1:flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 9000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 192.168.13.1=C2=A0 netmask =
255.255.255.0=C2=A0 broadcast 192.168.13.255
=20
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0inet6 fe80::faf2:1eff:fe42:dddd=
=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ether f8:f2:1e:42:dd:dd=C2=A0 tx=
queuelen 1000=C2=A0 (Ethernet)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 9=C2=A0 bytes 2228 (2=
.2 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 72=C2=A0 bytes 7983 (=
7.9 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0 dropped 0 over=
runs 0=C2=A0 carrier 0=C2=A0 collisions 0
=20
=C2=A0
=20
lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 127.0.0.1=C2=A0 netmask 255=
.0.0.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=
=A0 scopeid 0x10<host>
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0=
 (Local Loopback)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 21071=C2=A0 bytes 149=
7110 (1.4 MB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 21071=C2=A0 bytes 149=
7110 (1.4 MB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0 dropped 0 over=
runs 0=C2=A0 carrier 0=C2=A0 collisions 0
 =C2=A0 Could you please let me know what is the possible reason for packet=
 drop in USRP? How to fix it? =20
  Thanks for any inputs. =20
 =20
 =20
      _______________________________________________
 USRP-users mailing list -- usrp-users@lists.ettus.com
 To unsubscribe send an email to usrp-users-leave@lists.ettus.com
    =20
=20
  =20
------=_Part_1865262_1553220206.1631015683445
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp49813887yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Thanks Marcus. What is the reason for Rx packet drop in N321? I have configured the same MTU on both ends of the connection. Interestingly, there is no Tx packet loss but Rx.</div><div dir="ltr" data-setdir="false"><br></div><div><br></div>
        
        </div><div id="ydpa0c1475fyahoo_quoted_1290698225" class="ydpa0c1475fyahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Tuesday, 7 September 2021, 00:05:57 BST, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydpa0c1475fyiv5669889621"><div>
    <div class="ydpa0c1475fyiv5669889621moz-cite-prefix">On 2021-09-06 6:59 p.m., zhou wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div><div><div class="ydpa0c1475fyiv5669889621ydp16591bb1yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir="ltr">Hi Marcus,</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">Could you please help on
          this?</div>
        <div dir="ltr">I find some confusing
          information on MTU configuration in different ettus web pages:</div>
        <div dir="ltr"><a shape="rect" href="https://files.ettus.com/manual/page_transport.html" rel="nofollow" target="_blank">https://files.ettus.com/manual/page_transport.html</a>&nbsp;:&nbsp;
          MTU=8000 for 10GigE<br clear="none">
        </div>
        <div dir="ltr"><a shape="rect" href="https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" rel="nofollow" target="_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>&nbsp;:
          MTU=9000 for 10GigE<br clear="none">
        </div>
        <div><br clear="none">
        </div>
        <div dir="ltr">Which one is correct? :&nbsp;</div>
        <div><br clear="none">
        </div>
        <div dir="ltr">Thanks.</div>
      </div>
    
    They're both valid, in that a larger MTU tends to improve bulk
    performance at high sample rates.<br clear="none">
    <br clear="none">
    The caveat is that BOTH SIDES of the connection have to "agree" on
    the MTU, and some host controllers<br clear="none">
    &nbsp; will happily accept a large MTU, but be unable to actually support
    it, although that situation is NOT one<br clear="none">
    &nbsp; that I have seen in 10GiGe controllers--they inherently want to
    support "jumbo frames".<div class="ydpa0c1475fyiv5669889621yqt4485559050" id="ydpa0c1475fyiv5669889621yqtfd46881"><br clear="none">
    <br clear="none">
    <br clear="none">
    <blockquote type="cite">
      <div class="ydpa0c1475fyiv5669889621ydp16591bb1yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div><br clear="none">
        </div>
        <div><br clear="none">
        </div>
      </div>
      <div class="ydpa0c1475fyiv5669889621ydpba31248yahoo_quoted" id="ydpa0c1475fyiv5669889621ydpba31248yahoo_quoted_1193244036">
        <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
          <div> On Monday, 6 September 2021, 22:33:35 BST, zhou via
            USRP-users <a shape="rect" class="ydpa0c1475fyiv5669889621moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">&lt;usrp-users@lists.ettus.com&gt;</a> wrote: </div>
          <div><br clear="none">
          </div>
          <div><br clear="none">
          </div>
          <div>
            <div id="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124">
              <div>
                <div class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpb9dc4fa4yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
                  <div class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqt2927466630" id="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd67245"> </div>
                  <div dir="ltr">
                    <div class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqt2927466630" id="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd87247"> </div>
                    <div>
                      <div class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqt2927466630" id="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd61407">
                        <div dir="ltr">Hi,&nbsp;</div>
                      </div>
                      <div dir="ltr"><br clear="none">
                      </div>
                      <div dir="ltr">I have a problem with the N321
                        USRP. I find packet dropped
                        in USRP but not in host. In host, I am running
                        Ubuntu 18.04.</div>
                      <div><br clear="none">
                      </div>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>&nbsp;<u>Below
                            is the ifconfig result in N321:</u></b></p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">root@ni-n3xx-320CAAB:~#
                        ifconfig</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>eth0</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Link
                        encap:Ethernet&nbsp; HWaddr 00:80:2F:32:36:BA</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet
                        addr:192.168.10.165&nbsp; Bcast:192.168.255.255&nbsp;
                        Mask:255.255.255.0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        UP
                        BROADCAST RUNNING MULTICAST&nbsp; MTU:<b>1500</b>&nbsp;
                        Metric:1</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX
                        packets:618374 errors:0 <b><span style="color:red;">dropped:11485</span></b><span style="color:red;"> </span>overruns:0 frame:0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX
                        packets:193714 errors:0 dropped:0 overruns:0
                        carrier:0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        collisions:0 txqueuelen:1000</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX
                        bytes:39776733 (37.9 MiB)&nbsp; TX bytes:14546432
                        (13.8 MiB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Interrupt:27 Base address:0xb000</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">int0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Link encap:Ethernet&nbsp;
                        HWaddr AE:CD:BA:E1:CF:96</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet
                        addr:169.254.0.1&nbsp; Bcast:169.254.0.255&nbsp;
                        Mask:255.255.255.0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        UP
                        BROADCAST RUNNING MULTICAST&nbsp; MTU:9000&nbsp; Metric:1</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX
                        packets:456 errors:0 dropped:0 overruns:0
                        frame:0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX
                        packets:15 errors:0 dropped:0 overruns:0
                        carrier:0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        collisions:0 txqueuelen:1000</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX
                        bytes:37392 (36.5 KiB)&nbsp; TX bytes:2770 (2.7 KiB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">lo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Link
                        encap:Local Loopback</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet
                        addr:127.0.0.1&nbsp; Mask:255.0.0.0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        UP
                        LOOPBACK RUNNING&nbsp; MTU:65536&nbsp; Metric:1</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX
                        packets:89 errors:0 dropped:0 overruns:0 frame:0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX
                        packets:89 errors:0 dropped:0 overruns:0
                        carrier:0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        collisions:0 txqueuelen:1000</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX
                        bytes:7480 (7.3 KiB)&nbsp; TX bytes:7480 (7.3 KiB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>sfp0</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Link
                        encap:Ethernet&nbsp; HWaddr 00:80:2F:32:36:BB</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet
                        addr:192.168.12.2&nbsp; Bcast:192.168.12.255&nbsp;
                        Mask:255.255.255.0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        UP
                        BROADCAST RUNNING MULTICAST&nbsp; MTU:<b>9000</b>&nbsp;
                        Metric:1</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX
                        packets:6239 errors:0 <b><span style="color:red;">dropped:804 </span></b>overruns:0
                        frame:0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX
                        packets:5669 errors:0 dropped:0 overruns:0
                        carrier:0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        collisions:0 txqueuelen:1000</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX
                        bytes:18466697 (17.6 MiB)&nbsp; TX bytes:18417536
                        (17.5 MiB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>sfp1</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Link
                        encap:Ethernet&nbsp; HWaddr 00:80:2F:32:36:BC</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet
                        addr:192.168.13.2&nbsp; Bcast:192.168.13.255&nbsp;
                        Mask:255.255.255.0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        UP
                        BROADCAST RUNNING MULTICAST&nbsp; MTU:<b>9000</b>&nbsp;
                        Metric:1</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX
                        packets:24868 errors:0 <b><span style="color:red;">dropped:796</span></b><span style="color:red;"> </span>overruns:0 frame:0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX
                        packets:24613 errors:0 dropped:0 overruns:0
                        carrier:0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        collisions:0 txqueuelen:1000</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX
                        bytes:20486915 (19.5 MiB)&nbsp; TX bytes:19611643
                        (18.7 MiB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><u><b>Below
                            is ifconfig result in host:</b></u></p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">user@USRP-SERVER:~$
                        ifconfig</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>eno1</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b>1500</b></p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet
                        192.168.10.143&nbsp; netmask 255.255.255.0&nbsp; broadcast
                        192.168.255.255</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet6
                        fe80::b27b:25ff:fe1d:9e4e&nbsp; prefixlen 64&nbsp; scopeid
                        0x20&lt;link&gt;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ether
                        b0:7b:25:1d:9e:4e&nbsp; txqueuelen 1000&nbsp; (Ethernet)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX packets
                        5604&nbsp; bytes 416435 (416.4 KB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX errors 0&nbsp;
                        dropped 0&nbsp; overruns 0&nbsp; frame 0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX packets
                        404&nbsp; bytes 68556 (68.5 KB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX errors 0&nbsp;
                        dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        device interrupt
                        16&nbsp; memory 0xd2100000-d2120000</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>enp1s0f0</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b><span style="color:red;">9000</span></b></p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet
                        192.168.12.1&nbsp; netmask 255.255.255.0&nbsp; broadcast
                        192.168.12.255</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet6
                        fe80::faf2:1eff:fe42:dddc&nbsp; prefixlen 64&nbsp; scopeid
                        0x20&lt;link&gt;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ether
                        f8:f2:1e:42:dd:dc&nbsp; txqueuelen 1000&nbsp; (Ethernet)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX packets
                        294&nbsp; bytes 35184 (35.1 KB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX errors 0&nbsp;
                        dropped 0&nbsp; overruns 0&nbsp; frame 0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX packets
                        395&nbsp; bytes 37148 (37.1 KB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX errors 0&nbsp;
                        dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>enp1s0f1</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b>9000</b></p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet
                        192.168.13.1&nbsp; netmask 255.255.255.0&nbsp; broadcast
                        192.168.13.255</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;inet6
                        fe80::faf2:1eff:fe42:dddd&nbsp; prefixlen 64&nbsp; scopeid
                        0x20&lt;link&gt;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ether
                        f8:f2:1e:42:dd:dd&nbsp; txqueuelen 1000&nbsp; (Ethernet)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX packets
                        9&nbsp; bytes 2228 (2.2 KB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX errors 0&nbsp;
                        dropped 0&nbsp; overruns 0&nbsp; frame 0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX packets
                        72&nbsp; bytes 7983 (7.9 KB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX errors 0&nbsp;
                        dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">lo:
                        flags=73&lt;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet
                        127.0.0.1&nbsp; netmask 255.0.0.0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        inet6 ::1&nbsp;
                        prefixlen 128&nbsp; scopeid 0x10&lt;host&gt;</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        loop&nbsp;
                        txqueuelen 1000&nbsp; (Local Loopback)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX packets 21071&nbsp;
                        bytes 1497110 (1.4 MB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RX errors 0&nbsp;
                        dropped 0&nbsp; overruns 0&nbsp; frame 0</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX packets
                        21071&nbsp; bytes 1497110 (1.4 MB)</p>
                      <p class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        TX errors 0&nbsp;
                        dropped 0 overruns 0&nbsp; carrier 0&nbsp; collisions 0</p>
                      <div>&nbsp;</div>
                      <div>Could you please let me know what is the
                        possible reason for
                        packet drop in USRP? How to fix it?</div>
                    </div>
                    <div><br clear="none">
                    </div>
                    <div dir="ltr">Thanks for any inputs.</div>
                    <div class="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqt2927466630" id="ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd49064">
                      <div dir="ltr"><br clear="none">
                      </div>
                      <div dir="ltr"><br clear="none">
                      </div>
                      <br clear="none">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="ydpa0c1475fyiv5669889621ydpba31248yqt2927466630" id="ydpa0c1475fyiv5669889621ydpba31248yqtfd65263">_______________________________________________<br clear="none">
              USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">
              To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br clear="none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_1865262_1553220206.1631015683445--

--===============0682933050308490525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0682933050308490525==--
