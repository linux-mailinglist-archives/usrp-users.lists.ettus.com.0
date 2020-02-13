Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D5715BFC6
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2020 14:52:11 +0100 (CET)
Received: from [::1] (port=53678 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2EuQ-0006Kj-SR; Thu, 13 Feb 2020 08:52:02 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:44005)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1j2EuN-0004wb-Fh
 for usrp-users@lists.ettus.com; Thu, 13 Feb 2020 08:51:59 -0500
Received: by mail-oi1-f178.google.com with SMTP id p125so5782670oif.10
 for <usrp-users@lists.ettus.com>; Thu, 13 Feb 2020 05:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sOq2UEsPFrlexBGr2KCboVIRB4rkn1q4AnbHBni5ouc=;
 b=vPv6szqIQKXdlCYQKjPmCF9i4b0tMirpYZYxOQjSQvvtnfDETyj1Aeo5Fodl+eI4ET
 3kUaud656Cx7S/AUDDE6A1ErxEn1gqnw5xMcqqSOQCbYW8UIeRk/Sbp7sfguk0ph4vYL
 B1Y7w7LaniXvjRqvUVCEpmayQBw3BfS2dG/gcgrlwQESYShjZ1LSX6nNoX9nC+XEmbtX
 BwBVSqjRAbO19/Quf8ULHgJyJKjqk4/vUKMYTSsq9us/QtO+yuzmbML7ysiucc+WA121
 VcXWXRTmV0/cZ+OQRfjst+gKUwVlxdUm6OEZtUlsvtLPRJFc2/yP+cKHJ1+VHnzmxXKk
 NHbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sOq2UEsPFrlexBGr2KCboVIRB4rkn1q4AnbHBni5ouc=;
 b=k3kRbWYQGgfDzz6HtbpRv5jp1G2UUQ6wW3reVszjct3d85bd0vSxYHPy61W2pG00Pb
 qX+TTnt7CLj6gjDBT8BDvvUtQaufxR0YgbSHVSmwKogX7Vuhspwz8O2ZmPbXbvnnVc9w
 U3ND+SDkvV/3dJkdc1JA7taVqNG7eK4ZSS8hPNTE+Ywy04JW1LfBr37XvyoZBUfMJydQ
 6DYvvwV6+le4Fy/NCYJ/jQrg4sgPSUNTtJDW+stoNqJfncXB2gdAO3qqmDqJzfAM+Cj3
 xNnEcWGCRrWG8u+wy1nH5Y2W7vIaWyz0dMd9JeyJnG8UsV0kktaV/wL0tlnzeQ9UKecZ
 x2qQ==
X-Gm-Message-State: APjAAAVcfc66pMYdbvfZU3exyO/1jU5WouPC1f+UFkfWaNQKe1IJtjZs
 dIooqZ725xe7rnE3HGug3uTVbNm1kFMsW4mdiqXFb4Oz
X-Google-Smtp-Source: APXvYqx7280WBbFvkCimz0aBzPFs28C+IGRt6SNeEZwiAmajttekH/Y0D/wudj24RR50CNT9+ePxzzy01T2tuyIjoDo=
X-Received: by 2002:a54:450d:: with SMTP id l13mr2989791oil.117.1581601878474; 
 Thu, 13 Feb 2020 05:51:18 -0800 (PST)
MIME-Version: 1.0
References: <86368074.393649.1581004383613.ref@mail.yahoo.com>
 <86368074.393649.1581004383613@mail.yahoo.com>
 <151327143.2412159.1581586968416@mail.yahoo.com>
In-Reply-To: <151327143.2412159.1581586968416@mail.yahoo.com>
Date: Thu, 13 Feb 2020 08:51:07 -0500
Message-ID: <CAGNhwTPdFcx2nJABMROdjmrbLSSVBBjpukcgH2YtkcL_uPUS=Q@mail.gmail.com>
To: voonna santosh <santu_voonna@yahoo.com>
Subject: Re: [USRP-users] Getting time from USRP X300
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1478946055271238882=="
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

--===============1478946055271238882==
Content-Type: multipart/alternative; boundary="00000000000024911b059e756237"

--00000000000024911b059e756237
Content-Type: text/plain; charset="UTF-8"

HI Santosh - Please see this reply to your original post. Marcus didn't
reply to you directly, just the USRP list. If you're not receiving emails
from the list, then you should note so in your query so that we know how
to respond to you. Hope his reply is useful! - MLD

---------- Forwarded message ---------
From: Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
Date: Thu, Feb 6, 2020 at 11:30 AM
Subject: Re: [USRP-users] Getting time from USRP X300
To: <usrp-users@lists.ettus.com>

On 02/06/2020 10:53 AM, voonna santosh via USRP-users wrote:

Hi There,
   I would like to connect external GPS antenna to X300 and get the time
once GPS is locked. Can you please throw pointers on following things:

   - Does X300 support specific GPS antennas? If so can you please let me
   know ?

Any of the dozens of active GPS antenna on the market will work just fine.


   - How do I know that X300's GPS is locked? Is there any API to query for
   GPS lock status?
   - Once GPS is locked what is the API to get the time?

The 'query_gpsdo_sensors' utility will show you how to use the GPSDO API.


   - Is it possible to use X300 as NTP server? If so how could I achieve it?

No, it has no NTP support.   GPS-based NTP servers are now quite cheap, so
you should probably look into one of those.

