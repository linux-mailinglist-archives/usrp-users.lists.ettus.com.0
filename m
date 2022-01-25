Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D039F49B509
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 14:27:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF340384551
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 08:27:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fFpoAt4/";
	dkim-atps=neutral
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	by mm2.emwd.com (Postfix) with ESMTPS id B979D38449A
	for <USRP-users@lists.ettus.com>; Tue, 25 Jan 2022 08:27:05 -0500 (EST)
Received: by mail-pf1-f173.google.com with SMTP id 192so16347805pfz.3
        for <USRP-users@lists.ettus.com>; Tue, 25 Jan 2022 05:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=A2FZ0bEXKfzYxnP2ENMgmiwgjd1YvYU8vhCqJZKMuGU=;
        b=fFpoAt4/256EzwTVX2pndQlIxJEuJdtyyYS3ErqYKeEEwNJ/hXikHWJfQcaOaPvFfQ
         ztZ45t0y1gY28sydx97uQdQtvcwARVd/OTwk96lmPIHfMB8tJ8ZaExLZ/6h7f+i28PMv
         njlY9u5I17c7YxF9w6Jlj0bnTEj6hV89dtMgj4My3CekqHuZr5b51tEHbTOskMjznaIB
         0JOpi1f7NOQLbtCHsQOOOoSERIniE6v4GYVl/tcXPv/TUtB3yR8RXN3ysHoc8DozJ49b
         eQhLMR5fGzXQXL6IZyNcltM8qQCm+VXzDqtarWgyToD49sf9t+FWXHENNT7Uzc5pIHRC
         pFWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=A2FZ0bEXKfzYxnP2ENMgmiwgjd1YvYU8vhCqJZKMuGU=;
        b=Ki+Z+e6X7T31bCiZwtqqpnYyDnSk8ZsQvk4k5SPEfEAhtxLUq0lzXjTLa1QV5ojk3L
         DTCFq5gWbmq4ztVL95XTsQRDjjoyG6yRC5g1mRTWaXSWfxjc93RXCbNRWVtPukxXaHqt
         4JwQ57jGnFdtZAvY8IKUznGSBaCvEjzwzIb6X2ddNfV7Z1xdLzB0xjiZ0ZIGRZl6Ec9d
         eTaQQtO5uYrMpKavpu8/Z0b13g3YytSNZZRe/bHwXvcLsiO+6sa/DEXS/CqH4EaKnkdG
         dcYMuYyCKV+bJvru0oF7TVC0nb1JCfoL3s+Xj1OiWlTP95ulvqrgzUQrMyuUG2zUgcYj
         1HVw==
X-Gm-Message-State: AOAM530tQW+xbgNysgkhdUwpk7Y8hoJTLfOI5wuqxWFfhp09ceTIugXO
	wryMVpdJrRzl3xMN1cADu0E6Nl6zjyRK/pwul0Kg1euRCImuFA==
X-Google-Smtp-Source: ABdhPJz01Ri29q5hZZuY/AuVrXmeT5hPJv/pr4FuBdNGbgQlWnJb02rxoWOWYUzG2bCg9DlVtavAJfXumcuoqlA76AE=
X-Received: by 2002:a05:6a02:20a:: with SMTP id bh10mr12440694pgb.544.1643117224155;
 Tue, 25 Jan 2022 05:27:04 -0800 (PST)
MIME-Version: 1.0
From: arash karaji <arashkaraji1375@gmail.com>
Date: Tue, 25 Jan 2022 16:56:53 +0330
Message-ID: <CAC=jf=8Maiz0CdjWpQqJGVTDJSJS1+vR-T3GpGg6KLzRvFyh2Q@mail.gmail.com>
To: USRP-users@lists.ettus.com
Message-ID-Hash: 7OXTD7FSKTAUNLF7RAGL6QWRGKQXXXUC
X-Message-ID-Hash: 7OXTD7FSKTAUNLF7RAGL6QWRGKQXXXUC
X-MailFrom: arashkaraji1375@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] subscrib removal
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7OXTD7FSKTAUNLF7RAGL6QWRGKQXXXUC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1471884870869439606=="

--===============1471884870869439606==
Content-Type: multipart/alternative; boundary="00000000000078601805d6680a49"

--00000000000078601805d6680a49
Content-Type: text/plain; charset="UTF-8"

Please remove email address arashkaraji1375@gmail.com from the distribution
list.  Any incoming links to do so are blocked by our email manager.

Thanks,
arash karaji

--00000000000078601805d6680a49
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><pre style="font-family:courier,&quot;courier new&quot;,monospace;font-size:14px;white-space:pre-wrap;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)">Please remove email address 
<a href="mailto:arashkaraji1375@gmail.com">arashkaraji1375@gmail.com</a> from the distribution 
list.  Any incoming links to do so are blocked by our email manager.</pre><pre style="font-family:courier,&quot;courier new&quot;,monospace;font-size:14px;white-space:pre-wrap;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)">Thanks,
arash karaji</pre></div>

--00000000000078601805d6680a49--

--===============1471884870869439606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1471884870869439606==--
