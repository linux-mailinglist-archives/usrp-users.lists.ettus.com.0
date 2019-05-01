Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B50A1083B
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2019 15:20:04 +0200 (CEST)
Received: from [::1] (port=35948 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLp9V-0000HL-4a; Wed, 01 May 2019 09:20:01 -0400
Received: from mail-pf1-f177.google.com ([209.85.210.177]:35035)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <mike.piscopo@gmail.com>)
 id 1hLp8x-000096-2N
 for usrp-users@lists.ettus.com; Wed, 01 May 2019 09:19:57 -0400
Received: by mail-pf1-f177.google.com with SMTP id t21so8610477pfh.2
 for <usrp-users@lists.ettus.com>; Wed, 01 May 2019 06:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nejNgh/LpxGNjicdLz6FcPqGgOFCMqUVfitaXxXeLtg=;
 b=F/vgCK8P1/Uqz6yBvEltqLBmyDyPWK9fQJ4d9yOZPPBrc9GcvTwAdCilcLVWmIiJQE
 h710fd5FBdXrqg6q0sXZ9o9+kYjCHo+JTShi71kw+Ex18wuDZbCC7yqQluTtNIKaIJmD
 u68V1SWcimgEQ9otjvfjsQsdgvCAreQtT+Cvux2LsJSPkZ1HWxRQnBXellCiGsgcB4y8
 cwIN5qDJRdRpWeaNqYZUoXVo+WhPrSLmAz3kXqZSrrfYdfAFQiFgnrIgJx/ce/9R21mJ
 dw0fCZxwoTFSftg9Tp3J646Ylei8ouvOBiphm5w2Qy20kgcSQMhphWWQZalNbzIY7zos
 PO6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nejNgh/LpxGNjicdLz6FcPqGgOFCMqUVfitaXxXeLtg=;
 b=fFvzII3QHkvaG/VHE/YKBZfz0p9Q1KJdljYf54YXMBP8jmbfkHCjTGv9n7HZiNBLgl
 fltpVAQpdELf6YGTZ3tEHHKfAEqZLik/gtLQp+AZJMjP9iTC8mc6xAF+BVTbLLHWLXQ7
 6N6mUby7tZ01YfgZOqBBTXjBaW1s3kIxLGyA8wHyjR9XhJdJIH6+3Tg+JaOy+vubi9kF
 j5M6xPd9GP5ug2WrCvQOrN9aMFiuCt6GeSHLNXASjoUrM3+VxmupN8cz3gEqva7orTxB
 XX2cLH1V/NoJh/jdylErg/Q9MMZjZaJWwpAog7TY2hl9dQgDbhzt+ep6r+MsUmYTqZzQ
 4GTA==
X-Gm-Message-State: APjAAAV8kSNPQk3hpoA41wmwfw9t7xmGGG5UIlAO64+pLi4qqM7DMpr4
 WhhgDtjEaz9PpKhHIYusIGMfzfPZ9b2XacbURwA=
X-Google-Smtp-Source: APXvYqyhqrHtRjyTlV6i31N2Zw3PWulmGQpVYkWY8NCMX0VLz4GFCSNEFseZuw7hAZfsICkZPxeJeQ9AFKiqNZjlG9Q=
X-Received: by 2002:a62:6f02:: with SMTP id k2mr80582432pfc.136.1556716725371; 
 Wed, 01 May 2019 06:18:45 -0700 (PDT)
MIME-Version: 1.0
References: <CALLKLAPDtvLxHkVwea_c0S9oX3xFkOYwfpbhvS9HTxK+LiEkhg@mail.gmail.com>
 <5CC795B9.4050401@gmail.com>
In-Reply-To: <5CC795B9.4050401@gmail.com>
Date: Wed, 1 May 2019 09:18:33 -0400
Message-ID: <CAAY_VvEZR_a9bqOoq4Hk4Uo7ynEJ8Z06G8iKR0Se_qjOE8CK2A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] How to periodically write files using USRP and
 GNUradio
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
From: GhostOp14 via USRP-users <usrp-users@lists.ettus.com>
Reply-To: GhostOp14 <ghostop14@gmail.com>
Cc: Usrp Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5206059945796253941=="
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

--===============5206059945796253941==
Content-Type: multipart/alternative; boundary="0000000000006e8b430587d35bb9"

--0000000000006e8b430587d35bb9
Content-Type: text/plain; charset="UTF-8"

Morning everyone, not sure my note yesterday hit the list correctly so I'm
trying again.

