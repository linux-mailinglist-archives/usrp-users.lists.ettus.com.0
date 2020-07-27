Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1212522EF8A
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jul 2020 16:17:19 +0200 (CEST)
Received: from [::1] (port=45288 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k03wI-0008S0-OP; Mon, 27 Jul 2020 10:17:14 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:47076)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1k03wE-0008NO-IK
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 10:17:10 -0400
Received: by mail-qt1-f182.google.com with SMTP id o22so12028883qtt.13
 for <usrp-users@lists.ettus.com>; Mon, 27 Jul 2020 07:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rsFui5ygQDayzomq6UfJIj75JRTzmgXX570mM0zoTN8=;
 b=bk1ZWzhiKHKIdgDc7TRc7S024rS+oluxzC1gcFz1/C1XmvQeydYrvHj8L5gf4MQ09F
 GQxd8RCicywV8bFB4Z4cmmytluPXX2ICBufdft3Qc1nlZxvbLvhbJpUxJzi0ewF1ARag
 8RFMp6WZAwtvADPSlU6Puoe+ghWfciYzkjTeGxPXEZIeU3JA/C53c0h+1cKJ9gxsINq8
 PulmipPEkN3DXHFX6IHps6zRMwY/mHOuaIOVDcFFQeiWpqVmFfYFGNEiKUpDAh8laU+Q
 yLsfuLxq85fl4jWNCJQk4TQpXG4xhesLC0Ghfo+2tjVoa27gSZpWOcalLADz/Zl30XHd
 HFbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rsFui5ygQDayzomq6UfJIj75JRTzmgXX570mM0zoTN8=;
 b=LaURiQjIWnL/NOEOtNfaAugEhu18VcXoJlAnyRlFZTMCj6GkiEw5NPhXFPkF71XgcE
 05Hp4RDWV3JAu3slEksHvHR1Okl7JuY2fs8aarSymsesHdSuLOFD1tEuhpamCLsNAEYj
 HULjeSh3zkOV6oOTJnOOT7Cn5uOhia313foUPMlM5sWc8EFXwPlnaTN4LCd3gWIzTt8+
 VhvfUj4UNdjqp3wOBeyjtZtu2nmbNf9dGiLqM0S0B9WPMMnSmUgXnZjH7d+BJa7IdjlR
 rjqYVncaak8OcXuwArFIIDQy61bFupaj5CffoptUd9DEVeqtKBlUTJdaicWmINwlOWaG
 gmpA==
X-Gm-Message-State: AOAM531ebQZqUrttuHc19z5+ag1NWOzLgllfpXZVEmfj08X4y/6Slb3Z
 jzqT3GsyDe8W7RiYMB+ULKyyqxaWBiSus0/gGOxx5A==
X-Google-Smtp-Source: ABdhPJyL/jWrKBLWSnjtwCKOpxkUZNhEPdaWJ1yEAr4a6xNiZDQtzfS6aFneneRnAQwlGvkTtq9XhtGaiTmfbMQY4P0=
X-Received: by 2002:ac8:189c:: with SMTP id s28mr21073394qtj.97.1595859389823; 
 Mon, 27 Jul 2020 07:16:29 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2Zyvz7XGRkKWy2tqeTqYdFuhU2DQV5QdjekCZi=4Av0ctuQ@mail.gmail.com>
 <5F1DCB58.7090804@gmail.com>
 <CA+w2Zytm2=5ZRrB-BaY91fax-9xpK8fpkVpB+ep4mzvZ3tH-oA@mail.gmail.com>
 <5F1DD036.5030509@gmail.com>
 <CA+w2ZythQQvQG3Zm6+bv8c+pWV42XFbtdUGw=vOZKnP0_qZmZg@mail.gmail.com>
 <5F1DD3DA.9070300@gmail.com>
In-Reply-To: <5F1DD3DA.9070300@gmail.com>
Date: Mon, 27 Jul 2020 16:16:18 +0200
Message-ID: <CA+w2Zys=DK=APYxi7iMZDwji50yFqCFoV-Rogjmr_h24x6quDg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] AD936x disable DC offset removal
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
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============7141598825390007323=="
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

--===============7141598825390007323==
Content-Type: multipart/alternative; boundary="0000000000000acd6005ab6cf82a"

--0000000000000acd6005ab6cf82a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That works fine, but I had to change the uhd version to the last one
(3.15). Just for information,That does not work on 3.11.

Many thanks

David

Le dim. 26 juil. 2020 =C3=A0 21:04, Marcus D. Leech <patchvonbraun@gmail.co=
m> a
=C3=A9crit :

> On 07/26/2020 02:59 PM, David Carsenat wrote:
> > I have tried that, but I see 2 issues (but perhaps I'm wrong) :
> > - I need 25 Mhz of BW so if I want to push the LO outside, I need to
> > have a sample rate of 50 MHz --> difficult to have Tx / Rx loopback.
> > - I have tried to set the master clock rate at 60 MHz, the DDC offset
> > at 25 MHz, and a sample rate at 25 MHz. I thought that it could work
> > but I have a cutoff frequency at 12.5 MHz ...
> >
> > David
> >
> Try setting master-clock at 50MHz, and then set the analog bandwidth to
> 50MHz.  Then use the offset tuning.
>
>
>

--0000000000000acd6005ab6cf82a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>That works fine, but I had to change the uhd ver=
sion to the last one (3.15). Just for information,That does not work on 3.1=
1.<br><br></div>Many thanks<br><br></div>David<br></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0dim. 26 juil. 202=
0 =C3=A0=C2=A021:04, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com">patchvonbraun@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">On 07/26/2020 02:59 PM, David =
Carsenat wrote:<br>
&gt; I have tried that, but I see 2 issues (but perhaps I&#39;m wrong) :<br=
>
&gt; - I need 25 Mhz of BW so if I want to push the LO outside, I need to <=
br>
&gt; have a sample rate of 50 MHz --&gt; difficult to have Tx / Rx loopback=
.<br>
&gt; - I have tried to set the master clock rate at 60 MHz, the DDC offset =
<br>
&gt; at 25 MHz, and a sample rate at 25 MHz. I thought that it could work <=
br>
&gt; but I have a cutoff frequency at 12.5 MHz ...<br>
&gt;<br>
&gt; David<br>
&gt;<br>
Try setting master-clock at 50MHz, and then set the analog bandwidth to <br=
>
50MHz.=C2=A0 Then use the offset tuning.<br>
<br>
<br>
</blockquote></div>

--0000000000000acd6005ab6cf82a--


--===============7141598825390007323==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7141598825390007323==--

