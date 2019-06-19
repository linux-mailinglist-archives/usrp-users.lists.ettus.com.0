Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E5B4BA74
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 15:47:10 +0200 (CEST)
Received: from [::1] (port=58332 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdavc-0002sl-1D; Wed, 19 Jun 2019 09:47:08 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:42970)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hdavY-0002jr-5M
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 09:47:04 -0400
Received: by mail-io1-f53.google.com with SMTP id u19so38176326ior.9
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 06:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OMLQcS+3+kSpg8AxzTP2hJuSbdZmlkgAMBCKZKmlN+c=;
 b=hmrr1RvIjdoZ1UcCDnGCY006rDqMFis9hw4288mkJYPeEJ9yHUsqCqG2/ppzRI53ip
 xFVaBZiJYhb+SN7AFiwBTps5LG9IJvTP0Morz9guftmFpnFlNK6yCDMK4AyXTfdkswp1
 N8wWm9gus0ObaL8xzqMugq+aep5S9zXi6jluKKPY4wJe/7N4hepgGWMZmVhvv7F6mF2e
 1HIGIZ01lqddke4U35kuGS0L39p+QdaacKeF/vEP1yhgUSVC3clBqycl0X79AiQe72Kd
 tkUmhlZlr3v80khNW02OmGYpA5cK4QgiQxuk/aJm+TxGN+KwgcVh3clWEdMrUCm4LBBB
 +i4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OMLQcS+3+kSpg8AxzTP2hJuSbdZmlkgAMBCKZKmlN+c=;
 b=jCE/JYGpU70Lz7prKYBGYOtltJTCPX8kWPY1nz9zatcoCC6va6qouq9TNjEo1k+m5M
 X5T6K+94yC718udvGS0nRvtleoAUjBAHsmHTOGRYTH7qRkPU9UFbdOJ+uI5SNUxMauvj
 oI8Jf7VTAb1icK++kOJUkE3IlKA+Nh4iOUI3N3q/VD3UnCt8oB4cOzgNvvbLEq3AxG6j
 IGoO9emCX7aPXHPDio5Bbqc+NLtDYv7BraIILEyZsJTsB7aREw8CsuxhB1SWax5+I5P2
 DqXaO2XVyBgWZdZLXFsTl3YAq1EVhanfMYuH4Drdk8+3mmTJS+M6nmHBU6GFmZqcH4JN
 SsBw==
X-Gm-Message-State: APjAAAVt2hQ03kvn/KsKB62YiVjyxjN1zvcz6FM1sEHGq/USkPNpMeym
 MdadIkkghXApg/Uq76hx2EBysWITonBlpohbvPA=
X-Google-Smtp-Source: APXvYqyEA9Nf/sTMX9DQLqwkH1b3de6SHBI7ATIB7MvXFFKlyrIJRhl4z4lny/k5e/NTDjE3NWL2fC3pGzyvgQBaK2o=
X-Received: by 2002:a5d:8252:: with SMTP id n18mr2400557ioo.230.1560951983500; 
 Wed, 19 Jun 2019 06:46:23 -0700 (PDT)
MIME-Version: 1.0
References: <CACV8bbcuwx4eT6YtJZEpnUBgZUcZjZLeWw1UZAABM0VK8+iAPQ@mail.gmail.com>
In-Reply-To: <CACV8bbcuwx4eT6YtJZEpnUBgZUcZjZLeWw1UZAABM0VK8+iAPQ@mail.gmail.com>
Date: Wed, 19 Jun 2019 06:43:14 -0700
Message-ID: <CA+JMMq9FDObYNq+0KPf+E7MmQb5-fQJWGGBecVGLw=KbgFWrmA@mail.gmail.com>
To: Christian Valledor <cavalledor@gmail.com>
Subject: Re: [USRP-users] Registering Block Controllers to UHD
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3737753895143281391=="
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

--===============3737753895143281391==
Content-Type: multipart/alternative; boundary="0000000000007cf109058bad748e"

--0000000000007cf109058bad748e
Content-Type: text/plain; charset="UTF-8"

This thread might be helpful:

https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07959.html

Nick

On Wed, Jun 19, 2019 at 6:35 AM Christian Valledor via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi All,
>
> I'm developing a few custom RFNoC Blocks for a UHD application I'm working
> on, and I've hit a snag getting UHD to work with my block controllers. Note
> that I went the C++ route instead of using nocscript and the default block
> controller to handle some more complex cases.
>
> The only way I have been able to get my application to work is if I move
> my custom controller files into the UHD directory, and re-compile.
> Otherwise it sees my block and XML, but doesn't register a key, and loads
> the default block controller.
>
> Is there another way to get UHD to play nice with my block without
> re-compiling it each time?
>
> thanks,
> -Christian
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007cf109058bad748e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This thread might be helpful: <br></div><div><br></di=
v><div><a href=3D"https://www.mail-archive.com/usrp-users@lists.ettus.com/m=
sg07959.html">https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07=
959.html</a></div><div><br></div><div>Nick<br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 19, 2019 at=
 6:35 AM Christian Valledor via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>Hi All,<br></div><div><br></div><div>I&#39;m developing a few cust=
om RFNoC Blocks for a UHD application I&#39;m working on, and I&#39;ve hit =
a snag getting UHD to work with my block controllers. Note that I went the =
C++ route instead of using nocscript and the default block controller to ha=
ndle some more complex cases.</div><div><br></div><div>The only way I have =
been able to get my application to work is if I move my custom controller f=
iles into the UHD directory, and re-compile. Otherwise it sees my block and=
 XML, but doesn&#39;t register a key, and loads the default block controlle=
r.</div><div><br></div><div>Is there another way to get UHD to play nice wi=
th my block without re-compiling it each time?</div><div><br></div><div>tha=
nks,</div><div>-Christian</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007cf109058bad748e--


--===============3737753895143281391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3737753895143281391==--

