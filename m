Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E51311DD28
	for <lists+usrp-users@lfdr.de>; Fri, 13 Dec 2019 05:33:05 +0100 (CET)
Received: from [::1] (port=37414 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ifcdT-0004sk-Le; Thu, 12 Dec 2019 23:33:03 -0500
Received: from mail-ot1-f46.google.com ([209.85.210.46]:40574)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ifcdP-0004pR-Ul
 for usrp-users@lists.ettus.com; Thu, 12 Dec 2019 23:32:59 -0500
Received: by mail-ot1-f46.google.com with SMTP id i15so4713371oto.7
 for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2019 20:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZapMndZeX9s1jl8zQ7lyuu0yYyCBWjRBnzL+gVFbxyQ=;
 b=K/fNPQUHMaIU6cOMvRHZupvml0gzbY6sYE0WL879ioIIdLsXVBfAcXl+2pyvMCugZa
 0bm2GjtO1ZqofLI6yQBNKm866j0JJY0zYEq6QfqVP+OeN1gCLQ+pbflBn9XNIXJvcaYS
 ks/+GLs4fPgPT0cHxFHMkZoGNC4bFH9e8RHjRa/ONYAyK4ohxQE+uPM22Mcc/SoD2O8w
 rbYYC9J3nH36KtbDuHNMP9Z2yiWo0lMYWDdKYGxMjaxzQ+U+jFSWNSP3T2KwaVtBE+Qu
 RcJdakNk5p4vcwQY0CVRese1DMiftGw7JPtKu6UTF9PpHy9eOZ9olzudV+kzj7O1cKN9
 OuEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZapMndZeX9s1jl8zQ7lyuu0yYyCBWjRBnzL+gVFbxyQ=;
 b=LFjfhnuRTEMVeePwpR/q17H3hRJ8endgbRWVMeDk1MWuGV+nraobRIgfLWAWbEGkCc
 vUdw3BX8ixZbz4cLoOvRrGPTSC9RfPI0TzfHCbKBTssbhFJsdQk1pqjbjBoDoYAKYV5V
 qIgvRNDsWoh0fdr2dfn7trBgGGZ5e0laSvlc3Cd7mfp5/h+IBDeFjwYahzCTJ5XDN2AE
 6tnOtQlFc0ZpJlH2UTb2lrUWadQl+4p0aieivLQFcaGJJmLcvtq6BzAEpQDp4M3Qfv2V
 r3PX+mnZ+84Q2Erzj5vZejAnDM/ABvuMvoys49NrMsDFLJXPHX4R4EU0IyQlBZ6OmPjo
 y+QQ==
X-Gm-Message-State: APjAAAVaNqsx2i0QO+0k8gH3V1VdIHnKqObBIgSv8jRiDEIBwiE5V8LE
 M/pk33SGdrBADZV+0s1/7VabT7OuahPb69fcwO6aQQk2
X-Google-Smtp-Source: APXvYqwIbkfuJQ2/UbukwO2m4bMm/CIvCkzQ6mUtv6tgu38zjB67+X6l+jSCleIWX00i9IStcOIlZaBhHnzBT8Z755E=
X-Received: by 2002:a05:6830:1cf:: with SMTP id
 r15mr12975190ota.231.1576211539172; 
 Thu, 12 Dec 2019 20:32:19 -0800 (PST)
MIME-Version: 1.0
References: <CAB3EzyLimQqAM+L9vH3YNvWpRPUVDDpjDRBemh-NF0j+MuB1sg@mail.gmail.com>
In-Reply-To: <CAB3EzyLimQqAM+L9vH3YNvWpRPUVDDpjDRBemh-NF0j+MuB1sg@mail.gmail.com>
Date: Thu, 12 Dec 2019 20:33:11 -0800
Message-ID: <CAL263iyaCA4YWyBkPCHxMgG2u07UGhP=m1Rd3EtUtQ7fNJDi+A@mail.gmail.com>
To: Padorin Kurpinsky <padorin.kurpinsky@gmail.com>
Subject: Re: [USRP-users] Does USRP B210 support 2x2 30.72Mhz sampling rate?
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6420805088307156436=="
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

--===============6420805088307156436==
Content-Type: multipart/alternative; boundary="000000000000e2333005998e58ef"

--000000000000e2333005998e58ef
Content-Type: text/plain; charset="UTF-8"

Hi Padorin,

Yes the B210 supports 2x2 @ 30.72e6, but is dependent upon your host system
and USB controllers.

You can try using sc12 OTW format which may help:

./benchmark_rate --rx_otw sc12 --tx_otw sc12 ......

Also ensure you've set your CPU governor to performance, and enabled thread
prioirty scheduling as detailed here
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

Regards,
Nate Temple

On Thu, Dec 12, 2019 at 7:45 PM Padorin Kurpinsky via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> The USRP B210 spec [1] says it supports  30.72 MHz of instantaneous
> bandwidth. However, If I run benchmark_rate, i.e., sudo ./benchmark_rate
> --rx_rate 30.72e6 --tx_rate 30.72e6 --channels 0,1. Then, it shows a lot of
> U and O. Is this because my host PC is not powerful enough? I'm using
> i7-8750H. Thank you.
>
> [1]
> https://www.ettus.com/wp-content/uploads/2019/01/b200-b210_spec_sheet.pdf
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e2333005998e58ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Padorin,<br><br>Yes the B210 supports 2x2 @ 30.72e6,=
 but is dependent upon your host system and USB controllers. <br><br>You ca=
n try using sc12 OTW format which may help:<br><br>./benchmark_rate --rx_ot=
w sc12 --tx_otw sc12 ......<br><br>Also ensure you&#39;ve set your CPU gove=
rnor to performance, and enabled thread prioirty scheduling as detailed her=
e <a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tri=
cks">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a><=
br><br>Regards,<br>Nate Temple<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 12, 2019 at 7:45 PM Pad=
orin Kurpinsky via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><di=
v>The USRP B210 spec [1] says it supports=C2=A0 30.72 MHz of instantaneous =
bandwidth. However, If I run benchmark_rate, i.e., sudo ./benchmark_rate --=
rx_rate 30.72e6 --tx_rate 30.72e6 --channels 0,1. Then, it shows a lot of U=
 and O. Is this because my host PC is not powerful enough? I&#39;m using i7=
-8750H. Thank you.</div><div><br></div><div>[1]=C2=A0<a href=3D"https://www=
.ettus.com/wp-content/uploads/2019/01/b200-b210_spec_sheet.pdf" target=3D"_=
blank">https://www.ettus.com/wp-content/uploads/2019/01/b200-b210_spec_shee=
t.pdf</a></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e2333005998e58ef--


--===============6420805088307156436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6420805088307156436==--

