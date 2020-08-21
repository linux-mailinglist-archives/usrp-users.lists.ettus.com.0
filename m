Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA03224DA89
	for <lists+usrp-users@lfdr.de>; Fri, 21 Aug 2020 18:21:52 +0200 (CEST)
Received: from [::1] (port=53240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k99nY-0006qy-Qo; Fri, 21 Aug 2020 12:21:48 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:39078)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1k99nV-0006jW-7r
 for usrp-users@lists.ettus.com; Fri, 21 Aug 2020 12:21:45 -0400
Received: by mail-oi1-f174.google.com with SMTP id a24so1971621oia.6
 for <usrp-users@lists.ettus.com>; Fri, 21 Aug 2020 09:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dWSxgWKX3sQi9DC0ZWPBKOu+vdTS0L4O/Ip4rR4J2eA=;
 b=HeNEfrG5aEtFlE1iBOxTtRDaT7pSxFbSnct3MfZiEUVqPtWFih7SHtrDpFYIGoc6ql
 0tEwa7GonqBKoV4yPRGV2liS9uGaPWEgQekAWH4cz6njFEgyTJSN329KhHLfxmK3qEQO
 /BtSAEgO/9Qi5aGpdUOJf4+khJBaHa0oQiHA182ka9ZX7Xd02XCWvvjIwwig3my3EFgB
 uZLgHMxAaGQwipL+FaCo/7N4aXL3z8Db5cDBNtTn9goyvmAA1pRivOaU6wkA7/ykinYy
 ohATM2QqEk8ghn3Mv4Adu9xhDO6Bn1WTrsATyjcoxRVM7PzloKAuR+5fwGmMkSDIcFfZ
 dPNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dWSxgWKX3sQi9DC0ZWPBKOu+vdTS0L4O/Ip4rR4J2eA=;
 b=Ptc23CSaf31NQrBuhQj8/c8RtJiHTsJ/pMVIs7sFfEdk2xE8/CGXUxZllzAaG39bWX
 HLZvQvDkNPYMbF9BdPXKhAF8j+xkfbK1wXSfU4948olGFXECj/bUa9ZhjPMOLM+v8JVH
 KbW7Usfr+sq5cHxeW0foe5tnwbuBFPLKa7bG7mu70jeBXPrcKzX5/SU/bCvlPjQtAfnO
 YlCART5fBfMKMtIY/JAvbqOFW/ripYGkS3SnpF2QcWQyB6BsAcehn10ShJkt9yysl0Fo
 T/RO8AFZaetCbrkxUWm1D4S4zj1qknYJ06sYAXnwk57tafO9MKKkm9vjxAKdTIwprOOb
 WOaw==
X-Gm-Message-State: AOAM532a643Uz61h4+tWZ37PgzEryqjH3uZY2MuVDUV9D2/24BWX2ygI
 r9BzENLU1vYtlKw4SI3IAEI3DNhq42fP4/lMSYxCXw==
X-Google-Smtp-Source: ABdhPJwvYp4vIrEcuO/c7c6OPrAvRPhyIChXwj44uJBXVSlYf/EpKEHP4b643ipcl9ZzU/AHUZjH7J4HExfSwwLwluk=
X-Received: by 2002:aca:fd46:: with SMTP id b67mr2214400oii.150.1598026864443; 
 Fri, 21 Aug 2020 09:21:04 -0700 (PDT)
MIME-Version: 1.0
References: <7d8c7731d23c412490a27750fac617a9@kongsberg.com>
 <CAB__hTR_n5zEHbSNSADeV+euNu5m-Chb7agX5D+RhZo5LOK00Q@mail.gmail.com>
 <a836f011bfdb46fb9403baafa0060800@kongsberg.com>
 <CAB__hTRbkX2HVfC5zVK7p17W9Q1keFoGMO7K9xC3GfaLVUjWFg@mail.gmail.com>
 <6ced606fafac42f28485978c0a087227@kongsberg.com>
In-Reply-To: <6ced606fafac42f28485978c0a087227@kongsberg.com>
Date: Fri, 21 Aug 2020 12:20:54 -0400
Message-ID: <CAB__hTQ4yy8Mrbgn4tn1hJj8GmeY4W5hi1sMSbuMhp3cAFELfg@mail.gmail.com>
To: Andreas.Bertheussen@kongsberg.com
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Issues with multi-usrp and UHD
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8638658323126226053=="
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

--===============8638658323126226053==
Content-Type: multipart/alternative; boundary="000000000000991ee205ad659f3b"

--000000000000991ee205ad659f3b
Content-Type: text/plain; charset="UTF-8"

