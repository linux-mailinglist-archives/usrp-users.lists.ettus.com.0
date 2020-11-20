Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F0D2BAB48
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 14:34:07 +0100 (CET)
Received: from [::1] (port=47342 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kg6Y7-0006dq-KJ; Fri, 20 Nov 2020 08:34:03 -0500
Received: from mail-ej1-f42.google.com ([209.85.218.42]:41781)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ncmatson95@gmail.com>)
 id 1kg6Y4-0006Xj-3d
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 08:34:00 -0500
Received: by mail-ej1-f42.google.com with SMTP id gj5so12893403ejb.8
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 05:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=5LaK52m8lWB1YhaEUwfen9oGlhgR7gxH28SVrlbeD9Y=;
 b=PMmOtn6PtlIf/ZkV8e5JRNRqQtgvCH0+Nu4y4XqsuovydSiTT44Y86CJj1n821Aetr
 pZYALSdaAfEH822+f3MuVHGMqwJeaDPCX9hIphujjM4dRGQ0N6R1OoJ/K6S9rPM8MI54
 +CybGuxzqnIar/JTEn2UxKvZJ8ssmcFmBNbmPqQKZ4H0qfaOkLyU8dxBRXeznbsr8sIx
 ZAbFdUciwLUmtIi7QyS4/cKf5HqPXGJc935oSUs6gN5xuMMKut6FA7KLaE6H+4MYDj9e
 YaQn8U/IpgC/thvk5i4OaNG3VAMUid8Vja70KEr8sP051t/Lp73ja66YTlV3KxJx1WN9
 MmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=5LaK52m8lWB1YhaEUwfen9oGlhgR7gxH28SVrlbeD9Y=;
 b=s/dnEFPoojFEwlFsUx2AGsjxrW/7Jx+evt4/ytyrg2t7wLjTNMV2AFVKvpC/wSlLO0
 Pvi3BS6Je2DQ8WEW1MvdyG1xQG2YtdEaKeDdxnEFdAMCOd2GD5yMEhtYpA25sDq3hiDP
 wyYmG69Ohm4BcsCqPEMwQ43oCNZ38UAxPDS1rLbC2gHGhmbB17Jm6X1Wi3SDsz7gMRPC
 /mwHLw8aGXdspCX/T6+caEdmYVTM/wPXtnjT8lpAh1NKmD3OukcfNUYv41yWYfVw4YvD
 HZD4uiq3QCVadZ6yg/9g2d/ae9AvGugaaJiqRYszsYqbwOC2XRI3k7YKUm3a0IpRZQwk
 jfQQ==
X-Gm-Message-State: AOAM532ynZwSdgkLjgWn+Ec5X/2V9QqoCV7HofLiUolqMIXMrTupACwm
 8zkRhISnoR8BS9KWnB+RUTQXEqYF/sVpJjul0V7N03X9jKA=
X-Google-Smtp-Source: ABdhPJw86rYufVJ0+q39auFo+v/dtxEE7Vere2TXyzEo6wdPnWDJCpSFmlgu9M1Ee4VqbQ+WgQJmfDkSKW0EtwjnkbM=
X-Received: by 2002:a17:906:f744:: with SMTP id
 jp4mr33765393ejb.122.1605879198781; 
 Fri, 20 Nov 2020 05:33:18 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 20 Nov 2020 07:33:08 -0600
Message-ID: <CAGLr63s4oPz6_P9zj2OAHduRB38YrG-+=rbXO1rjrAx1crQ-+w@mail.gmail.com>
To: usrp-users@lists.ettus.com, 
 GNURadio Discussion List <discuss-gnuradio@gnu.org>
Subject: [USRP-users] daughter board coherency on N310
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
From: Cameron Matson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cameron Matson <ncmatson95@gmail.com>
Content-Type: multipart/mixed; boundary="===============1807443064606947554=="
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

--===============1807443064606947554==
Content-Type: multipart/alternative; boundary="00000000000032141505b489e325"

--00000000000032141505b489e325
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm trying to implement a MIMO receiver using the 4 RF chains of the N310.
To test the timing of the system, at the transmitter I'm simply sending a
short pulse from one transmit antenna of one USRP.  At the receiver it
looks like there is up to a ~20 ms delay/offset between the pairs of
antennas 0/1 and 2/3 and that this delay changes each time I restart my
GNURadio flowgraph.  I can see the delay both in GNURadio GUI Time Sink and
in actual samples that I write to file.  I've tried various pulse widths
and sampling rates at both the tx and rx, and it seems invariant to these.

I'd really like to be able to synchronize the 4 RF chains in time
simultaneously.  Is that possible?

Thanks
Cameron Matson

--00000000000032141505b489e325
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><br></div><div>I&#39;m trying to implement =
a MIMO receiver using the 4 RF chains of the N310.=C2=A0 To test the timing=
 of the system, at the transmitter I&#39;m simply sending a short pulse fro=
m one transmit antenna of one USRP.=C2=A0 At the receiver it looks like the=
re is up to a ~20 ms delay/offset between the pairs of antennas 0/1 and 2/3=
 and that this delay changes each time I restart my GNURadio flowgraph.=C2=
=A0 I can see the=C2=A0delay both in GNURadio GUI Time Sink and in actual s=
amples that I write to file.=C2=A0 I&#39;ve tried various pulse widths and =
sampling rates at both the tx and rx, and it seems invariant to these.</div=
><div><br></div><div>I&#39;d really like to be able to synchronize the 4 RF=
 chains in time simultaneously.=C2=A0 Is that possible?</div><div><br></div=
><div>Thanks</div><div>Cameron Matson</div></div>

--00000000000032141505b489e325--


--===============1807443064606947554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1807443064606947554==--

