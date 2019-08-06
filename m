Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8504F82E87
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2019 11:17:40 +0200 (CEST)
Received: from [::1] (port=51492 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1huvb8-0002Vr-Ln; Tue, 06 Aug 2019 05:17:38 -0400
Received: from mail-ot1-f72.google.com ([209.85.210.72]:42333)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikio@dolphinsystem.jp>)
 id 1huvb5-0002R2-3X
 for usrp-users@lists.ettus.com; Tue, 06 Aug 2019 05:17:35 -0400
Received: by mail-ot1-f72.google.com with SMTP id x18so48665740otp.9
 for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2019 02:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VRdSIq9PdiwVbKsmcWV9dlWi9E9u2Q9XQn5SP0+SUXo=;
 b=uBX3oub7ijHAFJF9b9nuWHMGdDHwgw4+EZKxRUjKAL/mqP9Lal2eCTz5cSX4htHbQn
 ZAFZi8NbElp5aaINXkN2YckAbU9uwgA+MiHLcXJ6WzQuNsW9E1ufrFO5VZ67U8nZVrce
 0udkHIBiKG+wpaGyhhwxldBfHTbzqKHY7lhecbLtJg1dFvgTpQNruSRI5mpLLFPm2g28
 Yq2KGfxQ/+Nf9NUhP1PySm3Cp+6bkEBZQ5wGR5QLXU2q0l5UzjcDq6Nl38kkHE8Um+Ml
 SB0GC4IhuIfQEueAiMQm/5xUbBfI9JWZU0xN8WJUfDHI5WDVUkPTH+zbeFDOmAvtfNkt
 tjEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VRdSIq9PdiwVbKsmcWV9dlWi9E9u2Q9XQn5SP0+SUXo=;
 b=tFLV4xh7Bew9Fd7p7i5OgMk6wubsYMhgict+USOLO9Uz8upILdyyH2KSLMR/jEPyHq
 unnvUm8/nKwBl5lqI9iFHy6+PHTmbZybkztUySr8ZnNe5WaqnbKKlVljdcsbaQNEjLe0
 /wb2sNi3S561pneQz8cG8C+kpUiYV9oXhBMKgswburzBxsjhStY+bAbMZYHWNVQeYIz1
 WsEBaI0Ut8lAjHI3PRmj59OZVVNZXt6ioS2/BHqtLJG+EOf6j84qiKC5rvzD7OwsLgMi
 igME5r6ADRek5xCaWU2Hta7mevOPYJ6xaQeN5Pe+5Og3tmclt6Ho5Q/zUtT1Z38Z4VHK
 jjNg==
X-Gm-Message-State: APjAAAXNTXLBfz5VHArjaLGfxj/xHP7LNSTnKY2r1xlwr7/JKiZHKNfs
 3DFuQFKV5AoseD3Vlk+BvV7AwVTJKlMqoCGX4jsyFg==
X-Google-Smtp-Source: APXvYqxRDeEu6QXoRPWKAzGHUtzEitt/neOQ1s1chhoShrDP3sQaD9uPjMxUdXxw3PwJBZeDCHF25wJTIi9Bg2vP4lI=
X-Received: by 2002:a9d:73cb:: with SMTP id m11mr2030564otk.276.1565083014097; 
 Tue, 06 Aug 2019 02:16:54 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcdKyO0+zUTd5oVcwrr=mAhScEroL_mwGDoEJ52+i+sAjg@mail.gmail.com>
 <CAL263iw7Rwb4n-FJvnqOqtgev8AAx9uNvutVbNf2Q__cL1C6Hg@mail.gmail.com>
 <CABfZwcdc9PR_dNbAaTbXaE7LxC6wE6+3mRuagXfkuyASHm0TrQ@mail.gmail.com>
 <CAL263iy15x0bAE6CK_LQbnvbLk86=o5k_sk7CJzG_K_bXF+TDA@mail.gmail.com>
 <CABfZwcf-YpuUKedeJQRt5yx6xhVbf6NNgC4cjcUOq=yUM6karA@mail.gmail.com>
In-Reply-To: <CABfZwcf-YpuUKedeJQRt5yx6xhVbf6NNgC4cjcUOq=yUM6karA@mail.gmail.com>
Date: Tue, 6 Aug 2019 18:16:19 +0900
Message-ID: <CABfZwcfaknfASjCSUnd91bts+jAEjiZAiwxe8e7RrLVNR4U4vw@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] cmake error : Cross-Compiling GNU Radio on Ubuntu
 16.04
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
From: =?utf-8?b?56aP5bO25bm56ZuEIHZpYSBVU1JQLXVzZXJz?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?56aP5bO25bm56ZuE?= <mikio@dolphinsystem.jp>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3383211694146746490=="
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

--===============3383211694146746490==
Content-Type: multipart/alternative; boundary="000000000000199d88058f6f49eb"

--000000000000199d88058f6f49eb
Content-Type: text/plain; charset="UTF-8"

Hi,
I built the UHD and GRC with no error for a E310 as follow the updated
procedure.
Next I will try to build for E320 and Custom FPGA design.
Thank you.

Regards,

--000000000000199d88058f6f49eb
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hi, <br>I built the UHD and GRC with no error for a E310 as follow the updated procedure.<br>Next I will try to build for E320 and Custom FPGA design.</div><div>Thank you.<br><br></div><div>Regards,</div><div><br></div></div>

--000000000000199d88058f6f49eb--


--===============3383211694146746490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3383211694146746490==--

