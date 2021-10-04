Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDC542108A
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 15:44:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C02738421B
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 09:44:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kKUXwvtj";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 31FB0383A4E
	for <usrp-users@lists.ettus.com>; Mon,  4 Oct 2021 09:43:55 -0400 (EDT)
Received: by mail-yb1-f179.google.com with SMTP id g6so20590520ybb.3
        for <usrp-users@lists.ettus.com>; Mon, 04 Oct 2021 06:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=CjUS0bu3rCAJDo2cgLGOKPx/W9AC2zVw/usJCNdeqxw=;
        b=kKUXwvtjInK+jw9gQ5glr4egKCl5juvpeh7iZ4nVr5GA+uCeBM7cDRhrc3R4UQGVeE
         OHEQFy6yKACN1LjcYXotUBeZCRnt9rwYZYVTfO4OwSrt18Ztx6WcUEmsQw1TJMaiyDxn
         fPlOUfbpYtx250boQFOREvGrw2vElEXBu9TASacgfMr5P2yU2nb3a9WOsYuQS/DuNkGE
         hCyEDD4eIeJpvpvdZ/Uf1iZxxTncqHZoxXyBYMA7eVMfAx2xRzjTixm7/JGPsQGjfEoq
         20kfS/IIZ0fvWhH74+p91CwZ7U3VA3C0w2EPgOoUNdGPsc94yu66thJqMY3SZPo1o3nP
         6qRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=CjUS0bu3rCAJDo2cgLGOKPx/W9AC2zVw/usJCNdeqxw=;
        b=6MxAtJCb3CVh6pcQyr32cYBUeywA9WwgYW3gi8sCdlLq5XQr4LRhusYAeQZfZy66em
         vZfQUbgEFC8J2B036UFKtB9IL0ZViXW5iNsGn87LHwkcxjFREvTsF3ZAsQT5OW1d4ase
         dtRpGbRx2HZKKNeTJLUrmXR+Ej0+szDBh0zaIqsoXIVK/uf4niHkLecOYZ3yXU+salkv
         dCwRCsNWsVPJRD9Ma5F4ETophVpsuYFkxRHY6ihvs5PRQM+NvDYMb1GkAJF+Ngl2FqUT
         NK9nMfXsTyaQxz72VVXo5tPuDON1UeBGa1nSE3cHzc3DTEOpCstWSr7llyDUYfnHxYA5
         ekpw==
X-Gm-Message-State: AOAM532v01KMQ/IwvXDCXDt602+Q9bwGkw5vKgx08+oVCEv9w0LJM7VP
	t7hHai5hJvNaHuvnpaDSZc0Ynp76haJZR+5n+bCqKgpJoys=
X-Google-Smtp-Source: ABdhPJwmA4I3EV2ZS6wBU5JTXEo3d4bPXJJRcLvLWE+r+7orfRmNzcMAyzWmNUPlAw6nNH779za8NXOsVCf4TnkQiP4=
X-Received: by 2002:a25:810f:: with SMTP id o15mr16097603ybk.155.1633355035364;
 Mon, 04 Oct 2021 06:43:55 -0700 (PDT)
MIME-Version: 1.0
From: Sadiq Iqbal <sadiq.zahid73@gmail.com>
Date: Mon, 4 Oct 2021 16:44:35 +0300
Message-ID: <CAD8PmbqmOFzToVfvZerTCzAWcA3nc=fi=F6WtMRut_eUjO2Gig@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: LBVPVGNMLSCPJSRJ7QHOORRFO2BG5KYG
X-Message-ID-Hash: LBVPVGNMLSCPJSRJ7QHOORRFO2BG5KYG
X-MailFrom: sadiq.zahid73@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Jehad M. Hamamreh" <jehad.hamamreh@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Inquiry About Running srsRAN using NI USRP 2920
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LBVPVGNMLSCPJSRJ7QHOORRFO2BG5KYG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8961176219410699476=="

--===============8961176219410699476==
Content-Type: multipart/alternative; boundary="000000000000acd1ff05cd871a4c"

--000000000000acd1ff05cd871a4c
Content-Type: text/plain; charset="UTF-8"

Hi guys,

We are using srsRAN with NI USRP 2920, We are having issues running the
USRP correctly, like when we connect the NI USRP with the host pc, the UHD
device probing is not recognising the NI USRP. The second issue is that we
don't know the required UHD image to install on NI USRP that will run with
the srsRAN software. We have noticed that a person from NI is using srsRAN
with NI USRP 2920, so is it possible for you to connect us to him?

Thank you.

--000000000000acd1ff05cd871a4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi guys,=C2=A0=C2=A0<div><br></div><div>W=
e are using srsRAN with NI USRP 2920, We are having issues running the USRP=
 correctly, like when we connect the NI USRP with the host pc, the UHD devi=
ce probing is not recognising the NI USRP. The second issue is that we don&=
#39;t know the required UHD image to install on NI USRP that will run with =
the srsRAN software. We have noticed that a person from NI is using srsRAN =
with NI USRP 2920, so is it possible=C2=A0for you to connect us to him?</di=
v><div><br></div><div>Thank you.</div></div></div>

--000000000000acd1ff05cd871a4c--

--===============8961176219410699476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8961176219410699476==--
