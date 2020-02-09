Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0C8156BE6
	for <lists+usrp-users@lfdr.de>; Sun,  9 Feb 2020 18:57:59 +0100 (CET)
Received: from [::1] (port=45862 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j0qqD-0001TY-6h; Sun, 09 Feb 2020 12:57:57 -0500
Received: from mail-io1-f50.google.com ([209.85.166.50]:44523)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <yend19@gmail.com>) id 1j0qqA-0001Hc-Cw
 for usrp-users@lists.ettus.com; Sun, 09 Feb 2020 12:57:54 -0500
Received: by mail-io1-f50.google.com with SMTP id z16so5007595iod.11
 for <usrp-users@lists.ettus.com>; Sun, 09 Feb 2020 09:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H/iyRQRQ5xltQS+6ee818jTJX155/XNuyGfkP7uuwK4=;
 b=rWOvI0lwpQttQxXllxyLeiphcYlom5KtlGqQO0A9XjV3YT+mJfSs/F81QbgGrTC10V
 49HcCaWd90KI1VZxgCSCOnDGI9pL1Pf/ZeIu36UYh6vJO6bSeEmsKO1sfkN8i6ZJiUkD
 T2NKYuJ/e+mCsdUS/xzQhcrFC1So1KIZRWDh1VUAXHlu/4HCyd1nQA66N47nzMjafgFL
 m8XVTYQfS63ObEPljrmP3mDNcgaY40arJhogVtcmtSHeGDtEN8MPI2KGhWqj0bNtIFvi
 fChhjRsuiwB1A6SqElbR52SnUUm34TGkalLnrZdzjzyILpfH/U/n+o5aY9YlJF3POaQe
 idWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H/iyRQRQ5xltQS+6ee818jTJX155/XNuyGfkP7uuwK4=;
 b=EbLDPL6mHhScZZcleSXRsg8If53v2rtYwWwgu6vLMSxKWGLFEOM09U8UItl1+SSgYh
 q4PpERHjS3VPRgNMYlSeRbIKQaVZNVbVz5gbH5A7fzHo542m2nIZVIWd5NeVILqc84KO
 gS12cn9JWrk4QF9Ps+26+vGlJAsYb2G95ChH18tCxXKHjFGlOkXJcEjQYm5DNIP+2lHX
 1w5FSsfehDL0JWs1r8UIR3m+Gn4STZyNXJMRo4lCxqa1LVwpw8j1INXUbfJdn4ouvEr1
 XYqT28oAx6m7cXDp8JgTXCy6pAF9dubrj8fVEBM0Cw9DFnlk7NHpmSnpCLodm1JkeZgz
 BTTQ==
X-Gm-Message-State: APjAAAWqfsXah/2cmi0Xp31FHv7ylfPLtnkrVW5V0wcMnOSC+Kd4ghHg
 jW9z05/9eQwTUxuxHZIjY4DrKe8Yi/tMai1a1vuVlQ==
X-Google-Smtp-Source: APXvYqwp15eouf+ybs7EfGJXBIKzbOVp/X/cHg0QE/YOBJAuALPhZn0HAcnz2noxw35/2nD9qhWT/zgyCfzP6nQEhzE=
X-Received: by 2002:a02:9988:: with SMTP id a8mr7144259jal.33.1581271033491;
 Sun, 09 Feb 2020 09:57:13 -0800 (PST)
MIME-Version: 1.0
References: <mailman.36.1581094802.9042.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.36.1581094802.9042.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Sun, 9 Feb 2020 19:57:01 +0200
Message-ID: <CANgrtSUTL6nk3oJiZOTku8+6bwzEEwEYt13eHSzNj_p=O7JAAw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP filter delay
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
From: "YENDstudio . via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "YENDstudio ." <yend19@gmail.com>
Content-Type: multipart/mixed; boundary="===============1427764844133546814=="
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

--===============1427764844133546814==
Content-Type: multipart/alternative; boundary="0000000000003eb633059e285a1c"

