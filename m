Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD84222658
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jul 2020 17:00:12 +0200 (CEST)
Received: from [::1] (port=43732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jw5Ml-0005Od-9a; Thu, 16 Jul 2020 11:00:07 -0400
Received: from mail-ed1-f50.google.com ([209.85.208.50]:44357)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <pbasaras@gmail.com>) id 1jw5Mh-0005I0-2d
 for usrp-users@lists.ettus.com; Thu, 16 Jul 2020 11:00:03 -0400
Received: by mail-ed1-f50.google.com with SMTP id by13so4957192edb.11
 for <usrp-users@lists.ettus.com>; Thu, 16 Jul 2020 07:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/hBNsNo63XAb7E0DguqurkUCudFbzCfXHYqEmuO/dfo=;
 b=ciiaLyGnti4lIQKs92xnoYnpFQCCoiWdk4UMZ9ydgaJv9g6QVAM4X299k+k4Cm5bE0
 0M4NcqNCpZrH/aU2rk/x7ncJ7aUKrVonk2o/eaWouDriSJVmWstf4mpd7989tRtOEX2e
 X3yoqilzwQkBlmyEAU5vhO2U1YZA8OG4ri3fL05MP/cPOLDIcbQz0qGbl7xjEvvmOuym
 XsJvwVUGNoB4KuDrYNMWMEmbZN5E5ZMlUThKTe2T65fAFVjRAoSwVZEivct9YTxBUeJI
 md/C4ZG0aYSXOvbcifut9BePsbDS/ELmwi2aLTV76fPETbmoyB0w9V/er8RNcj2Tn9bK
 2x7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/hBNsNo63XAb7E0DguqurkUCudFbzCfXHYqEmuO/dfo=;
 b=KNrJpN6i6hHpeRvpYKe5/8fLLp8kzuOXhxOSJYSkqXhglhuCBI64aVXMccZP56LGqK
 h3Tv6wWdVSSGHo9+vhGjipkLfE1ff5E8wxl7Sx6T8DyMD4UOCKesriK/fKE77MRQGge4
 gmX5Q3rTBzwVbZwIijrzNGLn845OivbG/ZHkRg17KvF2RhS7gsEBQ2qg+BG4s3SOBqaq
 IK+vn8jH8CWHrup1QtUEUjmrNEUvhShQ3rZHcWIwOruiD6Rqw9HuoOYQ0BPvwmbAEfO2
 l8WVG3ulrfMQmC5McvVPvBTh0Spt7N+V+Y3GmzHpjNfe7EnkFODXphFdtZBARLBF/Ymc
 89rg==
X-Gm-Message-State: AOAM530sfZuYXL5unTc/mLBTxqPvvc6++N2OqvlgVHeUtaq0DDCLcWBP
 yq6EdJCDtgXAvViIpEgHBR8ZPdkxjDd5FIxsstE=
X-Google-Smtp-Source: ABdhPJzQ4nZcDMj4aa2jOA49mBXLM4jTqcDMLXkzjanFneQHVgEk3W0lMRP8RIuNJKpQzpSZpYufXh7JBkylRSRvm5I=
X-Received: by 2002:aa7:d90f:: with SMTP id a15mr4673751edr.86.1594911561938; 
 Thu, 16 Jul 2020 07:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAMVZM+-xgHc1dGUM9T2BncCPVcLuC7j1uPqVLQeFvPmhf3FE2A@mail.gmail.com>
 <5F0F0A47.3020100@gmail.com>
 <CAMVZM+-rUvuBzq_zEwq-72imHMuQ+XaMePDYUvmJq2B69GJPUQ@mail.gmail.com>
 <5F0F0DB4.2080708@gmail.com>
 <CAMVZM+8oBqh3gGQmkt_aEQK53BErAEXzXfdMgG_=3fxAs358ag@mail.gmail.com>
 <CAMVZM+-iQUfuC=pq+RvFEYgUqgWi1oMb7ZXrE8oKF+VO6RiOyQ@mail.gmail.com>
In-Reply-To: <CAMVZM+-iQUfuC=pq+RvFEYgUqgWi1oMb7ZXrE8oKF+VO6RiOyQ@mail.gmail.com>
Date: Thu, 16 Jul 2020 17:59:10 +0300
Message-ID: <CAMVZM+9iK7QnPQjT11Dpf-YdGqVJpgadgqNZMdnXZXDQPXfN4g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] error at updating the filesystem for usrp n310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Pavlos Basaras via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Pavlos Basaras <pbasaras@gmail.com>
Content-Type: multipart/mixed; boundary="===============5472286959404835561=="
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

