Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4201A4B17
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2020 22:23:47 +0200 (CEST)
Received: from [::1] (port=42978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jN0Bg-0007d8-Tu; Fri, 10 Apr 2020 16:23:40 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:43875)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dwwkelly@gmail.com>) id 1jN0Bc-0007UQ-RK
 for usrp-users@lists.ettus.com; Fri, 10 Apr 2020 16:23:36 -0400
Received: by mail-ot1-f52.google.com with SMTP id n25so2908396otr.10
 for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2020 13:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g9Ijtkq/BvIsk77qoK912VQJgIAPYiE6fKwe6y9LsCc=;
 b=TC9/pmKSBIu9BKdK+PLj3X+QgAnXQFxkEQYpTwOBclrFN5K1ZM/9qvRiD2G8/YMb6y
 eUx1PFa29gDh8UTixL7fR6BaWLMHaK/OsCqnik2PFE9WvtG9LxD3pAFFW9cnOYKMlrBq
 lKKEdHGueMRJcfmjwkXpyMZRO626drvhiRTGF7iO5j2moIjpq+1Ob7EGoGXLIQliXQJI
 Qb+ja9OItkTbh0KarpNddTHy/Ut3cSFad/8KyqydcDWuuOljopvBxkikfqzdFUOmCmx2
 qy+w0LtmKc955cuReNAWwX86aNCDC/ipt4YkgHLOsXZHEWVUU7KtPknsADKIowIobI8N
 FsjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g9Ijtkq/BvIsk77qoK912VQJgIAPYiE6fKwe6y9LsCc=;
 b=Mh1UPPW06KPY4bwmZR9znqZjp8ZvJsSdqEwnkobhdAYYKhlBF2eYGQSnh7q5RLvk2u
 bLw1clyTUjrHWVV19L2wPNyEZnKWrhPFrIedaxgd4duwvkQY6u8kwty+lAGQfRZwdHtg
 g/zoiVRpb9kmt59ekrF0QD0XZPT8KZcgOcHONszwsHjcuNAU42WxzPTdIzJZK83ghIpN
 RidQvLQZCxF52fs2F7KGRtn1k9nv9H/tyRLCB24MYftiG/6/6tuUYSIyihN6PY4B+2i7
 r9oH4/mfpgQ7rhDchOoBkrULGT/9MYS26gj370ugrOVpwkMtjti650l2EwbbyEB85Avz
 K1FQ==
X-Gm-Message-State: AGi0PuZzSaWGzQYcV1/jZ+Sjw/w6VqEvHippCh78SBw6n5WDaLLnviTT
 svdwqfFatQDsOmRnvjPKKOu7MXwjfjpVHEKiQf3h0kg/
X-Google-Smtp-Source: APiQypKQ+zEWOpqAfUwL975lFCpOX7pMyR49dzRAWJ85mkrTK6M46xPet1Vcg4eQpGX7rqa+AmUb/9UX14okPXZY9vo=
X-Received: by 2002:a05:6830:208c:: with SMTP id
 y12mr5846754otq.77.1586550175881; 
 Fri, 10 Apr 2020 13:22:55 -0700 (PDT)
MIME-Version: 1.0
References: <331d9c2e396b4f499b1af018f335899c@dlr.de>
In-Reply-To: <331d9c2e396b4f499b1af018f335899c@dlr.de>
Date: Fri, 10 Apr 2020 16:22:45 -0400
Message-ID: <CAANLyuajEUuAZ8CamF4F=1pT9_F4H9cU6MiQjDxn+tNGen6_7Q@mail.gmail.com>
To: Emanuel.Staudinger@dlr.de
Subject: Re: [USRP-users] GPIOs timed commands
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Devin Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Devin Kelly <dwwkelly@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5880134921428032521=="
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

--===============5880134921428032521==
Content-Type: multipart/alternative; boundary="000000000000a72a2b05a2f57f11"

--000000000000a72a2b05a2f57f11
Content-Type: text/plain; charset="UTF-8"

Hi Emanuel,

Did you get the timed GPIO commands to work for you?

Thanks,
Devin

On Thu, Dec 5, 2019 at 3:34 AM Emanuel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everybody,
>
>
>
> could the GPIOs, e.g., on a B200mini be set/unset precisely in time
> (limited to the sampling rate used)?
>
>
>
> Best regards,
>
> Emanuel
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a72a2b05a2f57f11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Emanuel,</div><div><br></div><div>Did you get the =
timed GPIO commands to work for you?</div><div><br></div><div>Thanks,<br></=
div><div>Devin<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Dec 5, 2019 at 3:34 AM Emanuel via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_2112747411556059915WordSection1">
<p class=3D"MsoNormal">Hi everybody,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">could the GPIOs, e.g., on a B200mini be set/unset pr=
ecisely in time (limited to the sampling rate used)?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Emanuel<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a72a2b05a2f57f11--


--===============5880134921428032521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5880134921428032521==--

