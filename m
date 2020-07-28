Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79572230B81
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jul 2020 15:31:16 +0200 (CEST)
Received: from [::1] (port=57202 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0PhH-0007AI-JP; Tue, 28 Jul 2020 09:31:11 -0400
Received: from mail-ej1-f53.google.com ([209.85.218.53]:43912)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <alex.m.humberstone@gmail.com>)
 id 1k0PhD-00073X-Fm
 for usrp-users@lists.ettus.com; Tue, 28 Jul 2020 09:31:07 -0400
Received: by mail-ej1-f53.google.com with SMTP id a21so20627418ejj.10
 for <usrp-users@lists.ettus.com>; Tue, 28 Jul 2020 06:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qmndsdbN0TAXaQWB7eHIQYkA/YOKHBVU6YSrZixYj5w=;
 b=n24HhwAbb1QThNehprNgfkBMFvuoHCWKwT6uZYtJdXgUHCg3SUKB2QDsWJLTAG6jsR
 T9c+teh2UWNLD62JcUuWUKkfPhXnxphJg25sCO16gZ6kt/1gcH41b+sxkpzznekyVN0s
 BnG7X334gtWEY9db2janYSFV/Nh/dT3ITC+2BgQA+ud+Jz7BuMrbUgfiOLRHy5iAd6cO
 bN+D3GJGdCdSB6D3yfMvnmL/aYcusf31UXgPY2eo8EiYg7rwU7u7rjRK/r1LWXXxz+L5
 mkXfYH/0qAhPjPAxfzBG+FZZIWUPyReVg8652q5K3f1cfj9ZytUeJtFLwI8YUas+DhdJ
 DJjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qmndsdbN0TAXaQWB7eHIQYkA/YOKHBVU6YSrZixYj5w=;
 b=ahaCcpUHw1jOnf4lYhaah5AoEu53p0VaFpZt0ktJkDYia9/URM1UmePuWqH/Iw3bvc
 Nefey99qx0K1eLKbLz2V5lr42iEiOfvKR9uZ1QnEjiGe0U9NQP0i/BZBOWviL31M6NmA
 WQevoJeW1TcCmUvD4yQLQJ/gz6Y48kqP7dRQF6m+WQm0ScRkb2LxwVuErSl4zTvWPlpn
 xfHAcKX8e58oErjnW86nNZhd7zKxEJUMIJlKnQJOfC/7R+VtzG0qKIAkTi2TLF0XaTQq
 Pf9DucNfmOSM4TiQXsamzFwnmG7m13B9zIxIzSjxajgvw4i4vAYmHkyquH2B8c36QM0I
 YKNQ==
X-Gm-Message-State: AOAM532JftMXGrsDvu9XDJQ/9EdyDQFtCKPvNA2MRX8erNrlcefMgcYt
 SSjoAFat9tWABHHjh5m2+xF1nI9b3FGemG0MvP4=
X-Google-Smtp-Source: ABdhPJw/zrLuq+GZEYkPSUJWKlUx7aiW4fYbQGHswbyYQIKg2VrbJcBTBN/qNE9LptcHDO1OyzOLpdvfbswtDc/YOy8=
X-Received: by 2002:a17:907:41dc:: with SMTP id
 og20mr26530284ejb.183.1595943026475; 
 Tue, 28 Jul 2020 06:30:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh71y=SwYu3-0OHcrmxn_PEpWJgzDA7pZu0bUbNBjEv05bg@mail.gmail.com>
 <5F1F831C.3070001@gmail.com>
 <CAH2Hh72YDLBvqj=yz2ugZ9JTK0HqBsFRPzhTs9vNHq+EcG_M3Q@mail.gmail.com>
In-Reply-To: <CAH2Hh72YDLBvqj=yz2ugZ9JTK0HqBsFRPzhTs9vNHq+EcG_M3Q@mail.gmail.com>
Date: Tue, 28 Jul 2020 08:29:49 -0500
Message-ID: <CAE0dfYYJsN5sVFCwwqRmq_c4HM60YGVnN6BZs7U2AxS0rEoe2g@mail.gmail.com>
To: Aaron Smith <aarsmith54@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] B200 cannot output a sine wave
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
From: Alex Humberstone via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Humberstone <alex.m.humberstone@gmail.com>
Content-Type: multipart/mixed; boundary="===============2857672701156538609=="
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

--===============2857672701156538609==
Content-Type: multipart/alternative; boundary="0000000000002cc77305ab8071c2"

--0000000000002cc77305ab8071c2
Content-Type: text/plain; charset="UTF-8"

What you're trying to do is pretty straight forward. I do this here in my
lab all the tiem. Can you show us your flowgraph? How are you running
tx_waveforms? Are you using a USB 3 port? How's the B200 connected to the
oscilloscope?



