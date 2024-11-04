Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E8C9BAF8F
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2024 10:24:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5323F385B57
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2024 04:24:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730712268; bh=xb9gTnMoD1/hOwvsNdbcw1nZvBTCvKdwo4CUN9vortc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NkE6Z9VmC5WYcQl66FLl+w/WPmc9s5h3G/AkIXSghRWYS+SXJhE55ZouNQUc4KlBZ
	 cgfem0pouTTu/KNQanoSN7ITd0kQlXDRXFR6CFrvUkap64e3XzORDgUsL8fl89LnZg
	 9nkJDEKo7egZP7E5Ph9F/yn7rvaaDAGe8FLxIolBBDM5xct3ZlDOoSfZFUY68QtE3T
	 LlnYe5JqYOkV8ebFGQbeI3DBQBFYy6sZkGNa3nzd3g7KwSgWJxRjVFzF9eByj9BIM0
	 130dz4y+7aakFTN+B2RTf3MC/VPl/JF/Pg0YGMcnvbikHcHm++DAD3bGNlEOCF7TJr
	 SJ+1C6rzRBoAQ==
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id B008E3859FF
	for <usrp-users@lists.ettus.com>; Mon,  4 Nov 2024 04:23:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=cyronics-com.20230601.gappssmtp.com header.i=@cyronics-com.20230601.gappssmtp.com header.b="Vx1dAOFr";
	dkim-atps=neutral
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6e33c65d104so32034667b3.3
        for <usrp-users@lists.ettus.com>; Mon, 04 Nov 2024 01:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cyronics-com.20230601.gappssmtp.com; s=20230601; t=1730712226; x=1731317026; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U60FqNoiyJPD+skPWdUUlC62KqG5y+owVhb1RACBd9E=;
        b=Vx1dAOFrOY+TyWBAUo4NWRvi9ppKQJaVMyElgZJlXOVpOsONanlllIz0ktiCBUBoe7
         oJuml93ScyHxaAR965TGg/bB43bWx2XsDH3aSD67sLaTEc08QHT0cmE0LuC6UV0JQMG+
         DV3uNIT/469Qt6f9Zlglg6/2Ii9q9ixOhP4UIFuivzZ/M1F6UxB+PXX3has43ZOyptH3
         7McKR5d9YPlRls+ywEtiRSuclj6JG6dWc7jyxzDQPo81IJxyFUlXAFjw2Kq2K/yHKtk4
         mvvm6fFHSs765XImBNs9NWeXellMYL5QmU5aJpICsA2Ax/ncXwT8qj+4eZu40PbCudcE
         FcHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730712226; x=1731317026;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U60FqNoiyJPD+skPWdUUlC62KqG5y+owVhb1RACBd9E=;
        b=u2AK5ulLz3+0HNTUQdVvLc8K36c9rZabBhfQZj0uXq2LKgYDrirycDCbJs9mySmLy0
         Y88p82rZGCAJO2baIswXHnEoR9pq7lN1pe7jLt5DWIGm2aB4JrFx2AcKbPAxBPJjgY6l
         JCG7iVFCobhF3iqdeqNZX6KrTbu7fYPI/nzl4Iq+MIX4bfQBgamFN2nE5pEjKNoylbGZ
         7DBVCIwDMNgHJhPdJU8CjZrL8P/zAaNU+Xz2TseT5WBbTseAZjFMNG4c1Mz6FgSSSDzZ
         goiSi0kzuDMsSCaksFyhbxNBLO7Rrec6IiC5KIKyiJ1Gu0WlZ3DnvsdFqFRGKsM9Bat2
         mjYg==
X-Forwarded-Encrypted: i=1; AJvYcCX9DfBbJq0xCVa9Iz1OnCwZiZkbsmHkOfGvcxqoCRfZQNKsvcbUs5qLg8XnzWML9A8pT8woaXW9+7+f@lists.ettus.com
X-Gm-Message-State: AOJu0YxySp0PDT09GlSkY7eV0pkfmnpTlOfbk6t8crBO5IVpFt0biYv1
	ytUIiiN+HaiUKqpkhJS2yIp/DSgCU1NcP6af0Dnb4ksOvC1QgaVZ8BAqoma7BGDLlUUyBuyKMb/
	HTlztJwMUyP84i5Tw/biho5oXIUYBFSMCYYn96VxaPOICG7D1gVs=
