Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E56372CF2
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 17:30:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E26C738475A
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 11:30:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UWn4HyRz";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id C1A6E384238
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 11:29:38 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id a2so8899781qkh.11
        for <usrp-users@lists.ettus.com>; Tue, 04 May 2021 08:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=MwmKk/tn+J5g+d/Og3cHxZ4PZ6gpodcJcSBiyKZ5ShA=;
        b=UWn4HyRzduCqcywsgwsY/Lmh8Uv02D5HmfbMOM9fYysm+hRcQ3bhMDnXO7fMOeoJb6
         n/dAegmgrIwKv0ddCo0mNixrt9AmlvD1S4J93Oum98U+MeNJM0Lo9iS5vfXaHz/ajSVm
         lhRw3GcQWjop0NpWXdJHaOjdIQuCsOABKYtsN4yHCTFdDF4PoLwN2sh+0X/A8BsZtalV
         3i10lb+gjQtoRgMiYUypuC6kac22nE9383Y/HA6yLo2eKUDKj7NC7VSUE1VFW2KWDA1X
         laJYiv14i7tnO8exo/TkQJ4YS0u4qWdzLe2l/25zp4W6905qHCMndDC3Zn3nN5YrrOSm
         8H9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=MwmKk/tn+J5g+d/Og3cHxZ4PZ6gpodcJcSBiyKZ5ShA=;
        b=rD/LFdMPD9DFB1xycwp/sZnKCwxTJcNOXKp2abAICLyjAMk+l+zMTOM3hD3hA4S/JI
         9jx2hE4tXkE9VND8OYM6osIL380iILTbrXONqqrLMF1RJ4yvuIs7dirtmtuvyipxL5qX
         Lg8O38d9bkFCs+guE8fKAxz6k/t13UIMZxuf7X0MZOSEDqK6+qwLKxkFkjbVugRxF0D1
         ro+xAfYnsHUCKoHZ1NxHKDv8o4KS7P49zCsxzzOI3muDK0uXkJrVvYAgOlvycvPVSXHS
         Ikpff2aiT54OioCvTVu/W7TMTIm0xrwKAmO5zaRJiz9Yuic6Wezn3wRZqpMxLWTb7e+5
         c6mA==
X-Gm-Message-State: AOAM530KvGG8DKY1rkVlFC/ebQyjdtVTAGzpeIKjjfM5KwUTBJ8kgq6B
	LW0qQdv5P2UnwvBEdrl/bi9gbDsfhtF1QA==
X-Google-Smtp-Source: ABdhPJxjJZpGdiovvLvYbNB0xHbkJmur7VQhSXzM6XLo674h5jbQCVRdQRvEPYbrxLGiuKPebM4vDw==
X-Received: by 2002:a05:620a:2947:: with SMTP id n7mr25397845qkp.450.1620142178036;
        Tue, 04 May 2021 08:29:38 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id y6sm11430322qkd.106.2021.05.04.08.29.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 08:29:37 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 4 May 2021 11:29:35 -0400
Message-Id: <99A6F1D2-EB9F-4358-BA90-E5371702A1C9@gmail.com>
References: <CAL0m=NbL7UbQNHjNg4vMp1cRAtD4Pv4nh0okCgvmfEV0Ed_xWg@mail.gmail.com>
In-Reply-To: <CAL0m=NbL7UbQNHjNg4vMp1cRAtD4Pv4nh0okCgvmfEV0Ed_xWg@mail.gmail.com>
To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: WZHTF3XX33OUTSJHPJL43FULI4EMGVYP
X-Message-ID-Hash: WZHTF3XX33OUTSJHPJL43FULI4EMGVYP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GNU Radio cannot find N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WZHTF3XX33OUTSJHPJL43FULI4EMGVYP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7547351801374096521=="


--===============7547351801374096521==
Content-Type: multipart/alternative; boundary=Apple-Mail-1D38045F-8501-41E2-B6DF-7685B56EE2CC
Content-Transfer-Encoding: 7bit


--Apple-Mail-1D38045F-8501-41E2-B6DF-7685B56EE2CC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

That means that the GR you have was built using the older UHD.=20

You=E2=80=99ll very likely need to uninstall GR and do a source based instal=
l of GR.=20

Sent from my iPhone

> On May 4, 2021, at 10:28 AM, Zeng, Huacheng <huacheng.zeng@gmail.com> wrot=
e:
>=20
> =EF=BB=BF
> Hi Marcus,=20
>=20
> Thank you for your response. The output of GR graph shows "linux; GNU C++ v=
ersion 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown." Looks like the G=
R graph did not use UHD_4.0.0, which I have installed following the instruct=
ions on Ettus website. Is there a way to force GR to use a new version of UH=
D?
>=20
> Thanks,
> Hua
>=20
>=20
>=20
>> On Mon, May 3, 2021 at 7:07 PM Marcus D. Leech <patchvonbraun@gmail.com> w=
rote:
>> On 05/03/2021 04:31 PM, Zeng, Huacheng wrote:
>> > Hello,
>> >
>> > I was trying to receive the signal from UHD Sink (n310) in GNU Radio=20=

>> > Companion (GRC) but got the following error message (i.e., GRC cannot=20=

>> > find N310). I am using Ubuntu 18.04, GNU RADIO 3.9, and UHD 4.0.0. I=20=

