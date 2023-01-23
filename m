Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DD667762A
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jan 2023 09:14:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53BD5383E00
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jan 2023 03:14:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674461686; bh=WPEEOT08/sVYMR58IYrWMxO5Kl4S7phGQqvn7tZ4wQw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DxP4N6oepxZpuGQeuX7FsYPm7Oc22H9DqIxrex8YENAINl4unBify9PEPsWeyyTIV
	 qU+zmECGfFrse89kGykBQeUnr/VMv7bwT29Dqa47wuNonHtPDCjHfYXFOzzduJn7D0
	 W+edi5qIMu/kAhHuEMeCjPErDrxNblsEHfyy21jSU8C4lCDKXnP7TVv8ufyzoELvHD
	 ipPSDRxd/JRhcsOl3/WW4+Rp2hqx+mnNEU3l+FD6wVyqD4xMWrGDSdoydt6AM01mOo
	 HjNXr35GeacSXeAb6Po7obrx6DOCDAV93Ksq0TlMh6m9q0ZEOXNCHeyttNQnEl6pzf
	 88Hu5mfbt2qlw==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D5A1383D90
	for <usrp-users@lists.ettus.com>; Mon, 23 Jan 2023 03:13:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SKVRZekw";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id vw16so28254351ejc.12
        for <usrp-users@lists.ettus.com>; Mon, 23 Jan 2023 00:13:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aX+aJ1Kq9+YO6MvhIVb/80nBQfS9ZdjGGrTS9Wut1Hk=;
        b=SKVRZekw7YDcSQntuf6zSGaohDdODG20OLsdFd4fl7xLJ0T7GbWJrrzYILdotn9dHP
         NPQr8qEJkB3TRcHin1GwH7OKcSKjtP1RjkL3IRHe6YFgom2JXyKjLzQCP8TS+uZL5Mcm
         HSlVF8n5rSM3l66/2px39zKUij18Pxcs6IHm06bdLmNiSykfaftvNbybIQ83b2D7hJ9c
         j8YueIIVXhTfHQBXIPFkJAVqAu6QxpyuSgrBlhJkcpqFYDJ0o5RipKiSv60Tcw47Tat9
         ++m5C3VAFRMmncYrxUAs5zfAH0brqFQrNRvvUefwCFkScNXZpXNOlc/zuR1OY4Afiz4X
         jsgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aX+aJ1Kq9+YO6MvhIVb/80nBQfS9ZdjGGrTS9Wut1Hk=;
        b=3QRjwFDtwi2WPkD4mq5Pirb9vcZ5dM41KHXIUw2BAA3nlBPGjn1z4AIEdupe73Onkh
         WMGzsQ06zSAa+Ywv3a4CXJl7SPiltzoMBm5roCq01frYF2HHzpNCS4Svn/8KRnnNH+4y
         pk3xfLTfy9DpVOokEeBsqFXecTyEj8bOpkdL2UjE2+4+b4UtkexA6Cg7aw7Xwlr2Ncb4
         uJdF8OeHYPFrMo7KYZTUutVj0q9JfyeuvLq6ZlM3J91hamFQ3QVHS7A+D8eQtEgbNtdO
         B+QfmgNopTKYohpnL6JrJ3nP+n4sWuT/NQkzbRh8wVnYRG5B3pVdJAMjYp3jipIxv+QF
         TrkQ==
X-Gm-Message-State: AFqh2kqMpjGmUQSGr2XN+UPJS/dKqJe5bBJRzSA7gD1isoyCYm/cNGBS
	2ND/ivibKXfNQvnjFx480+5gVHYogyni2+Op5bDBi8mM1g==
X-Google-Smtp-Source: AMrXdXvifN/hPF5YE2nQwo5HOaJ58IQOTYW+GxiTyDho6S9iQnTrV9/B3Z4KqlQETNzRxyA4Mx+DoDgs9Se2vraW/Kc=
X-Received: by 2002:a17:906:9417:b0:85f:f115:65d2 with SMTP id
 q23-20020a170906941700b0085ff11565d2mr2113711ejx.555.1674461604585; Mon, 23
 Jan 2023 00:13:24 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Mon, 23 Jan 2023 11:13:13 +0300
Message-ID: <CALooG3-i1-T_FRDmuhBFXDeVVrTwO6oKf_x_Z1s=3fJWnCtTQQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: LP27YGUDLUCF274JWYQJVHDARVF2TM2N
X-Message-ID-Hash: LP27YGUDLUCF274JWYQJVHDARVF2TM2N
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 Autoboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LP27YGUDLUCF274JWYQJVHDARVF2TM2N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5638062160378456091=="

--===============5638062160378456091==
Content-Type: multipart/alternative; boundary="00000000000021a71305f2e9f955"

--00000000000021a71305f2e9f955
Content-Type: text/plain; charset="UTF-8"

Hi everyone,
I have an E320 which does not autoboot. I am trying to activate it. When I
searched documents for this, I found that there are flags on the
microcontroller that controls autoboot. The document says "eeprom-set-flags
0x1" activates the autoboot function, however it does not work. I have seen
that I might need to update firmware for this problem, but my boardversion
is already 7. Therefore, when I tried to update mcu firmware, it said it
cannot find necessary files for version 7. As I understand it, my mcu is
already updated to the latest.  Can anyone help me activate the autoboot
function?

My Board : USRP E320
UHD Version: 4.0.0
MCU Update Files: mcu_neon
<https://files.ettus.com/binaries/misc/upgrade_mcu_neon_v1.1.7358-a190641-musl-glibc-rev3-6.tar.gz>

Kind Regards,
Yasir

--00000000000021a71305f2e9f955
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div>I have an E320 which does not autoboot. I=
 am trying to activate it. When I searched documents for this, I found that=
 there are flags on the microcontroller that controls autoboot. The documen=
t says &quot;eeprom-set-flags 0x1&quot; activates the autoboot function, ho=
wever=C2=A0it does not work. I have seen that I might need to update firmwa=
re for this problem, but my boardversion is already 7. Therefore, when I tr=
ied to update mcu firmware, it said it cannot find necessary files for vers=
ion 7. As I understand it, my mcu is already updated to the latest.=C2=A0 C=
an anyone help me activate the autoboot function?</div><div><br></div><div>=
My Board : USRP E320</div><div>UHD Version: 4.0.0</div><div>MCU Update File=
s:=C2=A0<a href=3D"https://files.ettus.com/binaries/misc/upgrade_mcu_neon_v=
1.1.7358-a190641-musl-glibc-rev3-6.tar.gz">mcu_neon</a></div><div><br></div=
><div>Kind Regards,</div><div>Yasir</div></div>

--00000000000021a71305f2e9f955--

--===============5638062160378456091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5638062160378456091==--
