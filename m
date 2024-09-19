Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACCC97CBF9
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 18:03:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C9383851A6
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 12:03:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726761834; bh=IImkKN1NT0vPWHEBAoVOj2fzjG3zxRCVF+ERg7X8Jp0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ey/GPxQJzOEeyoiCQvoE4++rBmq9HBwfnFff7juPeqtOxlQZsx0p/6sB8G1miu1vE
	 C5DLIcdufyBN791+234pfDo1GsygkC1/6+eW1zCzZlBB/qqV/yxlO/Br6JLgEZnPA2
	 bobpa60plK+cL8YkhDSkEpw9BxhkQffhjeDgHjMqCwH6DdLQPmJ/UcTNZRIxqaB6+c
	 oLKgegu2q3hRypYO0N4sr+LIEVYkWU470gDi6+MtB+hz0JdH23AFaRAqXmJX+/Oo3q
	 WbzuurumNg57+1xt9UyjcytuGTRLYECGXMMeJ0hMvbribqkdiLj9k6nHQI1ndU4bQf
	 wr5CzZl8ko6Ig==
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by mm2.emwd.com (Postfix) with ESMTPS id D8141384FED
	for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2024 12:03:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T1JcjdXs";
	dkim-atps=neutral
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2f761461150so14336271fa.0
        for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2024 09:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726761780; x=1727366580; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JofUKtRztw1MmgXgSyjaOYO2hE8jQV++OeY2pVbNs58=;
        b=T1JcjdXsbcNcrkNqYmzv5LCoAEAFDXd+jYUs+6Mk/JTX+wUc1+JSCXnFfG/qq0bWQu
         zt9JW8AfS7Zy8dabUA1rzhrgVnaJ2nnXbODkI/kcwvchfU/j4UB09jYYaw0U7c0d8u7b
         e71teIVahRDGNzKd+5976MUAGzWWJoausoChNZFfaDpV7R6aqRfGf5njQqE67XuLwp3y
         b3ScZu+rbFDNA1qOXigKJSmAvhzaQ2Wee2upHHs8jIQ77OcdptTfOaR9fk0XRsl9qf7y
         qgFTsQdhk0eSNn+aezclvF4pTx15MAh9uPuRbgF5J7QdD9NnQvwXy7iRnKqfOeN5SDyP
         u46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726761780; x=1727366580;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JofUKtRztw1MmgXgSyjaOYO2hE8jQV++OeY2pVbNs58=;
        b=wNkoyucuqGzTn8+zfnUANIu4bIh/YBdtjECDG18SIXN7nl4SK+extDESyf9xJf/ByB
         il+WrGf/dcGmDRbab7O4oZuDMXp67aWGaPbbb7IjMXZlkuzpCZGa3VDQsT4WA6CMMzA5
         tuXzuss0R/0Ml23mw7dRbj2wpWjdQcveGzoJr1Bd60clDH++/7ZSiyyBKA6qBdGcamRL
         xfu/5Y/bM88y/Yrbsn8yoEEpDoAZO0IdWRuk6IPjQ36RzlRqmk4bU2Oqd6gSdWEb2sQg
         MlIjbI3UH+UDCBp0qYGgcediGQG2Q7a/zcIoDrOiO70RHTfhKS/sFMyPsqeWZ6lBAL8j
         eCEw==
X-Gm-Message-State: AOJu0YwyFluKeWYJiURR4F2HUoPfZ9g17KT6UAAZqn9KBXGBaX1iC13s
	mIePAVOz4IoM5NOy9z+blKl9lPiAfEAP+g5NPPqIwW9FIlnkdKPL9URhiVKzInn4b+aVVCzLCr/
	/l6dLA5PHaB5u9jy63fEdB0OaY8Q=
