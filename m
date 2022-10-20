Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDC6605C43
	for <lists+usrp-users@lfdr.de>; Thu, 20 Oct 2022 12:27:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D988B380AF3
	for <lists+usrp-users@lfdr.de>; Thu, 20 Oct 2022 06:27:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666261664; bh=TtdYMXYTeb56QaTEiSU+TjO2kjYm19sqr/gJkKhfwPU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kYRx8Dafj6LyRuUH70xDe/PWd/93uv7TqGV0r6z+0V8jyJcH2DLR4qSHzC+1Wzmjl
	 cZIgYJvpPWUIZMFVWm+oUIHJMTqfTOzk/KHtdncwwcHwUhmFoR9ECjikh82PSJd359
	 Y/qaJBx78fjipavkbbkmuvQi0dRAWxH30j6M77SzWDVUhF+9X12XdDO01Uoljlwnz2
	 NGVx+ckunhl1Hw6t6eSi8w0/kgcECyEz2swhqJPw77k88dohJdDh8Idql+XfhbSdSV
	 CJpYQIrqvcMwgYUjt70HSFVIqamlUnXtV+prM+RSPOynfVVdb0mJleO7JPORBjO5DC
	 MihiwOPaEcshg==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 5AAD33809FB
	for <usrp-users@lists.ettus.com>; Thu, 20 Oct 2022 06:26:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FTeoOnnc";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id q9so46322140ejd.0
        for <usrp-users@lists.ettus.com>; Thu, 20 Oct 2022 03:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uVbTEwRkOfA9XNL/ELIvYwpLzFVqPyz3IsvISDa7g68=;
        b=FTeoOnncpUq0n2HZRDOilmnSf9P0J7X5lm76Q5zfOHBpWqfdwI4ATxnaIia4nHTqgT
         903HuX26mfTCsrvEakSL5VUXqPDeVL7UqAzHYGg2jExiSswFD+46QkiI1P7nyV6ibx0J
         Xzcx1IfBmiyuFw7K9VHplkmH7NIgnVvN+Aikv8a3pdTmJh893yvVwibqmB0z5BWcSiYR
         qsu4O7aNn/f0aGlszqiycwj3Y2Tpd2Zei3VChldjisMjDCL4/FB8yb5KBjuaUXrxBGF8
         B8kWQmmRaa0763h1KiQaPL8U9AAW4axhY0A55paG/VtRBZhHhfcUiQZkCVxO8txL6fwp
         DNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uVbTEwRkOfA9XNL/ELIvYwpLzFVqPyz3IsvISDa7g68=;
        b=oChon2hxK6wFB/7s+IaACK8TQRaf0qiYcsZ1nBQZfRug/PzeiWeYc2wOz39BiDqjTb
         jCekmb+DL5vYA18N67l810oLDqL18PWcNn6LEt2Xdp7N7cZQe3fB0Dr0TF6aH9jK6UUF
         Gfru19JGii1XCPqfXir2PWXaJkTZ6D5bVC6dOAJuSX+e5Ecyz8qBlaUGOstRxynuk5kO
         kLrgsriTSoY1rm1hjVDIo/DPN5WS0hYjZ2345JbxLkbB3gGNfeRHG3NeUIbBnMbym3D5
         Ge0C+eRtH65xKg3sv179297JbNfZTRLdcxqVBJk1CSmz/OIVhNjnjIR4a1KPSCsferQh
         GrBg==
X-Gm-Message-State: ACrzQf0d1xTM7zHxY5+yqzM0JhOWGGhB1OFYgYUdvCZLo1GTgi/Y6C1Q
	EysU5Ew5MF2wk0aC6zX8DNBYRTbLaHiForsQl3YPuJroyAY=
X-Google-Smtp-Source: AMsMyM5XMWhERMa9ikN71839oo/CEqs769jW6NrDKjbe5SVorZB3oOGWBi+m3tES77TDoYi4g05/8+MC6kxZFRWLZAw=
X-Received: by 2002:a17:907:3f04:b0:741:4bf4:fe42 with SMTP id
 hq4-20020a1709073f0400b007414bf4fe42mr10569923ejc.664.1666261617773; Thu, 20
 Oct 2022 03:26:57 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Thu, 20 Oct 2022 12:26:45 +0200
Message-ID: <CAG16vQUZdQCE8UvxQgb3_cZ+6W-YsL-DLGNvd0VVdOBzF-irUQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ZYTE624MGNHZGUNBLZFN7TOVGIGNSOW7
X-Message-ID-Hash: ZYTE624MGNHZGUNBLZFN7TOVGIGNSOW7
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] AXI-RAM memory width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZYTE624MGNHZGUNBLZFN7TOVGIGNSOW7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1991405221117039024=="

--===============1991405221117039024==
Content-Type: multipart/alternative; boundary="000000000000d493ee05eb74c3d7"

--000000000000d493ee05eb74c3d7
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am using UHD 4.0 in an E320 USRP.
I would like to use the axi_ram_fifo block to communicate with the DMA, but
I have some doubts about it.
I notice that the maximum width I can test is 64, if I try 128 or 256 it
fails. The io_signatures.yml file has this line:

Axi_ram:
Type: axi4_mm_4x64_4g

Does this mean it only supports 64-bit width? Is there any way to increase
the width?

Kind Regards,
Maria

--000000000000d493ee05eb74c3d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>I am using UHD 4.0 in an E320 USRP.<br>I wo=
uld like to use the axi_ram_fifo block to communicate with the DMA, but I h=
ave some doubts about it.<br>I notice that the maximum width I can test is =
64, if I try 128 or 256 it fails. The io_signatures.yml file has this line:=
<br><br>Axi_ram:<br>Type: axi4_mm_4x64_4g<br><br>Does this mean it only sup=
ports 64-bit width? Is there any way to increase the width?<br><br>Kind Reg=
ards,<br>Maria<br></div>

--000000000000d493ee05eb74c3d7--

--===============1991405221117039024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1991405221117039024==--
