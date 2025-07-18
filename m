Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98301B09DD8
	for <lists+usrp-users@lfdr.de>; Fri, 18 Jul 2025 10:25:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E117C386551
	for <lists+usrp-users@lfdr.de>; Fri, 18 Jul 2025 04:25:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752827151; bh=Is3hb8/vp06hDcRpN+al9ezHQWkxCvu9lOzwpdj2xYw=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rFP+80Z3q6yOlApx9k/sDCDBW+8P9XEH+hdea16hzUIijMjIzdEDNdGTETvXZ3BWe
	 lc2UCaZmE6mOxSqg2hYEkeR3KUOvUp1TMlS33qlDf70Z2SzHGERfre316wbryQ7O2h
	 sk8wjtmIhcw/biQQ0j3bA5uOLq383gB9B5R4Hr+tsg2uezsW2Gw1ihEbYVnh2bzUcQ
	 Y/yVla691+AtXUEWp9xJOCJIHAokyJHFJ/GFLycpKGb4xE8e/h8uClvXr2xmi51mtm
	 Xaz9jVnWB62cZwdiUgQWEYQgDRCErM3/ua9riv7Nt5chdD8siR+Se4U2mkrPlz17vZ
	 yuPVty7fu52jQ==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C3D3386503
	for <usrp-users@lists.ettus.com>; Fri, 18 Jul 2025 04:25:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="uyHNKVGZ";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ae0dffaa8b2so362757266b.0
        for <usrp-users@lists.ettus.com>; Fri, 18 Jul 2025 01:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1752827134; x=1753431934; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XWsQmXDh4yil7jXFaqB3+lx8rzkrLq43kHK71+1e75E=;
        b=uyHNKVGZ4yKPLFRFZtlmt3zu3uu0DMi7MKAVwHDS9yOMK2bjYMDT5Rw5ZL9gxzUX+y
         qoU+M2J03S+5yDQAtY69oUnkqtveTrdlWnwL6hVWg7aQM/Tj8HlUkep34TPQn4QMlav6
         eB60aGa8uTXwcsksqrDqrvJDNXF2ONt0aOmQWrMS9nvMEhrMFvEDcllyt91VNIPQ0b1Y
         szeDRTE9lNg6wn95yp+C+wOUg3TWt9PJoXVhdmVHfkxT2sWTz1+aplm7m5MM+Hxx+NU2
         AjJMaZnky69W61aPNEua/qp4lGsV20+0iSr5aWLjPRz7e9KisxlhYJ28rQ8Y0G0+nWw/
         7B6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752827134; x=1753431934;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XWsQmXDh4yil7jXFaqB3+lx8rzkrLq43kHK71+1e75E=;
        b=G+tzoBV8FYqzAUcZYX7tQS1xp9DEYk7dUTHYbF/3pxwGmM7AMhmv367Mf/SZtAY3Ny
         3J/HeotIpZ/y7XKGQgbQGYt+SdsXxl4+iG2YYOdoeY0cn+ZWkmpCdbMwohWVEevSsBuM
         sQnUjP2A6Lz8MkozNWvwxyhHrqX66MNyYGgSf3i6huYm2kj7XT8KhTnPVkYqmrLrqyII
         qkKtp+MuU2uUxAs1WpnbXUV5RvHShmPtgx07NwDH4DuLAIkV4VvOuSiD8SsPSMu6rnCP
         zqRhtuflmxXsSfzEzQy1N1nIaCYwKAG0obrfZAwBxCxjmwlGb2Yr6YCsIG2nAKZt1Nyk
         /qGw==
X-Gm-Message-State: AOJu0YyVGOhvlKWa1VTEiu43tz9X+eXu//WaBIzPlo2c0LAEshxdlasI
	1J+Q7HukUjmdAbWzrCzu0ODiNZ2LVsBeezFiFuUSYyW+y/AHLFa02JBX3YW9bp7T0ERsMH66mYu
	a8KBFmH4SaH6gnw8hoAiHsNR5N1N7VzN41sg78/3ztC2QtA+WMuz2W2A=
