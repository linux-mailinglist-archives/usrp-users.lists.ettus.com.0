Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E75C11343D7
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 14:30:12 +0100 (CET)
Received: from [::1] (port=44856 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipBPQ-0003Fm-RV; Wed, 08 Jan 2020 08:30:04 -0500
Received: from sonic302-21.consmr.mail.ne1.yahoo.com ([66.163.186.147]:38784)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1ipBPN-00039H-Bh
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 08:30:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1578490160; bh=EAf7dg6dOxxpVfJ4AFOrySSod1M7E+QP6OsZFa/jLC0=;
 h=Date:From:To:Subject:References:From:Subject;
 b=e0rDEMWi3z97foLf19AoYF/LQqdx80MhgMCSPpfKN5zTHh+MIq+A6r2Dx0/EnqG33MNT7DYBWeuL0jFp4fo6K1SFInN6PV5FFfP0rgsXdvunkRZsu/nnT04hGDtVx8sfomK9n3tXp83XLO+Y9vSfoUi9SqP8flRCs1AVQp0zVsR52lPawCFMLryPhT60gMsyBFqROlmsOqzUh5JRy1ydKgxR6G0J0MF361Ds0y4pwVdInIGNkEdGv2bofGBez1Nem/du6v/OYwl3TGigYQPpq0pMsUbz8PkhBASObhaMijf8nxdxZ2zMPv31clz4Vlr+6ETqmsZezW6qbxFtRhY8Dg==
X-YMail-OSG: 6fSz67IVM1nZ4aDlsZIzXFX21d_QqzKkRYzDRObjdu77vE1oPAcOaU0VvOXPg7M
 1Qfgz.h7fK9nnUL7FxaNc8AY3g.Kkyra1.7W4u8QLgL8_pTcDs.XYTCxS6bORpRAz1rCAL2ly74Q
 gVW56KYM8hccN9dBGh8lc0kH4IC5JlBTPF68s4UkL.N4wf5aBiSuGTd_teRjRvx01WMw7.3z.kME
 dKJjYoP9vYH0dU7F_sbVwfecKZM37k423A9yj2R8GCI1A7RHitTgDsTeZoD05.8FisQolurRQ29o
 HUVC3OmY3dHI4czEQl_3N1qX5zfAxWzJ.8sbkPCfuM_OQvJzAYJZex67HeUEw6RhcLET7.3HhU7r
 .qwBYsEm6F1wBs42BVxsQF1AdEro58v.UL.uCo_hCcT2QH4jfpP.8q88IfZ48Yy0NWubY3kPM_7B
 70cawT.kynSlCMCPfFsnVzVPLoSIAcMrozp2SAfQb4fzNeRAzP00XZDiPVn1Y29g2vFKojrFcwNb
 lXM7jr3OEmSxRaqhZjNst5YZGzY3.fiZiz2sxw5YFxXz3Ib3j_Fz42UCdyRW_iCCCUeWtvzuzWGC
 HrXygn3oYubbdgPLI.3RTcECPNf4BonjMjndb4_XFB1FsfUtLjUR82nPn6708MS9umrFAnectvns
 efiRTaFWYkkbdQKAGNtjy3Ury_CxfX9uwRf0fbuRIvnLL5Q9MtW20NkKL8jMEUCWZNO0n5BEEzY2
 ITbOvjGRFI6Cyz7KiZvt6Cwxz.b8vMgbxke9fJhu6P0ewLxNwwJKGBAkjHF6YDy7q2eQ7CFt.vXd
 h6141WwIrwdZcVr_RQEKkfS5aYjzNymN0kjTUst4Tz1YOpTNtZwtxFsIVkBHCBjH25YKXG0ix8AO
 erpir08NUaQTmvzrehOTY_sP4yz66sDUmhcULI0rWgph6t7tFhKXPVP8X1UE.tdaFXR2SSjb7p96
 bAYzbNEHjHZ2rQNfuD_iiBgej23XRtKX.EbYcSC9BXcNiD3Vd4o8Oos1Ytxn_9CkTLEOFnECeLhA
 epQ0gSRie_VV3WT2Qubcf1mLZmkwbdkDr7gHMBEbWvMQNP5vjYC3gcCoW1.eREiwroCZlE0cf2vz
 OReXoGrSPDZeegJeE0oN1.3xNdd4LkHGGKQbHAbSNL8bLu1WowKJV0P8iRWjulTSfdksPlUQCWV6
 zpxskVdff4yqLphZDzf0HmGgIDUp2kjDcfd4tXcEGh3uy1Rzy7b._gQa7jr_e1Y1Smu3UYGmspea
 HK7f86Vt5191fw32nC50UyojseX_ty9pAlnQ6CMdc8gOyCt6gfcxv.lCME7UgjyCdpPRp5Hsmvg6
 tj14DFOTzYvnmwx19K29o6e8-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.ne1.yahoo.com with HTTP; Wed, 8 Jan 2020 13:29:20 +0000
Date: Wed, 8 Jan 2020 13:29:18 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1258262887.8487449.1578490158766@mail.yahoo.com>
MIME-Version: 1.0
References: <1258262887.8487449.1578490158766.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
 rv:68.0) Gecko/20100101 Firefox/68.0
