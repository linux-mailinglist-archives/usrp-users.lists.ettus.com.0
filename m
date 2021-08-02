Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD03C3DE051
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 21:53:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06A9C3844F7
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 15:53:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="spv8NhAV";
	dkim-atps=neutral
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 92FCD3844E0
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 15:52:52 -0400 (EDT)
Received: by mail-io1-f46.google.com with SMTP id h1so21649064iol.9
        for <usrp-users@lists.ettus.com>; Mon, 02 Aug 2021 12:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=bCKjP5bRI890nkrbBhWG/sVL3zQvS+F4nABiVQp0jx8=;
        b=spv8NhAVln7/tqjyhjWdKcIK27pp6QnyVVCng/BMxXLqe1oHGll1igeVhFHtuyTnv0
         5rLidoDdLmIHT8ewjXCmJ4H53q51jzkATVUJEunrT6E5WyTqqx0c+it5N7R/nqvpgDVt
         o+j3ncbeV8Rs+z1LffInfDyDEsHAymZtRugDBCI8nAE2fVFM4bWODwflJpDJPNmTMO8P
         U8l4e6cHhoyxCsnLvkaO85ju5tNMG0aeNqUtoJIKfyCHLd/CFGTC//vFRZ7eNyWNl+cS
         8DnfIEaY4tUC2vnP+IZjcBvZEN8e+pIZHbWuIkYrrt+S327IsEchkWPTQWNoy81+uQF1
         LhEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bCKjP5bRI890nkrbBhWG/sVL3zQvS+F4nABiVQp0jx8=;
        b=UJ9fVPRBIoh+AeIbt7TS/GKZAByvRQFz4cwYXtqU7UJbj653WOX6eEuHHeNvt4hiCE
         PyEYy1YyKvDSKZpZUpOq/PhdoaaVruqzHX3Hbcd8K3zMAD7FVL7SN0q8qDib4g054nm+
         8lNw5X13Tzhps3+E8WHf5PFoXiEIfwHgnekz1CmMgVkMmtUFlf8J/5aJ6ZdxnXUwqzoK
         soIp2G2IG0xiYVYCz2M6VokZ+5WU0XkzYOZP8R9i6t9mLhxZBdAJadrvQjLs9Tt20zI/
         V+gJMtmHRQHqeH60le/eSVqVUqyxCaXOJ4KRo4WSQzVL9ySgQIIvbOprEP5pZlVH/xAP
         jsqw==
X-Gm-Message-State: AOAM533dgMacBngpQoP9U2gzTshaN/cvP6chSHiPK4ERcMQHOGn57lV2
	FYrDlEV2P9If3Gjk6EYQiV66YcEhxsLklT1bNoGB+eQGbFhcEg==
X-Google-Smtp-Source: ABdhPJwSIjltvD0N2HPqoGCQMEVadKY+J5PlFsCvML0ER1RY+naGyp/DDGY5OU6nPrG/rahHcGQhENZqKXaSwKtyK3A=
X-Received: by 2002:a6b:f919:: with SMTP id j25mr6355535iog.2.1627933971906;
 Mon, 02 Aug 2021 12:52:51 -0700 (PDT)
MIME-Version: 1.0
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Mon, 2 Aug 2021 22:52:41 +0300
Message-ID: <CAPRRyxtWsFy=nGojLptc3XR7UZ6UBgG1nd8qZq3VW=8J3Ngm9A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: IMEWUOKORTGKWXJM35R2V5T2VYRLONIZ
X-Message-ID-Hash: IMEWUOKORTGKWXJM35R2V5T2VYRLONIZ
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Build FPGA image USRP E310 UHD 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IMEWUOKORTGKWXJM35R2V5T2VYRLONIZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2523882588833478326=="

--===============2523882588833478326==
Content-Type: multipart/alternative; boundary="0000000000001d02cc05c898eaca"

--0000000000001d02cc05c898eaca
Content-Type: text/plain; charset="UTF-8"

Please tell me how to build FPGA firmware for USRP E310 in UHD 4.1
version. For version 3.15, uhd_image_builder was used to generate a
bit file with the necessary blocks. How does it work in version 4.1?

--0000000000001d02cc05c898eaca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail=
-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" =
dir=3D"ltr"><span class=3D"gmail-Y2IQFc" lang=3D"en">Please tell me how to =
build FPGA firmware for USRP E310 in UHD 4.1 version. For version 3.15, uhd=
_image_builder was used to generate a bit file with the necessary blocks. H=
ow does it work in version 4.1?</span></pre></div>

--0000000000001d02cc05c898eaca--

--===============2523882588833478326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2523882588833478326==--
