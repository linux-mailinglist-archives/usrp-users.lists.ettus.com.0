Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C377156D2B
	for <lists+usrp-users@lfdr.de>; Mon, 10 Feb 2020 01:30:07 +0100 (CET)
Received: from [::1] (port=52356 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j0wxd-0005U4-St; Sun, 09 Feb 2020 19:30:01 -0500
Received: from mail-lj1-f180.google.com ([209.85.208.180]:35934)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jmcrossen80@gmail.com>)
 id 1j0wxa-0005QF-7g
 for usrp-users@lists.ettus.com; Sun, 09 Feb 2020 19:29:58 -0500
Received: by mail-lj1-f180.google.com with SMTP id r19so5143985ljg.3
 for <usrp-users@lists.ettus.com>; Sun, 09 Feb 2020 16:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=FPMoHdC/XMPWHZnxHVXx7FtB+jBe2NvQEoaSrEIeLPI=;
 b=Pbe+UuGG4t/zjMALhCQR6MNujfSz41IYk5t42l4g3MamsYL9Q974KP9UFnyEx6UTiK
 xJ60oW/gcfOe/CQ6KeySt0HIlPcpY2+d/lZ6CFQ5Qv0WGhGFQefSDYUuTWVhV0/D0boF
 fYxFxSsLhTOkAoJwZTtmvWhiLIPnDpXZcYbGyXTINgTe9qRuQbhMkMSFspgVRb5cu8C1
 7bbXQUhyrGmS3SzQdndRqCxXyU1frRvnR965Pyu0hVssih7mFktmTUDB091QyxMvsDLm
 Jrm4WeJhdARbA7zw5YRV82KWJ+zQf2RWf/PK7N/4alnU+MJDe4GY/b7VAO1i4uX65KYz
 Wzzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=FPMoHdC/XMPWHZnxHVXx7FtB+jBe2NvQEoaSrEIeLPI=;
 b=bHGHX3gQVNDBVoVwUfynka+Gj7uVZz3rhx42ScBPtFXvzPpZfGzFOgJRSSVjVcMiO9
 ZJtonuPnReFdZw2o1ytKj4V5WymcOdKqM9N8XXBiLEXcMbS1y9M+5wIs0btLAl1vHeja
 y8xOvRgkrKFbB755bixtRPCjCLMmJg2JG/OUu27a6nID2DeHDrrmfk8PNyTm+zhj6eKW
 2mG4Eg+hdgkIDeGmCJc4q6q7BpkmbP9dYADKngyjki8o3r5as70So7O01eYW2GTXyC9v
 TtLL8kdWRCBmclu3ldnDpLEMobSWqsAGx93yuBptrY4LJ0aYALCTl4h1hPZXfYvtOb8S
 jk6g==
X-Gm-Message-State: APjAAAUZahhMsEpOGAV481N6t8QuZ1GvyGm9OcQdUNzmrXNIWUv/cTvl
 +Ah0rzhOOmjWiSh+Ib7BUiDxDf3PXf4rymnh97GBT2lQ
X-Google-Smtp-Source: APXvYqzUC0GGZ3QOTUjtishjsyyuRg2KdOdlCLgy1W9kkenuQfUmFk58B14muCNgrUJbqEeMQHSPgvR6NYdLZ8xrtwA=
X-Received: by 2002:a2e:9744:: with SMTP id f4mr6511744ljj.267.1581294556504; 
 Sun, 09 Feb 2020 16:29:16 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 10 Feb 2020 10:59:05 +1030
Message-ID: <CAEnX9dE3FAPR362qf0c_SbuaU2OzgrLggLC3nXr43hacn6gCjA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] RedhawkSDR and E312
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
From: Joe crossen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joe crossen <jmcrossen80@gmail.com>
Content-Type: multipart/mixed; boundary="===============9017258088343138370=="
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

--===============9017258088343138370==
Content-Type: multipart/alternative; boundary="00000000000053678f059e2dd414"

--00000000000053678f059e2dd414
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have an E312 and have managed to successfully receive RF and visualize in
the Redhawk IDE.
i.e.,
Launched domain on the IDE.
Launched device manager on the USRP (using nodeBooter command) - which
appears in the IDE domain.
Once connected, I am able to plot the device outputs from the IDE.

However I am unable to get the USRP to transmit a waveform created in the
IDE.
I can't figure out how to connect the waveform to the transmission port...
Has anyone been able to achieve this?

Thank you,
Joe

--00000000000053678f059e2dd414
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I have an E312 and h=
ave managed to successfully receive RF and visualize in the Redhawk IDE.</d=
iv><div>i.e.,=C2=A0</div><div>Launched domain on the IDE.</div><div>Launche=
d device manager on the USRP (using nodeBooter command) - which appears in =
the IDE domain.</div><div></div><div>Once connected, I am able to plot the =
device outputs from the IDE.</div><div><br></div><div>However I am unable t=
o get the USRP to transmit a waveform created in the IDE. <br></div><div>I =
can&#39;t figure out how to connect the waveform to the transmission port..=
. <br></div><div></div><div>Has anyone been able to achieve this? <br></div=
><div><br></div><div>Thank you,</div><div>Joe<br></div><div><br></div><div>=
<br></div><div><br></div><div><br></div></div>

--00000000000053678f059e2dd414--


--===============9017258088343138370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9017258088343138370==--