--0000000000003eb633059e285a1c
Content-Type: text/plain; charset="UTF-8"

Thanks all for the support. It seems that the DDC/DUC filters do not affect
the timestamps; filters' group delay is compensated. The observed loopback
delay (timestamp difference between TX and RX data) probably comes from the
analog parts. Anyway, this has to be verified using measurements.



>
>
>
> ---------- Forwarded message ----------
> From: Sam Reiter <sam.reiter@ettus.com>
> To: "Marcus D. Leech" <patchvonbraun@gmail.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Bcc:
> Date: Thu, 6 Feb 2020 11:51:59 -0600
> Subject: Re: [USRP-users] USRP filter delay
> Timestamps on RX samples are put in the CHDR Header by the Radio Core and
> are not changed by the DDC downstream, except for the case of interpolation
> / decimation. But even in this case, the remaining samples should still be
> repackaged with timestamps consistent with those given by the Radio Core.
>
> Timestamps on TX samples are assigned on the host machine and compared
> against vita_time in the radio core before they are transmitted (in USRPs
> that support timed TX and RX).
>
> All of that said, the b2xx doesn't support timed operations that interface
> with the AD936x, including timed TX and RX. As I understand it the group
> delay on RX samples would be from Antenna -> AD936x > Radio Core, and this
> delay would be non-deterministic. No additional delay (from a CHDR
> timestamp perspective) is introduced downstream.
>
> Sam
>
> On Wed, Feb 5, 2020 at 4:05 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 02/04/2020 04:05 PM, YENDstudio . via USRP-users wrote:
>>
>>   Hi Markus,
>>
>> Yes, I am using a timed-command. The loopback delay is about 50 samples.
>> Checking from the UHD API, I can see that there are three digital filters
>> (FIR_1,HB_1,2,3) enabled. The FIR filter alone has 128 taps, and the group
>> delay would exceed what I measured. I am now suspecting that the timestamps
>> are taken at the ADC/DAC rather than at the TX/RX controller (before DUC
>> and after DDC), or the group delay introduced by the digital filters has
>> been compensated. In this case, the loopback delay I measured only shows
>> only the Analog filters' delay which can be predicted.
>>
>> I will check AD9361's datasheet but I am still unsure of how the
>> timestamps are interpreted; whether the DUC/DDC filter delay is taken into
>> consideration. Otherwise, even while using a GPS PPS trigger, there would
>> be an offset between the start of the TX signal (measured at the antenna)
>> and the actual GPS time. Personally, it would make sense to compensate for
>> DDC/DUC delays by the UHD driver/firmware based on the selected digital
>> filters and the interpolation & decimation factors.
>>
>>
>>
>> My understanding is that timing on the B200 is referred to the host
>> transport stream, and NOT after the DUC/DDC filters.  Which means that
>>   for any given master-clock/host-sample-rate configuration, it would
>> need to be characterized by the end user.
>>
>> There have been improvements in this regard with other hardware (X3xx,
>> for example), but I'm about 70% certain that the timing on the
>>   B200 is relative to the host transport as it enters/leaves the DSP
>> chain.
>>
>>
>>
>>>
>>>
>>> ---------- Forwarded message ----------
>>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>>> To: usrp-users@lists.ettus.com
>>> Cc:
>>> Bcc:
>>> Date: Mon, 03 Feb 2020 12:40:48 -0500
>>> Subject: Re: [USRP-users] USRP filter delay
>>> On 02/02/2020 04:40 AM, YENDstudio . via USRP-users wrote:
>>> > Hi,
>>> >
>>> > I want to know the actual timestamp of TX and RX signals at the RF
>>> > antenna. For this I have add/subtract the group delay introduced by
>>> > digital filters in the TX and the RX paths from the UHD timestamp.
>>> > Through loopback test, I am able to calculate the aggregate delay, but
>>> > cannot know the TX delay and the RX delay separately. The UHD driver
>>> > has APIs to get the list of filters used in the signal paths. But my
>>> > calculated values do not match with the loopback delay I measured.
>>> > Could someone help me with this? I am using USRPB200 set with 30.72
>>> > MHz master clock rate and 1.92 MHz sampling rate.
>>> >
>>> > Regards!
>>> >
>>> >
>>> So, you use a timed transmit sequence, or you just note the time the
>>> samples left your application?  Latency measured through the entire
>>>    stack will be MUCH larger, and variable, than if measured using a
>>> timed-command transmit sequence.
>>>
>>> Quite apart from the analog delay that Nick has already mentioned,
>>> filter-delay will be "shared" between filters in the FPGA, and filters
>>> in the
>>>    AD9361 chip--there's a kind of "shared" DSP going on there.  The
>>> AD9361 datasheet might be a fruitful place to look at DUC/DDC filter
>>>    latencies within the chip.
>>>
>>>
>>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000003eb633059e285a1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><br>Thanks all for the support. It seems that the DDC/DUC=
 filters do not affect the timestamps; filters&#39; group delay is compensa=
