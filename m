Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B86AA992629
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 09:39:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4253C38537B
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 03:39:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728286796; bh=L+u3iKax469AVwDBbiU2UpG7nDx8hSD1bRyBUxM6Uhc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yF2RLePs4dj4pdTpoAvu7GqCbgHMHsBEy60JXBvstFIO2Bf2aPlyD8jFws91vYlWx
	 lzNCPg9wHmU1+7XF0V+sjUCcfpZtTflVnDGBkqPImI9ihGg7w9IzqKgY1LrQbpR27e
	 rWi67yTTRz6PnqmglPENFTQ1Nn9tG00AXSbUTfJ1QGw0Nr1RE+OxC+UXmrpAPcKzXN
	 BPV+zqF/aK5UDOnqR3mE6YuKCqrEuI8dKp1YdpJ8lnXKa4RoVMTPjp+4zFNIzADutc
	 +UxmdYl3UhOO9JIEfvkazJm+TOL83Rn/pskCuieryh6Z/akCzXkoDNlGwRa75inkCv
	 XdxGriUkExtRg==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 49ABF385255
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 03:39:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2sw7qjDN";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c5bca6603aso5234067a12.1
        for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2024 00:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728286769; x=1728891569; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cIHf7VlpTOkFH9dulJe3eInHIg4BPC5uxtQwmFcsjDM=;
        b=2sw7qjDNxMnzhT5DwSgUExvYnKiu35VB9d5wO0dZrQDKmMtt3vHsr0WfXO169us+Mu
         X3as1nRiz/r1484pGkgoTCbY9ZiKoRQ0NRYpj51mNlhPw0np7tbh6/cvPxIWOxWpMDrN
         PRw1TJUsC7ckDDW4G5N5KV7WMdHOoujvrYOYjQWpGEHtbyJxIfdeUmNJiOV9dcpAHkaD
         IA9TBxAqb6+vRiwnRz8l0ItrjWqJVqjU4aOTo2TRnj3BUcDqX+bvRKXp25hB9DqRtrg4
         PcWcXeuMuaqIFiNeCbEWfFsI4XsrP+7dpdp+EeES5PiTIP/Cjb1orqB8uL5MmDn2Ui6b
         yDGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728286769; x=1728891569;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cIHf7VlpTOkFH9dulJe3eInHIg4BPC5uxtQwmFcsjDM=;
        b=a65gef/dNUwVX1FQSt6dNDM+yXM8y2TpWKHAW9csMPohgvK+PJOiJemdJsQYK7sv9c
         G5ZW8OTboi6B7hHnV1lzrDprAWw8IPxHduZPDIys+zuLfwJmYOXpJoMngnbqmSPTLjws
         etZy1RvDy9i2DNmLpKC4ilD/kktMcnJxOyc9HymHOu8zhcDwZ5nKtmEcfy6oC2n4PGrz
         UlvHmJfMruJxn/nt/cFoAPC54eYoXVvkSYtSSd+vr+xFp1B3GtNE+aAqoGGgNfX+KYhB
         ZiZsUOpGgx2BnIwkySegdsiXxcb6lOiRA3YGICxUobmOCo5rR+esfSqScPdDVyShsGci
         OO5w==
X-Gm-Message-State: AOJu0YzN9m3+mBQIpt+v1XXbTsZv639JbZtsRuQHIpGNNTV5UqcQoQYQ
	3wrLOU14/+2HX4gXLVlQ1dX23zZ0uF/8l07O6kXss889rGE8m9Y7WK6zCsY59SVivI4YqJniyQs
	qm6Z4BrFEP6/pNqOcQr1mmwlj2le3zS66AhP7HktK