X-Gm-Gg: ASbGncvgaCIH7qg5C/X0pThPoDHya2B5ZKUEFnYy74gWH9WeGHx5CF1xLOh87ldreuP
	z+KzOfhl8Ao/0kyfe8UWHvvG9bLDCq8Av1x2IG+g1KdEy4uc4XFFvaCl6WENDNnZVBNhO2Xadgk
	eAHE2ORn6OUPF8RHLNp0gHqKdaYlGv6zm/ReyK8aOf0roEVekeH4J2RUns9IFsbY9uwFKexc4K6
	j02llCjZbIsVdCu+my2nZ4j0LKUA1zpl18Z5g==
X-Google-Smtp-Source: AGHT+IFJKvYRRHHIF3jJl6VzVPo9xaoxcvDlg2hGWx6lCO3k3aTYa/oc4SW76+XGX846R19fQpVlUOty11IfZCCXIvU=
X-Received: by 2002:a17:906:b80a:b0:ae3:5e2a:493 with SMTP id
 a640c23a62f3a-aec4fc43592mr459659066b.49.1752827133762; Fri, 18 Jul 2025
 01:25:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAE=q3UNNo4mr9RU5daZGzWKJV9ZH9ry6p3aTq8DpEojqw-XVyA@mail.gmail.com>
In-Reply-To: <CAE=q3UNNo4mr9RU5daZGzWKJV9ZH9ry6p3aTq8DpEojqw-XVyA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 18 Jul 2025 10:25:22 +0200
X-Gm-Features: Ac12FXw287tdhr6CMv1W6mmZetVZC6Y3nC11sum9q63sg8A9IR45AX2KCNp-vqg
Message-ID: <CAFOi1A4SEabuSr5b+7S9kxaX3Lb9E+7gW3NG6ELp-_e+HE+82A@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: QG3OHLDA76VCQ6WWVIC4MQDZYMPCW5T4
X-Message-ID-Hash: QG3OHLDA76VCQ6WWVIC4MQDZYMPCW5T4
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Making Custom Block pymodule_library
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QG3OHLDA76VCQ6WWVIC4MQDZYMPCW5T4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8249225116988011379=="

--===============8249225116988011379==
Content-Type: multipart/alternative; boundary="000000000000a935ca063a2fded6"

--000000000000a935ca063a2fded6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

David,

can you elaborate a bit how you got there? If you compile rfnoc-gain, do
you have the same issues?

--M

On Fri, Jul 18, 2025 at 5:50=E2=80=AFAM David <vitishlsfan21@gmail.com> wro=
te:

> Hello all,
>
> I upgraded to UHD 4.8 and the new features have been great. Still
> exploring a lot. I ran into an issue when trying to run make target
> "pymodule_library". It errors with:
>
> "/usr/bin/ld: cannot find -luhd: No such file or directory"
>
> I traced this using remake to the build directory file
> python/CMakeFiles/rfnoc_testmod_python.dir/link.text. The single line fil=
e
> uses "-L/opt/uhd/lib/libuhd.so", and when I corrected it to
> "-L/opt/uhd/lib/", the linker was able to find uhd and the make command
> completed.
>
> Any suggestions on fixing this issue? I have seen it in my test block
> above and another custom block I ported to UHD 4.8.
>
> Thanks,
>
> David
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a935ca063a2fded6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>David,</div><div><br></div><div>can you elaborate a b=
it how you got there? If you compile rfnoc-gain, do you have the same issue=
s?</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gm=
ail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 18, =
2025 at 5:50=E2=80=AFAM David &lt;<a href=3D"mailto:vitishlsfan21@gmail.com=
">vitishlsfan21@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello all,</div><div><br></d=
iv><div>I upgraded to UHD 4.8 and the new features have been great. Still e=
xploring a lot. I ran into an issue when trying to run make target &quot;py=
module_library&quot;. It errors with:</div><div><br></div><div>&quot;/usr/b=
in/ld: cannot find -luhd: No such file or directory&quot;</div><div><br></d=
iv><div>I traced this using remake to the build directory file python/CMake=
Files/rfnoc_testmod_python.dir/link.text. The single line file uses &quot;-=
L/opt/uhd/lib/libuhd.so&quot;, and when I corrected it to &quot;-L/opt/uhd/=
lib/&quot;, the linker was able to find uhd and the make command completed.=
</div><div><br></div><div>Any suggestions on fixing this issue? I have seen=
 it in my test block above and another custom block I ported to UHD 4.8.</d=
iv><div><br></div><div>Thanks,</div><div><br></div><div>David</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a935ca063a2fded6--

--===============8249225116988011379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8249225116988011379==--