Hi Andreas,
When you set the subdev spec to "A:0 B:0" for both devices as you do in
this case, UHD now has 4 channels where channels 0/1 are on device 1 and
2/3 are o{n device 2. So, your streaming command is correct in choosing
{0,2} as the desired stream channels. But other parts of your code are not
because you have "num_chan" set to 2 and so you are only manipulating
channels 0/1 with your other commands.  Perhaps you could set a vector at
the top such as:
  std::vector<size_t> my_chan = {0,2};
and then you could have num_chan=2 (as is now) but then you always need to
use "my_chan[chan_index]" when providing a channel index to UHD (such as
tune commands or gain commands). This "my_chan" vector could be used
directly also in the stream args.

I don't know if this will fix your overall issue, but the channel indexing
needs to be modified to match what UHD is expecting.
Rob


On Fri, Aug 21, 2020 at 5:39 AM <Andreas.Bertheussen@kongsberg.com> wrote:

> > Can you resend the source code for the first case you describe below
> along with command line?
>
> I have attached the code for a channel mapping of (0,2) in siggen.cc. I
> also include my CMakeLists file.
>
> Program is run without arguments; ./siggen
>
> Attached output_case_1.txt shows the program output when outputs A and B
> on first X310 get enabled, and I do observe signals on those outputs.
> Attached output_case_2.txt shows the program output when outputs A and B
> on second X310 get enabled, but I _do not_ observe signals on those outputs.
>
> Looking back on the mailing list this also seems similar to the "issue
> about subdev spec" posted by Damon qi, earlier this month.
>
> Regards,
> Andreas.
>
> ________________________________
>
> CONFIDENTIALITY
> This e-mail and any attachment contain KONGSBERG information which may be
> proprietary, confidential or subject to export regulations, and is only
> meant for the intended recipient(s). Any disclosure, copying, distribution
> or use is prohibited, if not otherwise explicitly agreed with KONGSBERG. If
> received in error, please delete it immediately from your system and notify
> the sender properly.
>

--000000000000991ee205ad659f3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Andreas,<div>When you set the subdev s=
pec to &quot;A:0 B:0&quot; for both devices as you do in this case, UHD now=
 has 4 channels where channels 0/1 are on device 1 and 2/3 are o{n device 2=
. So, your streaming command is correct in choosing {0,2} as the desired st=
ream channels. But other parts of your code are not because you have &quot;=
num_chan&quot; set to 2 and so you are only manipulating channels 0/1 with =
your other commands.=C2=A0 Perhaps you could set a vector at the top such a=
s:</div><div>=C2=A0 std::vector&lt;size_t&gt; my_chan =3D {0,2};</div><div>=
and then you could have num_chan=3D2 (as is now) but then you always need t=
o use &quot;my_chan[chan_index]&quot; when providing a channel index to UHD=
 (such as tune commands or gain commands). This &quot;my_chan&quot; vector =
could be used directly also in the stream args.</div><div><br></div><div>I =
don&#39;t know if this will fix your overall issue, but the channel indexin=
g needs to be modified to match what UHD is expecting.</div><div>Rob</div><=
div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Aug 21, 2020 at 5:39 AM &lt;<a href=3D"mailto:A=
ndreas.Bertheussen@kongsberg.com">Andreas.Bertheussen@kongsberg.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; Can=
 you resend the source code for the first case you describe below along wit=
h command line?<br>
<br>
I have attached the code for a channel mapping of (0,2) in siggen.cc. I als=
o include my CMakeLists file.<br>
<br>
Program is run without arguments; ./siggen<br>
<br>
Attached output_case_1.txt shows the program output when outputs A and B on=
 first X310 get enabled, and I do observe signals on those outputs.<br>
Attached output_case_2.txt shows the program output when outputs A and B on=
 second X310 get enabled, but I _do not_ observe signals on those outputs.<=
br>
<br>
Looking back on the mailing list this also seems similar to the &quot;issue=
 about subdev spec&quot; posted by Damon qi, earlier this month.<br>
<br>
Regards,<br>
Andreas.<br>
<br>
________________________________<br>
<br>
CONFIDENTIALITY<br>
This e-mail and any attachment contain KONGSBERG information which may be p=
roprietary, confidential or subject to export regulations, and is only mean=
t for the intended recipient(s). Any disclosure, copying, distribution or u=
se is prohibited, if not otherwise explicitly agreed with KONGSBERG. If rec=
eived in error, please delete it immediately from your system and notify th=
e sender properly.<br>
</blockquote></div>

--000000000000991ee205ad659f3b--


--===============8638658323126226053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8638658323126226053==--

