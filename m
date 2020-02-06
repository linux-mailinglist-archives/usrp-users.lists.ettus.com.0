Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F51154A92
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2020 18:52:59 +0100 (CET)
Received: from [::1] (port=40228 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1izlKi-0002qu-Ko; Thu, 06 Feb 2020 12:52:56 -0500
Received: from mail-lj1-f169.google.com ([209.85.208.169]:40783)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1izlKe-0002ka-R5
 for usrp-users@lists.ettus.com; Thu, 06 Feb 2020 12:52:53 -0500
Received: by mail-lj1-f169.google.com with SMTP id n18so7054309ljo.7
 for <usrp-users@lists.ettus.com>; Thu, 06 Feb 2020 09:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9pHaoSsIW3wHgRJU4Q8pJ+aEB5bxxzOutK69Yi5GNZ4=;
 b=QRA0yOs5B6FFQkQEzPHZq/rjlvOu/mbkopdPDXW6sVQrZSYxDzI10/2CuQub7s2+B7
 NhiNevetWBZcTnGuJjJA28nx4ZRPBFQmgfnDzLVrxuGgcO6ZeKawVn8Q7zF4FF8gLI8R
 K0eqL9hXQXru6VMHUatb+Xtot9E1p26GQrNg2vmrgZioTY7OKHliyQBYql2/DVfip83/
 B4HfDTvCo+XpBriyG44HcRcHMjKqjMe/sQSZwNDD6WhdEaxOkgWZHX0H+nvkXmi3Hbv+
 wjiJ9WCKVgElZ5+f5hEXqEpOQZ/m4BgLkHVhnJx+OYpQyoI8b/IB2A87VUKggTXFifO6
 ORFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9pHaoSsIW3wHgRJU4Q8pJ+aEB5bxxzOutK69Yi5GNZ4=;
 b=Q/dMGVjZ6QtYhnI0WQHxtohsPS4TSVidcEX655uuPQuMcqAfybLDPpbLP2Erc+e+o3
 +kC7Y4ocy6Z9BBy7UVCr+wWTgfYbHGYKC4prpl4SRH7IghbWgTTIV9hGJTb3uuKkTSAR
 7YT9+7hUXVXpd2HjM2xVwX7b6sizJheHgrcicQnGwGmLBZGVHtVw3F+J2+9L56Z+2s76
 synyDLaPWSQvvf0nOqx63VWwpte5nBiHdRTlmlY0sYbo9a5O3MIpzs+LVKSKEt27s3Vk
 jLjdD7CxwRXD08qr8oo7OfwL1U80IQMlBfHHvVAcmo99Iqaf8LsQRtimTuapAg92L9dh
 8dNA==
X-Gm-Message-State: APjAAAViEA5VrZze12ZFfrI9FEF8bt6mt23FyQ3tqe9N2G0rrTmAkxs+
 /P2ZNpucEZp36Fr/BD+lht9BOTKICk+E3HIXgx9/WdV0
X-Google-Smtp-Source: APXvYqxU/huCGO7KuAqQ5iB5wOVQbSc6LTTql6SJeM7ODFeT8xeq9/ciljiAbcbP+OLXg0S/nwoOT+fQFulZ+mzrRNQ=
X-Received: by 2002:a2e:86c8:: with SMTP id n8mr2725123ljj.205.1581011531409; 
 Thu, 06 Feb 2020 09:52:11 -0800 (PST)
MIME-Version: 1.0
References: <mailman.52.1580835604.21324.usrp-users_lists.ettus.com@lists.ettus.com>
 <CANgrtSX+XF7_pR_L9tD_YfcHXfMeNxhbV=pdDyjnznyaNOm-OQ@mail.gmail.com>
 <5E3B3C15.50004@gmail.com>
In-Reply-To: <5E3B3C15.50004@gmail.com>
Date: Thu, 6 Feb 2020 11:51:59 -0600
Message-ID: <CANf970Y89v2PQseXmiLu7rq6a8CvYWcBS05FDMB324LnvViEkg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2825740276962238373=="
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

--===============2825740276962238373==
Content-Type: multipart/alternative; boundary="000000000000b7671a059debeeae"

--000000000000b7671a059debeeae
Content-Type: text/plain; charset="UTF-8"

Timestamps on RX samples are put in the CHDR Header by the Radio Core and
are not changed by the DDC downstream, except for the case of interpolation
/ decimation. But even in this case, the remaining samples should still be
repackaged with timestamps consistent with those given by the Radio Core.

Timestamps on TX samples are assigned on the host machine and compared
against vita_time in the radio core before they are transmitted (in USRPs
that support timed TX and RX).

All of that said, the b2xx doesn't support timed operations that interface
with the AD936x, including timed TX and RX. As I understand it the group
delay on RX samples would be from Antenna -> AD936x > Radio Core, and this
delay would be non-deterministic. No additional delay (from a CHDR
timestamp perspective) is introduced downstream.

Sam

On Wed, Feb 5, 2020 at 4:05 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 02/04/2020 04:05 PM, YENDstudio . via USRP-users wrote:
>
>   Hi Markus,
>
> Yes, I am using a timed-command. The loopback delay is about 50 samples.
> Checking from the UHD API, I can see that there are three digital filters
> (FIR_1,HB_1,2,3) enabled. The FIR filter alone has 128 taps, and the group
> delay would exceed what I measured. I am now suspecting that the timestamps
> are taken at the ADC/DAC rather than at the TX/RX controller (before DUC
> and after DDC), or the group delay introduced by the digital filters has
> been compensated. In this case, the loopback delay I measured only shows
> only the Analog filters' delay which can be predicted.
>
> I will check AD9361's datasheet but I am still unsure of how the
> timestamps are interpreted; whether the DUC/DDC filter delay is taken into
> consideration. Otherwise, even while using a GPS PPS trigger, there would
> be an offset between the start of the TX signal (measured at the antenna)
> and the actual GPS time. Personally, it would make sense to compensate for
> DDC/DUC delays by the UHD driver/firmware based on the selected digital
> filters and the interpolation & decimation factors.
>
>
>
> My understanding is that timing on the B200 is referred to the host
> transport stream, and NOT after the DUC/DDC filters.  Which means that
>   for any given master-clock/host-sample-rate configuration, it would need
> to be characterized by the end user.
>
> There have been improvements in this regard with other hardware (X3xx, for
> example), but I'm about 70% certain that the timing on the
>   B200 is relative to the host transport as it enters/leaves the DSP chain.
>
>
>
>>
>>
>> ---------- Forwarded message ----------
>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>> To: usrp-users@lists.ettus.com
>> Cc:
>> Bcc:
>> Date: Mon, 03 Feb 2020 12:40:48 -0500
>> Subject: Re: [USRP-users] USRP filter delay
>> On 02/02/2020 04:40 AM, YENDstudio . via USRP-users wrote:
>> > Hi,
>> >
>> > I want to know the actual timestamp of TX and RX signals at the RF
>> > antenna. For this I have add/subtract the group delay introduced by
>> > digital filters in the TX and the RX paths from the UHD timestamp.
>> > Through loopback test, I am able to calculate the aggregate delay, but
>> > cannot know the TX delay and the RX delay separately. The UHD driver
>> > has APIs to get the list of filters used in the signal paths. But my
>> > calculated values do not match with the loopback delay I measured.
>> > Could someone help me with this? I am using USRPB200 set with 30.72
>> > MHz master clock rate and 1.92 MHz sampling rate.
>> >
>> > Regards!
>> >
>> >
>> So, you use a timed transmit sequence, or you just note the time the
>> samples left your application?  Latency measured through the entire
>>    stack will be MUCH larger, and variable, than if measured using a
>> timed-command transmit sequence.
>>
>> Quite apart from the analog delay that Nick has already mentioned,
>> filter-delay will be "shared" between filters in the FPGA, and filters
>> in the
>>    AD9361 chip--there's a kind of "shared" DSP going on there.  The
>> AD9361 datasheet might be a fruitful place to look at DUC/DDC filter
>>    latencies within the chip.
>>
>>
>>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b7671a059debeeae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Timestamps on RX samples are put in the CHDR Header b=
y the Radio Core and are not changed by the DDC downstream, except for the =
case of interpolation / decimation. But even in this case, the remaining sa=
mples should still be repackaged with timestamps consistent with those give=
n by the Radio Core.</div><div><br></div><div>Timestamps on TX samples are =
assigned on the host machine and compared against vita_time in the radio co=
re before they are transmitted (in USRPs that support timed TX and RX). <br=
></div><div><br></div><div>All of that said, the b2xx doesn&#39;t support t=
imed operations that interface with the AD936x, including timed TX and RX. =
As I understand it the group delay on RX samples would be from Antenna -&gt=
; AD936x &gt; Radio Core, and this delay would be non-deterministic. No add=
itional delay (from a CHDR timestamp perspective) is introduced downstream.=
=C2=A0 <br></div><div><br></div><div><div><div><div dir=3D"ltr" class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><di=
v dir=3D"ltr">Sam<br></div></div></div></div></div></div></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb =
5, 2020 at 4:05 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
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
tchvonbraun@gmail.com" rel=3D"noreferrer" target=3D"_blank">patchvonbraun@g=
mail.com</a>&gt;<br>
            To:=C2=A0<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"n=
oreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
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
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b7671a059debeeae--


--===============2825740276962238373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2825740276962238373==--

