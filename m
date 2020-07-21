Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 081BC2282FF
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 17:01:36 +0200 (CEST)
Received: from [::1] (port=40652 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxtlu-0008Em-C3; Tue, 21 Jul 2020 11:01:34 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:46633)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hai.n.nguyen204@gmail.com>)
 id 1jxtlq-00082Z-9H
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 11:01:30 -0400
Received: by mail-qk1-f174.google.com with SMTP id d14so7826077qke.13
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 08:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=knMyMhahB8Es4Vtr/QBdbGe+C5KqmJ44FcqWuCEl4F4=;
 b=d30Levv6msObxoX1t0H/gFcVj1yKbwRr7k8FOSXkdfosPjmDLk1QG3H+zYGcb5U5Hx
 LT90j5dNLVVpfh8vJ9F8mszKcCF9NkjqOSxR02p08i0zDne80k+hO8pPQDNMkAk1Kmuf
 MEXuQjqCePfhoPaFX5b6oRaCrje9tXGChdqsSp3fAdokjJzOM2YsiWnByEgTAjLMcB3Y
 6+UFg0RwP7d0UBGCnq8qfzuCoigZ3EjESK53AvSah+EKKyPf+IRJ7o1Ky9QQmQZ6ntxj
 866fkSu15yB2qVU9wTE7dvL7Xz+00reRMVdQUWWbibc5vkVD08HGrQye4EHodGtzP0UM
 QbYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=knMyMhahB8Es4Vtr/QBdbGe+C5KqmJ44FcqWuCEl4F4=;
 b=VOWDsoptXSatEqG+2eMfYzddKjKU/2tZ6siA6zl6SV/icrAnyAbM1fwKjhxWlknVeq
 YmtRP0UmPISt9eCy5c0u0/MTgYoJwzQgaRj7r2svj6WtnCUx7QvgD8W1QtKRQdz8wqLU
 oTd7TQ3hANKyK1UHS0xOhLNPVh+fhieIFNII2bE1/MJRUDueyAQdihiKfrrUR6/EmtM7
 kAChfirQls5wGc3TyF0RrZNbLKB1f1viAqSNq4mypIXTbpKMYoK3TVstb4p1CVqYWCf6
 lkzxEBNBg+9GNAKYPrbgZ+q18HoZir0pZPQC1GVa2SVE3v4ug/3mftow2nEVYA55gXcz
 QYnw==
X-Gm-Message-State: AOAM532QT4kOIBrTDmFmE/iP3+K02rhU0Nu6sD2sk5z5A201ZgPOBaOf
 cN5EtvulSWm4ZdR2g54hsxlNomHmdwKej0pzfh4Zrj0Ucqg=
X-Google-Smtp-Source: ABdhPJwjZYA+7g1ZJzgxMFWx05GfA1J2E4zp5Sp/JZfT568qkPiDlzaJ67QqF3Ca27pXu3oKDE0Gywe3LbGZMIU3uBw=
X-Received: by 2002:a37:b387:: with SMTP id
 c129mr19507289qkf.292.1595343649382; 
 Tue, 21 Jul 2020 08:00:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZDN5J8ncEHAP1H=93cBUZ_sxOzydoXKc54sKgkCcFOHV9gYA@mail.gmail.com>
 <CAFZDN5+mXMNa4kMXfq8SUKTGn88apB3SbhCM1eoevJfGcbmO1g@mail.gmail.com>
 <CAFZDN5KCQ9MiZaAhkKU1KNewCwPyNhr-2RdBgo6E6eq864RMYA@mail.gmail.com>
In-Reply-To: <CAFZDN5KCQ9MiZaAhkKU1KNewCwPyNhr-2RdBgo6E6eq864RMYA@mail.gmail.com>
Date: Tue, 21 Jul 2020 11:00:38 -0400
Message-ID: <CAFZDN5JhDe+eytgiaZX7DsE1Y6g-UdNvsZoF-BmUtyWHHhW1YA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Persistent red LINK LED,
 streaming samples valued zero
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
From: Hai Nguyen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hai Nguyen <hai.n.nguyen204@gmail.com>
Content-Type: multipart/mixed; boundary="===============3671953849654761861=="
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

--===============3671953849654761861==
Content-Type: multipart/alternative; boundary="00000000000084242405aaf4e31b"

--00000000000084242405aaf4e31b
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

- Are you creating a multi_usrp object for each USRP, or are you creating a
single multi_usrp object with multiple streamers coming out of that object?
I'm having a multi_usrp object for each USRP, with a streamer for each
object.

- Is this on Linux or Windows?
This is on Linux (Ubuntu 16.04)

- Are the USRPs on the same, or different, network interfaces?
They are on different network interfaces with 10GigE connection for each.

-Hai

On Tue, Jul 21, 2020 at 2:20 AM Hai Nguyen <hai.n.nguyen204@gmail.com>
wrote:

