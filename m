Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A315D136428
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2020 01:08:21 +0100 (CET)
Received: from [::1] (port=40320 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iphqc-0007VP-2k; Thu, 09 Jan 2020 19:08:18 -0500
Received: from mail-ot1-f46.google.com ([209.85.210.46]:46967)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1iphqY-0007R8-0a
 for USRP-users@lists.ettus.com; Thu, 09 Jan 2020 19:08:14 -0500
Received: by mail-ot1-f46.google.com with SMTP id r9so237700otp.13
 for <USRP-users@lists.ettus.com>; Thu, 09 Jan 2020 16:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wcRi9ozivmIxv0pMbGLZKvsaJB32Q8Cq5nMbbkvjUu0=;
 b=TKTqPj6uMZAjCjIq4GqX1UU2eKLRdDa03wD35uxKtFEhRx3PlBkcJRpiWjFwYgJAs8
 khDx/CPGLlG+SkrG/mHNTOj+oIxgbBCv03HpvHYlpdMevaixRJ5E49MaWdigeOe+W3ge
 AkQE0m9EV0TU3ph7pbZn2x1dU6C1jORA/R8L5tXKg22tEFd4F7xjpgCnWO3rwZmG9Fwj
 kQGCs8Cn8MCFirJ00EYiYng3hx74Ntu8s1LFzEZ/h4MkKQydmA2lNOR/Io72Q3jYoLH6
 uE5lA5vGZJkCsCQGuqvtK9YYMgpKFp/bXRrgfDGknyex3gU3okmkp7N0Jo0YpGW0E7/V
 Jp7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wcRi9ozivmIxv0pMbGLZKvsaJB32Q8Cq5nMbbkvjUu0=;
 b=LTWRtJLiudNx7fR7A+0sZWKKA/ySQW2t/AmGVABWEZAvgqkkOY7GNxcLiJFf6BEatr
 CL/pe/+WhHJLmlaPI6TkW3ySlMK2p0x9QC1jpjUV6GdgnX6SGlz/FPHD6BnV8alQHxSn
 sGE/QTgt9s7jLsBtX2xacdFK5v0/YwKJ0P4v3j1uXZBQ4rQyjhTOjaOdOjNqKrdbHPNI
 OZV/ZJH6T+Vb0RgywJQwBN8KswhHI+ZOnlG2D74jPpQRd60TFPQIsGUT4XL0Ephb9iHf
 7r8ytq8Cna7NGPb+okbgu2EMYyqSBafyEhsw/XpfJdT92H+I8SHzMYdGsZfs0lLCBKK5
 w7DQ==
X-Gm-Message-State: APjAAAXlHH6JXY2EmVK+V/IfrybB8h+zQoT8wBN1M0buGjIjTombYMxj
 CnW6asONkgSOL5PBLwd5V4nyPUwPrlkVufTeTA+n+Q==
X-Google-Smtp-Source: APXvYqyBVgsecg6NvgBiBu4rjGZPru/c48v+QJvgx8CkYn0ib1He+iKFRctJXR4pVxXiMArF2RZ8DZvZF3MGWeMAUIA=
X-Received: by 2002:a9d:7d09:: with SMTP id v9mr398614otn.338.1578614853158;
 Thu, 09 Jan 2020 16:07:33 -0800 (PST)
MIME-Version: 1.0
References: <CAMMoi3tS1W9Rhsoc22TCBGQb+4TWsOG8BATrb8vcY89Lv7+SPw@mail.gmail.com>
 <CAEXYVK6GvwjD-PPNOsu6SKkuyz7Nb=oUb72BqjZczBmPmzk=Zg@mail.gmail.com>
 <CAMMoi3s108B0hraaaZYgwzpN6oXez729AnVdEh6G58--O_h6cA@mail.gmail.com>
In-Reply-To: <CAMMoi3s108B0hraaaZYgwzpN6oXez729AnVdEh6G58--O_h6cA@mail.gmail.com>
Date: Thu, 9 Jan 2020 19:07:21 -0500
Message-ID: <CAEXYVK6z0juZ+a3X=GBDjkD124Aj39Vt_4GPURE1BzjhcuKudw@mail.gmail.com>
To: Richard Bell <richard.bell4@gmail.com>
Subject: Re: [USRP-users] Measuring TDOA for Localization
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1160511439424779032=="
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

--===============1160511439424779032==
Content-Type: multipart/alternative; boundary="0000000000008f4ba0059bbde9ea"

--0000000000008f4ba0059bbde9ea
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 9, 2020 at 6:45 PM Richard Bell <richard.bell4@gmail.com> wrote:

> No I don't need to know phase information. I'm cross correlating the pairs
> of receivers and the location of the peak gives me the TDOA. If the
> hardware chains across different radios introduce different delays, that
> would invalidate the TDOA measurement. So long as the delay is the same
> through all the hardware chains, the TDOA estimate will be accurate. Can I
> assume the hardware delay through X300 USRPs with the same FPGA image and
> set to the same sampling frequency will be the same?
>

I'd think the group delay should be pretty consistent - at least within
10's of nanoseconds of each other if the setup is identical.

What type of variation are you seeing when you perform your cross
correlations?  How much variation are you able to handle?

Brian

>

--0000000000008f4ba0059bbde9ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Jan 9, 2020 at 6:45 PM Richard Be=
ll &lt;<a href=3D"mailto:richard.bell4@gmail.com">richard.bell4@gmail.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">No I don&#39;t need to know phase=
 information. I&#39;m cross correlating the pairs of receivers and the loca=
tion of the peak gives me the TDOA. If the hardware chains across different=
 radios introduce different delays, that would invalidate the TDOA measurem=
ent. So long as the delay is the same through all the hardware chains, the =
TDOA estimate will be accurate. Can I assume the hardware delay through X30=
0 USRPs with the same FPGA image and set to the same sampling frequency wil=
l be the same?<br></div></blockquote><div><br></div><div>I&#39;d think the =
group delay should be pretty consistent - at least within 10&#39;s of nanos=
econds of each other if the setup is identical.</div><div><br></div><div>Wh=
at type of variation are you=C2=A0seeing when you perform your cross correl=
ations?=C2=A0 How much variation are you able to handle?</div><div><br></di=
v><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div cl=
ass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--0000000000008f4ba0059bbde9ea--


--===============1160511439424779032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1160511439424779032==--