Mark: I have a solution for you.  I added a new block yesterday to
gr-filerepeater (pybombs or github).  There's now a state timer block
that'll generate a message based on block-specified timing.  Trigger time,
cycle time, etc.  gr-filerepeater also has a new file sink block I've added
in the past couple of weeks specifically to address the same kind of
problem.  You can feed the timer msg out to the new sink msg in.  The new
block will then key off the state (1/0) in the msg metadata and start/stop
writing to a file.  You can specify a directory and a base file name, then
every time a new file write is started it'll append a timestamp.  Should
exactly match up to what you're trying to accomplish.  I'll post on the
gnuradio list as well since they're gnuradio blocks.



On Mon, Apr 29, 2019 at 8:24 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 04/29/2019 08:08 PM, Mark Wagner via USRP-users wrote:
> > Hey all,
> >
> > I'd like to know how to write short files of streamed USRP data
> > periodically using GNUradio. For instance, I'd like the USRP to
> > automatically record 5 seconds of data every 10 minutes. It does not
> > matter to me whether the USRP is constantly on and most of the data is
> > being discarded, or if the USRP wakes up every 10 minutes to record
> > the data before sleeping. Whichever is easiest to achieve is fine by
> > me. Does anyone have experience doing this kind of thing?
> >
> > -Mark
> >
> >
> >
> > --
> > Mark Wagner
> > University of California San Diego
> > Electrical and Computer Engineering
> >
> >
> If you're using Gnu Radio, you can simply use the file sink, and have it
> record to "/dev/null" most of the time, then have something (perhaps via
>    the XMLRPC built-in feature) change the filename to whatever your
> desired filename is, and then revert it back to "/dev/null".
>
> I think I said the same thing on the discuss-gnuradio mailing list a few
> days ago.
>
> The usrp-users mailing list isn't the best place to ask Gnu Radio
> questions, a question like this, which is inherently radio-type
> agnostic, probably
>    belongs on the discuss-gnuradio mailng list, because it's more about
> "how do I make Gnu Radio dance".
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006e8b430587d35bb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Morning everyone, not sure my note y=
esterday hit the list correctly so I&#39;m trying again.</div><div><br></di=
v><div>Mark:
 I have a solution for you.=C2=A0 I added a new block yesterday to=20
gr-filerepeater (pybombs or github).=C2=A0 There&#39;s now a state timer bl=
ock=20
that&#39;ll generate a message based on block-specified timing.=C2=A0 Trigg=
er=20
time, cycle time, etc.=C2=A0 gr-filerepeater also has a new file sink block=
=20
I&#39;ve added in the past couple of weeks specifically to address the same=
=20
kind of problem.=C2=A0 You can feed the timer msg out to the new sink msg=
=20
in.=C2=A0 The new block will then key off the state (1/0) in the msg metada=
ta
 and start/stop writing to a file.=C2=A0 You can specify a directory and a=
=20
base file name, then every time a new file write is started it&#39;ll appen=
d
 a timestamp.=C2=A0 Should exactly match up to what you&#39;re trying to=20
accomplish.=C2=A0 I&#39;ll post on the gnuradio list as well since they&#39=
;re=20
gnuradio blocks.</div><div><br></div><div><br></div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 29, 2=
019 at 8:24 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">On 04/29/2019 08:08 PM, Mark=
 Wagner via USRP-users wrote:<br>
&gt; Hey all,<br>
&gt;<br>
&gt; I&#39;d like to know how to write short files of streamed USRP data <b=
r>
&gt; periodically using GNUradio. For instance, I&#39;d like the USRP to <b=
r>
&gt; automatically record 5 seconds of data every 10 minutes. It does not <=
br>
&gt; matter to me whether the USRP is constantly on and most of the data is=
 <br>
&gt; being discarded, or if the USRP wakes up every 10 minutes to record <b=
r>
&gt; the data before sleeping. Whichever is easiest to achieve is fine by <=
br>
&gt; me. Does anyone have experience doing this kind of thing?<br>
&gt;<br>
&gt; -Mark<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Mark Wagner<br>
&gt; University of California San Diego<br>
&gt; Electrical and Computer Engineering<br>
&gt;<br>
&gt;<br>
If you&#39;re using Gnu Radio, you can simply use the file sink, and have i=
t <br>
record to &quot;/dev/null&quot; most of the time, then have something (perh=
aps via<br>
=C2=A0 =C2=A0the XMLRPC built-in feature) change the filename to whatever y=
our <br>
desired filename is, and then revert it back to &quot;/dev/null&quot;.<br>
<br>
I think I said the same thing on the discuss-gnuradio mailing list a few <b=
r>
days ago.<br>
<br>
The usrp-users mailing list isn&#39;t the best place to ask Gnu Radio <br>
questions, a question like this, which is inherently radio-type <br>
agnostic, probably<br>
=C2=A0 =C2=A0belongs on the discuss-gnuradio mailng list, because it&#39;s =
more about <br>
&quot;how do I make Gnu Radio dance&quot;.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006e8b430587d35bb9--


--===============5206059945796253941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5206059945796253941==--