>> > have confirmed that
>> > - My GRC can work with N210.
>> > - I can ping both eth0 and SPF+ ports of N310 from host.
>> > - In terminal "uhd_find_devices" can find N310.
>> > - "uhd_usrp_probe" can also find N310. Output message is attached below=
.
>> > - I can log in N310 using SSH.
>> > - I have updated N310's FPGA image. The OS in N310 is also UHD 4.0.0=20=

>> > (the same as the host).
>> >
>> > Any suggestions would be appreciated.
>> > Thanks,
>> > Hua
>> >
>> >
>> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
>> > ERROR MESSAGE FROM GRC
>> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
>> > Traceback (most recent call last):
>> >   File "/home/cnss/test2.py", line 150, in <module>
>> >     main()
>> >   File "/home/cnss/test2.py", line 126, in main
>> >     tb =3D top_block_cls()
>> >   File "/home/cnss/test2.py", line 84, in __init__
>> >     channels=3Dlist(range(0,1)),
>> >   File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line=20=

>> > 125, in constructor_interceptor
>> >     return old_constructor(*args)
>> >   File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line=20=

>> > 3259, in make
>> >     return _uhd_swig.usrp_source_make(device_addr, stream_args,=20
>> > issue_stream_cmd_on_start)
>> > RuntimeError: LookupError: KeyError: No devices found for ----->
>> > Device Address:
>> >     addr: 192.168.20.2
>> >
>> >
>> Could you share the full output from the GR graph run? Including the=20
>> headers where it says what version of UHD it is using?
>>=20
>> Also, what was the device address string you used in GR?  Did you=20
>> include type=3Dn3xx,product=3Dn310 ??
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-1D38045F-8501-41E2-B6DF-7685B56EE2CC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">That means that the GR you have was built u=
sing the older UHD.&nbsp;<div><br></div><div>You=E2=80=99ll very likely need=
 to uninstall GR and do a source based install of GR.&nbsp;<br><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite=
">On May 4, 2021, at 10:28 AM, Zeng, Huacheng &lt;huacheng.zeng@gmail.com&gt=
; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr=
">=EF=BB=BF<div dir=3D"ltr"><div>Hi Marcus, <br></div><div><br></div><div>Th=
ank you for your response. The output of GR graph shows "linux; GNU C++ vers=
ion 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown." Looks like the GR g=
raph did not use UHD_4.0.0, which I have installed following the instruction=
s on Ettus website. Is there a way to force GR to use a new version of UHD?<=
/div><div><br></div><div>Thanks,</div><div>Hua</div><div><br></div><div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, May 3, 2021 at 7:07 PM Marcus D. Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">On 05/03/2021 04:31 PM, Zeng, Hu=
acheng wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I was trying to receive the signal from UHD Sink (n310) in GNU Radio <b=
r>
&gt; Companion (GRC) but got the following error message (i.e., GRC cannot <=
br>
&gt; find N310). I am using Ubuntu 18.04, GNU RADIO 3.9, and UHD 4.0.0. I <b=
r>
&gt; have confirmed that<br>
&gt; - My GRC can work with N210.<br>
&gt; - I can ping both eth0 and SPF+ ports of N310 from host.<br>
&gt; - In terminal "uhd_find_devices" can find N310.<br>
&gt; - "uhd_usrp_probe" can also find N310. Output message is attached below=
.<br>
&gt; - I can log in N310 using SSH.<br>
&gt; - I have updated N310's FPGA image. The OS in N310 is also UHD 4.0.0 <b=
r>
&gt; (the same as the host).<br>
&gt;<br>
&gt; Any suggestions would be appreciated.<br>
&gt; Thanks,<br>
&gt; Hua<br>
&gt;<br>
&gt;<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; ERROR MESSAGE FROM GRC<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; Traceback (most recent call last):<br>
&gt;&nbsp; &nbsp;File "/home/cnss/test2.py", line 150, in &lt;module&gt;<br>=

&gt;&nbsp; &nbsp; &nbsp;main()<br>
&gt;&nbsp; &nbsp;File "/home/cnss/test2.py", line 126, in main<br>
&gt;&nbsp; &nbsp; &nbsp;tb =3D top_block_cls()<br>
&gt;&nbsp; &nbsp;File "/home/cnss/test2.py", line 84, in __init__<br>
&gt;&nbsp; &nbsp; &nbsp;channels=3Dlist(range(0,1)),<br>
&gt;&nbsp; &nbsp;File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.=
py", line <br>
&gt; 125, in constructor_interceptor<br>
&gt;&nbsp; &nbsp; &nbsp;return old_constructor(*args)<br>
&gt;&nbsp; &nbsp;File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.=
py", line <br>
&gt; 3259, in make<br>
&gt;&nbsp; &nbsp; &nbsp;return _uhd_swig.usrp_source_make(device_addr, strea=
m_args, <br>
&gt; issue_stream_cmd_on_start)<br>
&gt; RuntimeError: LookupError: KeyError: No devices found for -----&gt;<br>=

&gt; Device Address:<br>
&gt;&nbsp; &nbsp; &nbsp;addr: 192.168.20.2<br>
&gt;<br>
&gt;<br>
Could you share the full output from the GR graph run? Including the <br>
headers where it says what version of UHD it is using?<br>
<br>
Also, what was the device address string you used in GR?&nbsp; Did you <br>
include type=3Dn3xx,product=3Dn310 ??<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-1D38045F-8501-41E2-B6DF-7685B56EE2CC--

--===============7547351801374096521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7547351801374096521==--