> Hi Marcus,
>
> So with new UHD version, the LED behavior disappeared, but now the USRPs
> cannot stream at all (0 samples received from streamer). I figured out that
> this happens when I tried to create multiple threads for multiple
> streamers, one streamer for one USRP. (I'm having 2 USRPs streaming 2 RX
> channels simultaneously). I had to work around this by creating just one
> extra thread for a USRP, while making the other USRP stream in the current
> main thread. Another possible way would be using a single streamer...
>
> I'm kinda confused (and curious!) why it is not possible to spawn multiple
> threads for multiple streamers. This was not happening with B210s, but just
> when I started to work with the X310s. I will be appreciate for further
> info about this behavior.
>
> -Hai
>
> On Mon, Jul 20, 2020 at 12:32 PM Hai Nguyen <hai.n.nguyen204@gmail.com>
> wrote:
>
>> Hello,
>>
>> - Are you getting any under-run indications?
>> There is no under-run indication.
>>
>> - What sample rate are you using?
>> I tried with different values ranging from 1 Msamps to 100 Msamps and the
>> behaviors are the same.
>>
>> - Do you see this at the same sample rate with an example application
>> like
>> "rx_samples_to_file".   Are you using standard FPGA firmware or do
>>    you have your own modules in the FPGA?
>> No, I don't see this with rx_samples_to_file (with that example, orange
>> LINK LED appeared). I am using a standard FPGA image.
>>
>> - What version of UHD are you using?
>> I'm using UHD 3.9.7 (LTS)
>>
>> Best,
>> Hai
>>
>>
>>
>>
>> On Mon, Jul 20, 2020 at 1:52 AM Hai Nguyen <hai.n.nguyen204@gmail.com>
>> wrote:
>>
>>> Hello,
>>>
>>> I'm having an error where received samples from RX chains of a X310
>>> (after calling recv from the streamer) have values of 0 (both I and Q), and
>>> those values don't change over time. One abnormal thing is that the LINK
>>> LED in the front panel is persistently red during streaming. I noticed that
>>> when streaming samples is ok this LED is normally persistently orange
>>> instead.
>>>
>>> Do you have any ideas what would be the cause of this?
>>>
>>> Thank you and best regards,
>>> Hai
>>>
>>

--00000000000084242405aaf4e31b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus,</div><div><br></div><div>- Are you creatin=
g a multi_usrp object for each USRP, or are you creating a single multi_usr=
p object with multiple streamers coming out of that object?</div><div>I&#39=
;m having a multi_usrp object for each USRP, with a streamer for each objec=
t.</div><div><br></div><div>- Is this on Linux or Windows?</div><div>This i=
s on Linux (Ubuntu 16.04)</div><div><br></div><div>- Are the USRPs on the s=
ame, or different, network interfaces?</div><div>They are on different netw=
ork interfaces with 10GigE connection for each.</div><div><br></div><div>-H=
ai<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, Jul 21, 2020 at 2:20 AM Hai Nguyen &lt;<a href=3D"mailt=
o:hai.n.nguyen204@gmail.com">hai.n.nguyen204@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>Hi Marcus,</div><div><br></div><div>So with new UHD version, the LED behav=
ior disappeared, but now the USRPs cannot stream at all (0 samples received=
 from streamer). I figured out that this happens when I tried to create mul=
tiple threads for multiple streamers, one streamer for one USRP. (I&#39;m h=
aving 2 USRPs streaming 2 RX channels simultaneously). I had to work around=
 this by creating just one extra thread for a USRP, while making the other =
USRP stream in the current main thread. Another possible way would be using=
 a single streamer...<br></div><div><br></div><div>I&#39;m kinda confused (=
and curious!) why it is not possible to spawn multiple threads for multiple=
 streamers. This was not happening with B210s, but just when I started to w=
ork with the X310s. I will be appreciate for further info about this behavi=
or.<br></div><div><br></div><div>-Hai<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 20, 2020 at 12:3=
2 PM Hai Nguyen &lt;<a href=3D"mailto:hai.n.nguyen204@gmail.com" target=3D"=
_blank">hai.n.nguyen204@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br=
></div><div>- Are you getting any under-run indications?</div>
<div>There is no under-run indication.<br></div><div><br></div>
- What sample rate are you using?<br>
<div>I tried with different values ranging from 1 Msamps to 100 Msamps and =
the behaviors are the same.</div><div><br></div>
- Do you see this at the same sample rate with an example application like =
<br>
&quot;rx_samples_to_file&quot;.=C2=A0 =C2=A0Are you using standard FPGA fir=
mware or do<br><div>
=C2=A0 =C2=A0you have your own modules in the FPGA?</div><div>No, I don&#39=
;t see this with rx_samples_to_file (with that example, orange LINK LED app=
eared). I am using a standard FPGA image. <br></div>
<br><div>
- What version of UHD are you using?</div><div>I&#39;m using UHD 3.9.7 (LTS=
)</div><div><br></div><div>Best,</div><div>Hai<br></div><div><br></div><div=
><br></div><br>
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Jul 20, 2020 at 1:52 AM Hai Nguyen &lt;<a href=3D"mailto:hai.n.nguy=
en204@gmail.com" target=3D"_blank">hai.n.nguyen204@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>Hello,</div><div><br></div><div>I&#39;m having an error where receiv=
ed samples from RX chains of a X310 (after calling recv from the streamer) =
have values of 0 (both I and Q), and those values don&#39;t change over tim=
e. One abnormal thing is that the LINK LED in the front panel is persistent=
ly red during streaming. I noticed that when streaming samples is ok this L=
ED is normally persistently orange instead. <br></div><div><br></div><div>D=
o you have any ideas what would be the cause of this?</div><div><br></div><=
div>Thank you and best regards,</div><div>Hai<br></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000084242405aaf4e31b--


--===============3671953849654761861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3671953849654761861==--