X-Google-Smtp-Source: AGHT+IF0SEuV1XcQ610J7BvIIQDrHztdB5C4tEWfIrYJ0AtwdyF/hcbKvyrwR/vNaG2/4I3S3naRnr4b065ERPMNKNo=
X-Received: by 2002:a05:6402:40cf:b0:5c5:c059:63c6 with SMTP id
 4fb4d7f45d1cf-5c8d2dfb647mr9188479a12.2.1728286768964; Mon, 07 Oct 2024
 00:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <Q8Zi4kYkuUCdqDwPBEJVCYuXvohIjLfcRdP4nn2w@lists.ettus.com> <91f06c25-bbb8-46d8-93c4-6f7f5bbc2f44@gmail.com>
In-Reply-To: <91f06c25-bbb8-46d8-93c4-6f7f5bbc2f44@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 7 Oct 2024 09:39:16 +0200
Message-ID: <CAFOi1A5ycfN22Hv2QXFYuC5GvU=yLUb+p24dtXS8p43iXUE5fQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: OBI5QBIBDBVI4FIUAPEYUCARMEE6OMN7
X-Message-ID-Hash: OBI5QBIBDBVI4FIUAPEYUCARMEE6OMN7
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using 10GbE to stream receiver data to remote FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OBI5QBIBDBVI4FIUAPEYUCARMEE6OMN7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6864640270051236875=="

--===============6864640270051236875==
Content-Type: multipart/alternative; boundary="000000000000ef3ede0623de1e81"

--000000000000ef3ede0623de1e81
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Steve,

the manual page that Marcus linked to is the right place to look. There's
also the example "remote_rx.py" that shows how to do this with a MultiUSRP
API.

Maybe this recipe helps you:
1. Write your RFNoC application as if you were streaming to the UHD host
(i.e., a standard RFNoC RX streaming application)
2. Then, modify the stream args when generating your streamer object to
include dest_addr, dest_port, and whatever else you need.

--M


On Sat, Oct 5, 2024 at 10:17=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 05/10/2024 15:54, steve.wakelam@roke.co.uk wrote:
> >
> > Thanks, I am struggling to see how this would connect to the RFNOC
> > block. Are there any examples as to how the RFNOC block is architected
> > to allow a remote streamer?
> >
> > Thanks
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> Assuming your "stuff" terminates in an RX streamer block, I think this
> sets it up:
>
> https://files.ettus.com/manual/page_stream.html#stream_remote
>
> But I don't know about architectures that might side-step the streaming
> blocks in RFNoC.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ef3ede0623de1e81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Steve,</div><div><br></div><div>the manual page t=
hat Marcus linked to is the right place to look. There&#39;s also the examp=
le &quot;remote_rx.py&quot; that shows how to do this with a MultiUSRP API.=
</div><div><br></div><div>Maybe this recipe helps you:</div><div>1. Write y=
our RFNoC application as if you were streaming to the UHD host (i.e., a sta=
ndard RFNoC RX streaming application)</div><div>2. Then, modify the stream =
args when generating your streamer object to include dest_addr, dest_port, =
and whatever else you need.</div><div><br></div><div>--M<br></div><div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Sat, Oct 5, 2024 at 10:17=E2=80=AFPM Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 05/10/2024 15=
:54, <a href=3D"mailto:steve.wakelam@roke.co.uk" target=3D"_blank">steve.wa=
kelam@roke.co.uk</a> wrote:<br>
&gt;<br>
&gt; Thanks, I am struggling to see how this would connect to the RFNOC <br=
>
&gt; block. Are there any examples as to how the RFNOC block is architected=
 <br>
&gt; to allow a remote streamer?<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
Assuming your &quot;stuff&quot; terminates in an RX streamer block, I think=
 this <br>
sets it up:<br>
<br>
<a href=3D"https://files.ettus.com/manual/page_stream.html#stream_remote" r=
el=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual/page_str=
eam.html#stream_remote</a><br>
<br>
But I don&#39;t know about architectures that might side-step the streaming=
 <br>
blocks in RFNoC.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000ef3ede0623de1e81--

--===============6864640270051236875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6864640270051236875==--
