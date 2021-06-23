Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D153B1C56
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 16:21:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96848383B9F
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 10:21:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Drx+xD2R";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 97EA7383A8B
	for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 10:20:35 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id g4so5629321qkl.1
        for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 07:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6U1b1F37YtVYK0HqeII2yjU/wQqHzO73ay1bcPY+AAE=;
        b=Drx+xD2RlbAWa62ZTMts3kx7l/AABIAIMVNgAwJQMapnDpFAmo5lOeALj+6iEYO/Zi
         THpxpnWLahB2TbxhZBY0OucVHJVEdTkuXD60ttcuyV4cCYNdIwPawVRnrejcrbeqL5t8
         BmqZx8WCbCOeclqVFc1oA8AGVwo5DmaRz85v5oQup2a3UL/rm2Lh0LXprfAnLqcisoW2
         aOJWYPLnzCBBS89F2lcujTa/TGUZotE4Z6/3Mn4sZrqCMubJwAbw/xN5lUIcB/txA47j
         c4YYf3zouicrbbBTmCWsPhtFMBqcx1YK9pUGugg+CtQWl2g7ac+ZVLuQ53Gr50rhcrsK
         UZcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6U1b1F37YtVYK0HqeII2yjU/wQqHzO73ay1bcPY+AAE=;
        b=Uq3W0u4BoKADAtolxZAJAXOFeT6QQlfHqzI268OYOxjckN05lh/llGyZW6uaZmO3yn
         KfrZucmXadsb/Biosb4nqNOEvMLuciAeSYY58+PJa4IRRgP/pOgeddHpxrxSllwGp9eX
         q+0txSgHjPKX0IpFCSpUGCXZzJUpvibALYMRFDMlskvASd+8qgt7zRuqnyso/UeUqrnu
         H4+Z1UTPoyNvBWmqGwomEUuP9hOBWG0Or74H2uepmSrYcHPfObBZ8+I375bgo18/QYyN
         mmkSo/h1+oQE08lg3bz+fe+6SLpC3VM1YPZ72I6+1dotWfkDPwn0sPPpuYN5CufvQaoU
         QQDg==
X-Gm-Message-State: AOAM531moGmbX7x0yE7lIKxQ/GhsL7lTmKozr6XXiUcsAmZs9bHwEIVT
	DWHt6EFCGBYcAIOCztEUPnj5VlpUBDSdBvAYxw/E/UeCB9Q=
X-Google-Smtp-Source: ABdhPJxZc804W1mk73rQPcVJJsd0Kby+jFW1XN2eZwSOG7OYUrsymf0pWxHXFlM/zytPGA5QkrZw+iDd0kBHcgCWUSU=
X-Received: by 2002:a5b:310:: with SMTP id j16mr12372734ybp.36.1624458034808;
 Wed, 23 Jun 2021 07:20:34 -0700 (PDT)
MIME-Version: 1.0
From: Daniel May <danielmay83@gmail.com>
Date: Wed, 23 Jun 2021 09:20:24 -0500
Message-ID: <CAKazox0Np_582yPH4wv-aK3E8RmNS6t-AR2d=uca4L+ZshfqSg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: ILUFZ4HY3ALGRKSIIR5QAUFO4HC4Q6BR
X-Message-ID-Hash: ILUFZ4HY3ALGRKSIIR5QAUFO4HC4Q6BR
X-MailFrom: danielmay83@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 EOL Schedule?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ILUFZ4HY3ALGRKSIIR5QAUFO4HC4Q6BR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7021043601094932293=="

--===============7021043601094932293==
Content-Type: multipart/alternative; boundary="0000000000001e14d605c56f9cb2"

--0000000000001e14d605c56f9cb2
Content-Type: text/plain; charset="UTF-8"

Is there currently an EOL schedule for the E310, or will the E310 be
available for the foreseeable future?

Thanks,
Daniel

--0000000000001e14d605c56f9cb2
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Is there currently an EOL schedule for the E310, or will the E310 be available for the foreseeable future?</div><div><br></div><div>Thanks,</div><div>Daniel<br></div></div>

--0000000000001e14d605c56f9cb2--

--===============7021043601094932293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7021043601094932293==--
