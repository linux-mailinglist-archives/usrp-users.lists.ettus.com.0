Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A0570C3F
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 00:01:15 +0200 (CEST)
Received: from [::1] (port=43946 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpgMl-0005uO-7q; Mon, 22 Jul 2019 18:01:07 -0400
Received: from mail-ed1-f49.google.com ([209.85.208.49]:36511)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <daniel.jepson@ettus.com>)
 id 1hpgMh-0005nn-5k
 for usrp-users@lists.ettus.com; Mon, 22 Jul 2019 18:01:03 -0400
Received: by mail-ed1-f49.google.com with SMTP id k21so41987477edq.3
 for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2019 15:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3C0VwIk9LdWdgdeBjOQ8TeCYjfnxy/N+5sP112raKkc=;
 b=RnUbcRah9pzJOhS8SuNS0aTWWb/ciGXzBZG4YMYO9MJ0osZiaBIZUVYRS8xOdh0c0U
 a/Ox1h2YU5qPDg7wIQhJoBLCxPo9zzVDwRpIBvFLrk3Jxg1bo9Mn0K0mUSkrA+UzoUaT
 icmhsgm5PPKuK84bplcWcbwX3LH5Mx4i4dRVQSubc9CSJ87D9yJF0U263uGBXvMoYQwR
 BB6xP8CFa7JlFXAfNw1iNlV+Zj7Z4JelfkR8vf5nRty/XrWHhDmM5er3j8qS8Pb6LYSb
 i3A3HhGd6GzpRkfYpU0LtJOU55i2yvyHAoERLcX6d948xnwXR4npz5+xqlNC9o5mSSLH
 lcDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3C0VwIk9LdWdgdeBjOQ8TeCYjfnxy/N+5sP112raKkc=;
 b=kUxw9qKZuiMZ54yU0wju0eC1tIx8f8XNFBtxNP05KDnr8c85oVnoNjtgsHm5w7wsdS
 /PfRqDxIxtrEjo1yHURXS7qpchXa5yVbHKUusPzly0oIsetCYmJlrbLPm+oT5z6+aJp+
 pVMu7q/h0/lkYRcUvxyq79sW/8b6BiZ01GH4kKlvGkTQ4mBX7v/jN/OP8YuzuvB2zfVl
 YR44ebyQZL28Ry8U/r6TIHJJlFA5UbbwzWSIQHEgrr4x89Vla1Mu0S48yw+U6kmXZ+eY
 Mq0m5v0yHuSS7KQwXAd9ISG97Zg7ALPPyhZT+p8BZaBSzk/MWWIAKdcggw+CrkQWUOQv
 gpJw==
X-Gm-Message-State: APjAAAUMgB8NFc7zQptjk6QBuN2cNIJDgb1z3pCs9G7Nc96F8NTf6UMG
 OYWGbbYirNSrpympaScokIsBUPk+aqauqWmdHGKUg4W1
X-Google-Smtp-Source: APXvYqzXz8aZoxACYpipSzTvITpzmDUWFnn17vBVnQ1ZjHChC8y9jDo0Yj9d7jvxE5CpNevav5/dwcXpKK1o9Fk1MdI=
X-Received: by 2002:a50:95ae:: with SMTP id w43mr62356559eda.115.1563832822054; 
 Mon, 22 Jul 2019 15:00:22 -0700 (PDT)
MIME-Version: 1.0
References: <CALLKLAOx9WZBfOA7SbmyNO9-hpUySRCoU2cPr5+7-K+XXBx8tw@mail.gmail.com>
In-Reply-To: <CALLKLAOx9WZBfOA7SbmyNO9-hpUySRCoU2cPr5+7-K+XXBx8tw@mail.gmail.com>
Date: Mon, 22 Jul 2019 17:00:11 -0500
Message-ID: <CA+Zwmn6G=g4J+oScOBgErwvcuavuGayc=AixhanKUvFRD=D_9A@mail.gmail.com>
To: Mark Wagner <m2wagner@eng.ucsd.edu>
Subject: Re: [USRP-users] Digital TV Clock recovery using N310 and GNUradio
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
From: Daniel Jepson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Jepson <daniel.jepson@ettus.com>
Cc: Usrp Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7192960316748297346=="
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

--===============7192960316748297346==
Content-Type: multipart/alternative; boundary="000000000000d8d241058e4c33c2"

--000000000000d8d241058e4c33c2
Content-Type: text/plain; charset="UTF-8"

Hi Mark,

A few questions: Is your clock recovery algorithm running in the FPGA? Do
you require the sample clock/LOs to be disciplined to this recovered clock?

While the N310 does not have a dedicated clock output port, if the
recovered clock is internal to the FPGA you can transmit a copy of it out
the front panel GPIO port and (with a bit of creativity) possibly cable it
into another N310. Just watch your voltage level compatibility.

-Daniel

On Mon, Jul 22, 2019 at 4:38 PM Mark Wagner via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hey all,
>
> I'd like to recover the clock tone of a digital TV signal on one USRP N310
> and use it as the clock input to another N310. Does anyone have experience
> doing something like this? I could use some pointers.
>
> -Mark
>
> --
> Mark Wagner
> University of California San Diego
> Electrical and Computer Engineering
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 

Daniel Jepson

Digital Hardware Engineer

National Instruments



O: +1.512.683.6163

daniel.jepson@ni.com

--000000000000d8d241058e4c33c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mark,<div><br></div><div>A few questions: Is your clock=
 recovery algorithm running in the FPGA? Do you require the sample clock/LO=
s to be disciplined to this recovered clock?</div><div><br></div><div>While=
 the N310 does not have a dedicated clock output port, if the recovered clo=
ck is internal to the FPGA you can transmit a copy of it out the front pane=
l GPIO port and (with a bit of creativity) possibly cable it into another N=
310. Just watch your voltage level compatibility.</div><div><br></div><div>=
-Daniel</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, Jul 22, 2019 at 4:38 PM Mark Wagner via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Hey all,<div><br></div><div>I&#39;d like to recover the cloc=
k tone of a digital TV signal on one USRP N310 and use it as the clock inpu=
t to another N310. Does anyone have experience doing something like this? I=
 could use some pointers.</div><div><br></div><div>-Mark<br clear=3D"all"><=
div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail-m_-5403488867902592564=
gmail_signature"><div dir=3D"ltr"><div><div>Mark Wagner<br></div>University=
 of California San Diego<br></div>Electrical and Computer Engineering<br>=
=C2=A0<br></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><p><a name=3D"SignatureSanitize=
r_SafeHtmlFilter__MailAutoSig"><span style=3D"color:black">Daniel
Jepson</span></a></p>

<p><span style=3D"color:black">Digital Hardware Engineer</span></p>

<p><span style=3D"color:black">National Instruments</span></p>

<p><span style=3D"color:black">=C2=A0</span></p>

<p><span style=3D"color:black">O: +1.512.683.6163</span></p>

<p><span style=3D"color:black"><a href=3D"mailto:daniel.jepson@ni.com" targ=
et=3D"_blank">daniel.jepson@ni.com</a></span></p></div></div>

--000000000000d8d241058e4c33c2--


--===============7192960316748297346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7192960316748297346==--

