Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2881E11514B
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 14:48:42 +0100 (CET)
Received: from [::1] (port=36198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idDyI-0000DP-QM; Fri, 06 Dec 2019 08:48:38 -0500
Received: from mail-vs1-f52.google.com ([209.85.217.52]:42306)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <keithkotyk@gmail.com>)
 id 1idDyF-00008M-6h
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 08:48:35 -0500
Received: by mail-vs1-f52.google.com with SMTP id y13so5027694vsd.9
 for <usrp-users@lists.ettus.com>; Fri, 06 Dec 2019 05:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o5jKZmIWZcH8HRgVx76C6w3NShZdSrqWIANLDQ+DZek=;
 b=q1HFRRfekimwNaKX5slO1iGyAeFFdIIFRCnlhnBNGRawOwsCkOPZJB8CkXO8gAl8T3
 59ol7YjSMZ4PKZMSuJ26yUceJQaYIir1AWp+shaF3s0n2qnCyTfhr5K6QGL/j5SuC+i+
 HMOUzJh9psT0VSAiPi/+u46osFF5pqSbkgJYKB6qpAzv4wVSusPhzXkohMQHOADW/QGx
 sOjifU7I8Q14wE2xbkFJO6K4dFPX2wwkEmkdw7eap/LMR6BD1FZ2bnj5NB7wtxTYwrda
 NSjQeQU8X3L0lLJjBoB/BxI1LaF0Pr2kkOqgDI5+Kdy8XW9R8A14X0y59GRS+Ujp3LI1
 njLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o5jKZmIWZcH8HRgVx76C6w3NShZdSrqWIANLDQ+DZek=;
 b=ZYI8TyZlvENsOCQU52yo4YJKFWqcgiRbHVR4pRTPcROr1m/rkaQ1xfm4RZKONFCR+Y
 beEISUaVXUwC2fGSf9ZkN84tZV0hriMfPwrquva1xM7RdIoUercjdTrFprO9eq++4B9W
 LQcQ7rMa9kRUj27EKcF8wInhIUXgeoR0rnUGdOvtPfbWezJkSsROQJ5Rpk3/n4tmfOkk
 f+P/Hj5YgUoizM0hD3fUefzGhSOXnEr9NAyhjmQAPdJZMSUzhuO2kfxy6r15WcF50vWB
 GhtyUeA01rpJYos5MYcdVQa9KhY0y1Fwm0DFUE9fgk3X4eJUZtx1YDLKHnWyYYVXnT5l
 Lncg==
X-Gm-Message-State: APjAAAULSOYy+KoTmQ4fQMc0uia0K/bmz3sag16giYLSGOjams8+riFB
 5qFxfTnNSxaaVAdDtUihCUNKH3/tHjfKlt8V1awYMA==
X-Google-Smtp-Source: APXvYqwvNaq2Gbxxpc+i1gcUkA97YIUgkH+5rKhBcRjwwQyFeyKBRjpofzvLb8vdKE5elCC6qkFCykbbnB0b1aqSLU4=
X-Received: by 2002:a67:ea50:: with SMTP id r16mr9935644vso.227.1575640074494; 
 Fri, 06 Dec 2019 05:47:54 -0800 (PST)
MIME-Version: 1.0
References: <CAFGMRUBC+j_FsScHG1+7_p9GJwbe2Weh+KwghvokM58foJ-wWg@mail.gmail.com>
 <5DE98FB0.3020108@gmail.com>
 <CACaXmv_+SZJOsuKS5W4uHc55=dpGfyQnqAymZjgMgysFhCWP2g@mail.gmail.com>
In-Reply-To: <CACaXmv_+SZJOsuKS5W4uHc55=dpGfyQnqAymZjgMgysFhCWP2g@mail.gmail.com>
Date: Fri, 6 Dec 2019 07:47:41 -0600
Message-ID: <CAFGMRUAZiUq+gDrn0_tHBQwsA+y8aF-KEJpiGo+VpJbpitJsBg@mail.gmail.com>
To: Neel Pandeya <neel.pandeya@ettus.com>
Subject: Re: [USRP-users] DPDK
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
From: Keith k via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Keith k <keithkotyk@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2379035465721248579=="
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

--===============2379035465721248579==
Content-Type: multipart/alternative; boundary="000000000000ef2a810599094a6e"

--000000000000ef2a810599094a6e
Content-Type: text/plain; charset="UTF-8"

Thanks for the information. I was just curious. The N2xx may have
relatively low streaming rates, but I run 16 of them in a multi-usrp setup
and that combined parallel load is a lot for the computer to handle. I have
never been able to optimize the code and operating system enough to
completely eliminate lates while doing timed burst mode transmissions while
simultaneously doing continuous receive.

On Fri., Dec. 6, 2019, 05:23 Neel Pandeya <neel.pandeya@ettus.com wrote:

> Hello Keith:
>
> No, support for DPDK will not be added to the N200/N210. At the relatively
> low streaming rates of that device, there is probably not much need for
> DPDK.
>
> DPDK is supported on the X300, X310, N300, N310, N320, N321, E320.
>
> --Neel Pandeya
>
>
>
> On Thu, 5 Dec 2019 at 17:16, Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 12/05/2019 06:06 PM, Keith k via USRP-users wrote:
>> > Just wondering if there are plans to add DPDK support for the N2xx
>> > devices?
>> >
>> > --
>> > -Keith Kotyk
>> >
>> >
>> That seems unlikely since 'new feature' support for N2xx has been
>> somewhat "dead" for a few years now.
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000ef2a810599094a6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks for the information. I was just curious. The N2xx =
may have relatively low streaming rates, but I run 16 of them in a multi-us=
rp setup and that combined parallel load is a lot for the computer to handl=
e. I have never been able to optimize the code and operating system enough =
to completely eliminate lates while doing timed burst mode transmissions wh=
ile simultaneously doing continuous receive.</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr">On Fri., Dec. 6, 2019, 05:23 Neel Pandeya &lt;<a hre=
f=3D"mailto:neel.pandeya@ettus.com">neel.pandeya@ettus.com</a> wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">Hello Keith:</div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">No, suppor=
t for DPDK will not be added to the N200/N210. At the relatively low stream=
ing rates of that device, there is probably not much need for DPDK.</div><d=
iv class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">DP=
DK is supported on the X300, X310, N300, N310, N320, N321, E320.</div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">--Nee=
l Pandeya</div><div class=3D"gmail_default" style=3D"font-family:verdana,sa=
ns-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verda=
na,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, 5 Dec 2019 at 17:16, Marcus D. Leech via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On 12/05/2019 06:06 PM, Kei=
th k via USRP-users wrote:<br>
&gt; Just wondering if there are plans to add DPDK support for the N2xx <br=
>
&gt; devices?<br>
&gt;<br>
&gt; -- <br>
&gt; -Keith Kotyk<br>
&gt;<br>
&gt;<br>
That seems unlikely since &#39;new feature&#39; support for N2xx has been <=
br>
somewhat &quot;dead&quot; for a few years now.<br>
<br>
<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000ef2a810599094a6e--


--===============2379035465721248579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2379035465721248579==--

