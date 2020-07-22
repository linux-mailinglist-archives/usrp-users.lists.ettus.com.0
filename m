Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CB9229150
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 08:52:23 +0200 (CEST)
Received: from [::1] (port=48132 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jy8bz-0002SZ-Mz; Wed, 22 Jul 2020 02:52:19 -0400
Received: from mail-wm1-f52.google.com ([209.85.128.52]:38997)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <xavier.arteaga@softwareradiosystems.com>)
 id 1jy8bv-0002F2-Dy
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 02:52:15 -0400
Received: by mail-wm1-f52.google.com with SMTP id w3so878110wmi.4
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 23:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=softwareradiosystems-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rof7AqRBl09k6W8wBs1t6BWuL+TOXNF/7XzJDPu2kS4=;
 b=FeMmjpcyYJlJ828a22PZsBLdOmjx/13t1VF5Uf/v5ixeM9C+8HVIKNQ5YA7AY0jjvr
 w99eOglXXUmpjz9LnwiXNvzK+JdbU/7dWCv47GuFh+vIfFr3Inf0WKDiwM07XG/euxBf
 Ey0iE2NTw7f4YhQMichaoZDehUTQBgneZHsM1o6UbDkmHa9l0N+P8Oe0OjkeZhgQl6uR
 qyZ1YrCczcqfp8skIdLsvVVAKQTiN7JfIh5kQQNx+xlIDoBa9qaRqE5ZK17LWh7qB/JD
 OZkzvcDsSkaBuhBh6K3nch270q+D4V5GvYAvYtpwRKUhia32i5nBoIANLpjxrnlHTXbf
 AvGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rof7AqRBl09k6W8wBs1t6BWuL+TOXNF/7XzJDPu2kS4=;
 b=sqvNHVpFIkxYW3GRg0YvGIaTCaihgYcX+h+41SC+kdFjPljSMoc26fH1iKkHWxO0EU
 Pmw7NzmK3U63wZsBfhZXFSn7Rx9MVdkOhhyVWPvY25C9GSDzpCisD8OmgHHKZphnVVGL
 DlZ2uPjWSlljMQmI0wfd3q+lC1JMkGiZZJLooSoEa8zX+aYXWsBgXHJP4jFLSeKepU1W
 99vQWq2LgpJWWOyzh3zHUVJwik+goo0VMEeqjOU82dKixvkzG5TjNEdKxUQD8TR5qfp8
 1F5kGqOH/cHVEPkU0uvKjEif72DyRDwz4e/vzQsahhSksINBJwejGHNINaQl/J17MpGD
 iLkQ==
X-Gm-Message-State: AOAM531EtWx4vPRCV7nXCc9e71rI6dGDemGF5H3xKgdoASFI/JjC3RoE
 McpBBK3P9aKDLdxAvyznAiTtv7K1mblNBtRrtJsZR4CalPA=
X-Google-Smtp-Source: ABdhPJwoS6hxYni8bKY7t0khY+a+2sE4zNlARVhO52MA3f7jd7dvBQomdbQjBvARDRGOMCcOW6++jM8Nfqwk2qziNmA=
X-Received: by 2002:a1c:6887:: with SMTP id d129mr7045607wmc.179.1595400694257; 
 Tue, 21 Jul 2020 23:51:34 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcfbOcm6LckJRg71KOO_LkD2U7HJoCsQvokJcTUuWFsyaA@mail.gmail.com>
In-Reply-To: <CABfZwcfbOcm6LckJRg71KOO_LkD2U7HJoCsQvokJcTUuWFsyaA@mail.gmail.com>
Date: Wed, 22 Jul 2020 08:51:23 +0200
Message-ID: <CAO5ZCFaexZROVgx7gd+a=HV6Zk8Ui7K4GBDjf5iv91hsmW5_fA@mail.gmail.com>
To: Mikio Fukushima <mikio@dolphinsystem.jp>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] How to suppress the overflow indicator "O"
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
From: Xavier Arteaga via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xavier Arteaga <xavier.arteaga@softwareradiosystems.com>
Content-Type: multipart/mixed; boundary="===============4958739248328172147=="
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

--===============4958739248328172147==
Content-Type: multipart/alternative; boundary="000000000000a7ea4205ab022b9a"

--000000000000a7ea4205ab022b9a
Content-Type: text/plain; charset="UTF-8"

Hi Mikio,
You can disable the fastpath logging in runtime by setting the environment
variable UHD_LOG_FASTPATH_DISABLE to 1:

Example in C:
  setenv("UHD_LOG_FASTPATH_DISABLE", "1", 0);

Regards,
Xavier

On Wed, 22 Jul 2020 at 05:38, Mikio Fukushima via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> UHD device driver prints the indicator "O" while overflow to stdout.
> How to supress this printing of the indicator?
>
> Mikio Fukushima
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a7ea4205ab022b9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mikio,<div>You can disable the fastpath logging in runt=
ime by setting the environment variable=C2=A0<font face=3D"monospace">UHD_L=
OG_FASTPATH_DISABLE</font> to 1:</div><div><br></div><div>Example in C:</di=
v><div><font face=3D"monospace">=C2=A0 setenv(&quot;UHD_LOG_FASTPATH_DISABL=
E&quot;, &quot;1&quot;, 0);<br></font></div><div><br></div><div>Regards,</d=
iv><div>Xavier</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, 22 Jul 2020 at 05:38, Mikio Fukushima via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Hi,</div><div>UHD device driver prints the ind=
icator &quot;O&quot; while overflow to stdout.<br>How to supress this print=
ing of the indicator?<br></div><div dir=3D"ltr"><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Mikio Fukushima</div><div>=
<br></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a7ea4205ab022b9a--


--===============4958739248328172147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4958739248328172147==--

