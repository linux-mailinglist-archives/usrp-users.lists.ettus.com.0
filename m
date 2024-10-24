Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A68919AE83E
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2024 16:21:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F4B43858CE
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2024 10:21:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729779671; bh=AMPSWa4nzdrK9F/J4sJWvmxF2uWeQQ4mOT201aOGU48=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BAwGRpmaZkC5tHOCAdKV6jBkVmADxrq2xxM6y2HLgUIXH64JmSF5IT9BeP6ec5Imb
	 uHc8gm93jyJCga5Amr7RIXTAc1h+1LpHZRnFCZX11drfMGWIEqOdcNAZryo/yARi9z
	 8MFJGuyc+jyb5bxTEttiwoOhp2VHWAWqTVmUBymTB6COTVs/ys8JYiUnaxS3va8tNu
	 w9HjfxLSeabUhfij56wspf4ml3AXlE8FuSKP5G93CHFK3mzBrpa7RvklScFYUMIFMl
	 S2/kwjDByJfdw20RpIsU+kRx7s/KIPqG3eqGYlQ24PYCpXDP2BWS/Cs/1VvbKns2ZO
	 eywAr6EkWUGsg==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 0499D3857CA
	for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2024 10:20:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="fZf8eBkP";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5c937b5169cso1607466a12.1
        for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2024 07:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1729779651; x=1730384451; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jRopZ4ropg0e0xrhmyfHWlcUT5LWbsntajwUX70YKMs=;
        b=fZf8eBkPYLDskeZo1hPm/j0BbZ2ri9AjeHZ4llAP0kstO4oYxFMnpN6Yk19hyvYazz
         lB9FSb2ajBUynU697MgQ3AUEM8KSo5995RgqbrFVabINlMWm9NYNLDP/qEkcsQVm3esr
         mCe9UTK2rUQOyAr62pXZizEBbLuHDV2bRisFv3mbFMeKdCVcnrEfFOPEKaIaMXWrc56Y
         2q6MCw4l634URXHbPmQXLvHfxym0w3RaFPnI3dCG337FHLPpjtKAQc0bAQmpqbRbbc8W
         6fRKXj3eRpSSj1f9lzi6LYidn2Z6Zpn1M1Hq77QwjfklcCBTTmtkqvc+X7tuGsrZJ/C5
         WVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729779651; x=1730384451;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jRopZ4ropg0e0xrhmyfHWlcUT5LWbsntajwUX70YKMs=;
        b=mdO8MVjxccTbz0yFawRaYx7AbcVvUzFoK3ksZhsj80tN56s0qjQZFzkrBPssdisAVr
         pTswuPrR8qv9ecNcrjWN5X5pCX+/P3v61Ep3C6h42AVXu7WI/QSWDlF6h4QNpVFM06Gw
         cPhXXwJVCeNoLN4pg8QHbnP9dMy8t0zOWb4ge3oW9NoXX0LTyA/JQ/IA6OrS/7ZzCZs2
         cBGevrSY25nyR2pjtotGoqsfs7uFiwgOacNzVjEVkeuoqf1JYo1J+0o3ezfmrqau72dN
         zRHwH4z4CHiEfeXhV9z0y3QMjOIFiozvOXwzxLkEv3pBbFmFg1RbGfB9CEJH+Z9WzATo
         w/Og==
X-Gm-Message-State: AOJu0Yyhq5vlLVaLpPGIIvMbALGgJL7BzHXT5iaMTEKLPQ6T5n0GmmRW
	GzEh/PPpg2I583wBBbHae6in10PIPzdEhw/BVFeNyFJXc9I902Hle/bViaYqIQpetyse2ptlERt
	qa/nlUxyS1SPvlIlscuJqHbW5H1fgbxwQAflNfkYB9cU1HmVoN2M=