ted. The observed loopback delay (timestamp difference between TX and RX da=
ta) probably comes from the analog parts. Anyway, this has to be verified u=
sing measurements.<div dir=3D"auto"><br></div><div dir=3D"auto"><br><div cl=
ass=3D"gmail_quote" dir=3D"auto"><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br><br><br=
><br>---------- Forwarded message ----------<br>From:=C2=A0Sam Reiter &lt;<=
a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank" rel=3D"noreferrer"=
>sam.reiter@ettus.com</a>&gt;<br>To:=C2=A0&quot;Marcus D. Leech&quot; &lt;<=
a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank" rel=3D"noreferr=
er">patchvonbraun@gmail.com</a>&gt;<br>Cc:=C2=A0usrp-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp=
-users@lists.ettus.com</a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Thu, 6 Feb 2020 =
11:51:59 -0600<br>Subject:=C2=A0Re: [USRP-users] USRP filter delay<br><div =
dir=3D"ltr"><div>Timestamps on RX samples are put in the CHDR Header by the=
 Radio Core and are not changed by the DDC downstream, except for the case =
of interpolation / decimation. But even in this case, the remaining samples=
 should still be repackaged with timestamps consistent with those given by =
the Radio Core.</div><div><br></div><div>Timestamps on TX samples are assig=
ned on the host machine and compared against vita_time in the radio core be=
fore they are transmitted (in USRPs that support timed TX and RX). <br></di=
v><div><br></div><div>All of that said, the b2xx doesn&#39;t support timed =
operations that interface with the AD936x, including timed TX and RX. As I =
understand it the group delay on RX samples would be from Antenna -&gt; AD9=
36x &gt; Radio Core, and this delay would be non-deterministic. No addition=
al delay (from a CHDR timestamp perspective) is introduced downstream.=C2=
=A0 <br></div><div><br></div><div><div><div><div dir=3D"ltr" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam<br></div></=
div></div></div></div></div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 5, 2020 at 4:05 PM Marcus D. =
Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 02/04/2020 04:05 PM, YENDstudio .
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"auto">
        <div class=3D"gmail_quote" dir=3D"auto">
          <div dir=3D"ltr" class=3D"gmail_attr">=C2=A0 Hi Markus,</div>
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
          <div dir=3D"ltr" class=3D"gmail_attr">Yes, I am using a
            timed-command. The loopback delay is about 50 samples.
            Checking from the UHD API, I can see that there are three
            digital filters (FIR_1,HB_1,2,3) enabled. The FIR filter
            alone has 128 taps, and the group delay would exceed what I
            measured. I am now suspecting that the timestamps are taken
            at the ADC/DAC rather than at the TX/RX controller (before
            DUC and after DDC), or the group delay introduced by the
            digital filters has been compensated. In this case, the
            loopback delay I measured only shows only the Analog
            filters&#39; delay which can be predicted.</div>
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
          <div dir=3D"ltr" class=3D"gmail_attr">I will check=C2=A0<span sty=
