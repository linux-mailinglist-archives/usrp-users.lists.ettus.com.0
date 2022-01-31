Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCFE4A4B1F
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 16:58:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E190D384DA3
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 10:58:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="IRm4Giqv";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B21438496A
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 10:57:32 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id c19so13040589ybf.2
        for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 07:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l5q5dfnykFs+uFrR7rVMD1uHFNuvpbmiZEeGlHZoOMk=;
        b=IRm4GiqveJtNeJOmkhQ4WBC69f1S3mdF+FyGRs3vvW/aRnrSeLX+EhCTNllQD8l8Gl
         jpK3nptVouYW9jAOuFkVSCFVkFpz0LNhAicjQ6GW7y5Adi7M2RanaHz8YvhfmLBgyAxY
         lfs5ATVaoOMwgM84grzDcqYktIwN9/j+RPsJYfkh1ZU90LzqM4UokwITDL/UPZMzcJsa
         SX+wR96BmypVdpLUnKfvvSeMUmmnfp60J3hXzVCnyLb+Vpg/jMSg8lt9c8i5oN0oZFyZ
         1w5t+k4C/117eyOfgeV0fGO6ml7O+gy5rQ7c8V2VIev8onwmI6x1xrTIStDGT/Tw8rbg
         A0jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l5q5dfnykFs+uFrR7rVMD1uHFNuvpbmiZEeGlHZoOMk=;
        b=Mw2XlaS/3px4GL1jCn18iN2Y/tHFINPpOv0VcKs+Ipkuj0NoulT3XzXQWP+HNEIryt
         YRckwxkfmDeZXAzz69iZnf04+XfE+Gf8H9JjnMh9rLWywC1C3alYz8eteOc9cfHU27Xn
         /EbKUj7L3tmU1tllvCSO3ci5ZyY4hUFJXmU2g8vychcykDOysQyqg8f7dpuXap5Socr6
         2h+rSZmdZknfotohFRLi5ggdA/6LU5zUHPgt7Q2dzuTpDxBSJB2/SgPFShnQZKGqEy2h
         H4PKij2NxEFy6uTHp30Gn70fdwuhmbSFVRxRZL2NwncMU430WdFNqUSTTGCjlYm3HUa/
         osgw==
X-Gm-Message-State: AOAM533jp3n7Khob0M6JCcvv4U+LafzUo78RY0KP7Uo3rgbB6rdyaFrs
	bGLez0kRpPr6J4m3ArIdEjWkLFUJM/foixvY/7sfJG6qi+4=
X-Google-Smtp-Source: ABdhPJxHebNXA9HI2SDvapTjsPNe3jiTP8/umhTyT3OVWIcDce1yH9nW0Ox6SqYGRkFqFo5JBceIBL1TTulmT372lz0=
X-Received: by 2002:a25:7344:: with SMTP id o65mr30283842ybc.298.1643644651518;
 Mon, 31 Jan 2022 07:57:31 -0800 (PST)
MIME-Version: 1.0
References: <MT3w2R4mGa4GnILWNkKxWlZBX7vskeJ41RpKM3fRxg@lists.ettus.com> <b3acb048-3896-0f13-f089-fe17bac59479@gmail.com>
In-Reply-To: <b3acb048-3896-0f13-f089-fe17bac59479@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 31 Jan 2022 10:57:20 -0500
Message-ID: <CAB__hTQq-tO8C0kGRkk5RyiWEEuTd-OUg_t_VxmftS-+GANM1g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6VR4JGCHYXESCKWZ2E5PAEVMKE2W7SI6
X-Message-ID-Hash: 6VR4JGCHYXESCKWZ2E5PAEVMKE2W7SI6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6VR4JGCHYXESCKWZ2E5PAEVMKE2W7SI6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4274682556448200286=="

--===============4274682556448200286==
Content-Type: multipart/alternative; boundary="000000000000977c8805d6e2d77d"

--000000000000977c8805d6e2d77d
Content-Type: text/plain; charset="UTF-8"

In my experience, it is a significant challenge to get maximum rate Tx
streaming from host to operate without streaming errors. It is much more
challenging than maximum rate Rx Streaming. As a result, when I am using
maximum rates (that would require both 10Gbe links), I always use the Tx
"Replay" block for streaming.  I am fortunate that my use case allows a
repetitive signal.  So, if you need maximum bandwidth and your use case
allows it, I'd recommend using the Replay block to avoid all Tx
streaming over the link.  If your use case does not allow it, you might
want to try the DPDK interface which in my experience performs much better
but with a fairly large hurdle to getting it working.  And, in any case, if
your aggregate streaming will fit on a single 10Gbe link (~250MS/s), I
would avoid use of "second_addr". My experience is that for cases where you
don't need it, it is less reliable than a single link (but not sure why).

On Mon, Jan 31, 2022 at 8:35 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-31 01:40, seckinoncu8070@gmail.com wrote:
> >
> > So, when I want to use the two ports with full capacity, is there
> > always a complication like this?
> >
> > Could the problem be with the network card( x520-da2)?
> >
> >
>
> There shouldn't be, but in the interest of debugging, see how far you
> can get with two channels into a single interface.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000977c8805d6e2d77d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In my experience, it is a significant challenge to get max=
imum rate Tx streaming from host to operate without streaming errors. It is=
 much more challenging than maximum rate Rx Streaming. As a result, when I =
am using maximum rates (that would require both 10Gbe links), I always use =
the Tx &quot;Replay&quot; block for streaming.=C2=A0 I am fortunate that my=
 use case allows a repetitive signal.=C2=A0 So, if you need maximum bandwid=
th and your use case allows it, I&#39;d recommend using the Replay block to=
 avoid all Tx streaming=C2=A0over the link.=C2=A0 If your use case does not=
 allow it, you might want to try the DPDK interface which in my experience =
performs much better but with a fairly large hurdle to getting it working.=
=C2=A0 And, in any case, if your aggregate streaming will fit on a single 1=
0Gbe link (~250MS/s), I would avoid use of &quot;second_addr&quot;. My expe=
rience is that for cases where you don&#39;t need it, it is less reliable t=
han a single link (but not sure why).</div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 31, 2022 at 8:35 AM Marcus=
 D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">On 2022-01-31 01:40, <a href=3D"mailto:seckinoncu8070@gmail.com" targe=
t=3D"_blank">seckinoncu8070@gmail.com</a> wrote:<br>
&gt;<br>
&gt; So, when I want to use the two ports with full capacity, is there <br>
&gt; always a complication like this?<br>
&gt;<br>
&gt; Could the problem be with the network card( x520-da2)?<br>
&gt;<br>
&gt;<br>
<br>
There shouldn&#39;t be, but in the interest of debugging, see how far you <=
br>
can get with two channels into a single interface.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000977c8805d6e2d77d--

--===============4274682556448200286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4274682556448200286==--
