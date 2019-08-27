Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B98F69DB56
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2019 03:49:52 +0200 (CEST)
Received: from [::1] (port=52784 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2QcI-0002Q2-DF; Mon, 26 Aug 2019 21:49:50 -0400
Received: from mail-lj1-f179.google.com ([209.85.208.179]:40716)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1i2QcE-0002I7-C0
 for usrp-users@lists.ettus.com; Mon, 26 Aug 2019 21:49:46 -0400
Received: by mail-lj1-f179.google.com with SMTP id e27so16871919ljb.7
 for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2019 18:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RUuooI+1+kgFCNjzQ8syvobSjI4aQJZSv+bTuXGRzJE=;
 b=pt0kWYL8y+6f9FtjdHm+lG3YPjVSBndLn7XsraIiJ09A6Yghb/UHdpi7rP/BUy7zHx
 +VG2fRaSpEB9Es5QhqduIKJSsrumj9V8saSaQHstem3xBEonOtW8Mlp67bIqrd9zuGqi
 A3IHXdv97u5Ho2reIz6kLrOtJGbPwOEiaY4bkYv4G9tKj1h8vdEUm96aI3H1mkNylUVI
 Kqv91rlOiczXTf0pufgYWm8c1+lzZuEgZJxu1gtdjCOlpBuo4fFxtdpBqTy1LntBDHHO
 VmtZR3Lvy3/1thDDzJxlaVxr6mRrLb+Wa9pdMfegmwvg6MelhsLovf3EzIL6AvekdHE6
 ncSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RUuooI+1+kgFCNjzQ8syvobSjI4aQJZSv+bTuXGRzJE=;
 b=MLXpAmhMAEJh6VHMxYTuXtCBXCZjdVM/cXoSvSsnYPPp0eJWLLU6SmO0/Cov6Td75u
 h21jP6u5m7NJin6DbAZPnycjEHXJICj7zXLxUMb/AQIROCW0bTfWz6TmYkq4LzO48x9Y
 Rh+H0i/xiDU+4+tDmh9fMLPRA6hbunPO0Kks/J880kdFFDOPkw5w8MfBesgN6NPJPz41
 bFcZ6UEYYUMq8vrvwuLPwfwQhF0lXkF12/nc93IM0SIAqv8/gK0/LGWQQQypa5F41PoF
 Pwoe/3ouFpT+IpBQ9rvq5fYOLBvHBBBkMwpSs/5z96nqpRNpGWE7zWEG3s5N/r2BxmDX
 UgJw==
X-Gm-Message-State: APjAAAXwn1Rm1t2RMN+u3qvoCm+0ehFY3QlhYFcDjqrD6LE25NI8qGwx
 CBo8iARmR5IcKj5o27kxJTe3miX9e3DHo01biVbIi7uv
X-Google-Smtp-Source: APXvYqzBAjmzFh8IL2Hfm1S5g7qzKvoIB8KIkoufX8A+j6peLR3CPA7Qs87Jj+f/pFtCYJXtgBAN2Tj4IcD9q4jWp6E=
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr12386473ljc.150.1566870544955; 
 Mon, 26 Aug 2019 18:49:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTT6CNq6nFT6heN6uT_rA3qz5FgRK+M4ZGLAiZANRB2bQg@mail.gmail.com>
In-Reply-To: <CAB__hTT6CNq6nFT6heN6uT_rA3qz5FgRK+M4ZGLAiZANRB2bQg@mail.gmail.com>
Date: Tue, 27 Aug 2019 10:48:29 +0900
Message-ID: <CAL7q81uBKaR+SkoBZrRx2tS+FLCoJHRso-iOP40191XcAT9z8g@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] RFNoC ce_rst and clear_tx_seqnum
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9221702939678119872=="
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

--===============9221702939678119872==
Content-Type: multipart/alternative; boundary="0000000000003dd03405910f7ac4"

--0000000000003dd03405910f7ac4
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

Originally clear_tx_seqnum was only for resetting AXI Wrapper, but it
evolved into a user reset as well since it is asserted every time your UHD
app starts. ce_rst is only asserted at power up.

Jonathon

On Tue, Aug 27, 2019 at 2:29 AM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Can anyone explain the meaning of the signals ce_rst and clear_tx_seqnum?
> It is not clear to me what would cause either of them to go High.  Should I
> expect ce_rst to be strobed each time I launch my C++ app that calls UHD?
> I had previously thought so, but now I have reason to doubt.
>
> Thanks.
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003dd03405910f7ac4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div><br></div><div>Originally clear_tx_seqnum was =
only for resetting AXI Wrapper, but it evolved into a user reset as well si=
nce it is asserted every time your UHD app starts. ce_rst is only asserted =
at power up.</div><div><br></div><div>Jonathon</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 2019 at=
 2:29 AM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Can anyone explain th=
e meaning of the signals ce_rst and clear_tx_seqnum?=C2=A0 It is not clear =
to me what would cause either of them to go High.=C2=A0 Should I expect ce_=
rst to be strobed each time I launch my C++ app that calls UHD?=C2=A0 I had=
 previously thought so, but now I have reason to doubt.=C2=A0<br><div><br><=
/div><div>Thanks.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003dd03405910f7ac4--


--===============9221702939678119872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9221702939678119872==--