--===============5472286959404835561==
Content-Type: multipart/alternative; boundary="00000000000018fa1005aa90498c"

--00000000000018fa1005aa90498c
Content-Type: text/plain; charset="UTF-8"

Hello again,

i updated the version of the host's uhd to  UHD_3.15.0.HEAD-0-gaea0e2de and
re-executed "sudo uhd_images_downloader -t mender -t n3xx --yes" .
It solved the problem.

One more thing is that after the update on the SD card file system, the uhd
version of the usrp also got automatically updated to the uhd version in
the host.
Its safe to assume that both the host and the USRP are fine with the same
uhd version, correct?

all the best,
Pavlos.



On Thu, Jul 16, 2020 at 8:57 AM Pavlos Basaras <pbasaras@gmail.com> wrote:

> Hello,
>
> in case it would help i am also attaching the dmesg output from the usrp.
>
> best,
> Pavlos.
>
>
> On Wed, Jul 15, 2020 at 5:14 PM Pavlos Basaras <pbasaras@gmail.com> wrote:
>
>> Hello,
>>
>> that would be great!
>>
>> cheers,
>> Pavlos.
>>
>> On Wed, Jul 15, 2020 at 5:07 PM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 07/15/2020 10:02 AM, Pavlos Basaras wrote:
>>> > Hello,
>>> >
>>> > thank you very much for your prompt reply.
>>> >
>>> > i copied the .mender file by using the "scp" command.
>>> > Yes, i am running the command on the USRP.
>>> >
>>> > I am not sure if this is a problem but --initially when i created the
>>> > .mender file, the host was running the UHD 3.14.0.0 and the USRP had
>>> > 3.14.1.0. This is when the problem appeared first.
>>> > Then i changed the uhd to 3.14.1.0 on the host to match exactly the
>>> > UHD on the usrp, but the error still persists (or course i deleted the
>>> > old file from the usrp).
>>> >
>>> > any ideas?
>>> >
>>> > best,
>>> > P.
>>> >
>>> I'll have to bug some R&D people and get back to you.
>>>
>>>
>>>

--00000000000018fa1005aa90498c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello again,</div><div><br></div><div>i updated the v=
ersion of the host&#39;s uhd to=C2=A0 UHD_3.15.0.HEAD-0-gaea0e2de and re-ex=
ecuted &quot;sudo uhd_images_downloader -t mender -t n3xx --yes&quot; .</di=
v><div>It solved the problem. <br></div><div><br></div><div>One more thing =
is that after the update on the SD card file system, the uhd version of the=
 usrp also got automatically updated to the uhd version in the host.</div><=
div>Its safe to assume that both the host and the USRP are fine with the sa=
me uhd version, correct?<br></div><div><br></div><div>all the best,</div><d=
iv>Pavlos.<br></div><div><br></div><div><br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 16, 2020 at 8=
:57 AM Pavlos Basaras &lt;<a href=3D"mailto:pbasaras@gmail.com">pbasaras@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>in case it wou=
ld help i am also attaching the dmesg output from the usrp.</div><div><br><=
/div><div>best,</div><div>Pavlos.<br></div><div><br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 15, 2=
020 at 5:14 PM Pavlos Basaras &lt;<a href=3D"mailto:pbasaras@gmail.com" tar=
get=3D"_blank">pbasaras@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br=
></div><div>that would be great!</div><div><br></div><div>cheers,</div><div=
>Pavlos.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Jul 15, 2020 at 5:07 PM Marcus D. Leech &lt;<a hr=
ef=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On 07/15/2020 10:02 AM, Pavlos Basaras wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; thank you very much for your prompt reply.<br>
&gt;<br>
&gt; i copied the .mender file by using the &quot;scp&quot; command.<br>
&gt; Yes, i am running the command on the USRP.<br>
&gt;<br>
&gt; I am not sure if this is a problem but --initially when i created the =
<br>
&gt; .mender file, the host was running the UHD 3.14.0.0 and the USRP had <=
br>
&gt; 3.14.1.0. This is when the problem appeared first.<br>
&gt; Then i changed the uhd to 3.14.1.0 on the host to match exactly the <b=
r>
&gt; UHD on the usrp, but the error still persists (or course i deleted the=
 <br>
&gt; old file from the usrp).<br>
&gt;<br>
&gt; any ideas?<br>
&gt;<br>
&gt; best,<br>
&gt; P.<br>
&gt;<br>
I&#39;ll have to bug some R&amp;D people and get back to you.<br>
<br>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000018fa1005aa90498c--


--===============5472286959404835561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5472286959404835561==--

