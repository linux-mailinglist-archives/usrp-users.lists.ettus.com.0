Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 845EB137633
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2020 19:40:27 +0100 (CET)
Received: from [::1] (port=59300 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipzCs-0006uR-6l; Fri, 10 Jan 2020 13:40:26 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:41055)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ipzCo-0006hd-Ev
 for USRP-users@lists.ettus.com; Fri, 10 Jan 2020 13:40:22 -0500
Received: by mail-ot1-f50.google.com with SMTP id r27so2886208otc.8
 for <USRP-users@lists.ettus.com>; Fri, 10 Jan 2020 10:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nh5vd/pQ+FuG9d3Leaahq7WNDuRsZmUicfx4Mhtm8Cc=;
 b=FsP0C9cP1mzzGaMlvBFtm4GgCUuZTwUj5K0GEhd5ixGBjW8/i7xsN2ALIit5HlhIcl
 SU1GsEwcmS5xdL7KwB6zw9SnD4DaAr5b3+gotjlBObK0yS+85Lu5IHauusGDEnxJF0JG
 sznmi0HfAoGSY2YCg6pUgglz81NKg/b63XWaJO4mm2tWcy+eOcnG396ZteMWhwgui3+m
 uWzsXLk8vw6akUYhWL4yxWnNQypnrgSwzeLsZQzRqPJ6LYinWNsRLRO37jFKUnYpLrBs
 BW66peEBcfoXwJI/bLEaqsyqG8FesBRbSgYu1CX6evF7rieSsPDcjdwzMIhwF2z60fpl
 /Z3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nh5vd/pQ+FuG9d3Leaahq7WNDuRsZmUicfx4Mhtm8Cc=;
 b=GHe3dKej0TjkcF7qvjkIesI+PavKEzfgVotXKezoEPpGeWFOqhFVLLQVzr9YXjhro7
 vTeWxompnroAYAZPfoli3eqfn9iSGAJp+d8nwWN30T4s+m5Do8NEzqdHzMGvopTNvOS3
 PxKHpwoy5cKE7xgGgCED+eebZMzKsxLxoh8k870tRrTGfnglHKBU+Ir2WzjP3kkUIc3Z
 WyI1hC8HoUubo+Fy0ZB95+XrI5zAanQPhj9Ew9Dcdg0yOjGNL40fpd/GBtiH5pIzKqzW
 7SGfF5S7fqOC5sPs4fBEsEj3QDqas4UJKhYAfrMwO8ZeG6sW1ze5CS1985r7ZybeJGGq
 W6jA==
X-Gm-Message-State: APjAAAV2HAVyy0r5Aii0wl6BweVO1sowZpMJiOyknNM2pnHSNbrx+mUQ
 vbxwQvRg3BQ6V0++n/z3ldagwyq2iS5BicogK7HTwt6S
X-Google-Smtp-Source: APXvYqwBOaTLf0Cpj51sdGLpgFVaPk9KrvrOKNY3cPmTNDDFQZegvRjU+IlhJMWqxJDUtGqlAr1g9JD5dldh4IY/nwU=
X-Received: by 2002:a05:6830:1d6e:: with SMTP id
 l14mr3712899oti.32.1578681581707; 
 Fri, 10 Jan 2020 10:39:41 -0800 (PST)
MIME-Version: 1.0
References: <CAMMoi3tS1W9Rhsoc22TCBGQb+4TWsOG8BATrb8vcY89Lv7+SPw@mail.gmail.com>
 <CAEXYVK6GvwjD-PPNOsu6SKkuyz7Nb=oUb72BqjZczBmPmzk=Zg@mail.gmail.com>
 <CAMMoi3s108B0hraaaZYgwzpN6oXez729AnVdEh6G58--O_h6cA@mail.gmail.com>
 <CAEXYVK6z0juZ+a3X=GBDjkD124Aj39Vt_4GPURE1BzjhcuKudw@mail.gmail.com>
 <CAL263ix1=qbLc-9FN-4hXeLwR6B_5wFmVfqZjOuTZKZFZXsw0Q@mail.gmail.com>
In-Reply-To: <CAL263ix1=qbLc-9FN-4hXeLwR6B_5wFmVfqZjOuTZKZFZXsw0Q@mail.gmail.com>
Date: Fri, 10 Jan 2020 10:41:54 -0800
Message-ID: <CAL263iyQqDxs+rAS6iioP1yG1inD0Lno9CRrpKcwCqU525b+7A@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Subject: Re: [USRP-users] Measuring TDOA for Localization
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8914043261329301161=="
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