X-Google-Smtp-Source: AGHT+IE60O8OeJLZbYVXfXLVwJHsJBRJ8PJP41N+5wnk3frhoG1LKQlId2/db/+HmboVksyGFtlVpg9R3a6kmLcP5CI=
X-Received: by 2002:a05:690c:318e:b0:6e6:45b:5d0 with SMTP id
 00721157ae682-6e9d8b55218mr190593917b3.45.1730712225991; Mon, 04 Nov 2024
 01:23:45 -0800 (PST)
MIME-Version: 1.0
References: <CAF=K0BGvENW-hcz4zpGvHC+F9U7AcAaEJ3vyb4vfi_h--mb=Ng@mail.gmail.com>
 <CAFche=hXccZr6Y96XW3yzAe7NG2i7qFaq6=3YZvCANvc5zo7SQ@mail.gmail.com> <CAF=K0BHZF=-DyRAS2fAr_wZWT_gnFXrLyf-1N3Vmp=nq0LBQRg@mail.gmail.com>
In-Reply-To: <CAF=K0BHZF=-DyRAS2fAr_wZWT_gnFXrLyf-1N3Vmp=nq0LBQRg@mail.gmail.com>
From: Nidhi Panda <nidhi.panda@cyronics.com>
Date: Mon, 4 Nov 2024 14:53:30 +0530
Message-ID: <CAF=K0BGBh3RyxTroS2eQeK74b9VdisW1f_qD4agW+OFxZ0qK8g@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>, usrp-users@lists.ettus.com,
	Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: FDSA7DQNWXZKHBMGRXLKBSYLEYFDPAZB
X-Message-ID-Hash: FDSA7DQNWXZKHBMGRXLKBSYLEYFDPAZB
X-MailFrom: nidhi.panda@cyronics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error on using split stream and FFT rfnoc block.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FDSA7DQNWXZKHBMGRXLKBSYLEYFDPAZB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7839525532980936680=="

--===============7839525532980936680==
Content-Type: multipart/alternative; boundary="000000000000706f90062612d7ab"

--000000000000706f90062612d7ab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just to update on my previous question. I also tried to update
"rfnoc_rx_streamer.cpp" by changing  function *spp*4 * in the*
"add_property_resolver function"* as follows:























