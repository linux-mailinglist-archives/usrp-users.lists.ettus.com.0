Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB09B55750
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2019 20:39:40 +0200 (CEST)
Received: from [::1] (port=43374 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hfqLz-0006uD-N4; Tue, 25 Jun 2019 14:39:39 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:37001)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hfqLv-0006lE-6O
 for usrp-users@lists.ettus.com; Tue, 25 Jun 2019 14:39:35 -0400
Received: by mail-io1-f43.google.com with SMTP id e5so2512044iok.4
 for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2019 11:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lg/Pc6YP6MtLTa5w77bn3lDMJ6TsDvaDGNMgKz45sDw=;
 b=bhGg+2dWdR9q5DdS0LOYE1b4YLKnFfguP95VeFHy/kOIyNNdgyVPIMYqqeCQ9eMr5L
 gw+k8wB5yfaAxe4V9Io2NzzkKX+9R3NsInlp+J19azQO+E87cOWWU51zgdi0YuxjNhza
 71KGZcspzmVuFaqovlYUDUg/3cQVVznaIC/gefpT887a+JU8RdHOlU8NRd1e5mUqgFmA
 /WydlsQe3aDx6jiI4ZOa24IpNGKN620q7AMq/NqJAKpGEG4/iO9HnIwdBH6+NYVAk/gw
 W+yQuLMxZveKUG7+FIeMuS2MUg5f8MkK1r8mmlJfjbeSrpaRR/OmiqK4XVLurfn9NdZs
 gXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lg/Pc6YP6MtLTa5w77bn3lDMJ6TsDvaDGNMgKz45sDw=;
 b=jO9rdOD1QwKwG/UK76L0PW4v0OAqtlfFKKsOgk/7Av53BQKjpwaMyI4AsRMvjh8i3V
 hUMXOn9wN12l21zk1j3yeEijmtXBJnw1GaepZZnWJQqN+KeC2fd73eAO2PPHVJvNefOd
 WQ155CcribrwOyBQYd9NFWT/Qn/oPDCXR79z8W4AlMVClyDvsB3AYJqU0odnrxoeh22k
 2sfz3BNlAdaMeXVJrvI20j0BctzGvNNQ0YhLZuSKKlw5tl/zTSShilBUA4a/GvMl8WlW
 +o2GVJ7Zcflv6TLfCkQT5MYsN/myHB3VbbgZf2NXRMwPXb2LpuAPsR5iiNUD1dqymg3w
 kN/Q==
X-Gm-Message-State: APjAAAXLVGlXYubXPsK01aHM5sBagFQ18Uvn/aOPE80Ti2Z5cOmIDvWK
 g/U+x8Sf+s8guVh2aA8Y7KwaWtykYZpvvyc0vfukydOV4A4=
X-Google-Smtp-Source: APXvYqxFrIsQyXACMsP7QFphEL/afIQsAZydVvpql36/xUtyQRcB7nTyndU+C7b3ZGKVlubrwnandq6b6GN5mqO1EA4=
X-Received: by 2002:a6b:ce19:: with SMTP id p25mr615033iob.201.1561487838202; 
 Tue, 25 Jun 2019 11:37:18 -0700 (PDT)
MIME-Version: 1.0
References: <5d126902.1c69fb81.80845.1b15SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <5d126902.1c69fb81.80845.1b15SMTPIN_ADDED_MISSING@mx.google.com>
Date: Tue, 25 Jun 2019 11:37:07 -0700
Message-ID: <CAKJyDk+HJhTip8dZg5KD6P9MqWwpAnahQQXpEtgjZ4f9EEJmCA@mail.gmail.com>
To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Subject: Re: [USRP-users] 3.13.1 Centos Build
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: "usrp-users \(usrp-users@lists.ettus.com\)" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6177367009603580801=="
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

--===============6177367009603580801==
Content-Type: multipart/alternative; boundary="000000000000eaeae1058c2a37ef"

--000000000000eaeae1058c2a37ef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bob.
You could try downloading the file from Github and copying it into the
correct location once you've expanded the tarball.
https://github.com/EttusResearch/uhd/blob/v3.13.1.0/images/manifest.txt

-Robin


On Tue, Jun 25, 2019 at 11:33 AM Tillson, Bob (US) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Centos 7.6
>
> UHD 3.13.1
>
>
>
> When building from tar file, utils always fails due to looking for
> images/manifest.txt file.
>
>
>
> This file is looked for above the UHD source root dir.
>
>
>
> Since I don=E2=80=99t have a =E2=80=9Cgood=E2=80=9D downloader cuz I am t=
rying to build from
> source tar file, how do people get around this?
>
>
>
> Thanks,
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000eaeae1058c2a37ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Bob.</div>You could try downloadi=
ng the file from Github and copying it into the correct location once you&#=
39;ve expanded the tarball.<div><a href=3D"https://github.com/EttusResearch=
/uhd/blob/v3.13.1.0/images/manifest.txt">https://github.com/EttusResearch/u=
hd/blob/v3.13.1.0/images/manifest.txt</a></div><div><br></div><div>-Robin</=
div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Jun 25, 2019 at 11:33 AM Tillson, Bob (US) via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-7685627756279153350WordSection1">
<p class=3D"MsoNormal">Centos 7.6<u></u><u></u></p>
<p class=3D"MsoNormal">UHD 3.13.1<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">When building from tar file, utils always fails due =
to looking for images/manifest.txt file.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">This file is looked for above the UHD source root di=
r.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Since I don=E2=80=99t have a =E2=80=9Cgood=E2=80=9D =
downloader cuz I am trying to build from source tar file, how do people get=
 around this?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000eaeae1058c2a37ef--


--===============6177367009603580801==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6177367009603580801==--