X-Google-Smtp-Source: AGHT+IEd9d3BMzhwmZRM4Te+3RFkmp7KbmeQ3FT1n7qJK73jT/KNNhJ9jHSvKLejcVQ1ojO6P5sMKI5ogpZdqrriT64=
X-Received: by 2002:a05:651c:1504:b0:2f6:6198:1cfa with SMTP id
 38308e7fff4ca-2f7cb371b63mr587431fa.41.1726761779875; Thu, 19 Sep 2024
 09:02:59 -0700 (PDT)
MIME-Version: 1.0
References: <xwhpbLprT6T2uZ7kBawwfB9mz3MqKIlS9qXwZxXQ8@lists.ettus.com> <33b7ee5f-c79a-4047-b70e-f5dd7b499766@gmail.com>
In-Reply-To: <33b7ee5f-c79a-4047-b70e-f5dd7b499766@gmail.com>
From: cyberphox <cyberphox@gmail.com>
Date: Thu, 19 Sep 2024 17:02:48 +0100
Message-ID: <CAOkUcSs0VF4Fg1LR8Ukt=CBCOJdN-kN972FAsYCwFo6jV5wkEw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: NXG5JZMR7BO3QWRCHEEQTHRNS3TSK4Z6
X-Message-ID-Hash: NXG5JZMR7BO3QWRCHEEQTHRNS3TSK4Z6
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x300 reset script
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NXG5JZMR7BO3QWRCHEEQTHRNS3TSK4Z6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2105929533814765296=="

--===============2105929533814765296==
Content-Type: multipart/alternative; boundary="000000000000805d1406227b0e12"

--000000000000805d1406227b0e12
Content-Type: text/plain; charset="UTF-8"

Thank you and I look forward to hearing back from you & your colleagues.

On Thu, 19 Sept 2024 at 15:38, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 19/09/2024 09:44, cyberphox@gmail.com wrote:
> >
> > Hi all,
> >
> > I am using this the x300_reset.py script to reset the FPGA and would
> > like to know a bit more about what is it resetting etc.
> > (
> https://github.com/EttusResearch/uhd/blob/UHD-4.0/host/utils/x300_reset.py
> )
> >
> > Power off and on does not seem to get as clean result as when I issue
> > this reset.
> >
> > thanks,
> >
> > Marino
> >
> >
> There's not a lot of info on this utility, and it isn't officially
> supported, although we've recommended its use in the past.
>
> Most of the R&D crew at Ettus/NI/Emerson are at the Gnu Radio conference
> this week, but I've reached out to someone
>    in our support org who might know.
>
>
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000805d1406227b0e12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you and I look forward to hearing back from you &amp=
; your colleagues.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, 19 Sept 2024 at 15:38, Marcus D. Leech &lt;=
<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On 19/09/2024 09:44, <a href=3D"mailto:cyberphox@gmail.com" targ=
et=3D"_blank">cyberphox@gmail.com</a> wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I am using this the x300_reset.py script to reset the FPGA and would <=
br>
&gt; like to know a bit more about what is it resetting etc. <br>
&gt; (<a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-4.0/host/uti=
ls/x300_reset.py" rel=3D"noreferrer" target=3D"_blank">https://github.com/E=
ttusResearch/uhd/blob/UHD-4.0/host/utils/x300_reset.py</a>)<br>
&gt;<br>
&gt; Power off and on does not seem to get as clean result as when I issue =
<br>
&gt; this reset.<br>
&gt;<br>
&gt; thanks,<br>
&gt;<br>
&gt; Marino<br>
&gt;<br>
&gt;<br>
There&#39;s not a lot of info on this utility, and it isn&#39;t officially =
<br>
supported, although we&#39;ve recommended its use in the past.<br>
<br>
Most of the R&amp;D crew at Ettus/NI/Emerson are at the Gnu Radio conferenc=
e <br>
this week, but I&#39;ve reached out to someone<br>
=C2=A0=C2=A0 in our support org who might know.<br>
<br>
<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000805d1406227b0e12--

--===============2105929533814765296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2105929533814765296==--
