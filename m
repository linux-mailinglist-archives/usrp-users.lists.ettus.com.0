Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DC1207A95
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jun 2020 19:47:10 +0200 (CEST)
Received: from [::1] (port=38022 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jo9UJ-0006fG-8y; Wed, 24 Jun 2020 13:47:07 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:41825)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jo9UE-0006a6-S6
 for usrp-users@lists.ettus.com; Wed, 24 Jun 2020 13:47:02 -0400
Received: by mail-qt1-f171.google.com with SMTP id g13so2369630qtv.8
 for <usrp-users@lists.ettus.com>; Wed, 24 Jun 2020 10:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=TN52R2LqM0xsVEdECrVCLFBPPhaBADnpb/1ErAKCh+8=;
 b=GX4X5LYO51tvrYxAytkG+4zCoYuuyvkX3N9SRgSgvRkTdZlaQNFuIV7u+aHko/NNXo
 oKhfInG8XoFmf63L/f7oDBYdEhY+A7YKH2hCvQFtHNERfHPaK5tpMMWUixHbkRoDRD6A
 VrvUvOtvGl7Adz5GuS2sjnOJFCHyYql5LQEmvXlM1f11wno/v/ZICGF7Urhh0pxO5uzY
 4Ory/bhzCEfJpPcArjkURg4u51p1y7lHyrNFnObM594hN3KYLN9xUb5wvfaSyY4sA0EU
 ePXyA1O1m7APuRUWxmdlyLWvgqjDOyOIE0+z5NfM6YjELvl0DF63UrRJhk+n+U0dM+XA
 Y0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=TN52R2LqM0xsVEdECrVCLFBPPhaBADnpb/1ErAKCh+8=;
 b=aBOECFlTydt1CA0izhTU+BfThfx3qoLWtEBjEOp9cMLVjooaTeqyD2/urY0oqXmalV
 vVT4pZjyo1K8XX+oD1NvDva48BwdbYmhP5qeckREa7Ieaa9Vfc3U7Gr8sQ/Pi/ETDtgI
 l7Y2iKLBnFhOdVKhFRqIfsxq/ir1F2HGSZcphdGoDTZZjQUK7c6hTJEOV+OPl94BBuzE
 LDysmitSEiMcVkkry5guv9bKtR8NIapFvGyKDBi1sTJJlbdIY/2h53q/PlMEwJ6LWDFb
 X+D7gBVE180wHER1PeU3L/JnxNBGWGNyE36Y1Va67MHaq1tBB1QwcDf8H2BOSGfSIMJd
 p82A==
X-Gm-Message-State: AOAM531ZczeQPcEAo2tx6HOCVB0NMSF/+xVr5UdHeX27OR173QASVInF
 ZAgKYqEz2R3AZVc4ERdi9SkqoZPKtth4zbL/lhOft5Z8
X-Google-Smtp-Source: ABdhPJxe4LzTF0k8X7ZOrbVn8iQpwlkDCfhPUz3V3aoJcw2/lBdRHt+pera+AHrzt+Xy8/Iv4+VFzaItsBliXxTLICw=
X-Received: by 2002:ac8:5350:: with SMTP id d16mr8028820qto.279.1593020782109; 
 Wed, 24 Jun 2020 10:46:22 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 25 Jun 2020 01:46:10 +0800
Message-ID: <CACjmV_nH=YZVbvU-Md4juBB6iazRxVuLFa+f8rC0Z4=_UumjKA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Cc: Damon Qiu <qiu.guowang007@gmail.com>
Subject: [USRP-users] TX Burst at 200Msps sample rate on two channel
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
From: guowang qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: guowang qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============6181796707244090475=="
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

--===============6181796707244090475==
Content-Type: multipart/alternative; boundary="000000000000d6677705a8d80da9"

--000000000000d6677705a8d80da9
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am trying to set my USRP X310 to send out signals in burst mode at
200Msps sample rate on two channels. My target is sending out bursts of
100ms without underflow.
The OS is Ubuntu 18.04, UHD version v3.15.0.0, DPDK is used in the test.
The CPU is set to 4.2GHz.
The X310 is connected to the host by dual 10 Gigabit Ethernet.

sudo /usr/local/lib/uhd/examples/tx_bursts
--args="type=x300,use_dpdk=1,addr=192.168.30.2,second_addr=192.168.40.2,send_frame_size=8000,num_send_frames=512"
--repeat --dilv --nsamps=20000000 --channels=0,1 --rate=200e6

If nsamps is set to 100000, there is no U printed. But if nsamps is large
than 120000, the terminal prints a lot of U.
Question 1: the depth of DMA FIFO is 32MB by default, I guess there should
be 8M samples stored in the DMA FIFO, why it seems that it just store 100K
samples?
Question 2: is there anything I could do to achieve my goal?

Best regards,
Damon

--000000000000d6677705a8d80da9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>I am trying to set my USRP X310 to send out=
 signals in burst mode at 200Msps sample rate on two channels. My target is=
 sending out bursts of 100ms without underflow.<br>The OS is Ubuntu 18.04, =
UHD version v3.15.0.0, DPDK is used in the test. The CPU is set to 4.2GHz.<=
br>The X310 is connected to the host by dual 10 Gigabit Ethernet. <br><br>s=
udo /usr/local/lib/uhd/examples/tx_bursts --args=3D&quot;type=3Dx300,use_dp=
dk=3D1,addr=3D192.168.30.2,second_addr=3D192.168.40.2,send_frame_size=3D800=
0,num_send_frames=3D512&quot; --repeat --dilv --nsamps=3D20000000 --channel=
s=3D0,1 --rate=3D200e6<br><br>If=C2=A0nsamps is set to 100000, there is no =
U printed. But if=C2=A0nsamps is large than 120000, the terminal prints a l=
ot of U.<br>Question 1: the depth of DMA FIFO is 32MB by default, I guess t=
here should be 8M samples stored in the DMA FIFO, why it seems that it just=
 store 100K samples?<br>Question 2: is there anything I could do to achieve=
 my goal?<br><br>Best regards,<br>Damon<br><div><br></div></div>

--000000000000d6677705a8d80da9--


--===============6181796707244090475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6181796707244090475==--

