Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9679A81ADA1
	for <lists+usrp-users@lfdr.de>; Thu, 21 Dec 2023 04:49:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B6C2385626
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 22:49:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703130553; bh=s6Telo30r6iw+GQxsRtinsrYuaFGWNvj6DXyYNVcAog=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=p7WeLQnjdsYRph8A+Y/JCAVKQSO5lwskwOQRU6dZFXdK686w/2J0Jrwi/zD9W8mWM
	 LGDaUCVeed5+I+F/WnRmq0BfDPf6x/GeC8YW8yBKeCK0s9MH1ll5kF5Qt52xOgCJlR
	 IyhtxVP0e4RduODdNIiOICYsWF0QZ5VjNBT8KpyfX/DI0LQCKVgHDuKkzle/X5EF10
	 skrJIM2/6PtUf9esrfTJt0dzxnDQQ0k3nZL6zC2rA1s8heWnZKjvivJTTair7PpbHL
	 eM7TLd3eQXmNgszv4c+mNgLKFrIHibrs4d21TSLUreK89V/TqIH+roVhbR5u9AkKlD
	 mHCLVGWdfsD0g==
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E5723855F0
	for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 22:48:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OBL2Zctu";
	dkim-atps=neutral
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-593f6fb21a5so292645eaf.2
        for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 19:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703130512; x=1703735312; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eVmG+T3FbwrT189BfZElH+8ch81+UJNKIkvXQ9zqI74=;
        b=OBL2Zctu8uAsjz7rAAO4Eqk5SfaFMSl+ucyDrKCzoV5PS5Ey7Jm2UT2wNwmfO5z+T9
         Rr83P2PirlaGsxddqDD8AU4g6F3Id2v925pXW7bUn10lIVC5YjyZ70COgI9fGGG7O3bs
         5+0nLrt3QuekTHVwR1QMRs+G8pJz4EkFAFS4p/XaCYY8MeZcFfRJQKuzgKygTo2JSpyE
         snIkDy07KlWp/wNxbKRtTxuB/QL61JhnjYJF2+EKyXGNYKttHiF+9vaBYlx9i60cxgB9
         5zywCWjF/peXpPxBnjzTC0/DKmc4ZBVxcA1Bc7xxmkapRe19rBMtXropqnAVn9JjKAdh
         1RJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703130512; x=1703735312;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eVmG+T3FbwrT189BfZElH+8ch81+UJNKIkvXQ9zqI74=;
        b=NBXH7AjI8rubysD6ARzvf9/dqCU+/S4n1tiPjVbvqJRNsloeYeOFo654c5n+cu14qa
         IX5VcVP+BWrCZg10dNIWTuZcOusvfMy66qD42YYo8O0hYn6kh8n3BbSDfealw2AghTyI
         jH+KcOhRucCnRcM219jd+j5tVRlip9/I1YDJeRLxe3GED/zEwmJErl33ecL1YDh/rjFf
         Jzf5aYK0RvEU94FNUhLVm85bRnTcIf57J8tdJzqJH4ntKZQR2GFv36UfbPbDz2273LRM
         ul8/s42lv0clmSmmsPi0ec/95zHM+2+LG3+XhAU0MW3UQZ/RCq/iIbJJdsNNiSygUAj9
         sNXQ==
X-Gm-Message-State: AOJu0Yy4gD4gIrmYUW6igsFM7+lXgejlaDEqoUcmGUDxLGGGsOd2Y6Ia
	uA8KYmHLcQJCFWlabLKZCNfsRMzY6pPwiv00b+RsMwTx5GE6BkoFtps=
X-Google-Smtp-Source: AGHT+IErBbGO92Lm5fJ6B82+nQSm/ot1SuoJ54s8UBndYTzIDM9bHlffAN4DhCCisfSJHys9gSakwBMTpYeQ0vL0nXY=
X-Received: by 2002:a05:6870:ec88:b0:1fb:2188:5b96 with SMTP id
 eo8-20020a056870ec8800b001fb21885b96mr1098586oab.24.1703130511662; Wed, 20
 Dec 2023 19:48:31 -0800 (PST)
MIME-Version: 1.0
From: German Farinas <german.farinas@gmail.com>
Date: Wed, 20 Dec 2023 22:48:20 -0500
Message-ID: <CAJx0LdUcyGiZ8MP+-TOrt+xXZHBV7dZvaUzZHcDAwFq-b+Af=Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: VNC56UNRLNETJJDCTYW3WIUBVJF5UOGF
X-Message-ID-Hash: VNC56UNRLNETJJDCTYW3WIUBVJF5UOGF
X-MailFrom: german.farinas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This design contains one or more evaluation cores that will cease to function after a certain period of time. This design should NOT be used in production systems.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VNC56UNRLNETJJDCTYW3WIUBVJF5UOGF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6110188119473838784=="

--===============6110188119473838784==
Content-Type: multipart/alternative; boundary="0000000000002761cf060cfcf907"

--0000000000002761cf060cfcf907
Content-Type: text/plain; charset="UTF-8"

Hello,

I ran the example in this guide (
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0) to add a new
FFT RFNoC block. I modify the default yaml file and run the following
command:

rfnoc_image_builder -y x300_with_fft.yml -t X300_HG -F ../../../

Everything went well and the bitstream file was successfully generated. I
uploaded to my USRP X300 with the following command: uhd_image_loader
--args "type=x300,addr=192.168.10.2" --fpga-path
./build/usrp_x300_fpga_HG.bin

after loading the new image this is the output to the *uhd_usrp_probe
--args type=x300* command:

RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/FFT#0
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|   |   * 0/Replay#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0==>0/DUC#0:0
|   |   * 0/DUC#0:0==>0/Radio#0:0
|   |   * 0/Radio#0:0==>0/DDC#0:0
|   |   * 0/DDC#0:0==>0/SEP#0:0
|   |   * 0/Radio#0:1==>0/DDC#0:1
|   |   * 0/DDC#0:1==>0/SEP#1:0
|   |   * 0/SEP#2:0==>0/DUC#1:0
|   |   * 0/DUC#1:0==>0/Radio#1:0
|   |   * 0/Radio#1:0==>0/DDC#1:0
|   |   * 0/DDC#1:0==>0/SEP#2:0
|   |   * 0/Radio#1:1==>0/DDC#1:1
|   |   * 0/DDC#1:1==>0/SEP#3:0
|   |   * 0/SEP#4:0==>0/Replay#0:0
|   |   * 0/Replay#0:0==>0/SEP#4:0
|   |   * 0/SEP#5:0==>0/Replay#0:1
|   |   * 0/Replay#0:1==>0/SEP#5:0
|   |   * 0/SEP#6:0==>0/FFT#0:0
|   |   * 0/FFT#0:0==>0/SEP#6:0

Everything apparently looks good because the FFT was inserted. However
during the last phase of the vivado tools flow, after synthesis, place,
route, etc, during the *BUILDER: Writing bitfile *phase it issues the
following supposedly critical warning:

*CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This design
contains one or more evaluation cores that will cease to function after a
certain period of time. This design should NOT be used in production
systems.*

I think it may be the FFT IP core but I am not sure. I have Vivado
v2021.1_AR76780 ML with an Enterprise Edition license. The version is 2021
because this is the version supported by Ettus for building FPGA images. My
license goes up to 2023.1 limit, but this should not affect me because I am
using the 2021 version. I compiled the default images and I don't recall
receiving this critical warning.

Anyone had the same issue? Any help or explanation to this? Is this
something I should worry about ?

Best regards,
German

--0000000000002761cf060cfcf907
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I ran the example in this guide =
(<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0">htt=
ps://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a>) to add a new F=
FT RFNoC block. I modify the default yaml file and run the following comman=
d:</div><div><br></div><div>rfnoc_image_builder -y x300_with_fft.yml -t X30=
0_HG -F ../../../<br></div><div><br></div><div>Everything went well and the=
 bitstream=C2=A0file was successfully=C2=A0generated. I uploaded=C2=A0to my=
 USRP X300 with the following command: uhd_image_loader --args &quot;type=
=3Dx300,addr=3D192.168.10.2&quot; --fpga-path ./build/usrp_x300_fpga_HG.bin=
</div><div><br></div><div>after loading the new image this is the output to=
 the <i>uhd_usrp_probe --args type=3Dx300</i> command:</div><div><br></div>=
<div>RFNoC blocks on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=
=A0 * 0/DDC#0<br>| =C2=A0 | =C2=A0 * 0/DDC#1<br>| =C2=A0 | =C2=A0 * 0/DUC#0=
<br>| =C2=A0 | =C2=A0 * 0/DUC#1<br>| =C2=A0 | =C2=A0 * 0/FFT#0<br>| =C2=A0 =
| =C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 * 0/Radio#1<br>| =C2=A0 | =C2=A0 =
* 0/Replay#0<br>| =C2=A0 =C2=A0 ___________________________________________=
__________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static co=
nnections on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/SE=
P#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#=
0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>| =C2=A0 | =C2=
=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D=
&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>| =C2=
=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>| =C2=A0 | =C2=A0 * 0/DUC#1:=
0=3D=3D&gt;0/Radio#1:0<br>| =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:=
0<br>| =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>| =C2=A0 | =C2=A0 =
* 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D&gt;=
0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Replay#0:0<br>| =C2=
=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 | =C2=A0 * 0/SEP=
#5:0=3D=3D&gt;0/Replay#0:1<br>| =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D&gt;0/S=
EP#5:0<br>| =C2=A0 | =C2=A0 * 0/SEP#6:0=3D=3D&gt;0/FFT#0:0<br>| =C2=A0 | =
=C2=A0 * 0/FFT#0:0=3D=3D&gt;0/SEP#6:0<br></div><div><br></div><div>Everythi=
ng apparently=C2=A0looks good because the FFT was inserted. However during =
the<b>=C2=A0</b>last phase of the vivado tools flow, after synthesis, place=
, route, etc, during the=C2=A0<b>BUILDER: Writing bitfile </b>phase it issu=
es the following supposedly=C2=A0critical warning:</div><div><br></div><div=
><i>CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This des=
ign contains one or more evaluation cores that will cease to function after=
 a certain period of time. This design should NOT be used in production sys=
tems.</i><br></div><div><i><br></i></div><div>I think it may be the FFT IP =
core but I am not sure. I have Vivado v2021.1_AR76780 ML with an Enterprise=
 Edition license. The version is 2021 because this is the version supported=
 by Ettus for building FPGA images. My license goes up to 2023.1 limit, but=
 this should not affect me because I am using the 2021 version. I compiled =
the default images and I don&#39;t=C2=A0recall receiving this critical warn=
ing.</div><div><br></div><div>Anyone had the same issue? Any help or explan=
ation=C2=A0to this? Is this something I should worry about ?</div><div><br>=
</div><div>Best regards,</div><div>German</div><div><br></div></div>

--0000000000002761cf060cfcf907--

--===============6110188119473838784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6110188119473838784==--
