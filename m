Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC044672AA
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 08:35:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1F31384B8D
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 02:35:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iTKvswGg";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id B59FE384AC1
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 02:34:43 -0500 (EST)
Received: by mail-qt1-f177.google.com with SMTP id v22so2406949qtx.8
        for <usrp-users@lists.ettus.com>; Thu, 02 Dec 2021 23:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=w/KjBa5qtsW4zVkLMX50cWyz+ad0rfsF+vWUyCervKI=;
        b=iTKvswGgXfE9xHbH59pxQpc+r+tNtQmvby/U6H/ZFzno9H4E8lX0Biz3G5AAMhXEnM
         /Iy9pkJe5T065LatT35vMbdirvq8yIXtc3DyE6fxUgXM9uh9DWBHVjAyo44bvp4vXLhd
         KhftYJcZmH5BidtCeD54fbrBfJGkv8fpBL4XDv49b3k11XO4k5yKZvXmAe+DC4csGnlD
         s79zOclf4qA8cKpHi7c5zqe94BuQ/v/DFcshLythZsXixILF0JvAwH7kjOlAtQEmYMHZ
         NNKh7mMolrHd+A6YNbklJg6s36DxIFLtMSr5qb8vVVCUe8/9IZbhKOolXQRAH1bBsnzT
         4jjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=w/KjBa5qtsW4zVkLMX50cWyz+ad0rfsF+vWUyCervKI=;
        b=p6IFPC7ZcT29gCczxr4YZI9iqGtFKPXft7COd5wZ4B6+YoUFntXL8vMpSi8S6xNjDy
         GqdaoQTkZt/PNbw8f9UjOsbL83aX92XqZ0TbNEhVB1YxE3hJVDiSNSskIjED1aivStmb
         3zfUSTYYrf5/HYF6vKV3R29DL2egOSsut7k9ttfrUjkWthQDIEJVAbdGMxUUboNRYKSU
         jdMhk1HduTqSuj7ZdjXax/BP4EawIvCKxmb9eaEYYm1/c3bkdTnG/LaQFPKYi1g/Pdwr
         z431erP19nwEglCZG8QY2/2MUzcFOpkMNLJ1xkO+Rta5rjnCV2wbIpwySpQPMEf8gTtN
         f1IQ==
X-Gm-Message-State: AOAM532kjP8ANzO/DQY9yM82ES5XB2n+HOEbOeZiDs6NOPY/QgC81Z2+
	vbnGYY5RurtAV9GHb0r0/dW1W3QD6TDSfziX82hrAns1
X-Google-Smtp-Source: ABdhPJybqYRbxorV7h+7DPD3F6nrB2xGpEJvSwu6sC/W4rZZd02bV1IX4W3qiuM0/xXbgJPxJNiMA3AB0CNjzctiN9g=
X-Received: by 2002:a05:622a:138e:: with SMTP id o14mr19021375qtk.576.1638516882771;
 Thu, 02 Dec 2021 23:34:42 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?57+B5YGJ5ZC+?= <cmdjbst@gmail.com>
Date: Fri, 3 Dec 2021 15:34:32 +0800
Message-ID: <CACfkGzVBb8d_A-ZJJKODKj3by_4bPTXsOCrzAsQOgh=-mObqKA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: XAAEQA2ZKIVBLCSE7UTUO3GLL4F4DSJG
X-Message-ID-Hash: XAAEQA2ZKIVBLCSE7UTUO3GLL4F4DSJG
X-MailFrom: cmdjbst@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using N200 with UBX160
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XAAEQA2ZKIVBLCSE7UTUO3GLL4F4DSJG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8719655662244828436=="

--===============8719655662244828436==
Content-Type: multipart/alternative; boundary="000000000000c191ea05d238f01c"

--000000000000c191ea05d238f01c
Content-Type: text/plain; charset="UTF-8"

Hi, I want to know if I can use N200 with UBX160. My goal is to run the
N200 at 100Msps to receive 100MHz bandwidth of signal.  Which means that
UBX40 is not the right choice. I don't see the UBX160 on the recommended
compatible products of N series devices. But I've found out the datasheet
of UBX160 specified that  UBX160 is compatible with both X and N series.
So, will this combination work? Is there going to be some aliasing issue?

--000000000000c191ea05d238f01c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi, I want to know if I can use N200 with UBX160. My goal=
 is to run the N200 at 100Msps to receive 100MHz bandwidth of signal.=C2=A0=
 Which means that UBX40 is not the right choice. I don&#39;t see the UBX160=
 on the recommended compatible products of N series devices. But I&#39;ve f=
ound out the datasheet of UBX160 specified that=C2=A0 UBX160 is compatible =
with both X and N series. So, will this combination work? Is there going to=
 be some aliasing issue?<div dir=3D"auto"><br></div><div dir=3D"auto"><br><=
div dir=3D"auto"><br></div></div></div>

--000000000000c191ea05d238f01c--

--===============8719655662244828436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8719655662244828436==--
