Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A61E9BAD00
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2024 08:12:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E2A6385B58
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2024 02:12:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730704374; bh=5FYdB6e8pkEcHpIPz3qe7J9R7xNf+R++TtEp/d2YX5A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XYGd9BGu3Km7Ted/76u3N7eD6VN43Imv13PfkGLQaEdBRPZTHpkDNO47RMlA2HMx+
	 lACEimF+lFworX7Rw0qEnzwD0tqt623K1d4x9AV41/ZM3w3qMnpXTmve5I5Sst2ji8
	 P884xz70uy0XZDZ+4XNfyO1zfI7LUkMn2Q/zWPkSeTG8uq9u0QBh7K5NhRl2q9HUGW
	 rCfehnbpuLzOcaa8D4alSHJ5oxYfaY+oyuAjkZ52NP18Jnq3Ny58WyMsPqeFzpiZ1G
	 zfJKDNGPWBsG3gIhzh5bTuTESYqvK0FNybEIu4ZPdkgVWLD9c5KBJK55vIr8Xq7kut
	 QeeQzIB9FQm5g==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 115ED385B52
	for <usrp-users@lists.ettus.com>; Mon,  4 Nov 2024 02:12:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=cyronics-com.20230601.gappssmtp.com header.i=@cyronics-com.20230601.gappssmtp.com header.b="tSXTW93f";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6ea5b97e31cso28791887b3.1
        for <usrp-users@lists.ettus.com>; Sun, 03 Nov 2024 23:12:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cyronics-com.20230601.gappssmtp.com; s=20230601; t=1730704332; x=1731309132; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oDX6Ea9l3OP+O6XSYto7OT6GNwmSwOiTZzJq5Ot3OQk=;
        b=tSXTW93frX7OBR6Bcbj3bZKvo1wh/zZLFoHcTKGWYmkVBvYuICYAU2reVU7xREOZ3v
         kge5cQxf7Z5SPvw4z/aF9TcxmuY47CV4S3JRxfiAORxhSlxuFFPiaZVIQkk/sRZVOb0Q
         FknwT6d5AFGHqoHWS7A0ZPf18F3DRrUEqZJOHcz7Leq8Alav6uOJZKoSOzbFdF412TSN
         lX70cQuVQuJbVIOuTJSFDibpEfE1QeQtdhx5gK907Bykx/9rEHkauVOcGyu7a/w9MHRa
         3y0vnqfFe6J2aPQhsYbU8n/EhFcXGoeugqpddtV2AioIp3C1kLRisTk1ePQaXdzylIF5
         EHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730704332; x=1731309132;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDX6Ea9l3OP+O6XSYto7OT6GNwmSwOiTZzJq5Ot3OQk=;
        b=m62NtQDzVEfezJur/4CBSEpPva3L2HWREiiepymRGP/Atyzy5nkVjSm/b9gYdHmj5e
         tyd2Abl+OsjmMhzH6FtfLHaNopWYBEnt+Khh2BrCumL63q+dWeI0bvm692iOZYiFYlrQ
         PWliQKFz0/JiUJh1MSWsI8hWGby43Ui3fY/MzJnAnnlkMLMsDYsp/PDatPepR3avUK2U
         tKrLUugBjkBWZcmv8XzJoxrodhzNnFEgke+/teLBqw3Ert0qfDF3+P2O2UDpmU7tVHiV
         NQ9OoVfUv1n/AnOaRBnMHfZD6o5BLoyvPUUtZf9UO8T/u4bl8WCb1pjrZx0SYPdyyFGv
         OHxA==
X-Forwarded-Encrypted: i=1; AJvYcCXa8G0yR/8Sro3nyw6vjPwATb1keNc59ssfRKzpzmK33BZQufdtPYwLS9t0jqNhwRlS54Z9qWgWdvHD@lists.ettus.com
X-Gm-Message-State: AOJu0YwiRM+PXB1omVP7mngFBRtHWgWRCx9HhlGr3cvetfXNQXXUYRA7
	z9uw433d+/x77e+D366Du/WgxWvVN/Wtds2GACjF86hGudDz+1ra/C2MkEQfGtcwn1j1lOrx9Yy
	4Lp3NnRqoxad7occ4sDXOfvh1STcRx0JE2AkgdP+a2BPznvEc
