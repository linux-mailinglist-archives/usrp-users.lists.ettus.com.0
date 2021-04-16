Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0C43617E2
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 04:56:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9CC04383EEC
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 22:56:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kumunetworks.com header.i=@kumunetworks.com header.b="RpnK5v0j";
	dkim-atps=neutral
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 8CEFD38423E
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 22:55:41 -0400 (EDT)
Received: by mail-pf1-f174.google.com with SMTP id w8so13925321pfn.9
        for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 19:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kumunetworks.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GhIFsmWCJa2nqtZp3+cU2roWlzC9BHhbZkbWtk7+mrQ=;
        b=RpnK5v0j7J15b7pWH8wSTkb3QZOaKHrgSIrkQ51OMq/v7A+murRqLFoHF0TxUZg1rP
         YkoDXxsukN2zWt/7r1s5B3UsqYixO09LBipAKl6gVFgCodon9bTRxDmEWkeNFeREKc7/
         Ruc3S6DUk1eymAXFKe0dQ+A27CEt2MDqzZJCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GhIFsmWCJa2nqtZp3+cU2roWlzC9BHhbZkbWtk7+mrQ=;
        b=SHkPLhpBlu4KzJ8oNTZx6FMF0VIypMwvxsLaSoGAxY1I/u6CkZ/bvM11eoEVsI3kdS
         TCSufPJOtyHcKzZ2gQ/RcffJuHXwc28uetlMC2XC/OlVmwDeU7glt5rfXgdD7ieLmg0b
         2rupkmqBaQYEuax1mRcrtr72DxnGmRRMBsfGPzlNEPPR812Yv9f22neBzndNmYz8F/Ah
         QMB85cUCbvnusJ9PqfQwytYde/ckfFwDjqmTdto5Kyxsnrl+6gARajWq7+Y7bxyyBndr
         6l+CVHj4hTdxT0BYCbYWeFU5+iX6eoaKCnGhiWj0QkUveFQkfz6Lfb9Jgr/v+5xDWOk0
         0wIA==
X-Gm-Message-State: AOAM533dtj0jPTxXdDMAHivTdps5eulww5FM1kVAmFt3wbn/+UNMXEIv
	lwSLS02oDC9ywIiD05L2Z5xXor+2sF8FPW/oW2Pt8w==
X-Google-Smtp-Source: ABdhPJz05dwx90diTfh/gnVnwzgcn17nSYNGqAj2b61yHHDrB/dlTNdkOLyyQMXBVTd5hACDmNEMH6kin/mLwv7h9Ok=
X-Received: by 2002:aa7:818e:0:b029:215:2466:3994 with SMTP id
 g14-20020aa7818e0000b029021524663994mr6226160pfi.48.1618541740530; Thu, 15
 Apr 2021 19:55:40 -0700 (PDT)
MIME-Version: 1.0
References: <N3dGVCcyRUnh8dbxaTe4A6k2onkTMh6PfxNXbu3ys@lists.ettus.com>
In-Reply-To: <N3dGVCcyRUnh8dbxaTe4A6k2onkTMh6PfxNXbu3ys@lists.ettus.com>
From: Christian Hahn <christian@kumunetworks.com>
Date: Thu, 15 Apr 2021 19:55:29 -0700
Message-ID: <CAJrPtHmUMa7pwc+t4NuGmJwoiepYk9BeAPdWLBNWvm6OHNpwqQ@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Message-ID-Hash: 4Y2J4MEZ3SKET6OPFE5GKMPFZX372WVP
X-Message-ID-Hash: 4Y2J4MEZ3SKET6OPFE5GKMPFZX372WVP
X-MailFrom: christian@kumunetworks.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calling C++ UHD functions from Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4Y2J4MEZ3SKET6OPFE5GKMPFZX372WVP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0888290112922941931=="

--===============0888290112922941931==
Content-Type: multipart/alternative; boundary="0000000000007fbdca05c00e1d1c"

--0000000000007fbdca05c00e1d1c
Content-Type: text/plain; charset="UTF-8"

Hi Brendan,

What is your target sample rate and number of channels? How many
bits/sample?  What kind of host are you running this on?

Thanks,
-Christian

On Thu, Apr 15, 2021 at 7:30 PM <brendan.horsfield@vectalabs.com> wrote:

> I should clarify: The Python API that comes with the UHD driver is not an
> option here. I have tried this, and found that while it works well for
> receiving very short bursts of samples, it cannot compete with the C++ API
> at high sampling rates (not surprisingly).
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007fbdca05c00e1d1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Brendan,<div><br></div><div>What is your target sample =
rate and number of channels? How many bits/sample?=C2=A0 What kind of host =
are you running this on?</div><div><br></div><div>Thanks,</div><div>-Christ=
ian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Apr 15, 2021 at 7:30 PM &lt;<a href=3D"mailto:brendan.hors=
field@vectalabs.com">brendan.horsfield@vectalabs.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I should clarify:  T=
he Python API that comes with the UHD driver is not an option here.  I have=
 tried this, and found that while it works well for receiving very short bu=
rsts of samples, it cannot compete with the C++ API at high sampling rates =
(not surprisingly).  </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007fbdca05c00e1d1c--

--===============0888290112922941931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0888290112922941931==--
