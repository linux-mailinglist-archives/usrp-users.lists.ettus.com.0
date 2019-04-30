Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 229FFFBE2
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 16:49:42 +0200 (CEST)
Received: from [::1] (port=39836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLU4i-0003u2-Vi; Tue, 30 Apr 2019 10:49:40 -0400
Received: from mail-pf1-f180.google.com ([209.85.210.180]:41443)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <mike.piscopo@gmail.com>)
 id 1hLU4A-0003kk-Qz
 for USRP-users@lists.ettus.com; Tue, 30 Apr 2019 10:49:36 -0400
Received: by mail-pf1-f180.google.com with SMTP id 188so7162938pfd.8
 for <USRP-users@lists.ettus.com>; Tue, 30 Apr 2019 07:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=zRiwNZF/Qtb09tY+2yzsWYj1+1FfYIm+xZXAbOkXdnw=;
 b=M5BYQ2SY2QUqruwiHjZdQJLSFUhaXEJ45A+Xt/QMopT5Dx0VUTtsaVK0ar6MLQV+kq
 vAndJa/N9S3f7P/fBBw0yigYHfOJbYeurwFSCyGIbdgcLmL8dzDscR4Z7F7wJSvnINCM
 ssGp6UIsdllfbF6FXTCWoPwLrzIGBYSNdEbyUKh0Jb4L+T+0ydivhRsdcbeyrbQgn0MJ
 nkhPW1T/LjvSOZPfpgWnGL1uu0UiUGBcJHN/NoJ2Fdzywi5M91NOED5CBxJbDXtGlmed
 14hrC7Q6rQn+Rg3ARvIZRvSIsQcDIpcB4e0rQBigS7KyumHACzKaNdQMlH0tgMnw9NfM
 9gEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=zRiwNZF/Qtb09tY+2yzsWYj1+1FfYIm+xZXAbOkXdnw=;
 b=soomps4Ofuoopm4OPgtWTm4Urz1cPs16nNIywZU2VkwtvBGmtA6OoHYwm/OyU6d4Ve
 DSo8Moq20N5oiK/rE0c4qJSIy23LbFwdNW9Q2dkT/3M0OX3iSLQMupCijYwq69MuNUtx
 vJo1spsYzE+DeGkbwtcRxU4VQx+HDitQAFblh+SKIto0OkJO/lxW2HjbEfi7I7Ful/7v
 6rv8seH1MTJ85yKwvsQizn7qBljyL5pGaW7YT+PnQb2XNoRvWlB3DdbrbwGeBJLu1zqp
 xPkJd13pgXlbwzdsErWMHSITd+rskG+ucdNY6GhH26JKsZZPO15SNzAWwJ/605G7badv
 XAmg==
X-Gm-Message-State: APjAAAWRKT2UMOh3dFo9DxKO9+fM9eQoTl+cKxJqyJPcsz40+9sDUya3
 URrZyA3d4KleX1pklRMPAPjFvhayjlBjkPgrw8ZGDosLjIA=
X-Google-Smtp-Source: APXvYqxSqcUu3ywyNQPO8EYhtCsEmEbccW2PP8SfPExuS1yfR+fqW/zlqCF6ZpLowlXXvr6q5z9FgovG3lYKo6FbsNA=
X-Received: by 2002:a62:6f02:: with SMTP id k2mr73255405pfc.136.1556635705043; 
 Tue, 30 Apr 2019 07:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <CALLKLAPDtvLxHkVwea_c0S9oX3xFkOYwfpbhvS9HTxK+LiEkhg@mail.gmail.com>
 <5CC795B9.4050401@gmail.com>
 <CAAY_VvEGzP9EtiduVbDuNKoNjZNL8J1BbNYE=Mrc3N4qFaqbfw@mail.gmail.com>
In-Reply-To: <CAAY_VvEGzP9EtiduVbDuNKoNjZNL8J1BbNYE=Mrc3N4qFaqbfw@mail.gmail.com>
Date: Tue, 30 Apr 2019 10:48:12 -0400
Message-ID: <CAAY_VvFTSYE53ki1ezBAVYWWjvhNChDhWfhr2rLQO27qjM2dUA@mail.gmail.com>
To: Usrp Users <USRP-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Fwd: How to periodically write files using USRP and
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
Content-Type: multipart/mixed; boundary="===============1381979256769817775=="
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

--===============1381979256769817775==
Content-Type: multipart/alternative; boundary="0000000000003e705f0587c07ec0"

--0000000000003e705f0587c07ec0
Content-Type: text/plain; charset="UTF-8"

Hi Mark,

If you look at gr-filerepeater (https://github.com/ghostop14/gr-filerepeater
or from pybombs), I just recently added an advanced file sink to the
module.  One thing it has is a message port that you can pass a state key
in the metadata to (1 to record, 0 to stop).    The block will also
automatically roll a timestamp into the filename when it starts a new file
so it doesn't overwrite your historical ones.

Give me a day or so and I'll add a new block to generate the message
packets to do "x minutes on, y minutes off".  I'll add it to the
gr-filerepeater module.  It's been on my list for a while anyway.




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

--0000000000003e705f0587c07ec0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mark,</div><div><br></div><div>If you look at gr-f=
ilerepeater (<a href=3D"https://github.com/ghostop14/gr-filerepeater" targe=
t=3D"_blank">https://github.com/ghostop14/gr-filerepeater</a>
 or from pybombs), I just recently added an advanced file sink to the=20
module.=C2=A0 One thing it has is a message port that you can pass a state=
=20
key in the metadata to (1 to record, 0 to stop).=C2=A0 =C2=A0 The block wil=
l also automatically=20
roll a timestamp into the filename when it starts a new file so it=20
doesn&#39;t overwrite your historical ones.</div><div><br></div><div>Give m=
e a day or so and I&#39;ll add a new block to generate the message packets =
to do &quot;x minutes on, y minutes off&quot;.=C2=A0 I&#39;ll add it to the=
 gr-filerepeater module.=C2=A0 It&#39;s been on my list for a while anyway.=
<br></div><div><br></div><div><br></div><div><div dir=3D"ltr"><div><br></di=
v></div><div class=3D"gmail_quote"><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Apr 29, 2019 at 8:24 PM Marcus D. Lee=
ch via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">On 04/29/2019 08:08 PM, Mark Wagner v=
ia USRP-users wrote:<br>
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
</div></div></div>

--0000000000003e705f0587c07ec0--


--===============1381979256769817775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1381979256769817775==--

