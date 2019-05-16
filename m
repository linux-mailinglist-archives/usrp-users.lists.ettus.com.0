Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9297020AC4
	for <lists+usrp-users@lfdr.de>; Thu, 16 May 2019 17:11:57 +0200 (CEST)
Received: from [::1] (port=52028 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hRI2w-0007iz-63; Thu, 16 May 2019 11:11:50 -0400
Received: from mail-wm1-f50.google.com ([209.85.128.50]:53409)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <246tnt@gmail.com>) id 1hRI2N-0007fK-UH
 for usrp-users@lists.ettus.com; Thu, 16 May 2019 11:11:46 -0400
Received: by mail-wm1-f50.google.com with SMTP id 198so4022348wme.3
 for <usrp-users@lists.ettus.com>; Thu, 16 May 2019 08:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Lo6eYqgouqrpBqV1fHyFZ8pIGkouTQnQRg6di7Gpz/A=;
 b=RVQdnc1HDtHmtCvULwpDF2CfOGJQba11V84eWU11ZHyEW7EZ3OwJvo5VXDho4lRuVJ
 cw5IqLiR6GwyJIH2Ehi2SxlWLLFTobNAoJTj9WLGD4CZ3/B/o6vKANlhugzrEZCzhN4b
 tFKajPBRr0EhwFOvxqwatKJqGeIrKHeHP2lD0EUrHcs+ny4BA5G6Dn2ye8EXEIOebRAd
 L7tQvVm1CfnibRHalYikrLNWBnXC8/klliEshb2GzznNRv6XTqFJPcQGTZAQ/ActKHM7
 0yIX4wtIlcPb6OEkusnd9sY5sojB/GwyaaYwn1USPPJ0/posn0hIJ6PeP8D/HGtEzKXE
 QYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Lo6eYqgouqrpBqV1fHyFZ8pIGkouTQnQRg6di7Gpz/A=;
 b=hSYUadJY8me+yt32074+w0g2FcgBxQHXv8MSG+fD5Dpjcu/pAJiZv12lR5uLaxv643
 9JFZz3df7K6TrezoHYZw/Ea3zKOyI4pO7ohQ+CdQfJyB7YXxqca8TkrOZKVPm3icejan
 CHD+Qa98aBByekZvse6yz2GHrdK6W/EHLu8KDhdyiGSbw2VnInqnAH2DbGY7PiW6Ty+3
 jifCdico3hhnuBNNO8IPo1YywQeaBAuLRmSyUEbtX9Id9SVcUyyXrYkGrJmMJQyQjvg2
 T2r0equOVAV2pUv2GdcZhq3tSj0i6w4piGiAXg1n2BxSjttRXFKh8FqAbSNokOOG10J4
 S4rw==
X-Gm-Message-State: APjAAAWS5JAGcUAUy1aqjHK6wjjKb1P91FrWlC21cbHjiuTfErzyDe7N
 5f1w5o0J72NIt+oPWH20cOuYP4ePXR2oTeM4tfC0pYO5
X-Google-Smtp-Source: APXvYqwQQxc+uvHkhUph73fFQvphGJZFYHLlXCumq9zdMFaaa+h7ZWGpLTNY0JH3MQRbUVtBl2M0GbLIKqp60blwq28=
X-Received: by 2002:a1c:7e8d:: with SMTP id z135mr17823993wmc.72.1558019434464; 
 Thu, 16 May 2019 08:10:34 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 16 May 2019 17:10:51 +0200
Message-ID: <CAHL+j0_jgCTyqBT6O1qq0hBLYpXoEKk5Tb_AW7YyWCje3EhvoQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] B210 power saving
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sylvain Munaut via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sylvain Munaut <246tnt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi,

Does anyone here have any tips to reduce the power of a B210 (both
when running and also when idle).

Deconfiguring the FPGA and FX2 when it does nothing does save a whole
lot of power but it takes a significant amount of time to go back to
running mode unfortunately.
Also seems the radio clock is left running at whatever frequency was
last used and so setting it to a very low value before exiting also
saves quite a bit of power when it's idle.

Any other tips ?

cheers,

    Sylvain

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