On Mon, 27 Jul 2020 at 21:58, Aaron Smith via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Marcus,
>
> I have tried frequencies ranging from 75-450 MHz. My scope is good to 500
> MHz. I have tried gain settings betweeb 30 and 60. I am using RG-174, which
> is good to 1000 MHz.
>
> In my custom code I generate tones by sending repeating samples with a
> value of 0.8. In the past this caused tones to appear at B200's center
> frequency. This should work regardless of the clock rate or sample rate,
> but in this case I'm using a 48 MHz master clock rate and a sample rate of
> 8 MHz.
>
> I also followed a gnuradio companion tutorial to generate a tone and it
> produced something ugly too.
>
> The only thing in my setup that changed is the host laptop. I switched to
> a new laptop and had to build UHD from scratch. However, gnuradio companion
> appears to use a different UHD version, so I'm skeptical that is the
> problem.
>
> Thanks for your help.
>
> On Mon, Jul 27, 2020, 7:45 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 07/27/2020 09:05 PM, Aaron Smith via USRP-users wrote:
>>
>> Hello all,
>>
>> I am trying to output a sine wave from a B200 using custom code, or the
>> UHD tx_waveform example. In either case, when I view the output on an
>> o-scope, there is not a pure sine wave. The output looks more triangular
>> wave. I have used this scope with other B200s and the same code to get a
>> pure sine. Is the radio damaged? Is there some sort of calibration
>> required? I am using UHD 3.15.0.
>>
>> Thanks
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> What frequency?  What gain settings? What is your baseband bandwidth?  Is
>> your coax cable known to be "good" at the frequency of interest?
>>   What sample rate?  Is the baseband signal well within the Nyquist
>> limits?
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University
Las Cruces, New Mexico

--0000000000002cc77305ab8071c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">What you&#39;re trying to do is pretty straight forward.=
 I do this here in my lab all the tiem. Can you show us your flowgraph? How=
 are you running tx_waveforms? Are you using a USB 3 port? How&#39;s the B2=
00 connected to the oscilloscope?</div><div class=3D"gmail_default" style=
=3D"font-family:monospace;font-size:large"><br></div><div class=3D"gmail_de=
fault" style=3D"font-family:monospace;font-size:large"><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 27=
 Jul 2020 at 21:58, Aaron Smith via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Marcus,<d=
iv dir=3D"auto"><br></div><div dir=3D"auto">I have tried frequencies rangin=
g from 75-450 MHz. My scope is good to 500 MHz. I have tried gain settings =
betweeb 30 and 60. I am using RG-174, which is good to 1000 MHz.=C2=A0</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">In my custom code I generate=
 tones by sending repeating samples with a value of 0.8. In the past this c=
aused tones to appear at B200&#39;s center frequency. This should work rega=
rdless of the clock rate or sample rate, but in this case I&#39;m using a 4=
8 MHz master clock rate and a sample rate of 8 MHz.=C2=A0</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">I also followed a gnuradio companion tuto=
rial to generate a tone and it produced something ugly too.=C2=A0</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">The only thing in my setup that c=
hanged is the host laptop. I switched to a new laptop and had to build UHD =
from scratch. However, gnuradio companion appears to use a different UHD ve=
rsion, so I&#39;m skeptical that is the problem.</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Thanks for your help.=C2=A0</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 27, 2=
020, 7:45 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 07/27/2020 09:05 PM, Aaron Smith via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"auto">Hello all,
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">I am trying to output a sine wave from a B200
          using custom code, or the UHD tx_waveform example. In either
          case, when I view the output on an o-scope, there is not a
          pure sine wave. The output looks more triangular wave. I have
          used this scope with other B200s and the same code to get a
          pure sine. Is the radio damaged? Is there some sort of
          calibration required? I am using UHD 3.15.0.=C2=A0</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks</div>
        <div dir=3D"auto"><br>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    What frequency?=C2=A0 What gain settings? What is your baseband
    bandwidth?=C2=A0 Is your coax cable known to be &quot;good&quot; at the=
 frequency
    of interest?<br>
    =C2=A0 What sample rate?=C2=A0 Is the baseband signal well within the N=
yquist
    limits?<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"font-famil=
y:monospace">Sincerely,<br></span></font><div><font size=3D"4"><span style=
=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><div><font=
 size=3D"4"><span style=3D"font-family:monospace">PhD Student</span></font>=
</div><div><font size=3D"4"><span style=3D"font-family:monospace">Klipsch S=
chool of Electrical Engineering<br></span></font></div><div><font size=3D"4=
"><span style=3D"font-family:monospace">New Mexico State University<br><spa=
n><span>Las Cruces, </span></span>New Mexico</span></font></div><div><font =
size=3D"4"><span style=3D"font-family:monospace"><br></span></font></div><d=
iv><font size=3D"4"><span style=3D"font-family:monospace"></span></font></d=
iv></div></div>

--0000000000002cc77305ab8071c2--


--===============2857672701156538609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2857672701156538609==--

