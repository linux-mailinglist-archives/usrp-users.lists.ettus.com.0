Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD4532E82
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jun 2019 13:21:31 +0200 (CEST)
Received: from [::1] (port=41402 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hXl1r-0003c9-NC; Mon, 03 Jun 2019 07:21:27 -0400
Received: from mail-wr1-f49.google.com ([209.85.221.49]:45002)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <246tnt@gmail.com>) id 1hXl1n-0003WK-Qe
 for usrp-users@lists.ettus.com; Mon, 03 Jun 2019 07:21:23 -0400
Received: by mail-wr1-f49.google.com with SMTP id w13so11588135wru.11
 for <usrp-users@lists.ettus.com>; Mon, 03 Jun 2019 04:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PWiFg+vGmj4dNl2b4h8VmfE8fKfC0tbHbSBn1b8worA=;
 b=ckAM/WPxFM/7N4aQ3I7wD+H0QA5YXJtp8UjacYUXRV5sI0gnaYxPxQsfosrGlbi6cN
 nGpCPLLF7bk1XX6rdysfVY4abKnnOLVLXmZUwLWfT9hR+9C649F4X2+W1PACRy8MBPVy
 LYfFDXzGzsLroT0oarAh3px1blA461YKpU1NHepKvdX1YPrEPilc1ql/09e9J2S4t5Oe
 68z2YJ/q9rpg/3bRdtPyhsG44uBXXgwB4RwOVt1RyE83abe/TchjSetjH7mcfKpzZ5m9
 UvmSUpK0MKg5AW0GiYLU/IQ4jG14L22VBJcbC64HVYE2PL+EkGZ8D9hdyukJQxkGu/Cy
 SnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PWiFg+vGmj4dNl2b4h8VmfE8fKfC0tbHbSBn1b8worA=;
 b=rH+bLWHS2NIgWI5zM0QfvyInaLglMioqRUTnFXeEhVsoq/z9lWglzyoiClKZGfhuBj
 06xlO0UEB1QSN8cnXdY+zTaasTIJpjADv3eCVV6UoRnvCJ5bflWi9sfPUgdDAYIJPjxz
 hz4kWWoz+bfpD+o8cbkXdDlffs65GXO7LTLmDXi4pfBV8D9v9fsv2FyeJGWBJKUe6g8V
 Mx9zuF7Y2kCUa2M7z4BsMoJ5pUw71QTBi+SU6KqxyvciZlh7eqwEO9r3KG6R2ACQdGX4
 ONdqyk4Z9aX+5SZ/53FAjTCh4VuwKiy2iww7woxndXub9x8iTwFex7L6b+rMCgYAdYg1
 IYQg==
X-Gm-Message-State: APjAAAXeLRACgAKjGMm6Hb1gSExYmpFFKfIjfAJ/BB7/oQ/hFe9Ke3Z8
 Am+Y8OKnkMW16E6tKQCCjHea3L75ZjZtQXXhZ4o=
X-Google-Smtp-Source: APXvYqy9cZ5EiNrmAAsyhE64zs443QvoicD8rOtmsb1CEx8cF4vHOYvi3kpf6GeZF0bW7/v3KaxT76Fh7cORP4EylIw=
X-Received: by 2002:a5d:66c6:: with SMTP id k6mr15192189wrw.328.1559560842692; 
 Mon, 03 Jun 2019 04:20:42 -0700 (PDT)
MIME-Version: 1.0
References: <1559556373844.57413@supracon.com>
In-Reply-To: <1559556373844.57413@supracon.com>
Date: Mon, 3 Jun 2019 13:20:56 +0200
Message-ID: <CAHL+j0_wQsj8iRojhQ6mPoTiNwZE_wvZx0W+x5=WzyW_7k+mZg@mail.gmail.com>
To: Erik Heinz <erik.heinz@supracon.com>
Subject: Re: [USRP-users] B210: 1/f noise and LO offset
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

> Any ideas why? Thank you.

This might just be the limited precision of fixed point math used on the FPGA.

Cheers,

     Sylvain

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
