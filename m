Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D553DD7CA
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 15:48:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2749B384330
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 09:48:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=eastroad-org.20150623.gappssmtp.com header.i=@eastroad-org.20150623.gappssmtp.com header.b="tXREjIPB";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 83EFE383C93
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 09:47:20 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id k7so16543721qki.11
        for <usrp-users@lists.ettus.com>; Mon, 02 Aug 2021 06:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eastroad-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dl49+peIIIXPHMxHlWYW0s45iwl7m35Loq2nrE4TWdo=;
        b=tXREjIPBY1K1pGnelxGpPz2Ei7xb1RzHbJu4My8eWS3xel6SEyqtZcmHZEimYi7U3I
         SiVAz+Q59PzGvnjC6q8lxszqwZV3HNxW8oF1vQs8F8D63yj0gGjT18Z1L1UkVEPy3mtT
         QDEUuJo+TC+RtGZmmeyZCDnuVvIWt3cvUhfecwAA9JNXsFP4yi7lSStQ5wsX1uOZ02H6
         8IQ1M70iyEuZwDnbrU3Yxl6WuPP9cq4ZKFeBIgzwpheWUZju8do4mA2pqcMv1N9/IT4x
         7MdaWuuezaKb7pMYFd3TAO34rzVHeFUoqpgO6vRgBu044C2BUEMIXLJr2nv4bCl8kPb7
         CJ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dl49+peIIIXPHMxHlWYW0s45iwl7m35Loq2nrE4TWdo=;
        b=ZGffQ+pMke5lbp8U/Sh9AU8uDow3/Ujabt3TEW5Olzh/kvo1JfIjIqGn/9QH7LZrPJ
         KpbGpg5lc7eeY0Y16bBkzLDGxEHR6D0W5t2QjMCtYxsoPEp+A7Kklb0Hd7feKRl0W9GT
         CKta5DDXA/xwNq3iLOhbn745Co7HrlBfR0IiDSH1zS2mT0CSXDA+GLKcKtOiZCbZZMxu
         3j+kMRXP46jRrB3zwbthW0Y7n0Tkw6iJo8BjWnXGtMAn5AuaeWxq4oN7JchjHCoiiaNj
         7Uy37aByIEeHECD1J0RK42eLI345hG4y6DTsxic0NCJMqWTvj9CPipTrCVXfKBmYL1RW
         E2AQ==
X-Gm-Message-State: AOAM5307uDJRkYRQ00oxdO/WzR9a9lyMk+IFolAC83+JmVPJ91wew/4V
	o9qrQ1+RzICQE/8quX93R2LeU/jSHkSy9x1D
X-Google-Smtp-Source: ABdhPJyTFBLQcN0bu9kWzs74xFwe5BZv3zmB2hvoa7dtfByqe/LgafvBQVeouaVo+34eo91coCJuvQ==
X-Received: by 2002:a05:620a:16a7:: with SMTP id s7mr14224797qkj.359.1627912039560;
        Mon, 02 Aug 2021 06:47:19 -0700 (PDT)
Received: from [10.37.129.2] ([199.111.240.125])
        by smtp.gmail.com with ESMTPSA id q10sm4746515qti.68.2021.08.02.06.47.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 06:47:19 -0700 (PDT)
From: Guy Mengel <guy@eastroad.org>
To: usrp-users@lists.ettus.com
Date: Mon, 02 Aug 2021 09:47:18 -0400
X-Mailer: MailMate (1.14r5807)
Message-ID: <823ADE77-DFB9-4632-B924-C31C5B76B128@eastroad.org>
MIME-Version: 1.0
Message-ID-Hash: 7SAGJZFR7SOT5K4RBPCKGQI6PRWCCAH2
X-Message-ID-Hash: 7SAGJZFR7SOT5K4RBPCKGQI6PRWCCAH2
X-MailFrom: guy@eastroad.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Older B100 and associated Daughter cards.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7SAGJZFR7SOT5K4RBPCKGQI6PRWCCAH2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; markup=markdown; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi All,
I am finally going to get started using an older B100 USRP with the LFTX, LFRX, WBX daughter boards.  I purchased these from a well known amateur radio op in January of this year. I had played with it for a short time on Ubuntu 18.04 with the older unsupported Python2 interface, this was a start.  Then the Covid Pandemic hit.
Well, I am now back.
Are there any users in the group using the B100 USRP with the LFTX, LFRX, WBX daughter boards using a newer Ubuntu 20.04 with updated Python 3.X with GNURADIO?  I wanted to see if there were any still using this older SDR.  My plans are to experiment with it and create a rig to be used at HF and possibly UHF to microwave down the road.

I would also like to have pointers too!

Thanks!
Guy Mengel N1GMM

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