Subject: [USRP-users] tx_samples_from_file : Issue with repeat option
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7530496820073893258=="
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

--===============7530496820073893258==
Content-Type: multipart/alternative; 
	boundary="----=_Part_8487448_1820478044.1578490158764"
Content-Length: 2228

------=_Part_8487448_1820478044.1578490158764
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi There,=C2=A0=C2=A0 Good morning. I am experiencing an issue with tx_samp=
les_from_file when using option "--repeat". Everything looks alright when i=
t TX the file, but once it reaches the end of the file, it prints S and not=
hing appears on analyzer soon after that.=20

The command I am using: ./tx_samples_from_file --args addr=3D192.168.40.2=
=C2=A0 --file /home/santoshvoonna/repo/test_files/test_file_SW_Samples_28G.=
bin=C2=A0=C2=A0 --type short --spb 3640 --rate 50e6 --freq 60e6=C2=A0 --gai=
n 0 --ant TX/RX --subdev A:0 --bw 40 --ref internal --delay 0 --repeat=20

Git tag: release_003_010_001_000


Thanks and Regards,Santosh


------=_Part_8487448_1820478044.1578490158764
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false">Hi There,</div><div dir=3D"ltr" data-setdir=
=3D"false">&nbsp;&nbsp; Good morning. I am experiencing an issue with <span=
>tx_samples_from_file when using option "--repeat". Everything looks alrigh=
t when it TX the file, but once it reaches the end of the file, it prints S=
 and nothing appears on analyzer soon after that. <br></span></div><div dir=
=3D"ltr" data-setdir=3D"false"><span><br></span></div><div dir=3D"ltr" data=
-setdir=3D"false"><span>The command I am using: <span>./tx_samples_from_fil=
e --args addr=3D192.168.40.2&nbsp; --file /home/santoshvoonna/repo/test_fil=
es/test_file_SW_Samples_28G.bin&nbsp;&nbsp; --type short --spb 3640 --rate =
50e6 --freq 60e6&nbsp; --gain 0 --ant TX/RX --subdev A:0 --bw 40 --ref inte=
rnal --delay 0 --repeat <br></span></span><div><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false">Git tag: <span>release_003_010_001_000</span><br></div=
><div><br></div><div><br></div><div dir=3D"ltr" data-setdir=3D"false">Thank=
s and Regards,</div><div dir=3D"ltr" data-setdir=3D"false">Santosh<br></div=
><span></span><br></div></div></body></html>
------=_Part_8487448_1820478044.1578490158764--


--===============7530496820073893258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7530496820073893258==--

