Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA04372E62
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 19:02:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA7EA384C0F
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 13:02:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cAPrHHpk";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 321D43840ED
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 13:01:36 -0400 (EDT)
Received: by mail-yb1-f182.google.com with SMTP id 15so13140734ybc.0
        for <usrp-users@lists.ettus.com>; Tue, 04 May 2021 10:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t+CCEaX+UnFj3UAvubwhis6d2TW3xDjuqBmHnCeIt14=;
        b=cAPrHHpkk/TBnf8lld6kiWGEDAcSCIJOxffx0+V270LuHeNJqYlDTpI5i0QBJ79iXk
         W5j6Aq4g/WZt2sh0ErvtMfiGgfGPqZd1WZJOP1Em97yUQmmDPtNv+dv1yI5Jf6Lu2YoS
         nCV7d+i0O97zsxsLVn3dj9SWolvKhO6RgM1RiVs3QB60Ox5zk9z/M3/ePeZXU6i7Ei2M
         B8Cid+DNbVEKbl4Sth5Uy4vclXKoLUgm+WRuLn6KEeZwOcK9s2N4jCLubhL7Af8H5W2+
         grezaL+kGpV6K+QvKhHjLXoxwiUiA7mv8P5tr218yPYIovpKcXmK1sWlzjWOoerwzpxx
         Tp6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t+CCEaX+UnFj3UAvubwhis6d2TW3xDjuqBmHnCeIt14=;
        b=r2jw6MpUFsiVdJqT2tpDhI0+i1oGmxzR0UCWIqSGLOSVgmR0Yv6PnqfG85pvAtxlz5
         vamrfx9WiQQxzZBv0wKJcWCsExrNgQyIkAqVJF0pPagD6CwZiAR9OGQcsXf0/7tqt0RQ
         FkjbFo4/YWc1zUsVKLRPinFGDWrGFoDz3V/UVTHeJUTgUdSn4dfWuZszx+Rlb5Tkyhdm
         qVrIlnyhhqLIno3EtXS6CnqyRr9b7SDvgfw0D+rlRIRgzhihoABl08OdIzlyUVonlEbV
         d8R8XgpXMoKE0V070fb8t0r4FitIq48fdDZMprWIKDeKVCkKHy7gfa8zeSnJYaYW2luU
         WO4g==
X-Gm-Message-State: AOAM530GfMZ5iV26A2CmdwtTSdZrv2ZbmDBsDXDtxYDPJvNjQ4V3hXHB
	1Dh8woK2Zh/qW4m0ZFV5FT/yaP9tljIqTgH/nvw=
X-Google-Smtp-Source: ABdhPJy7jllMQhvlNlnaTrf9kqIRF3WpIzbEXb1r8D007fTCZTS0NQEhjMCXy1rDYVWiq098z9WWZ5rmp9yLO9Sviuw=
X-Received: by 2002:a25:f504:: with SMTP id a4mr33380526ybe.150.1620147695524;
 Tue, 04 May 2021 10:01:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NbL7UbQNHjNg4vMp1cRAtD4Pv4nh0okCgvmfEV0Ed_xWg@mail.gmail.com>
 <99A6F1D2-EB9F-4358-BA90-E5371702A1C9@gmail.com>
In-Reply-To: <99A6F1D2-EB9F-4358-BA90-E5371702A1C9@gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Tue, 4 May 2021 13:01:23 -0400
Message-ID: <CAL0m=NaJnqCuTQuA31R2bpxFq+O1dFzerbh5Ed34NrVtwkYcxQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: D4T6K6MKAGFHL26PZ26XVHWGMCCZQLLL
X-Message-ID-Hash: D4T6K6MKAGFHL26PZ26XVHWGMCCZQLLL
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GNU Radio cannot find N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D4T6K6MKAGFHL26PZ26XVHWGMCCZQLLL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5011225912549816154=="

--===============5011225912549816154==
Content-Type: multipart/alternative; boundary="000000000000e01e1805c18407c2"

--000000000000e01e1805c18407c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your information. I have reinstalled GNU Radio from source. The
problem was resolved.


