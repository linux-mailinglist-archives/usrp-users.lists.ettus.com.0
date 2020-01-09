Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C0C1363FC
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2020 00:46:39 +0100 (CET)
Received: from [::1] (port=34402 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iphVc-000617-BS; Thu, 09 Jan 2020 18:46:36 -0500
Received: from mail-vs1-f49.google.com ([209.85.217.49]:46759)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <richard.bell4@gmail.com>)
 id 1iphVZ-0005xo-3Q
 for USRP-users@lists.ettus.com; Thu, 09 Jan 2020 18:46:33 -0500
Received: by mail-vs1-f49.google.com with SMTP id t12so144564vso.13
 for <USRP-users@lists.ettus.com>; Thu, 09 Jan 2020 15:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vbeVvQOEbdu1WSF4n60XULj3d08kL0agD3nGwde7inY=;
 b=nphucN5BGZus0iBEGgaD6hv9dFkj4Wfx6ZmAehi+JBH+rG34eiNDebrn6RecdF2VZ2
 veo5dRQzhbR7j7yXK0mEeUR+4YFqtW444MUagfDwOdpMbSrDsfGU+XLHdfnNKr2s2XsU
 FjARxUb/43fAZnF34MLwAPhyK7Kzn7UP01wWkSXDGfbzTz/V6+ygDEMP3/gHBYbaq3LK
 jaueZtDGNi1eVOS4+R7L9Vn0ftjLCsYbJh4QXcMWnRm327rYFrQxaQTxXo+8qiicOXuc
 Qi9lyMSTENXN8Bo8dHNQabipqIT7cpBajwQMpGcq3YvcYFZNjyrIzGy9XU4zwcJK2jy9
 MMtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vbeVvQOEbdu1WSF4n60XULj3d08kL0agD3nGwde7inY=;
 b=a1DDj0qcS8dWUWjNrfOEq/VHSrmHDxGgY63VWlxguqLrq+szuFfbsk4ZF42pofEmfn
 GHrpjIQX9bYEGQxRzEmQjMCFaSLZBo7ITWJsOwXC6f7fgYZpOYp49V0DxlOKgooObIXA
 ZbcjEV/7yY4Jp+tQi2EPZn9VPO/dDSSfBk75R4ISkHtTNpc4cnouE6eQwYyxibzLIQwZ
 yGacKLadZrqLmbzgezNqTQ7WwXjEOYpRjbV3YywS6VULeIp+5Jb6iY8BbqVirOQJ6Bpn
 KpRkVd7624Dk4g95JGhpMRve++c+eDVQU5XhLAwtlXHcatHqc6mfrCG9KgCwIwZJ16Zu
 8RaQ==
X-Gm-Message-State: APjAAAWfwpcDFteZ2TMhP60sxRoN44iXPAnIwrg1KCP9bjvZxsTpeRDY
 yubK7vUIsFwvYa5lThG/sGk5khv+ON5Pm2eoKS8=
X-Google-Smtp-Source: APXvYqyDxV/iQX/6lSwjt4CtgKCsqm7qcWkehEC+TKKmGRMBpLsnAdN6rz1Gunv0Yt3O7pMXNqWUZqrwEWQq/3x2yPE=
X-Received: by 2002:a67:fb14:: with SMTP id d20mr156205vsr.136.1578613552250; 
 Thu, 09 Jan 2020 15:45:52 -0800 (PST)
MIME-Version: 1.0
References: <CAMMoi3tS1W9Rhsoc22TCBGQb+4TWsOG8BATrb8vcY89Lv7+SPw@mail.gmail.com>
 <CAEXYVK6GvwjD-PPNOsu6SKkuyz7Nb=oUb72BqjZczBmPmzk=Zg@mail.gmail.com>
In-Reply-To: <CAEXYVK6GvwjD-PPNOsu6SKkuyz7Nb=oUb72BqjZczBmPmzk=Zg@mail.gmail.com>
Date: Thu, 9 Jan 2020 15:45:41 -0800
Message-ID: <CAMMoi3s108B0hraaaZYgwzpN6oXez729AnVdEh6G58--O_h6cA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
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
From: Richard Bell via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Richard Bell <richard.bell4@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7147372767377541062=="
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

--===============7147372767377541062==
Content-Type: multipart/alternative; boundary="00000000000005036d059bbd9cd1"

--00000000000005036d059bbd9cd1
Content-Type: text/plain; charset="UTF-8"

No I don't need to know phase information. I'm cross correlating the pairs
of receivers and the location of the peak gives me the TDOA. If the
hardware chains across different radios introduce different delays, that
would invalidate the TDOA measurement. So long as the delay is the same
through all the hardware chains, the TDOA estimate will be accurate. Can I
assume the hardware delay through X300 USRPs with the same FPGA image and
set to the same sampling frequency will be the same?

On Thu, Jan 9, 2020 at 12:51 PM Brian Padalino <bpadalino@gmail.com> wrote:

> On Thu, Jan 9, 2020 at 12:14 PM Richard Bell via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> I'm working on a TDOA based localization platform using 3 USRP X300's as
>> receivers. I have them synchronized with a 10 MHz ref and PPS signal
>> generated by an OctoClock. However, I'm having trouble getting reliable
>> localization performance through this system. My TDOA measurements are not
>> what I would expect for the geometry I'm using.
>>
>> If I have the USRPs flashed with the same FPGA image and I use the same
>> sample rate (i.e. 200e6/22 = 9.0909 MHz) across them all, is it possible
>> the hardware could still be introducing different delays through each
>> receiver?
>>
>
> Did you calibrate their phases using some type of calibration signal such
> that you know the relative phase offsets of each radio to each other?
>
> Do you need to not know this information?
>
> Brian
>

--00000000000005036d059bbd9cd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No I don&#39;t need to know phase information. I&#39;m cro=
ss correlating the pairs of receivers and the location of the peak gives me=
 the TDOA. If the hardware chains across different radios introduce differe=
nt delays, that would invalidate the TDOA measurement. So long as the delay=
 is the same through all the hardware chains, the TDOA estimate will be acc=
urate. Can I assume the hardware delay through X300 USRPs with the same FPG=
A image and set to the same sampling frequency will be the same?<br></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Jan 9, 2020 at 12:51 PM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gma=
il.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Thu, Jan 9,=
 2020 at 12:14 PM Richard Bell via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#3=
9;m working on a TDOA based localization platform using 3 USRP X300&#39;s a=
s receivers. I have them synchronized with a 10 MHz ref and PPS signal gene=
rated by an OctoClock. However, I&#39;m having trouble getting reliable loc=
alization performance through this system. My TDOA measurements are not wha=
t I would expect for the geometry I&#39;m using. <br></div><div><br></div><=
div>If I have the USRPs flashed with the same FPGA image and I use the same=
 sample rate (i.e. 200e6/22 =3D 9.0909 MHz) across them all, is it possible=
 the hardware could still be introducing different delays through each rece=
iver?</div></div></blockquote><div><br></div><div>Did you calibrate their p=
hases using some type of calibration signal such that you know the relative=
 phase offsets of each radio to each other?</div><div><br></div><div>Do you=
 need to not know this information?</div><div><br></div><div>Brian</div></d=
iv></div>
</blockquote></div>

--00000000000005036d059bbd9cd1--


--===============7147372767377541062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7147372767377541062==--

