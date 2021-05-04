Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 707EB372C04
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 16:29:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F917384682
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 10:29:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n87KvlnH";
	dkim-atps=neutral
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 611FF38435D
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 10:28:28 -0400 (EDT)
Received: by mail-yb1-f176.google.com with SMTP id v39so12421653ybd.4
        for <usrp-users@lists.ettus.com>; Tue, 04 May 2021 07:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Iuu19clEwYloQ3T4LVtxM2ltqwPz7kjl++1d9qP6vg8=;
        b=n87KvlnHrWcWyAMdLQdlRVAt7tY4ovyG1SPRnzOIJ1+A7fog+b0BnGWd+bcufdmwUH
         4KkhOZf5YN26OBxAmo1B6ItuEZfnT65wl7o1hwStNHDeIOzZMA3RmvUUsO/lX7Iqa6Qf
         RUPXLxuQzuQINDMI1YQKZlp6DLX2QNI8XoZFlC8wNMrDM/426BHW3H6F3oH4SPCM9EhM
         8GL6KLY6w/SH01hCw6qD+1c1s7sSH2ryGR1NVI3MZF1me3pgxWkAkHz17PEjE7pnhTLv
         kkwS+s4RvAT2EyTBW55yggEKNUfeGbZgPUqe6uOtV0tK2wEEM7oksKJX//8Aeytg55/j
         AugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Iuu19clEwYloQ3T4LVtxM2ltqwPz7kjl++1d9qP6vg8=;
        b=goUer5DGiE8z/QKP7jiKxb3txEQ48Pd+yy1ASjOEoJvp1RTz4XskiyOHbJLQhUgW30
         V7IQmKZ2S6xV9UQhJVNSWcKf6A7euoyXGHj+qoXcOnEZQJHvr4J21tCPki9giaWYncnS
         1/lm7kCLS7j50/UFeM9BPVza9nf+L4kdRxR953JvYwEnEkkGKo7/7u9iRRoNgifaa8s+
         9lXfXCyY7PcB+jsbVgKVNqL+hSMEE21P4eMyfdolRnAT6UHYsspxSGjJvOV6mwSFdpk0
         HV4PQ2Q7WUq406JXZzRQdjJfp/34TOfiAmnYH8NBnB1bjTlnxP+ZeIWmYjC55m8LXigG
         A7wA==
X-Gm-Message-State: AOAM533psiAG4xrslvIbFv1eMVdh38HwAKjFiykOvRVN53mpBV2ePu+H
	I83ZOZQEIVj+SUHIKDcHfhtHmBkHP66jid1acYk=
X-Google-Smtp-Source: ABdhPJyfIDg8b4M4IP0lMcHfvVYr5gOFtmyidIpLQHXuyCkdMI7vyY0iXe92jBMHcD5+f496PR18AJlOmblpWa7Ukt0=
X-Received: by 2002:a25:848f:: with SMTP id v15mr35088679ybk.318.1620138507767;
 Tue, 04 May 2021 07:28:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NZ6_qKogN9yeuizj_Sq58266n7k=DMxmyiJo-eW_yiJ6A@mail.gmail.com>
 <60908207.1020903@gmail.com>
In-Reply-To: <60908207.1020903@gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Tue, 4 May 2021 10:28:17 -0400
Message-ID: <CAL0m=NbL7UbQNHjNg4vMp1cRAtD4Pv4nh0okCgvmfEV0Ed_xWg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 72HNOQE2IES57HERO4MTE3S4HKMUMIFL
X-Message-ID-Hash: 72HNOQE2IES57HERO4MTE3S4HKMUMIFL
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GNU Radio cannot find N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/72HNOQE2IES57HERO4MTE3S4HKMUMIFL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2825598637557883948=="

--===============2825598637557883948==
Content-Type: multipart/alternative; boundary="0000000000003e141505c181e4f6"

--0000000000003e141505c181e4f6
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Thank you for your response. The output of GR graph shows "linux; GNU C++
version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown." Looks like the
GR graph did not use UHD_4.0.0, which I have installed following the
instructions on Ettus website. Is there a way to force GR to use a new
version of UHD?

Thanks,
Hua



On Mon, May 3, 2021 at 7:07 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 05/03/2021 04:31 PM, Zeng, Huacheng wrote:
> > Hello,
> >
> > I was trying to receive the signal from UHD Sink (n310) in GNU Radio
> > Companion (GRC) but got the following error message (i.e., GRC cannot
> > find N310). I am using Ubuntu 18.04, GNU RADIO 3.9, and UHD 4.0.0. I
> > have confirmed that
> > - My GRC can work with N210.
> > - I can ping both eth0 and SPF+ ports of N310 from host.
> > - In terminal "uhd_find_devices" can find N310.
> > - "uhd_usrp_probe" can also find N310. Output message is attached below.
> > - I can log in N310 using SSH.
> > - I have updated N310's FPGA image. The OS in N310 is also UHD 4.0.0
> > (the same as the host).
> >
> > Any suggestions would be appreciated.
> > Thanks,
> > Hua
> >
> >
> > ================================
> > ERROR MESSAGE FROM GRC
> > ================================
> > Traceback (most recent call last):
> >   File "/home/cnss/test2.py", line 150, in <module>
> >     main()
> >   File "/home/cnss/test2.py", line 126, in main
> >     tb = top_block_cls()
> >   File "/home/cnss/test2.py", line 84, in __init__
> >     channels=list(range(0,1)),
> >   File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line
> > 125, in constructor_interceptor
> >     return old_constructor(*args)
> >   File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line
> > 3259, in make
> >     return _uhd_swig.usrp_source_make(device_addr, stream_args,
> > issue_stream_cmd_on_start)
> > RuntimeError: LookupError: KeyError: No devices found for ----->
> > Device Address:
> >     addr: 192.168.20.2
> >
> >
> Could you share the full output from the GR graph run? Including the
> headers where it says what version of UHD it is using?
>
> Also, what was the device address string you used in GR?  Did you
> include type=n3xx,product=n310 ??
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003e141505c181e4f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus, <br></div><div><br></div><div>Thank you fo=
r your response. The output of GR graph shows &quot;linux; GNU C++ version =
7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown.&quot; Looks like the GR=
 graph did not use UHD_4.0.0, which I have installed following the instruct=
ions on Ettus website. Is there a way to force GR to use a new version of U=
HD?</div><div><br></div><div>Thanks,</div><div>Hua</div><div><br></div><div=
><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, May 3, 2021 at 7:07 PM Marcus D. Leech &lt;<a href=3D"ma=
ilto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">On 05/03/2021 04:31 PM=
, Zeng, Huacheng wrote:<br>
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

--0000000000003e141505c181e4f6--

--===============2825598637557883948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2825598637557883948==--