--===============8914043261329301161==
Content-Type: multipart/alternative; boundary="000000000000e44316059bcd721b"

--000000000000e44316059bcd721b
Content-Type: text/plain; charset="UTF-8"

I meant to include this link with regards to the same rates in my previous
email:
https://files.ettus.com/manual_archive/v3.15.0.0/html/page_general.html#general_sampleratenotes

On Fri, Jan 10, 2020 at 10:40 AM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Richard,
>
> To clarify, are you using a common Octoclock, with the 3 X300's in the
> same location, or separate locations with 3x Octoclocks? Do you have equal
> length cables to the antennas and does the rest of the system match ?
>
> What is your RX frequency ?
>
> What daughterboard are you using?
>
> You may want to try using a decimation factor that will produce an
> non-fractional host sample rate, instead of 200e6/22 = 9090909.09090909_
> MHz. Does running at 10 MS/s sample rate produce any difference in the
> result?
>
>
> Regards,
> Nate Temple
>
> On Thu, Jan 9, 2020 at 4:08 PM Brian Padalino via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On Thu, Jan 9, 2020 at 6:45 PM Richard Bell <richard.bell4@gmail.com>
>> wrote:
>>
>>> No I don't need to know phase information. I'm cross correlating the
>>> pairs of receivers and the location of the peak gives me the TDOA. If the
>>> hardware chains across different radios introduce different delays, that
>>> would invalidate the TDOA measurement. So long as the delay is the same
>>> through all the hardware chains, the TDOA estimate will be accurate. Can I
>>> assume the hardware delay through X300 USRPs with the same FPGA image and
>>> set to the same sampling frequency will be the same?
>>>
>>
>> I'd think the group delay should be pretty consistent - at least within
>> 10's of nanoseconds of each other if the setup is identical.
>>
>> What type of variation are you seeing when you perform your cross
>> correlations?  How much variation are you able to handle?
>>
>> Brian
>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000e44316059bcd721b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">I meant to include this link with regards to the same r=
ates in my previous email: <a href=3D"https://files.ettus.com/manual_archiv=
e/v3.15.0.0/html/page_general.html#general_sampleratenotes">https://files.e=
ttus.com/manual_archive/v3.15.0.0/html/page_general.html#general_samplerate=
notes</a></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jan 10, 2020 at 10:40 AM Nate Temple &lt;<a href=3D=
"mailto:nate.temple@ettus.com">nate.temple@ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div c=
lass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Hi =
Richard,<br><br>To clarify, are you using a common Octoclock, with the 3 X3=
00&#39;s in the same location, or separate locations with 3x Octoclocks? Do=
 you have equal length cables to the antennas and does the rest of the syst=
em match ?<br><br>What is your RX frequency ? <br><br>What daughterboard ar=
e you using?<br><br>You may want to try using a decimation factor that will=
 produce an non-fractional host sample rate, instead of 200e6/22 =3D 909090=
9.09090909_ MHz. Does running at 10 MS/s sample rate produce any difference=
 in the result?<br><br><br>Regards,<br>Nate Temple</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 9, 2020=
 at 4:08 PM Brian Padalino via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div dir=3D"ltr">On Thu, Jan 9, 2020 at 6:45 PM Richard Bell &lt;<a href=
=3D"mailto:richard.bell4@gmail.com" target=3D"_blank">richard.bell4@gmail.c=
om</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">No I don&#39;t need to know p=
hase information. I&#39;m cross correlating the pairs of receivers and the =
location of the peak gives me the TDOA. If the hardware chains across diffe=
rent radios introduce different delays, that would invalidate the TDOA meas=
urement. So long as the delay is the same through all the hardware chains, =
the TDOA estimate will be accurate. Can I assume the hardware delay through=
 X300 USRPs with the same FPGA image and set to the same sampling frequency=
 will be the same?<br></div></blockquote><div><br></div><div>I&#39;d think =
the group delay should be pretty consistent - at least within 10&#39;s of n=
anoseconds of each other if the setup is identical.</div><div><br></div><di=
v>What type of variation are you=C2=A0seeing when you perform your cross co=
rrelations?=C2=A0 How much variation are you able to handle?</div><div><br>=
</div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000e44316059bcd721b--


--===============8914043261329301161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8914043261329301161==--