*    add_property_resolver({atomic_item_size_in, mtu_in, type_in},
{},        [&ais =3D *atomic_item_size_in, &type =3D *type_in, chan, this](=
) {
          const auto UHD_UNUSED(log_chan) =3D chan;
RFNOC_LOG_TRACE("Calling resolver for `atomic_item_size'@" << chan);
    if (ais.is_valid()) {                const size_t bpi          =3D
convert::get_bytes_per_item(type.get());                const size_t spp
       =3D this->rx_streamer_impl::get_max_num_samps();                cons=
t
size_t spp_multiple =3D uhd::math::lcm<size_t>(ais.get(), bpi) / bpi;
        if (spp*4 < spp_multiple) {
RFNOC_LOG_ERROR("Cannot resolve spp! Must be a multiple of "
                    << spp_multiple << " but max value is " << spp);
            throw uhd::value_error(                        "Samples per
packet is incompatible with atomic item size!");                }
      const auto misalignment =3D spp % spp_multiple;                if
(misalignment > 0) {                    RFNOC_LOG_TRACE("Reducing spp by "
                                  << misalignment << " to align with atomic
item size");
this->rx_streamer_impl::set_max_num_samps(spp - misalignment);
  }            }        });*

And recompiler uhd with following commands:

*cd uhd/host*

* cd build*

*cmake ..*

*make*

* make test # Optional: run tests*


* sudo make install *



However, this also resulted in the same error.

On Mon, Nov 4, 2024 at 12:41=E2=80=AFPM Nidhi Panda <nidhi.panda@cyronics.c=
om>
wrote:

> Thank you for your response, but as I have mentioned I  already tried to
> set SPP to match FFT_size for Rx_radio. I also tried to set spp with py
> script.  It shows the same error as GNu radio which is:
>
>
>
>
>
> *[ERROR] [RxStreamer#0] Cannot resolve spp! Must be a multiple of 512 but
> max value is 256Traceback (most recent call last):  File "FFT_test.py",
> line 47, in <module>    fft.set_length(fft_length)RuntimeError: ValueErro=
r:
> Samples per packet is incompatible with atomic item size!*
>
> I have attached my py script for your reference.* Is there any reference
> code (GNU radio or python or CPP) which works with FFT size =3D 1024/2048=
? *Is
> it even possible to get this FFT length (1024 and 2048 ) with USRP x300?
> Also, I have only twin RX in my design so no TX.
>
> Another thing I noticed is if I set fft|_length before committing the
> graph, the max spp value is *364 *whereas after commit if I set
> fft_length the max SPP size is *256*. Can anyone please explain what is
> the reason for this.
>
>
> On Wed, Oct 23, 2024 at 6:59=E2=80=AFPM Wade Fife <wade.fife@ettus.com> w=
rote:
>
>> With this FFT block, you need to set the SPP to match the FFT size for i=
t
>> to work correctly. I'm not very familiar with GNU Radio but I think ther=
e
>> is an SPP parameter on the RX radio. I don't know how to set it for TX.
>>
>> Wade
>>
>>
>> On Wed, Oct 23, 2024 at 5:45=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronic=
s.com>
>> wrote:
>>
>>> Hello,
>>>
>>> I am having USRP X300 device with following tool versions:
>>>
>>> Vivado 2021.1 - AR76780n,
>>> GNU radio version - v3.11.0.0git-820-g2adbd4ea
>>> UHD version - UHD_4.7.0.0-84-gbdada1ed
>>>
>>> I have added FFT and Spliter RFNoC blocks in my bit file. The
>>> "uhd_usrp_probe" command shows correct connection in the blocks.
>>>
>>> | | RFNoC blocks on this device:
>>> | |
>>> | | * 0/DDC#0
>>> | | * 0/FFT#0
>>> | | * 0/Radio#0
>>> | | * 0/Replay#0
>>> | | * 0/SplitStream#0
>>> | _____________________________________________________
>>> | /
>>> | | Static connections on this device:
>>>
>>> | | * 0/Radio#0:0=3D=3D>0/DDC#0:0
>>> | | * 0/Radio#0:1=3D=3D>0/DDC#0:1
>>> | | * 0/DDC#0:1=3D=3D>0/SEP#0:0
>>> | | * 0/DDC#0:0=3D=3D>0/SplitStream#0:0
>>> | | * 0/SplitStream#0:1=3D=3D>0/FFT#0:0
>>> | | * 0/SplitStream#0:0=3D=3D>0/SEP#2:0
>>> | | * 0/FFT#0:0=3D=3D>0/SEP#1:0
>>> | | * 0/SEP#3:0=3D=3D>0/Replay#0:0
>>> | | * 0/Replay#0:0=3D=3D>0/SEP#3:0
>>> | | * 0/SEP#4:0=3D=3D>0/Replay#0:1
>>> | | * 0/Replay#0:1=3D=3D>0/SEP#4:0
>>>
>>> However, on running example code available on GNURADIO
>>> *"rfnoc_split_stream.grc"*. I get following error:
>>>
>>> *1. When FFT size =3D 1024 (as in the example given in gnu radio)*
>>>
>>>
>>>
>>> *----------------------------------------------------------------------=
----------------------------------------------------*
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *[ERROR] [RxStreamer#0] Cannot resolve spp! Must be a multiple of 1024
>>> but max value is 364Traceback (most recent call last):  File
>>> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
>>> 347, in <module>    main()  File
>>> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
>>> 326, in main    tb.start()  File
>>> "/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py", line
>>> 116, in start    top_block_start_unlocked(self._impl,
>>> max_noutput_items)RuntimeError: ValueError: Samples per packet is
>>> incompatible with atomic item size!*
>>>
>>>
>>> *----------------------------------------------------------------------=
----------------------------------------------------*
>>> How to know what is atomic size and how can I set it. On searching for
>>> this error I came across following link:
>>>
>>> *https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702ffbdb103=
52cf875d604d74
>>> <https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702ffbdb103=
52cf875d604d74>*
>>>
>>> This says rx stream is having a bug and AIS is in unit bytes, and spp
>>> in unit items. It was a response of two years back with the uhd version
>>> v4.3.0.0-rc1
>>> <https://github.com/EttusResearch/uhd/releases/tag/v4.3.0.0-rc1>. Does
>>> this explanation still hold? What is the max FFT size I can use? I want=
 to
>>> use *2048*, what changes need to be done for it.
>>>
>>> *1. When FFT size =3D 256*
>>>
>>>
>>> *----------------------------------------------------------------------=
----------------------------------------------------*
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *[ERROR] [RFNOC::GRAPH::DETAIL] The following properties could not be
>>> resolved:[ERROR] [RFNOC::GRAPH::DETAIL] Dirty: RxStreamer#1[INPUT_EDGE:=
0
>>> atomic_item_size]Traceback (most recent call last):  File
>>> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
>>> 347, in <module>    main()  File
>>> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
>>> 326, in main    tb.start()  File
>>> "/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py", line
>>> 116, in start    top_block_start_unlocked(self._impl,
>>> max_noutput_items)RuntimeError: RfnocError: ResolveError: Could not res=
olve
>>> properties.*
>>>
>>>
>>> *----------------------------------------------------------------------=
----------------------------------------------------*
>>>
>>> Am I doing anything wrong in the yml script because the connection seem=
s
>>> correct in the uhd_usrp_probe command. On further searching I found tha=
t
>>> SPP i.e. sample per packet must be the same for all the blocks. Tried d=
oing
>>> it in gnu radio by assigning the args option with f"spp=3D{fft_size}". =
Is
>>> this correct? It gives no change in error howver I get additional warni=
ng
>>> as
>>>
>>> [WARNING] [0/FFT#0] set_properties() cannot set property `spp': No such
>>> property.
>>> [WARNING] [0/DDC#0] set_properties() cannot set property `spp': No such
>>> property.
>>>
>>>
>>> Please help me to solve these errors.
>>>
>>> --
>>> Regards,
>>> *Nidhi Panda*
>>>
>>> *Cyronics Innovation Labs Pvt Ltd*
>>> #11, Electronics Co-op Estate
>>> Satara Road, Pune - 411009
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>
> --
> Regards,
> *Nidhi Panda*
>
> *Cyronics Innovation Labs Pvt Ltd*
> #11, Electronics Co-op Estate
> Satara Road, Pune - 411009
>
>

--=20
Regards,
*Nidhi Panda*

*Cyronics Innovation Labs Pvt Ltd*
#11, Electronics Co-op Estate
Satara Road, Pune - 411009

--000000000000706f90062612d7ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just to update on my previous question. I also tried =
to update &quot;rfnoc_rx_streamer.cpp&quot; by changing=C2=A0 function <b>s=
pp*4=C2=A0</b> in the<b> &quot;add_property_resolver function&quot;</b> as =
follows:<br></div><div><br></div><div><i>=C2=A0 =C2=A0 add_property_resolve=
r({atomic_item_size_in, mtu_in, type_in},<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {}=
,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 [&amp;ais =3D *atomic_item_size_in, &amp;t=
ype =3D *type_in, chan, this]() {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 const auto UHD_UNUSED(log_chan) =3D chan;<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 RFNOC_LOG_TRACE(&quot;Calling resolver for `atomic_item_s=
ize&#39;@&quot; &lt;&lt; chan);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (ais.is_valid()) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 const size_t bpi =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D convert::=
get_bytes_per_item(type.get());<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 const size_t spp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D th=
is-&gt;rx_streamer_impl::get_max_num_samps();<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const size_t spp_multiple =3D uhd::math::lc=
m&lt;size_t&gt;(ais.get(), bpi) / bpi;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0<b> if (spp*4 &lt; spp_multiple) {</b><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RFNOC_LOG_ER=
ROR(&quot;Cannot resolve spp! Must be a multiple of &quot;<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt; spp_multiple &lt;&lt; &quot=
; but max value is &quot; &lt;&lt; spp);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 throw uhd::value_error(<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;Samples per packet is incompatible with atomic item size!&quot;);=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const auto misalignment =3D s=
pp % spp_multiple;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (misalignment &gt; 0) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RFNOC_LOG_TRACE(&quot;Reducing spp by &quot;<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt; misalignment =
&lt;&lt; &quot; to align with atomic item size&quot;);<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 this-&gt;rx_streamer_i=
mpl::set_max_num_samps(spp - misalignment);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
}<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 });</i></div><div><br></div><div>And recom=
piler uhd with following commands:</div><div><i><br></i></div><div>


=09
	<span></span>
=09
=09

<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent">
<i>cd uhd/host</i></p>

</div><div>


=09
	<i><span></span></i>
=09
=09

<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent"><i>
cd build</i></p>
<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent"><i>c=
make ..</i></p><p style=3D"margin-bottom:0cm;font-weight:normal;line-height=
:100%;background:transparent"><i>make</i></p>
<p style=3D"margin-bottom:0cm;font-weight:normal;line-height:100%;backgroun=
d:transparent"><i>
make test  # Optional: run tests</i></p>
<p style=3D"margin-bottom:0cm;font-weight:normal;line-height:100%;backgroun=
d:transparent"><i>
sudo make install <br></i></p><p style=3D"margin-bottom:0cm;font-weight:nor=
mal;line-height:100%;background:transparent"><i><br></i></p><p style=3D"mar=
gin-bottom:0cm;font-weight:normal;line-height:100%;background:transparent">=
<i><br></i></p>

</div><div></div><div>However, this also resulted in the same error. <br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Nov 4, 2024 at 12:41=E2=80=AFPM Nidhi Panda &lt;<a href=3D"mail=
to:nidhi.panda@cyronics.com">nidhi.panda@cyronics.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
Thank you for your response, but as I have mentioned I=C2=A0 already tried =
to set SPP to match FFT_size for Rx_radio. I also tried to set spp with py =
script.=C2=A0 It shows the same error as GNu radio which is:<br></div><div>=
<br></div><div><i>[ERROR] [RxStreamer#0] Cannot resolve spp! Must be a mult=
iple of 512 but max value is 256<br>Traceback (most recent call last):<br>=
=C2=A0 File &quot;FFT_test.py&quot;, line 47, in &lt;module&gt;<br>=C2=A0 =
=C2=A0 fft.set_length(fft_length)<br>RuntimeError: ValueError: Samples per =
packet is incompatible with atomic item size!</i></div><div><i><br></i></di=
v><div>I have attached my py script for your reference.<b> Is there any ref=
erence code (GNU radio or python or CPP) which works with FFT size =3D 1024=
/2048? </b>Is it even possible to get this FFT length (1024 and 2048 ) with=
 USRP x300? Also, I have only twin RX in my design so no TX.<br></div><div>=
<br></div><div>Another thing I noticed is if I set fft|_length before commi=
tting the graph, the max spp value is <b>364 </b>whereas after commit if I =
set fft_length the max SPP size is <b>256</b>. Can anyone please explain wh=
at is the reason for this.<br></div><div><i><br></i></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 23, 2=
024 at 6:59=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com"=
 target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>With this FFT b=
lock, you need to set the SPP to match the FFT size for it to work correctl=
y. I&#39;m not very familiar with GNU Radio but I think there is an SPP par=
ameter on the RX radio. I don&#39;t know how to set it for TX.<br></div><di=
v><br></div><div>Wade</div><div><br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 23, 2024 at 5:45=E2=
=80=AFAM Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com" target=
=3D"_blank">nidhi.panda@cyronics.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div>=
<br></div><div><p dir=3D"auto">I am having USRP X300 device with following =
tool versions:</p>
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

--000000000000706f90062612d7ab--

--===============7839525532980936680==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7839525532980936680==--