X-Google-Smtp-Source: AGHT+IGHAVaYroNdYvIEq6AZl/jlH3fNV4O8jhUtswxItTVuKxpPctObmg6yNXnZjg2t1uTbZEr7KJ85suBeFLOs7cU=
X-Received: by 2002:a05:6402:5246:b0:5cb:ac7e:7148 with SMTP id
 4fb4d7f45d1cf-5cbac7e7281mr48527a12.2.1729779650682; Thu, 24 Oct 2024
 07:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <kXZAsFXgr56rlHXWxsMvHugErundr3FyoUcFVPUQ@lists.ettus.com>
In-Reply-To: <kXZAsFXgr56rlHXWxsMvHugErundr3FyoUcFVPUQ@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 24 Oct 2024 16:20:39 +0200
Message-ID: <CAFOi1A7fjBAG26XEsubmb+ZH_gL3T7eXHL29DMZG5RkTTEDvtw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: A6LY7DUZI6LJ4IED4BJBFFCEEWIUFM7Y
X-Message-ID-Hash: A6LY7DUZI6LJ4IED4BJBFFCEEWIUFM7Y
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about start_of_burst and end_of_burst
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A6LY7DUZI6LJ4IED4BJBFFCEEWIUFM7Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8514916250386249091=="

--===============8514916250386249091==
Content-Type: multipart/alternative; boundary="0000000000009e7d3a062539b59e"

--0000000000009e7d3a062539b59e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The code is hard to read in the formatting that came through. But some
comments:
- start_of_burst is not actually required, that's true. It's a remnant from
the past.
- You don't send a zero after EOB, rather, you need to attach the EOB to
something. In your example, you could also attach EOB to the last loop
iteration's send() call.

--M

On Thu, Oct 24, 2024 at 10:47=E2=80=AFAM <yibindeng66@outlook.com> wrote:

> Hi, I am new to usrp. In a test I want to send a constant bit for a while
> using my B210 at a sampling rate of 1M. One way is to call send_wave() in
> python api. The received signal is shown in fig.1, which is relatively go=
od.
>
> As an alternative, I wrote a send function on my own based on send_wave()=
,
> and invoke it in a loop. The code is as follows. However there are spikes
> in the received signal with a periodic of length of samples, which is sho=
wn
> in fig.2.
>
> def my_send(
>
> waveform_proto,
>
> start_time=3DNone,
>
> streamer=3DNone,
>
> metadata=3DNone,
>
> ):
>
> buffer_samps =3D streamer.get_max_num_samps()
>
> proto_len =3D waveform_proto.shape[-1]
>
> send_samps =3D 0
>
> if len(waveform_proto.shape) =3D=3D 1:
>
> waveform_proto =3D waveform_proto.reshape(1, waveform_proto.size)
>
> # Now stream
>
> print(usrp_tx.get_time_now().get_real_secs())
>
> if metadata is None:
>
> metadata =3D uhd.types.TXMetadata()
>
> if start_time is not None:
>
> metadata.time_spec =3D start_time
>
> metadata.has_time_spec =3D True
>
> while send_samps < proto_len:
>
> real_samps =3D min(proto_len - send_samps, buffer_samps)
>
> samples =3D streamer.send(waveform_proto[:,
> send_samps:send_samps+real_samps], metadata)
>
> send_samps +=3D samples
>
> # Send EOB to terminate Tx
>
> metadata.end_of_burst =3D True
>
> # streamer.send(np.zeros((1, 1), dtype=3Dnp.complex64), metadata)
>
> return send_samps
>
> tx_signals =3D np.ones([500, 1]).reshape(num_channels, -1)
>
> md_tx =3D uhd.types.TXMetadata()
>
> while True:
>
> md_tx.start_of_burst =3D True
>
> send_samples =3D my_send(tx_signal, streamer=3Dtx_streamer, metadata=3Dmd=
_tx)
>
> When I looked into the send_wave() I found these lines:
>
> # Send EOB to terminate Tx
> metadata.end_of_burst =3D True
> streamer.send(np.zeros((1, 1), dtype=3Dnp.complex64), metadata)
>
> Moreover, it seems there are no mentions of start_of_burst. If I delete
> these lines, spikes are removed but the received signal looks very strang=
e,
> which is shown in fig.3.
>
> These facts made me confused at the functions of start_of_burst and
> end_of_burst. Moreover, why should the streamer send a zero after
> end_of_burst?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009e7d3a062539b59e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The code is hard to read in the formatting that came =
through. But some comments:</div><div>- start_of_burst is not actually requ=
ired, that&#39;s true. It&#39;s a remnant from the past.</div><div>- You do=
n&#39;t send a zero after EOB, rather, you need to attach the EOB to someth=
ing. In your example, you could also attach EOB to the last loop iteration&=
#39;s send() call.</div><div><br></div><div>--M<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 24, 20=
24 at 10:47=E2=80=AFAM &lt;<a href=3D"mailto:yibindeng66@outlook.com">yibin=
deng66@outlook.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><p>Hi, I am new to usrp. In a test I want to send a const=
ant bit for a while using my B210 at a sampling rate of 1M. One way is to c=
all send_wave() in python api. The received signal is shown in fig.1, which=
 is relatively good.</p><p>As an alternative, I wrote a send function on my=
 own based on send_wave(), and invoke it in a loop. The code is as follows.=
 However there are spikes in the received signal with a periodic of length =