le=3D"font-family:sans-serif">AD9361&#39;s datasheet but I am
              still unsure of how the timestamps are interpreted;
              whether the DUC/DDC filter delay is taken into
              consideration. Otherwise, even while using a GPS PPS
              trigger, there would be an offset between the start of the
              TX signal (measured at the antenna) and the actual GPS
              time. Personally, it would make sense to compensate for
              DDC/DUC delays by the UHD driver/firmware based on the
              selected digital filters and the interpolation &amp;
              decimation factors.</span></div>
          <div dir=3D"ltr" class=3D"gmail_attr"><span style=3D"font-family:=
sans-serif"><br>
            </span></div>
          <div dir=3D"ltr" class=3D"gmail_attr"><span style=3D"font-family:=
sans-serif"><br>
            </span></div>
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
        </div>
      </div>
    </blockquote>
    My understanding is that timing on the B200 is referred to the host
    transport stream, and NOT after the DUC/DDC filters.=C2=A0 Which means
    that<br>
    =C2=A0 for any given master-clock/host-sample-rate configuration, it
    would need to be characterized by the end user.<br>
    <br>
    There have been improvements in this regard with other hardware
    (X3xx, for example), but I&#39;m about 70% certain that the timing on
    the<br>
    =C2=A0 B200 is relative to the host transport as it enters/leaves the D=
SP
    chain.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"auto">
        <div class=3D"gmail_quote" dir=3D"auto">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <br>
            <br>
            <br>
            ---------- Forwarded message ----------<br>
            From:=C2=A0&quot;Marcus D. Leech&quot; &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">patc=
hvonbraun@gmail.com</a>&gt;<br>
            To:=C2=A0<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
            Cc:=C2=A0<br>
            Bcc:=C2=A0<br>
            Date:=C2=A0Mon, 03 Feb 2020 12:40:48 -0500<br>
            Subject:=C2=A0Re: [USRP-users] USRP filter delay<br>
            On 02/02/2020 04:40 AM, YENDstudio . via USRP-users wrote:<br>
            &gt; Hi,<br>
            &gt;<br>
            &gt; I want to know the actual timestamp of TX and RX
            signals at the RF <br>
            &gt; antenna. For this I have add/subtract the group delay
            introduced by <br>
            &gt; digital filters in the TX and the RX paths from the UHD
            timestamp. <br>
            &gt; Through loopback test, I am able to calculate the
            aggregate delay, but <br>
            &gt; cannot know the TX delay and the RX delay separately.
            The UHD driver <br>
            &gt; has APIs to get the list of filters used in the signal
            paths. But my <br>
            &gt; calculated values do not match with the loopback delay
            I measured. <br>
            &gt; Could someone help me with this? I am using USRPB200
            set with 30.72 <br>
            &gt; MHz master clock rate and 1.92 MHz sampling rate.<br>
            &gt;<br>
            &gt; Regards!<br>
            &gt;<br>
            &gt;<br>
            So, you use a timed transmit sequence, or you just note the
            time the <br>
            samples left your application?=C2=A0 Latency measured through t=
he
            entire<br>
            =C2=A0 =C2=A0stack will be MUCH larger, and variable, than if m=
easured
            using a <br>
            timed-command transmit sequence.<br>
            <br>
            Quite apart from the analog delay that Nick has already
            mentioned, <br>
            filter-delay will be &quot;shared&quot; between filters in the =
FPGA,
            and filters <br>
            in the<br>
            =C2=A0 =C2=A0AD9361 chip--there&#39;s a kind of &quot;shared&qu=
ot; DSP going on
            there.=C2=A0 The <br>
            AD9361 datasheet might be a fruitful place to look at
            DUC/DDC filter<br>
            =C2=A0 =C2=A0latencies within the chip.<br>
            <br>
            <br>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a></blockquote></div>
</blockquote></div></div></div>

--0000000000003eb633059e285a1c--


--===============1427764844133546814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1427764844133546814==--

