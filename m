Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 716E42305DB
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jul 2020 10:57:05 +0200 (CEST)
Received: from [::1] (port=53804 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0LPx-0002p5-57; Tue, 28 Jul 2020 04:57:01 -0400
Received: from mail-yb1-f197.google.com ([209.85.219.197]:34715)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikio@dolphinsystem.jp>)
 id 1k0LPs-0002j6-DG
 for usrp-users@lists.ettus.com; Tue, 28 Jul 2020 04:56:56 -0400
Received: by mail-yb1-f197.google.com with SMTP id i9so24235090ybg.1
 for <usrp-users@lists.ettus.com>; Tue, 28 Jul 2020 01:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=afcmpPoW47T1LKr99z0jdzS6fFppu97ahHDo7o09/rg=;
 b=aOIVpPrA2VtVYmtdHOR0vQKfNJ0wUVRFmf0l4kisYr/Vkxs0HT2z9JaQgzHQn2b0mn
 PiHpcrMhuXjIYDYts065i1gswBW7HXmJ2ZmvruC11Camum73USX7TU6J0/aL+GmG8Gi9
 YVP6fxYdrOZ0LBbYX4T4lhxiXSDJ2IC3cNx6EaRMMU7DkqccbSXC43O3p6tZfEP7VvSm
 2Cf/sObsxVaIc0TtqG/XpXwTy68BE+n0ykk7uI8GK8ucYTMID4E43oSX4FDUa45CrI0H
 VArEW2mGIyDf0XktpwF2KxtBClUqJWonZMeOvRfoYlH5NKg6LmGmc/ZIbxaMi1ETTAf0
 66hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=afcmpPoW47T1LKr99z0jdzS6fFppu97ahHDo7o09/rg=;
 b=s7gT0Cu6U/e+C/xwR7lAbMkM9Y+xW+D5fyx13fdx98VdG8GthR3i3NpxcCkC/RDP30
 i3/jAP3bV6uKODA33+r6t97nGbZC1ZkfWR98j7iwLRj30YePFhWmBT0tjF6fJOevERE+
 4UrQ/IdQYlJNl+UNbq63Qkm8c2M99PEGfn/MQQ29H0GusdYxTv7yn3uD+yPkIN/Jodyz
 NB1o0z93Gn8xl7bmcjjVkqOTrvfwtArpmjoTJymITp7IRNiFfKGj7jn3RgnDulZL00/l
 MiwA4y3gpvt+3dD12pENaJHubTaRBIj1QodGBWWmUMtwPTwBNK3oqbHS0DBP3nlEFTTj
 gohA==
X-Gm-Message-State: AOAM533psOUERpPATvz0SzcUUKXejMFYWhDwzNg1+F6tUIypA0uAzUwe
 G2Kfe2ijmLJqfMoH9oMKR0xG26esVpD6+i1A/vNIDQ==
X-Google-Smtp-Source: ABdhPJzqT1dMQzL8U2P/msv5ua1K6pgYEj8Jol4pGg5QPpHlcb/7NMj4Sgtywxt4cDYRLIttPMpTaFnNSORnP5GPs3s=
X-Received: by 2002:a25:b085:: with SMTP id f5mr41685816ybj.418.1595926575544; 
 Tue, 28 Jul 2020 01:56:15 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcfbOcm6LckJRg71KOO_LkD2U7HJoCsQvokJcTUuWFsyaA@mail.gmail.com>
 <CAO5ZCFaexZROVgx7gd+a=HV6Zk8Ui7K4GBDjf5iv91hsmW5_fA@mail.gmail.com>
 <CABfZwcdeVtt8ROBX+pjVP41pLiBEbLv-v=PKqXS26ax5ziwzMw@mail.gmail.com>
In-Reply-To: <CABfZwcdeVtt8ROBX+pjVP41pLiBEbLv-v=PKqXS26ax5ziwzMw@mail.gmail.com>
Date: Tue, 28 Jul 2020 17:55:40 +0900
Message-ID: <CABfZwccSLwQC7W9DDUfV6WAcaVCq0Kexm2iDPBrZPAxCzoS=_w@mail.gmail.com>
To: Xavier Arteaga <xavier.arteaga@softwareradiosystems.com>
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
From: Mikio Fukushima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mikio Fukushima <mikio@dolphinsystem.jp>
Content-Type: multipart/mixed; boundary="===============6749591380251337060=="
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

--===============6749591380251337060==
Content-Type: multipart/alternative; boundary="0000000000009f8dd105ab7c9c8a"

--0000000000009f8dd105ab7c9c8a
Content-Type: text/plain; charset="UTF-8"

Hi Xavier,
I could suppress the message of overflow "O" after set
 UHD_LOG_FASTPATH_DISABLE enviroment variable.
but I could not supress the message on your way.

- OK
$ export UHD_LOG_FASTPATH_DISABLE=1
$ ./rx_samples_to_file --rate 100e6

- NG
setenv in source code
setenv("UHD_LOG_FASTPATH_DISABLE", "1", 0);

Thank you.

--0000000000009f8dd105ab7c9c8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Xavier,<br>I could suppress=C2=A0the message of ov=
erflow &quot;O&quot; after set =C2=A0UHD_LOG_FASTPATH_DISABLE enviroment va=
riable.<br>but I could not supress the message on your way.<br></div><div><=
br></div><div>- OK</div><div>$ export UHD_LOG_FASTPATH_DISABLE=3D1</div><di=
v>$ ./rx_samples_to_file --rate 100e6</div><div><br></div><div>- NG</div><d=
iv>setenv in source code</div><div>setenv(&quot;UHD_LOG_FASTPATH_DISABLE&qu=
ot;, &quot;1&quot;, 0);<br></div><div><br></div><div>Thank you.</div><div><=
br></div></div>

--0000000000009f8dd105ab7c9c8a--


--===============6749591380251337060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6749591380251337060==--

