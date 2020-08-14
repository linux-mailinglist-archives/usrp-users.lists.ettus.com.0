Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC3C244C8D
	for <lists+usrp-users@lfdr.de>; Fri, 14 Aug 2020 18:21:15 +0200 (CEST)
Received: from [::1] (port=54696 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6cS7-0000Dl-5e; Fri, 14 Aug 2020 12:21:11 -0400
Received: from mail-ua1-f49.google.com ([209.85.222.49]:43979)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aholtzma@gmail.com>) id 1k6cRC-000889-5I
 for usrp-users@lists.ettus.com; Fri, 14 Aug 2020 12:20:14 -0400
Received: by mail-ua1-f49.google.com with SMTP id u15so2813483uau.10
 for <usrp-users@lists.ettus.com>; Fri, 14 Aug 2020 09:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pvtwIERWZMn4uUNEbEwGTIUDwjPzg9R6cUphx2blWGE=;
 b=MHuvp9Ip3bIgyzB9+S3tTEPImIXtaWL1jwLio1DlZtppuOUJcm2mr0G7ilyPlGOH4+
 6uUM2zr2SyWtXhMouxELullOE+8kRcEnllz9nTvH3+Uf2AdnEmYMmtp0FlhLAew8t7qk
 KplU0mT6fE805TZVfFc7CxklsSDxnLlXYJBINn9fNbnLCLG86zK6EdmpQ5ivQQ9QBhL7
 wv5IRTgDvT84lH3F3zW3FRqeAGCJeruL7JfmFgzVvqfo7K6C1DukTR453cx0r53kUC2q
 pftiicDXIT4kBqICQLNukaBJseizdsq1eG/2VyBtameHjx730/9OQjIj++O6dM8xV5Er
 9xCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pvtwIERWZMn4uUNEbEwGTIUDwjPzg9R6cUphx2blWGE=;
 b=cHqD6kg+gGwoq5BYyfmB7bSB1lK8bsFoPO/yqoIEXPQQL1lr47F7Vu5m9tfBV8EvNt
 METDlvJ8QliHZ+myUR0mp1t80yKtnI9dAAQAvJf6r5aEHoZas7/WRy9eScUyAZ+aa0yj
 v3geEH2NZLCwZ3PZ2HW03Qere0oqNeIwwx0IbG9H/Ln2CTr4k1BDjM0CwaE1tGIUkbJe
 Yl0XUHWyE8+XUGmgH36inDQudmNnqT9AF/3onG+sEfWseMcg/y5rh20x7hF0y9gTMIn6
 N35KujcuCxgOQxtSk8Zr1RSMfQ6fpMattysw9dIN1zIygEZUt4bt+vJoHcGLT5Jy9lqB
 8Bkg==
X-Gm-Message-State: AOAM530CT2v7tdEXwvLHWFZ6O5qMYikTTFtC/X/VuDkvOeYihHukiH6K
 gwURj2zEoRTvSM65X3xV0qGdZtN0rgnh/CR9QLw=
X-Google-Smtp-Source: ABdhPJyqbKDrgoMU2377SJecHm+8wetPFSFZm4uS7ch70RCNPX7V0EsNSU67XWX3B7iSWiTNR2FcqHbZoHUYzL98ppY=
X-Received: by 2002:ab0:14c8:: with SMTP id f8mr1958086uae.23.1597421973424;
 Fri, 14 Aug 2020 09:19:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhVi8TCn4NxFeb5hnCjfxG6Hbc37pwzzBhEkNcj9Ju=Eyi2DA@mail.gmail.com>
 <5F3590F8.1020907@gmail.com>
 <CAEhVi8T+obpC2KiLkD2qsqrv++ATCuXxctqUNCvzk_U=M8Mh5Q@mail.gmail.com>
 <5F35A843.8020903@gmail.com>
In-Reply-To: <5F35A843.8020903@gmail.com>
Date: Fri, 14 Aug 2020 12:19:22 -0400
Message-ID: <CAEhVi8RJgCvvmH3zrTDMxqTwPq=5ZGLM_ptxwWtSeo2o8_szLw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
X-Mailman-Approved-At: Fri, 14 Aug 2020 12:21:07 -0400
Subject: Re: [USRP-users] b200mini 1pps lock problem
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
From: Aaron Holtzman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Holtzman <aholtzma@gmail.com>
Content-Type: multipart/mixed; boundary="===============0124521087887778174=="
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

--===============0124521087887778174==
Content-Type: multipart/alternative; boundary="000000000000484f5805acd8c914"

--000000000000484f5805acd8c914
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 13, 2020 at 4:53 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> Has it always had this problem, or did it develop over time?
>

This is a new development, so yes.

If you revert to UHD 3.14 does it display the same issue?
>

Yes.

Does anyone have an FPGA build with chipscope hooked up to the
 b200_ref_pll internals? It would be interesting to see what the DAC is
doing. I would do it myself, but it will probably take a day to remember
how to do it in ISE.

ah

--000000000000484f5805acd8c914
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Aug 13, 2020 at 4:53 PM Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border=
-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>Has it always had this problem, or did it develop over time?</div>=
</div></blockquote><div><br></div><div>This is a new development, so yes.=
=C2=A0</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-le=
ft-color:rgb(204,204,204);padding-left:1ex"><div bgcolor=3D"#FFFFFF">
    If you revert to UHD 3.14 does it display the same issue?<br></div></bl=
ockquote><div><br></div><div>Yes.</div><div><br></div><div>Does anyone have=
 an FPGA build with chipscope hooked up to the =C2=A0b200_ref_pll internals=
? It would be interesting to see what the DAC is doing. I would do it mysel=
f, but it will probably=C2=A0take a day to remember how to do it in ISE.=C2=
=A0</div><div><br></div><div>ah</div></div></div>

--000000000000484f5805acd8c914--


--===============0124521087887778174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0124521087887778174==--

