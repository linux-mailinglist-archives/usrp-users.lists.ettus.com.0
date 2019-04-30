Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8EDFBD8
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 16:47:49 +0200 (CEST)
Received: from [::1] (port=38144 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLU2q-0003Z5-B8; Tue, 30 Apr 2019 10:47:44 -0400
Received: from mail-lf1-f54.google.com ([209.85.167.54]:43582)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bares@gradiant.org>) id 1hLU2H-0003Qg-Ql
 for usrp-users@lists.ettus.com; Tue, 30 Apr 2019 10:47:39 -0400
Received: by mail-lf1-f54.google.com with SMTP id i68so10929867lfi.10
 for <usrp-users@lists.ettus.com>; Tue, 30 Apr 2019 07:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=7KTwCmKa9fKd16oOCaohxSivfHsHEF4qmayztyCZ23I=;
 b=ZDxo4+aervdhNU8Ovskl7fZOir6o7LqmYjtYUumDhMxDyJ0M4VsFfyRC8RylsCj6yY
 usq0zD4hwX+0k8St6/k/Bdca8i52oU8Ar1enbdvu0QU7lxHJphFAzmvWfae3tzxpdhda
 FmR2gBOChAIARagvTxlV3cMpcpobWwLTu9CHbFbUtUdoe6aucolyTjZ1kGCRGuT9B4l1
 kd38CNVe1KI8RY/+H2CVW9SNH0UJ9Huj60TWtI2BI93GfzgGAwdkZ+aV84dmGJ6GFJo3
 BWZ31VUQaEMrcMcGV9U95Jm/NxsP7EwHyg5eLfzWBWiZdEzPPmb6yi+e1GZwoS/gB23q
 9dmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=7KTwCmKa9fKd16oOCaohxSivfHsHEF4qmayztyCZ23I=;
 b=TWCQ5/7OM/uGn91rGGvHh7MkY1QckRuO/BtVhNEamGJKV4zTUWu1ZliDrwebl67OL3
 F8D0NlR0MkSFhteBmFuxPGYLXrppQuALQNAL2Xt0BoPsQo6jO0Qw+fJCWjcqaYt/C+IR
 /8Nnybi1lV3YHFuMfQ22Vtla1GHduw6loNECOXgJ/pGi37H8U/Xqxu3ySh3l3QLCJw+e
 fiwyLbTUdfDLncp9Db587YqXM+zdVIrFfG2WOoYiVz98kGa8ycH+VM/PLjn2jbnLYsbU
 LTxGQYICNhBoeZnt43++ZUHZ+svRWcZg7NlY4L/F5hL6+LeiS2gI0n+LHVaMnNCa35XT
 qHUg==
X-Gm-Message-State: APjAAAUPeqWVEcwEp+SdfDRAc0LojV57FooJIRbqZbaa3iSUTfieqYWn
 6FMiJzMdvRn2GoswcxBhM++xk3nqgFC4/FLU9V6r9OjITCdNxw==
X-Google-Smtp-Source: APXvYqwu5cAEhqtii1hMHxOYA2o8pbwzvBzC5+31NqgjXVG0w83Ush7M0skp/1N2NhN/uhsFuKT8BkXxzvVvlfiW0Y0=
X-Received: by 2002:ac2:43cf:: with SMTP id u15mr6199373lfl.67.1556635587986; 
 Tue, 30 Apr 2019 07:46:27 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 30 Apr 2019 16:45:51 +0200
Message-ID: <CAJcStAiAWqSWqsNB21CC7ZxjddTcR6xYGncKZh7sZpJbvnaN=A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] USB 3.0 PCI express card recommendations?
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
From: Brais Ares via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brais Ares <bares@gradiant.org>
Content-Type: multipart/mixed; boundary="===============6954032110559790310=="
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

--===============6954032110559790310==
Content-Type: multipart/alternative; boundary="0000000000004453b40587c0776b"

--0000000000004453b40587c0776b
Content-Type: text/plain; charset="UTF-8"

Hi,

I'd like to use a high sample rate with a B210 device but I'm limited by my
host computer, as it has only USB 2.0 interfaces.
The cheapest solution would be to install a USB 3.0 PCI express card, but I
found some old thread (2013) where an user experienced some problems (thread
link
<http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2013-October/035563.html>).
Some chipsets were recommended to him. Sadly, that link is broken.

So my questions are:

   - Is a USB 3.0 PCI express a viable solution for max sample rate?
   - Should I buy some specific PCI-e card or any card would work?

Regards,
Brais

--0000000000004453b40587c0776b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:trebuche=
t ms,sans-serif;color:#000000">Hi,</div><div class=3D"gmail_default" style=
=3D"font-family:trebuchet ms,sans-serif;color:#000000"><br></div><div class=
=3D"gmail_default" style=3D"font-family:trebuchet ms,sans-serif;color:#0000=
00">I&#39;d like to use a high sample rate with a B210 device but I&#39;m l=
imited by my host computer, as it has only USB 2.0 interfaces.</div><div cl=
ass=3D"gmail_default" style=3D"font-family:trebuchet ms,sans-serif;color:#0=
00000">The cheapest solution would be to install a USB 3.0 PCI express card=
, but I found some old thread (2013) where an user experienced some problem=
s (<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2=
013-October/035563.html">thread link</a>). Some chipsets were recommended t=
o him. Sadly, that link is broken.</div><div class=3D"gmail_default" style=
=3D"font-family:trebuchet ms,sans-serif;color:#000000"><br></div><div class=
=3D"gmail_default" style=3D"font-family:trebuchet ms,sans-serif;color:#0000=
00">So my questions are:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:trebuchet ms,sans-serif;color:#000000"><ul><li>Is a USB 3.0 PCI expres=
s a viable solution for max sample rate?</li><li>Should I buy some specific=
 PCI-e card or any card would work?</li></ul></div><div class=3D"gmail_defa=
ult" style=3D"font-family:trebuchet ms,sans-serif;color:#000000">Regards,<b=
r></div><div class=3D"gmail_default" style=3D"font-family:trebuchet ms,sans=
-serif;color:#000000">Brais</div></div>

--0000000000004453b40587c0776b--


--===============6954032110559790310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6954032110559790310==--