X-Google-Smtp-Source: AGHT+IGIF67z7C+7akZEYFB6NkcfkWWsTAxxXC1VX/z57lWkTJruFSlvjXZXY+9DT6GAeUmE2RYIFJDcATCsTLKhf8A=
X-Received: by 2002:a05:690c:7346:b0:6e3:7625:15f7 with SMTP id
 00721157ae682-6ea6432725cmr90439737b3.10.1730704332114; Sun, 03 Nov 2024
 23:12:12 -0800 (PST)
MIME-Version: 1.0
References: <CAF=K0BGvENW-hcz4zpGvHC+F9U7AcAaEJ3vyb4vfi_h--mb=Ng@mail.gmail.com>
 <CAFche=hXccZr6Y96XW3yzAe7NG2i7qFaq6=3YZvCANvc5zo7SQ@mail.gmail.com>
In-Reply-To: <CAFche=hXccZr6Y96XW3yzAe7NG2i7qFaq6=3YZvCANvc5zo7SQ@mail.gmail.com>
From: Nidhi Panda <nidhi.panda@cyronics.com>
Date: Mon, 4 Nov 2024 12:41:55 +0530
Message-ID: <CAF=K0BHZF=-DyRAS2fAr_wZWT_gnFXrLyf-1N3Vmp=nq0LBQRg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>, usrp-users@lists.ettus.com,
	Martin Braun <martin.braun@ettus.com>
Content-Type: multipart/mixed; boundary="000000000000ed89710626110090"
Message-ID-Hash: LDA354IQYR53F3QRG6T5EUEVJ4IBHGEG
X-Message-ID-Hash: LDA354IQYR53F3QRG6T5EUEVJ4IBHGEG
X-MailFrom: nidhi.panda@cyronics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error on using split stream and FFT rfnoc block.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LDA354IQYR53F3QRG6T5EUEVJ4IBHGEG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000ed89710626110090
Content-Type: multipart/alternative; boundary="000000000000ed8970062611008e"

--000000000000ed8970062611008e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your response, but as I have mentioned I  already tried to
set SPP to match FFT_size for Rx_radio. I also tried to set spp with py
script.  It shows the same error as GNu radio which is:





*[ERROR] [RxStreamer#0] Cannot resolve spp! Must be a multiple of 512 but
max value is 256Traceback (most recent call last):  File "FFT_test.py",
line 47, in <module>    fft.set_length(fft_length)RuntimeError: ValueError:
Samples per packet is incompatible with atomic item size!*

I have attached my py script for your reference.* Is there any reference
code (GNU radio or python or CPP) which works with FFT size =3D 1024/2048? =
*Is
it even possible to get this FFT length (1024 and 2048 ) with USRP x300?
Also, I have only twin RX in my design so no TX.

Another thing I noticed is if I set fft|_length before committing the
graph, the max spp value is *364 *whereas after commit if I set fft_length
the max SPP size is *256*. Can anyone please explain what is the reason for
this.


On Wed, Oct 23, 2024 at 6:59=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wro=
te:

> With this FFT block, you need to set the SPP to match the FFT size for it
> to work correctly. I'm not very familiar with GNU Radio but I think there
> is an SPP parameter on the RX radio. I don't know how to set it for TX.
>
> Wade
>
>
> On Wed, Oct 23, 2024 at 5:45=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronics=
.com>
> wrote:
>
>> Hello,
>>
>> I am having USRP X300 device with following tool versions:
>>
>> Vivado 2021.1 - AR76780n,
>> GNU radio version - v3.11.0.0git-820-g2adbd4ea
>> UHD version - UHD_4.7.0.0-84-gbdada1ed
>>
>> I have added FFT and Spliter RFNoC blocks in my bit file. The
>> "uhd_usrp_probe" command shows correct connection in the blocks.
>>
>> | | RFNoC blocks on this device:
>> | |
>> | | * 0/DDC#0
>> | | * 0/FFT#0
>> | | * 0/Radio#0
>> | | * 0/Replay#0
>> | | * 0/SplitStream#0
>> | _____________________________________________________
>> | /
>> | | Static connections on this device:
>>
>> | | * 0/Radio#0:0=3D=3D>0/DDC#0:0
>> | | * 0/Radio#0:1=3D=3D>0/DDC#0:1
>> | | * 0/DDC#0:1=3D=3D>0/SEP#0:0
>> | | * 0/DDC#0:0=3D=3D>0/SplitStream#0:0
>> | | * 0/SplitStream#0:1=3D=3D>0/FFT#0:0
>> | | * 0/SplitStream#0:0=3D=3D>0/SEP#2:0
>> | | * 0/FFT#0:0=3D=3D>0/SEP#1:0
>> | | * 0/SEP#3:0=3D=3D>0/Replay#0:0
>> | | * 0/Replay#0:0=3D=3D>0/SEP#3:0
>> | | * 0/SEP#4:0=3D=3D>0/Replay#0:1
>> | | * 0/Replay#0:1=3D=3D>0/SEP#4:0
>>
>> However, on running example code available on GNURADIO
>> *"rfnoc_split_stream.grc"*. I get following error:
>>
>> *1. When FFT size =3D 1024 (as in the example given in gnu radio)*
>>
>>
>>
>> *-----------------------------------------------------------------------=
---------------------------------------------------*
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *[ERROR] [RxStreamer#0] Cannot resolve spp! Must be a multiple of 1024
>> but max value is 364Traceback (most recent call last):  File
>> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
>> 347, in <module>    main()  File
>> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
>> 326, in main    tb.start()  File
>> "/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py", line
>> 116, in start    top_block_start_unlocked(self._impl,
>> max_noutput_items)RuntimeError: ValueError: Samples per packet is
>> incompatible with atomic item size!*
>>
>>
>> *-----------------------------------------------------------------------=
---------------------------------------------------*
>> How to know what is atomic size and how can I set it. On searching for
>> this error I came across following link:
>>
>> *https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702ffbdb1035=
2cf875d604d74
>> <https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702ffbdb1035=
2cf875d604d74>*
>>
>> This says rx stream is having a bug and AIS is in unit bytes, and spp in
>> unit items. It was a response of two years back with the uhd version
>> v4.3.0.0-rc1
>> <https://github.com/EttusResearch/uhd/releases/tag/v4.3.0.0-rc1>. Does
>> this explanation still hold? What is the max FFT size I can use? I want =
to
>> use *2048*, what changes need to be done for it.
>>
>> *1. When FFT size =3D 256*
>>
>>
>> *-----------------------------------------------------------------------=
---------------------------------------------------*
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *[ERROR] [RFNOC::GRAPH::DETAIL] The following properties could not be
>> resolved:[ERROR] [RFNOC::GRAPH::DETAIL] Dirty: RxStreamer#1[INPUT_EDGE:0
>> atomic_item_size]Traceback (most recent call last):  File
>> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
>> 347, in <module>    main()  File
>> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
>> 326, in main    tb.start()  File
>> "/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py", line
>> 116, in start    top_block_start_unlocked(self._impl,
>> max_noutput_items)RuntimeError: RfnocError: ResolveError: Could not reso=
lve
>> properties.*
>>
>>
>> *-----------------------------------------------------------------------=
---------------------------------------------------*
>>
>> Am I doing anything wrong in the yml script because the connection seems
>> correct in the uhd_usrp_probe command. On further searching I found that
>> SPP i.e. sample per packet must be the same for all the blocks. Tried do=
ing
>> it in gnu radio by assigning the args option with f"spp=3D{fft_size}". I=
s
>> this correct? It gives no change in error howver I get additional warnin=
g
>> as
>>
>> [WARNING] [0/FFT#0] set_properties() cannot set property `spp': No such
>> property.
>> [WARNING] [0/DDC#0] set_properties() cannot set property `spp': No such
>> property.
>>
>>
>> Please help me to solve these errors.
>>
>> --
>> Regards,
>> *Nidhi Panda*
>>
>> *Cyronics Innovation Labs Pvt Ltd*
>> #11, Electronics Co-op Estate
>> Satara Road, Pune - 411009
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--=20
Regards,
*Nidhi Panda*

*Cyronics Innovation Labs Pvt Ltd*
#11, Electronics Co-op Estate
Satara Road, Pune - 411009

--000000000000ed8970062611008e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for your response, but as I have mentioned =
I=C2=A0 already tried to set SPP to match FFT_size for Rx_radio. I also tri=
ed to set spp with py script.=C2=A0 It shows the same error as GNu radio wh=
ich is:<br></div><div><br></div><div><i>[ERROR] [RxStreamer#0] Cannot resol=
ve spp! Must be a multiple of 512 but max value is 256<br>Traceback (most r=
ecent call last):<br>=C2=A0 File &quot;FFT_test.py&quot;, line 47, in &lt;m=
odule&gt;<br>=C2=A0 =C2=A0 fft.set_length(fft_length)<br>RuntimeError: Valu=
eError: Samples per packet is incompatible with atomic item size!</i></div>=
<div><i><br></i></div><div>I have attached my py script for your reference.=
<b> Is there any reference code (GNU radio or python or CPP) which works wi=
th FFT size =3D 1024/2048? </b>Is it even possible to get this FFT length (=
1024 and 2048 ) with USRP x300? Also, I have only twin RX in my design so n=
o TX.<br></div><div><br></div><div>Another thing I noticed is if I set fft|=
_length before committing the graph, the max spp value is <b>364 </b>wherea=
s after commit if I set fft_length the max SPP size is <b>256</b>. Can anyo=
ne please explain what is the reason for this.<br></div><div><i><br></i></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Oct 23, 2024 at 6:59=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:=
wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>With this FFT block, you need to set the SPP to match the FFT size for=
 it to work correctly. I&#39;m not very familiar with GNU Radio but I think=
 there is an SPP parameter on the RX radio. I don&#39;t know how to set it =
for TX.<br></div><div><br></div><div>Wade</div><div><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 2=
3, 2024 at 5:45=E2=80=AFAM Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cy=
ronics.com" target=3D"_blank">nidhi.panda@cyronics.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>Hello,</div><div><br></div><div><p dir=3D"auto">I am having USRP X300 devi=
ce with following tool versions:</p>
<p dir=3D"auto">Vivado 2021.1 - AR76780n,<br>
GNU radio version - v3.11.0.0git-820-g2adbd4ea<br>
UHD version - UHD_4.7.0.0-84-gbdada1ed</p>
<p dir=3D"auto">I have added FFT and Spliter RFNoC blocks in my bit file. T=
he &quot;uhd_usrp_probe&quot; command shows correct connection in the block=
s.</p>
<p dir=3D"auto">|   |       RFNoC blocks on this device:<br>
|   |<br>
|   |   * 0/DDC#0<br>
|   |   * 0/FFT#0<br>
|   |   * 0/Radio#0<br>
|   |   * 0/Replay#0<br>
|   |   * 0/SplitStream#0<br>
|     _____________________________________________________<br>
|    /<br>
|   |       Static connections on this device:</p>
<p dir=3D"auto">|   |   * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
|   |   * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>
|   |   * 0/DDC#0:1=3D=3D&gt;0/SEP#0:0<br>
|   |   * 0/DDC#0:0=3D=3D&gt;0/SplitStream#0:0<br>
|   |   * 0/SplitStream#0:1=3D=3D&gt;0/FFT#0:0<br>
|   |   * 0/SplitStream#0:0=3D=3D&gt;0/SEP#2:0<br>
|   |   * 0/FFT#0:0=3D=3D&gt;0/SEP#1:0<br>
|   |   * 0/SEP#3:0=3D=3D&gt;0/Replay#0:0<br>
|   |   * 0/Replay#0:0=3D=3D&gt;0/SEP#3:0<br>
|   |   * 0/SEP#4:0=3D=3D&gt;0/Replay#0:1<br>
|   |   * 0/Replay#0:1=3D=3D&gt;0/SEP#4:0</p>
<p dir=3D"auto">However, on running example code available on GNURADIO <str=
ong>&quot;rfnoc_split_stream.grc&quot;</strong>. I get following error:</p>=
<p><b>1. When FFT size =3D 1024 (as in the example given in gnu radio)</b><=
/p><p><i>------------------------------------------------------------------=
--------------------------------------------------------<br></i></p><p><i>[=
ERROR] [RxStreamer#0] Cannot resolve spp! Must be a multiple of 1024 but ma=
x value is 364<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/=
home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py&quot;, line =
347, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;/home/q=
uasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py&quot;, line 326, i=
n main<br>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 File &quot;/usr/local/lib/pyth=
on3.8/dist-packages/gnuradio/gr/top_block.py&quot;, line 116, in start<br>=
=C2=A0 =C2=A0 top_block_start_unlocked(self._impl, max_noutput_items)<br>Ru=
ntimeError: ValueError: Samples per packet is incompatible with atomic item=
 size!</i></p><p><i>-------------------------------------------------------=
-------------------------------------------------------------------</i></p>=
</div><div>How to know what is atomic size and how can I set it. On searchi=
ng for this error I came across following link:</div><div><br></div><div><i=
><a href=3D"https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702f=
fbdb10352cf875d604d74" target=3D"_blank">https://github.com/EttusResearch/u=
hd/commit/f163af41a47ab4c702ffbdb10352cf875d604d74</a></i></div><div><br></=
div><div>This says rx stream is having a bug and <span>AIS is in unit bytes=
, and spp in unit items. It was a response of two years back with the uhd v=
ersion </span><span><a href=3D"https://github.com/EttusResearch/uhd/release=
s/tag/v4.3.0.0-rc1" target=3D"_blank">v4.3.0.0-rc1</a>. Does this explanati=
on still hold? What is the max FFT size I can use? I want to use <b>2048</b=
>, what changes need to be done for it.</span></div><div><span><br></span><=
/div><div><b>1. When FFT size =3D 256</b></div><div><b><br></b></div><div><=
b>-------------------------------------------------------------------------=
-------------------------------------------------</b></div><div><i>[ERROR] =
[RFNOC::GRAPH::DETAIL] The following properties could not be resolved:<br>[=
ERROR] [RFNOC::GRAPH::DETAIL] Dirty: RxStreamer#1[INPUT_EDGE:0 atomic_item_=
size]<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/quas=
ar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py&quot;, line 347, in &=
lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;/home/quasar/gnu=
radio/gr-uhd/examples/grc/rfnoc_split_stream.py&quot;, line 326, in main<br=
>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 File &quot;/usr/local/lib/python3.8/dis=
t-packages/gnuradio/gr/top_block.py&quot;, line 116, in start<br>=C2=A0 =C2=
=A0 top_block_start_unlocked(self._impl, max_noutput_items)<br>RuntimeError=
: RfnocError: ResolveError: Could not resolve properties.</i></div><div><b>=
---------------------------------------------------------------------------=
-----------------------------------------------<br></b></div><div><span><br=
></span></div><div><span>Am I doing anything wrong in the yml script becaus=
e the connection seems correct in the uhd_usrp_probe command. On further se=
arching I found that SPP i.e. sample per packet must be the same for all th=
e blocks. Tried doing it in gnu radio by assigning the args option with </s=
pan>f&quot;spp=3D{fft_size}&quot;. Is this correct? It gives no change in e=
rror howver I get additional warning as <br></div><div><br></div><div>[WARN=
ING] [0/FFT#0] set_properties() cannot set property `spp&#39;: No such prop=
erty.<br>[WARNING] [0/DDC#0] set_properties() cannot set property `spp&#39;=
: No such property.</div><div><br></div><div><br></div><div>Please help me =
to solve these errors. <br></div><div><span><br></span></div><div><span cla=
ss=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail=
_signature"><div dir=3D"ltr">Regards,<div><b>Nidhi Panda</b></div><div><spa=
n style=3D"color:rgb(136,136,136)"><font color=3D"#000000"><b><img width=3D=
"200" height=3D"43" src=3D"https://ci3.googleusercontent.com/mail-sig/AIorK=
4wydcZFixEg0Qccgx_ECRhBJmIl6LIH5q6uQDkghvzzXniBb30e7zMVxFMSgyjztcNnZmeLHAue=
DJVU"></b><br><b>Cyronics Innovation Labs Pvt Ltd</b><br></font></span></di=
v><div><div><span style=3D"color:rgb(136,136,136)"><font color=3D"#000000">=
#11, Electronics Co-op Estate=C2=A0<br>Satara Road, Pune - 411009</font></s=
pan></div></div><div><br></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr">Regards,<div><b>Nidhi Panda</b></div><div><span style=3D"color:rgb(136,=
136,136)"><font color=3D"#000000"><b><img width=3D"200" height=3D"43" src=
=3D"https://ci3.googleusercontent.com/mail-sig/AIorK4wydcZFixEg0Qccgx_ECRhB=
JmIl6LIH5q6uQDkghvzzXniBb30e7zMVxFMSgyjztcNnZmeLHAueDJVU"></b><br><b>Cyroni=
cs Innovation Labs Pvt Ltd</b><br></font></span></div><div><div><span style=
=3D"color:rgb(136,136,136)"><font color=3D"#000000">#11, Electronics Co-op =
Estate=C2=A0<br>Satara Road, Pune - 411009</font></span></div></div><div><b=
r></div></div></div>

--000000000000ed8970062611008e--

--000000000000ed89710626110090
Content-Type: text/x-python; charset="US-ASCII"; name="FFT_test.py"
Content-Disposition: attachment; filename="FFT_test.py"
Content-Transfer-Encoding: base64
Content-ID: <f_m32oi4ng0>
X-Attachment-Id: f_m32oi4ng0

aW1wb3J0IHVoZAppbXBvcnQgYXJncGFyc2UKaW1wb3J0IG51bXB5IGFzIG5wCmltcG9ydCBtYXRw
bG90bGliCmltcG9ydCBtYXRwbG90bGliLnB5cGxvdCBhcyBwbHQKaW1wb3J0IG1hdHBsb3RsaWIu
YW5pbWF0aW9uIGFzIGFuaW1hdGlvbgppbXBvcnQgY21hdGgKaW1wb3J0IHNjaXB5CmZyb20gc2Np
cHkgaW1wb3J0IHNpZ25hbAptYXRwbG90bGliLnJjUGFyYW1zWydmaWd1cmUuZmlnc2l6ZSddID0g
WzE1LDVdCgpncmFwaCA9IHVoZC5yZm5vYy5SZm5vY0dyYXBoKCdhZGRyID0gMTkyLjE2OC4xMC4y
JykKCkZGVF9ub2NfYmxvY2sgPSBncmFwaC5nZXRfYmxvY2soJzAvRkZUIzAnKQojIyBGRlQgQkxP
Q0sgQ09ORklHVVJBVElPTgojIGZmdF9sZW5ndGggPSA1MTIKIyBmZnRfbWFnbml0dWRlID0gdWhk
LmxpYnB5dWhkLnJmbm9jLmZmdF9tYWduaXR1ZGUuQ09NUExFWAojIGZmdF9kaXJlY3Rpb24gPSB1
aGQubGlicHl1aGQucmZub2MuZmZ0X2RpcmVjdGlvbi5GT1JXQVJECiMgZmZ0X3NoaWZ0ID0gdWhk
LmxpYnB5dWhkLnJmbm9jLmZmdF9zaGlmdC5OT1JNQUwKCiMgZmZ0ID0gdWhkLnJmbm9jLkZmdEJs
b2NrQ29udHJvbChGRlRfbm9jX2Jsb2NrKQojIGZmdC5zZXRfbGVuZ3RoKGZmdF9sZW5ndGgpCiMg
ZmZ0LnNldF9tYWduaXR1ZGUoZmZ0X21hZ25pdHVkZSkKIyBmZnQuc2V0X2RpcmVjdGlvbihmZnRf
ZGlyZWN0aW9uKQojIGZmdC5zZXRfc2hpZnRfY29uZmlnKGZmdF9zaGlmdCkKCiMgU3RyZWFtIEFy
Z3VtZW50cwpzYSA9IHVoZC51c3JwLlN0cmVhbUFyZ3MoJ2ZjMzInLCdzYzE2JykKCnJhZGlvX25v
Y19ibG9jayA9IGdyYXBoLmdldF9ibG9jaygiMC9SYWRpbyMwIikKCgpncmFwaC5jb25uZWN0KCIw
L1JhZGlvIzAiLCAwLCAiMC9EREMjMCIsIDAsIFRydWUpCnJ4X3N0cmVhbWVyID0gZ3JhcGguY3Jl
YXRlX3J4X3N0cmVhbWVyKDEsIHNhKQoKZ3JhcGguY29ubmVjdCgiMC9EREMjMCIsIDAsICcwL0ZG
VCMwJywgMCwgVHJ1ZSkKZ3JhcGguY29ubmVjdCgnMC9GRlQjMCcsIDAsIHJ4X3N0cmVhbWVyLCAw
LCBUcnVlKQpncmFwaC5jb21taXQoKQoKCmZmdF9sZW5ndGggPSA1MTIKZmZ0X21hZ25pdHVkZSA9
IHVoZC5saWJweXVoZC5yZm5vYy5mZnRfbWFnbml0dWRlLkNPTVBMRVgKZmZ0X2RpcmVjdGlvbiA9
IHVoZC5saWJweXVoZC5yZm5vYy5mZnRfZGlyZWN0aW9uLkZPUldBUkQKZmZ0X3NoaWZ0ID0gdWhk
LmxpYnB5dWhkLnJmbm9jLmZmdF9zaGlmdC5OT1JNQUwKCmZmdCA9IHVoZC5yZm5vYy5GZnRCbG9j
a0NvbnRyb2woRkZUX25vY19ibG9jaykKZmZ0LnNldF9sZW5ndGgoZmZ0X2xlbmd0aCkKZmZ0LnNl
dF9tYWduaXR1ZGUoZmZ0X21hZ25pdHVkZSkKZmZ0LnNldF9kaXJlY3Rpb24oZmZ0X2RpcmVjdGlv
bikKZmZ0LnNldF9zaGlmdF9jb25maWcoZmZ0X3NoaWZ0KQoKc2EuYXJncyA9ICJzcHA9IiArIHN0
cihmZnRfbGVuZ3RoKQoKcmFkaW9fYmxvY2sgPSB1aGQucmZub2MuUmFkaW9Db250cm9sKHJhZGlv
X25vY19ibG9jaykKCnJhZGlvX2Jsb2NrLnNldF9yeF9mcmVxdWVuY3koODUzZTYsIDApCnJhZGlv
X2Jsb2NrLnNldF9yeF9nYWluKDY1LCAwKQpyYWRpb19ibG9jay5zZXRfcnhfYW50ZW5uYSgiUlgx
IiwgMCkKcmFkaW9fYmxvY2suc2V0X3JhdGUoMjAwZTYpCnJhZGlvX2Jsb2NrLnNldF9wcm9wZXJ0
aWVzKGYnc3BwPXtmZnRfbGVuZ3RofScsIDApCgpkZGNfYmxvY2sgPSB1aGQucmZub2MuRGRjQmxv
Y2tDb250cm9sKGdyYXBoLmdldF9ibG9jaygiMC9EREMjMCIpKQpkZGNfYmxvY2suc2V0X2lucHV0
X3JhdGUoMjAwZTYsIDApCmRkY19ibG9jay5zZXRfb3V0cHV0X3JhdGUoNWU2LCAwKQoKCgoKbnVt
X3NhbXBsZXMgPSBmZnRfbGVuZ3RoICAjIE51bWJlciBvZiBzYW1wbGVzIHRvIHJlY2VpdmUgYXQg
YSB0aW1lCnJhZGlvX2RhdGEgPSBucC56ZXJvcygoMSwgbnVtX3NhbXBsZXMpLCBkdHlwZT0iY29t
cGxleDY0IikgICMgS2VlcCB0aGUgYnVmZmVyIG91dHNpZGUKCiMgSW5pdGlhbGl6ZSBzdHJlYW1p
bmcgY29tbWFuZCBmb3IgY29udGludW91cyBkYXRhIHJlY2VwdGlvbgpzdHJlYW1fY21kID0gdWhk
LnR5cGVzLlN0cmVhbUNNRCh1aGQudHlwZXMuU3RyZWFtTW9kZS5zdGFydF9jb250KQpzdHJlYW1f
Y21kLnN0cmVhbV9ub3cgPSBUcnVlCnJ4X3N0cmVhbWVyLmlzc3VlX3N0cmVhbV9jbWQoc3RyZWFt
X2NtZCkgICMgU3RhcnQgc3RyZWFtaW5nCgojIFNldCB1cCB0aGUgcGxvdApmaWcsIGF4ID0gcGx0
LnN1YnBsb3RzKCkKeF9kYXRhID0gbnAubGluc3BhY2UoLTAuNSwgMC41LCBmZnRfbGVuZ3RoKQp5
X2RhdGEgPSBucC56ZXJvcyhmZnRfbGVuZ3RoKQpsaW5lLCA9IGF4LnNlbWlsb2d5KHhfZGF0YSwg
bnAuYWJzKHlfZGF0YSkpICAjIEluaXRpYWwgZW1wdHkgcGxvdAoKIyBVcGRhdGUgZnVuY3Rpb24g
Zm9yIHRoZSBhbmltYXRpb24KZGVmIHVwZGF0ZV9wbG90KGZyYW1lKToKICAgIG1ldGFkYXRhID0g
dWhkLnR5cGVzLlJYTWV0YWRhdGEoKQoKICAgICMgUmVjZWl2ZSBuZXcgc2FtcGxlcyBmcm9tIHRo
ZSByYWRpbwogICAgbnVtX3NhbXBsZXNfcmVjZWl2ZWQgPSByeF9zdHJlYW1lci5yZWN2KHJhZGlv
X2RhdGEsIG1ldGFkYXRhLCB0aW1lb3V0PTAuNSkKCiAgICAjIENoZWNrIGZvciBvdmVyZmxvd3Mg
b3IgdW5kZXJmbG93cwogICAgaWYgbWV0YWRhdGEuZXJyb3JfY29kZSA9PSB1aGQudHlwZXMuUlhN
ZXRhZGF0YUVycm9yQ29kZS5ub25lOgogICAgICAgICMgRW5zdXJlIHRoYXQgdmFsaWQgc2FtcGxl
cyBhcmUgcmVjZWl2ZWQKICAgICAgICBpZiBudW1fc2FtcGxlc19yZWNlaXZlZCA+IDA6CiAgICAg
ICAgICAgICMgVXBkYXRlIHRoZSB5LWRhdGEgd2l0aCB0aGUgbWFnbml0dWRlIG9mIHRoZSBuZXds
eSByZWNlaXZlZCBzYW1wbGVzCiAgICAgICAgICAgIGxpbmUuc2V0X3lkYXRhKG5wLmFicyhyYWRp
b19kYXRhWzBdKSkgICMgVXBkYXRlIHktYXhpcyB3aXRoIG5ldyByYWRpbyBkYXRhCiAgICAgICAg
ICAgIAogICAgICAgICAgICAjIEFkanVzdCBwbG90IHRvIGZpdCBuZXcgZGF0YSBpZiBuZWNlc3Nh
cnkKICAgICAgICAgICAgYXgucmVsaW0oKQogICAgICAgICAgICBheC5hdXRvc2NhbGVfdmlldygp
CiAgICBlbHNlOgogICAgICAgIHByaW50KGYiTWV0YWRhdGEgZXJyb3I6IHttZXRhZGF0YS5lcnJv
cl9jb2RlfSIpCgogICAgcmV0dXJuIGxpbmUsCndoaWxlIFRydWU6IAogICAgIyBTZXQgdXAgdGhl
IGFuaW1hdGlvbiB0byB1cGRhdGUgdGhlIHBsb3QgY29udGludW91c2x5CiAgICBhbmkgPSBhbmlt
YXRpb24uRnVuY0FuaW1hdGlvbihmaWcsIHVwZGF0ZV9wbG90LCBpbnRlcnZhbD0xMDAsIGJsaXQ9
RmFsc2UpICAjIFVwZGF0ZSBldmVyeSAxMDAgbXMKICAgICMgRGlzcGxheSB0aGUgcGxvdAogICAg
cGx0LnNob3coKQoKCiMgU3RvcCBzdHJlYW1pbmcgd2hlbiBkb25lIChvcHRpb25hbCkKcnhfc3Ry
ZWFtZXIuaXNzdWVfc3RyZWFtX2NtZCh1aGQudHlwZXMuU3RyZWFtQ01EKHVoZC50eXBlcy5TdHJl
YW1Nb2RlLnN0b3BfY29udCkpCg==
--000000000000ed89710626110090
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000ed89710626110090--