On Tue, May 4, 2021 at 11:29 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> That means that the GR you have was built using the older UHD.
>
> You=E2=80=99ll very likely need to uninstall GR and do a source based ins=
tall of
> GR.
>
> Sent from my iPhone
>
> On May 4, 2021, at 10:28 AM, Zeng, Huacheng <huacheng.zeng@gmail.com>
> wrote:
>
> =EF=BB=BF
> Hi Marcus,
>
> Thank you for your response. The output of GR graph shows "linux; GNU C++
> version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown." Looks like t=
he
> GR graph did not use UHD_4.0.0, which I have installed following the
> instructions on Ettus website. Is there a way to force GR to use a new
> version of UHD?
>
> Thanks,
> Hua
>
>
>
> On Mon, May 3, 2021 at 7:07 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 05/03/2021 04:31 PM, Zeng, Huacheng wrote:
>> > Hello,
>> >
>> > I was trying to receive the signal from UHD Sink (n310) in GNU Radio
>> > Companion (GRC) but got the following error message (i.e., GRC cannot
>> > find N310). I am using Ubuntu 18.04, GNU RADIO 3.9, and UHD 4.0.0. I
>> > have confirmed that
>> > - My GRC can work with N210.
>> > - I can ping both eth0 and SPF+ ports of N310 from host.
>> > - In terminal "uhd_find_devices" can find N310.
>> > - "uhd_usrp_probe" can also find N310. Output message is attached belo=
w.
>> > - I can log in N310 using SSH.
>> > - I have updated N310's FPGA image. The OS in N310 is also UHD 4.0.0
>> > (the same as the host).
>> >
>> > Any suggestions would be appreciated.
>> > Thanks,
>> > Hua
>> >
>> >
>> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> > ERROR MESSAGE FROM GRC
>> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> > Traceback (most recent call last):
>> >   File "/home/cnss/test2.py", line 150, in <module>
>> >     main()
>> >   File "/home/cnss/test2.py", line 126, in main
>> >     tb =3D top_block_cls()
>> >   File "/home/cnss/test2.py", line 84, in __init__
>> >     channels=3Dlist(range(0,1)),
>> >   File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line
>> > 125, in constructor_interceptor
>> >     return old_constructor(*args)
>> >   File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line
>> > 3259, in make
>> >     return _uhd_swig.usrp_source_make(device_addr, stream_args,
>> > issue_stream_cmd_on_start)
>> > RuntimeError: LookupError: KeyError: No devices found for ----->
>> > Device Address:
>> >     addr: 192.168.20.2
>> >
>> >
>> Could you share the full output from the GR graph run? Including the
>> headers where it says what version of UHD it is using?
>>
>> Also, what was the device address string you used in GR?  Did you
>> include type=3Dn3xx,product=3Dn310 ??
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000e01e1805c18407c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for your information. I have reinstalled GNU Radio =
from source. The problem was resolved.=C2=A0<div><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 4, 2=
021 at 11:29 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"auto">That means that the GR you have=
 was built using the older UHD.=C2=A0<div><br></div><div>You=E2=80=99ll ver=
y likely need to uninstall GR and do a source based install of GR.=C2=A0<br=
><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockq=
uote type=3D"cite">On May 4, 2021, at 10:28 AM, Zeng, Huacheng &lt;<a href=
=3D"mailto:huacheng.zeng@gmail.com" target=3D"_blank">huacheng.zeng@gmail.c=
om</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div =
dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Hi Marcus, <br></div><div><br></=
div><div>Thank you for your response. The output of GR graph shows &quot;li=
nux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown.&qu=
ot; Looks like the GR graph did not use UHD_4.0.0, which I have installed f=
ollowing the instructions on Ettus website. Is there a way to force GR to u=
se a new version of UHD?</div><div><br></div><div>Thanks,</div><div>Hua</di=
v><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, May 3, 2021 at 7:07 PM Marcus D. Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchv=
onbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On 05/03/2021 04:31 PM, Zeng, Huacheng wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I was trying to receive the signal from UHD Sink (n310) in GNU Radio <=
br>
&gt; Companion (GRC) but got the following error message (i.e., GRC cannot =
<br>
&gt; find N310). I am using Ubuntu 18.04, GNU RADIO 3.9, and UHD 4.0.0. I <=
br>
&gt; have confirmed that<br>
&gt; - My GRC can work with N210.<br>
&gt; - I can ping both eth0 and SPF+ ports of N310 from host.<br>
&gt; - In terminal &quot;uhd_find_devices&quot; can find N310.<br>
&gt; - &quot;uhd_usrp_probe&quot; can also find N310. Output message is att=
ached below.<br>
&gt; - I can log in N310 using SSH.<br>
&gt; - I have updated N310&#39;s FPGA image. The OS in N310 is also UHD 4.0=
.0 <br>
&gt; (the same as the host).<br>
&gt;<br>
&gt; Any suggestions would be appreciated.<br>
&gt; Thanks,<br>
&gt; Hua<br>
&gt;<br>
&gt;<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; ERROR MESSAGE FROM GRC<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; Traceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0File &quot;/home/cnss/test2.py&quot;, line 150, in &lt;mod=
ule&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0main()<br>
&gt;=C2=A0 =C2=A0File &quot;/home/cnss/test2.py&quot;, line 126, in main<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0tb =3D top_block_cls()<br>
&gt;=C2=A0 =C2=A0File &quot;/home/cnss/test2.py&quot;, line 84, in __init__=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0channels=3Dlist(range(0,1)),<br>
&gt;=C2=A0 =C2=A0File &quot;/usr/lib/python3/dist-packages/gnuradio/uhd/__i=
nit__.py&quot;, line <br>
&gt; 125, in constructor_interceptor<br>
&gt;=C2=A0 =C2=A0 =C2=A0return old_constructor(*args)<br>
&gt;=C2=A0 =C2=A0File &quot;/usr/lib/python3/dist-packages/gnuradio/uhd/uhd=
_swig.py&quot;, line <br>
&gt; 3259, in make<br>
&gt;=C2=A0 =C2=A0 =C2=A0return _uhd_swig.usrp_source_make(device_addr, stre=
am_args, <br>
&gt; issue_stream_cmd_on_start)<br>
&gt; RuntimeError: LookupError: KeyError: No devices found for -----&gt;<br=
>
&gt; Device Address:<br>
&gt;=C2=A0 =C2=A0 =C2=A0addr: 192.168.20.2<br>
&gt;<br>
&gt;<br>
Could you share the full output from the GR graph run? Including the <br>
headers where it says what version of UHD it is using?<br>
<br>
Also, what was the device address string you used in GR?=C2=A0 Did you <br>
include type=3Dn3xx,product=3Dn310 ??<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></div></blockquote></div>

--000000000000e01e1805c18407c2--

--===============5011225912549816154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5011225912549816154==--
