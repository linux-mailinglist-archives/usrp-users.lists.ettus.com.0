Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1602313CC
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jul 2020 22:23:21 +0200 (CEST)
Received: from [::1] (port=60400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0W84-0002OR-Jc; Tue, 28 Jul 2020 16:23:16 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:39463)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1k0W80-0002HQ-GM
 for usrp-users@lists.ettus.com; Tue, 28 Jul 2020 16:23:12 -0400
Received: by mail-lj1-f177.google.com with SMTP id b25so22595997ljp.6
 for <usrp-users@lists.ettus.com>; Tue, 28 Jul 2020 13:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=QLEfmxOocsQX9r8Uk8NjNk11VMObudPJFY5AxG46DGo=;
 b=RE3Bj8CrTiM429lVNQ5XE3WlncppT+yVir0QJHiWg+rNVHRjtsFkowqAz05UAYtNKw
 +y010WBSYXVRUsn5y1uVmzqYE5gcaX7YTFX2nLTzC/WvlbZwaf0UIB+vp2hbBrqgIzht
 9lS2ZegIiB55iHx9iWUV+ZHNUM93rE38Qsym2W18pjud2QfClb1fieOJeqaiY2uf4zHs
 bd3nEZ+Qye59ZVflrbpQsE11G8fiQGFaxQ0bFx96Tz/24rilVta8eFYMpw0NPDadBZRn
 2cfVECjvMVZgSl8WqE8POW5F1YtzwOEdELCg+oxxAXNqgqWTozuwtyJ6znnLSRM4A9SF
 ngAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=QLEfmxOocsQX9r8Uk8NjNk11VMObudPJFY5AxG46DGo=;
 b=YmgAnM4qNYGNY428lXsUwthGGwzI7nURJNcv66t+Fuc10sTsLgXzjnWOnHL5cPmv0i
 mzNZys1Vw4ss+Yfybb/K2FrmvkoKnY0kgVtie4HkeGJZ81xFzKI5sko6Y2bl/mPpQbPb
 z6DDnVFlCaTWYasp3mrjH0qU0SloVnN4cVp22RegFrgJv8uIxzBXW8apyB7qCrYoCWj0
 kRkMvBUvijPsimjoAMG0u47oLygfRoHjLHik74aUf0BQSikK517uutufJYl0pHOTA1fJ
 8Z3JG9Q84akdl/H/CTdjPdm71NI2KcJGDklywjc6wR+osLGH6X1p6yF/mMBN75ka7Nz6
 1fbg==
X-Gm-Message-State: AOAM5306RAr3bILiu5xUODc4zUGVxGeT256ss/TNlOSujTecT7fdkfJJ
 6npAFgRKV8P27i3du5RuLjlw4RVRH+PA7jtYtCjdlh2a
X-Google-Smtp-Source: ABdhPJw+ZrumvIO41ud60JCQi3etO1g+vhzMGG9dakvDiGhSVuvnO2zelmuhAEuaYl5HlLJne8AP36MJvratrwJk73w=
X-Received: by 2002:a2e:3602:: with SMTP id d2mr13788265lja.152.1595967750800; 
 Tue, 28 Jul 2020 13:22:30 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 28 Jul 2020 20:22:19 +0000
Message-ID: <CAB50+dSiqg3+SNzBmtWU3PRpgHQ-5Nfhc4nrcVUU=XjhxWLFFw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] E310: 2x2 Rx RFNoC Attenuating Tx output,
 1x1 RX RFNoC: Full Tx output
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
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Content-Type: multipart/mixed; boundary="===============4884815048920815474=="
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

--===============4884815048920815474==
Content-Type: multipart/alternative; boundary="000000000000dc097e05ab8632b0"

--000000000000dc097e05ab8632b0
Content-Type: text/plain; charset="UTF-8"

I have a generic RFNoC block that I created and it receives only, and it
can be configured as a 2x2 or 1x1 I/O mode.  In GnuRadio I have also paired
this 2x2 or 1x1 RX block with a TX block, the gr-ettus RFNOC Siggen, which
just outputs a sine tone.  When I have my RX block configured as 1x1, the
TX signal power is well above -20 dBm, but if I configure my RX block as
2x2, the TX signal is greatly attenuated, about -60dBm max.

Why is this happening and is the E310 the limiting factor?  Is 2 Rx streams
plus the Tx out too much for the Zynq 7020 Artix FPGA?

Thanks,
Andrew

--000000000000dc097e05ab8632b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have a generic RFNoC block that I created and it re=
ceives only, and it can be configured as a 2x2 or 1x1 I/O mode.=C2=A0 In Gn=
uRadio I have also paired this 2x2 or 1x1 RX block with a TX block, the gr-=
ettus RFNOC Siggen, which just outputs a sine tone.=C2=A0 When I have my RX=
 block configured as 1x1, the TX signal power is well above -20 dBm, but if=
 I configure my RX block as 2x2, the TX signal is greatly attenuated, about=
 -60dBm max.</div><div><br></div><div>Why is this happening and is the E310=
 the limiting factor?=C2=A0 Is 2 Rx streams plus the Tx out too much for th=
e Zynq 7020 Artix FPGA?</div><div><br></div><div>Thanks,</div><div>Andrew<b=
r></div><div><br></div><div><br></div></div>

--000000000000dc097e05ab8632b0--


--===============4884815048920815474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4884815048920815474==--