of samples, which is shown in fig.2.</p><p>def my_send(</p><p>        wavef=
orm_proto,</p><p>        start_time=3DNone,</p><p>        streamer=3DNone,<=
/p><p>        metadata=3DNone,</p><p>):</p><p>    buffer_samps =3D streamer=
.get_max_num_samps()</p><p>    proto_len =3D waveform_proto.shape[-1]</p><p=
>    send_samps =3D 0</p><p>    if len(waveform_proto.shape) =3D=3D 1:</p><=
p>        waveform_proto =3D waveform_proto.reshape(1, waveform_proto.size)=
</p><p>    # Now stream</p><p>    print(usrp_tx.get_time_now().get_real_sec=
s())</p><p>    if metadata is None:</p><p>        metadata =3D uhd.types.TX=
Metadata()</p><p>    if start_time is not None:</p><p>        metadata.time=
_spec =3D start_time</p><p>        metadata.has_time_spec =3D True</p><p>  =
  while send_samps &lt; proto_len:</p><p>        real_samps =3D min(proto_l=
en - send_samps, buffer_samps)</p><p>        samples =3D streamer.send(wave=
form_proto[:, send_samps:send_samps+real_samps], metadata)</p><p>        se=
nd_samps +=3D samples</p><p>    # Send EOB to terminate Tx</p><p>    metada=
ta.end_of_burst =3D True</p><p>    # streamer.send(np.zeros((1, 1), dtype=
=3Dnp.complex64), metadata)</p><p>    return send_samps</p><p>tx_signals =
=3D np.ones([500, 1]).reshape(num_channels, -1)</p><p>md_tx =3D uhd.types.T=
XMetadata()</p><p>while True:</p><p>    md_tx.start_of_burst =3D True</p><p=
>    send_samples =3D my_send(tx_signal, streamer=3Dtx_streamer, metadata=
=3Dmd_tx)</p><p>When I looked into the send_wave() I found these lines:</p>=
<pre><code># Send EOB to terminate Tx
metadata.end_of_burst =3D True
streamer.send(np.zeros((1, 1), dtype=3Dnp.complex64), metadata)</code></pre=
><p>Moreover, it seems there are no mentions of start_of_burst. If I delete=
 these lines, spikes are removed but the received signal looks very strange=
, which is shown in fig.3.</p><p>These facts made me confused at the functi=
ons of start_of_burst and end_of_burst. Moreover, why should the streamer s=
end a zero after end_of_burst?</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009e7d3a062539b59e--

--===============8514916250386249091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8514916250386249091==--