BR,
Santosh

On Thu, Feb 13, 2020 at 4:43 AM voonna santosh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi There,
>    Will you be able to help me to resolve this?
> BR,
> Santosh
>
> On Thursday, February 6, 2020, 03:53:03 PM GMT, voonna santosh <
> santu_voonna@yahoo.com> wrote:
>
> Hi There,
>    I would like to connect external GPS antenna to X300 and get the time
> once GPS is locked. Can you please throw pointers on following things:
>
>    - Does X300 support specific GPS antennas? If so can you please let me
>    know ?
>    - How do I know that X300's GPS is locked? Is there any API to query
>    for GPS lock status?
>    - Once GPS is locked what is the API to get the time?
>    - Is it possible to use X300 as NTP server? If so how could I achieve
>    it?
>
> BR,
> Santosh
>
-- 
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--00000000000024911b059e756237
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">HI=C2=A0Santosh - Please see this reply t=
o your original post. Marcus didn&#39;t reply to you directly, just the USR=
P list. If you&#39;re not receiving emails from the list, then you should=
=C2=A0note so in your query so that we know how to=C2=A0respond to you. Hop=
e his reply is useful! - MLD<br><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">---------- Forwarded message ---------<br>From: <=
strong class=3D"gmail_sendername" dir=3D"auto">Marcus D. Leech via USRP-use=
rs</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a>&gt;</span><br>Date: Thu, Feb 6, 2020 a=
t 11:30 AM<br>Subject: Re: [USRP-users] Getting time from USRP X300<br>To: =
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt;<br></div><br>
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 02/06/2020 10:53 AM, voonna santosh
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif;font-size:16px">
        <div dir=3D"ltr">Hi There,</div>
        <div dir=3D"ltr">=C2=A0 =C2=A0I would like to connect
          external GPS antenna to X300 and get the time once GPS is
          locked. Can you please throw pointers on following things:</div>
        <div dir=3D"ltr">
          <ul>
            <li>Does X300 support specific GPS antennas? If so can you
              please let me know ?</li>
          </ul>
        </div>
      </div>
    </blockquote>
    Any of the dozens of active GPS antenna on the market will work just
    fine.<br><blockquote type=3D"cite"><div style=3D"font-family:&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:16px"><div dir=3D"ltr=
"><ul><li>How do I know that X300&#39;s GPS is locked? Is there any
              API to query for GPS lock status?</li>
            <li>Once GPS is locked what is the API to get the time? <br>
            </li>
          </ul>
        </div>
      </div>
    </blockquote>
    The &#39;query_gpsdo_sensors&#39; utility will show you how to use the =
GPSDO
    API.<br><blockquote type=3D"cite"><div style=3D"font-family:&quot;Helve=
tica Neue&quot;,Helvetica,Arial,sans-serif;font-size:16px"><div dir=3D"ltr"=
><ul><li>Is it possible to use X300 as NTP server? If so how
              could I achieve it?</li>
          </ul>
        </div>
      </div>
    </blockquote>
    No, it has no NTP support.=C2=A0=C2=A0 GPS-based NTP servers are now qu=
ite
    cheap, so you should probably look into one of those.<br><blockquote ty=
pe=3D"cite">
      <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif;font-size:16px">
       =20
        <div dir=3D"ltr">BR,</div>
        <div dir=3D"ltr">Santosh</div></div></blockquote></div></div></div>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Fe=
b 13, 2020 at 4:43 AM voonna santosh via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"fon=
t-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:16=
px"><div></div>
        <div dir=3D"ltr">Hi There,</div><div dir=3D"ltr">=C2=A0 =C2=A0Will =
you be able to help me to resolve this?</div><div dir=3D"ltr">BR,</div><div=
 dir=3D"ltr">Santosh</div><div><br></div>
       =20
        </div><div id=3D"gmail-m_7770827662845014455yahoo_quoted_2073502963=
">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Thursday, February 6, 2020, 03:53:03 PM GMT, voonna =
santosh &lt;<a href=3D"mailto:santu_voonna@yahoo.com" target=3D"_blank">san=
tu_voonna@yahoo.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><div id=3D"gmail-m_7770827662845014455yiv8388366916"><=
div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sa=
ns-serif;font-size:16px"><div dir=3D"ltr">Hi There,</div><div dir=3D"ltr">=
=C2=A0 =C2=A0I would like to connect external GPS antenna to X300 and get t=
he time once GPS is locked. Can you please throw pointers on following thin=
gs:</div><div dir=3D"ltr"><ul><li>Does X300 support specific GPS antennas? =
If so can you please let me know ?</li><li>How do I know that X300&#39;s GP=
S is locked? Is there any API to query for GPS lock status?</li><li>Once GP=
S is locked what is the API to get the time?=C2=A0</li><li>Is it possible t=
o use X300 as NTP server? If so how could I achieve it?</li></ul></div><div=
 dir=3D"ltr">BR,</div><div dir=3D"ltr">Santosh</div></div></div></div></div=
></div></div></div></blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettu=
s Research Technical Support<br>Email: <a href=3D"mailto:support@ettus.com"=
 target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.c=
om/" target=3D"_blank">https://ettus.com/</a></div></div></div></div></div>

--00000000000024911b059e756237--


--===============1478946055271238882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1478946055271238882==--

