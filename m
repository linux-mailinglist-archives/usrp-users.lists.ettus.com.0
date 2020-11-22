Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 880CD2BC2D9
	for <lists+usrp-users@lfdr.de>; Sun, 22 Nov 2020 01:22:01 +0100 (CET)
Received: from [::1] (port=33102 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgd8e-0004tu-4I; Sat, 21 Nov 2020 19:21:56 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:35546)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dario@iptronix.com>) id 1kgd8b-0004pZ-A6
 for usrp-users@lists.ettus.com; Sat, 21 Nov 2020 19:21:53 -0500
Received: by mail-wm1-f67.google.com with SMTP id w24so13915815wmi.0
 for <usrp-users@lists.ettus.com>; Sat, 21 Nov 2020 16:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iptronix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=W638phjj7qV758NPslb0rlw4bReZAyxAVN0B0oIWpQU=;
 b=E12Z4oEJp2Kv6tH6Hu1dv5YcivuON8kfunmH19SqJFXmoeSajuxatfrMi2d0VToM8+
 D2xBP4CySQrsAtsvdNNlbHGg8yU6CC1P7I8xV1dlTQQtxRYgsraUoKiUnY/kd1+PGXSL
 ynNU5EvJsy31/dotWleg1x6deU+zztiDuNHrD1jAifjt7sY0O7SZneBjMdLCc20CiqDR
 iOwugAZxHDVctiIxPcORweVfAZDL4UF7uC6FFYSP2wkoiRkC0j0gmrNQiGw0MZwLz/fI
 UIlFW/6lBW9LXRTh4zmDrmIzjcxpwloCnnyNfosKSgj3CQyNBT7jZnzmdbEAW9WySakn
 +rwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=W638phjj7qV758NPslb0rlw4bReZAyxAVN0B0oIWpQU=;
 b=I2eCWI/Jxx3szzBlg7fTariXMPTRZLayQU440iq325SsEzKQhqsClWUrJvXYy5M4+9
 oPXqcjk1SdBgwgyTUA59ZiDt3B030oSp9KTM/ScAsfeXuWTIVOco4bZ8vFim2TKL5ElR
 OOWjnp67tZNbUc900k90nCssHMLH4DGlg9W992MBJmvtzjh/LN8G4PWh0nZ29EZu8/+d
 WfxIK0h+WgEkI/ktKxBUx286L1cZ1wYgW5qrnhUQoPOmY8zHVtj98g/mCGedJefS1C6q
 0nsmTK2nirdn36U+5UUDAxE8d3vsdZSCszynhyYiwDRYO1Wpg7ncahaeefdpbF5UOzLW
 IxBQ==
X-Gm-Message-State: AOAM532ZXKl/osO/az0ZE2f7TvoNwMD1DSexgwe2e1GqQ7socnatxdWx
 booxIdsp8OvHQPHkmNAch0NisE3vGRrapSG3w5a1AXjBnRlVvvTB1wRs3A==
X-Google-Smtp-Source: ABdhPJxEgKzBNny386Ed1/K0kss7C8/CUaYazUpxyqYxdtOD5DJAYSGei+riQJjumAm9QNhw7ECVATcBHgTwfIQ9XSk=
X-Received: by 2002:a1c:3d44:: with SMTP id k65mr15912906wma.147.1606004471705; 
 Sat, 21 Nov 2020 16:21:11 -0800 (PST)
MIME-Version: 1.0
Date: Sun, 22 Nov 2020 01:21:00 +0100
Message-ID: <CAKHaR3kNBg2WXD2xe+LcQMh16-84d4sLFd_4rnVOZgcnM4j1RA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] ILA in UHD 4
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
From: Dario Pennisi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dario Pennisi <dario@iptronix.com>
Content-Type: multipart/mixed; boundary="===============7681411897048963671=="
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

--===============7681411897048963671==
Content-Type: multipart/alternative; boundary="0000000000000b4a8005b4a70eb7"

--0000000000000b4a8005b4a70eb7
Content-Type: text/plain; charset="UTF-8"

Hi,
i am trying to debug my block and to do so i ran

GUI=1 make n310_rfnoc_image_core

this brings up vivado and allows me to synthesize the design and setup ILA.
when i try fitting and generating bitstream i get the following error:

[DRC PDRC-29] MMCM_adv_ClkFrequency_clkin1: The calculated frequency value,
0.000 MHz, of the CLKIN1_PERIOD attribute on the MMCME2_ADV site
MMCME2_ADV_X0Y0 (cell n3xx_clocking_i/misc_clock_gen_i/inst/mmcm_adv_inst)
is outside the allowed range (10.000 - 933.000 MHz). Please change the
CLKIN1_PERIOD attribute value in order to be within the allowed range for
this device.
[DRC PDRC-29] MMCM_adv_ClkFrequency_clkin1: The calculated frequency value,
0.000 MHz, of the CLKIN1_PERIOD attribute on the MMCME2_ADV site
MMCME2_ADV_X1Y5 (cell
u_ddr3_32bit/u_ddr3_32bit_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i) is
outside the allowed range (10.000 - 933.000 MHz). Please change the
CLKIN1_PERIOD attribute value in order to be within the allowed range for
this device.
[DRC PDRC-38] PLL_adv_ClkFrequency_clkin1: The calculated frequency value,
0.000 MHz, of the CLKIN1_PERIOD attribute on the PLLE2_ADV site
PLLE2_ADV_X1Y5 (cell
u_ddr3_32bit/u_ddr3_32bit_mig/u_ddr3_infrastructure/plle2_i) is outside the
allowed range (19.000 - 933.000 MHz). Please change the CLKIN1_PERIOD
attribute value in order to be within the allowed range for this device.

strange enough i don't get these when running from console.
any suggestions?

Dario Pennisi

--0000000000000b4a8005b4a70eb7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>i am trying to debug my block and to do=
 so i ran <br></div><div><br></div><div>GUI=3D1 make n310_rfnoc_image_core<=
/div><div><br></div><div>this brings up vivado and allows me to  synthesize=
 the design and setup ILA. when i try fitting and generating bitstream i ge=
t the following error:</div><div><br></div><div>[DRC PDRC-29] MMCM_adv_ClkF=
requency_clkin1: The calculated frequency value, 0.000 MHz, of the CLKIN1_P=
ERIOD attribute on the MMCME2_ADV site MMCME2_ADV_X0Y0 (cell n3xx_clocking_=
i/misc_clock_gen_i/inst/mmcm_adv_inst) is outside the allowed range (10.000=
 - 933.000 MHz). Please change the CLKIN1_PERIOD attribute value in order t=
o be within the allowed range for this device.<br></div><div>[DRC PDRC-29] =
MMCM_adv_ClkFrequency_clkin1: The calculated frequency value, 0.000 MHz, of=
 the CLKIN1_PERIOD attribute on the MMCME2_ADV site MMCME2_ADV_X1Y5 (cell u=
_ddr3_32bit/u_ddr3_32bit_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i) is outs=
ide the allowed range (10.000 - 933.000 MHz). Please change the CLKIN1_PERI=
OD attribute value in order to be within the allowed range for this device.=
<br>[DRC PDRC-38] PLL_adv_ClkFrequency_clkin1: The calculated frequency val=
ue, 0.000 MHz, of the CLKIN1_PERIOD attribute on the PLLE2_ADV site PLLE2_A=
DV_X1Y5 (cell u_ddr3_32bit/u_ddr3_32bit_mig/u_ddr3_infrastructure/plle2_i) =
is outside the allowed range (19.000 - 933.000 MHz). Please change the CLKI=
N1_PERIOD attribute value in order to be within the allowed range for this =
device.<br></div><div><br></div><div>strange enough i don&#39;t get these w=
hen running from console.</div><div>any suggestions?<br></div><div>=C2=A0<b=
r><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,s=
ans-serif;font-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0=
,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><span style=3D"co=
lor:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"></span><=
br></div></div></div></div>

--0000000000000b4a8005b4a70eb7--


--===============7681411897048963671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7681411897048963671==--

