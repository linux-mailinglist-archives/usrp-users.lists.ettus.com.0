Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AFA84C190
	for <lists+usrp-users@lfdr.de>; Wed,  7 Feb 2024 01:54:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1F2A384FAE
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 19:54:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707267245; bh=9sAO51C3GUgj1ACOE2aifh9uzNeSy0TMn+k5dz3DZ+E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YTFwbgFGo3z0HY7pZ5SPQHri/9zGpuH3CKwkZCa6AteB/om6MPLAjeYT1IbW+lLT0
	 e5+S+OY24pRsctUDjp/cQLivzYw32WeF1B5TsH4YSVIEqbPQOT8nxPU5it+pg3W2Sx
	 EbclkrEJPgfxGQcFWlSYSXaXQzWR8Hz4rTe9FNTRHOlG1tyXZpRk1/ajdiaOisaL/D
	 1icEyWsYTWZFWPMvPhHS+a2kbmQQqNwYvHsjVLDiPX6KNl6u9rZC2AHFVnpeNx11U8
	 Hy9Ab7cxGTBupqbUahAWvqyK6QsuUrchxkqBu5tftRw+chT449eYaDy3a7HG9MjyRG
	 ku44k6l7SCptw==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E384380E65
	for <usrp-users@lists.ettus.com>; Tue,  6 Feb 2024 19:53:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eOiIH5fe";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7856cce021dso1268885a.1
        for <usrp-users@lists.ettus.com>; Tue, 06 Feb 2024 16:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707267233; x=1707872033; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DcY0KSomQv50wZjXP5E7XhDT+iNDXNrVhVipBCqJOxg=;
        b=eOiIH5fex7EOaoXmdjHZJS85UmnD99Ou2IeOoGmOoU/xaJ4DuWIj6bSdMqiHsOEOYG
         TOyYFHpD+m1fxBQo/uZIBOT4c9JQfF60xxIAgQxkh+olWylyitNGqkLF3s6phBEqNw43
         5ToAJc2F2RkacfGOPqcxhAzGNbbVtsu5UdBqrqybfpbl9iwCEWQINw5uiGPnOHyjEgcz
         rtEqHtORzR1G6MjA5/5Q4eX4Zt9kyPyhBmJOdP2JJ/Vi+E4XpcNC0GIpvjue2h1OOwKL
         eB1SAh68xskjw0CY6klpmtrbxmy2Lr9IfyE7H6yOlecbEf4yghUKZtkkR4CjP/fgTBAa
         zh3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707267233; x=1707872033;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DcY0KSomQv50wZjXP5E7XhDT+iNDXNrVhVipBCqJOxg=;
        b=XZ073H+66sPcR0kwjXrr1FuXBH+yvi3Mwcb/BY2arZFEMnBQRTyG9OheVPbG5a0Ogv
         qg496kmG5VhGyREZxJMoHLhtRXwbyf0wGoC0dT3+9hcY/jHOPt35/bZVawR5D/WpjbVN
         3fCrcN8t2G43xem2ft41A97datQKLvDNmJFB2RYODjxnDTcllTv36gZFemcGLyyUecGd
         8iubHD3jjveZl4lRi6eBR4LOgKnvygcpvVOUNExNfJHObqVFU07yqj5Gpt68jCkkZ1qC
         YNx7bxgT4g2a7FRmBFGldSiKUs2G3c61uHpwCB0K8DahHIsxDJkjJyny8U2s4dNg89aA
         Rx0A==
X-Gm-Message-State: AOJu0YzptkDLO2xM77NCPgAmJUgVSJCLuLfnogYxQIiEWwDIQHVZ23Lw
	GTPMiYvgCqxuMFir3+DtI5Z5btnxMjemyEuKrJEI6w9aUKg8qrna0qkjiM4z
X-Google-Smtp-Source: AGHT+IHWlm9RFwLL6iWueUPy3x226uyoc7xjggXaqwBAl3otzi/+2ebGpuZqz/Ed7RHOdAQfpmBRCg==
X-Received: by 2002:a05:6214:410e:b0:68c:49a1:5c95 with SMTP id kc14-20020a056214410e00b0068c49a15c95mr4514593qvb.55.1707267233120;
        Tue, 06 Feb 2024 16:53:53 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id df9-20020a056214080900b0068c964c3c4fsm48340qvb.127.2024.02.06.16.53.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 16:53:52 -0800 (PST)
Message-ID: <b8ee4816-4ef6-4cf5-9477-9ac704c9fa60@gmail.com>
Date: Tue, 6 Feb 2024 19:53:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Je2rmnVRsHMv5FbqtTKa3wbbzr1mn2RPKFRr6nzHGc@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Je2rmnVRsHMv5FbqtTKa3wbbzr1mn2RPKFRr6nzHGc@lists.ettus.com>
Message-ID-Hash: 3QG7N76FAVL6CI4TLRUZDFIWAWRXBDRM
X-Message-ID-Hash: 3QG7N76FAVL6CI4TLRUZDFIWAWRXBDRM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Align multi-channel captures with different rx_stremers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3QG7N76FAVL6CI4TLRUZDFIWAWRXBDRM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6973634441984603448=="

This is a multi-part message in MIME format.
--===============6973634441984603448==
Content-Type: multipart/alternative;
 boundary="------------ZVGMD380aYyMtV5fSkwLJIM1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ZVGMD380aYyMtV5fSkwLJIM1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/02/2024 17:23, zackkomo@utexas.edu wrote:
>
> If I do thing concurrently (same thread, same rx_streamer) would that=20
> solve the timing issue? For example:
>
> |stream_args.channels =3D { 0, 1};|
> |uhd::rx_streamer::sptr rx_stream =3D usrp_->get_rx_stream(stream_args)=
;|
> |=E2=80=A6|
> |size_t num_rx_samps =3D|
> |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_stream->rec=
v(buffs, samps_per_buff_, md, timeout,=20
> one_packet);|
>
> Where buffs is a collection of receive buffers.
>
> It would become a little awkward with different sampling rates, but=20
> would this potentially solve the timing issue?
>
>
All the steams in a streamer must be at the same sample-rate from what I=20
recall.

One of the semantics in a streamer is that UHD will try to time-align=20
the samples in the channels in a streamer, based on
 =C2=A0 the time-stamps.


--------------ZVGMD380aYyMtV5fSkwLJIM1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 06/02/2024 17:23,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zackkomo@utexa=
s.edu">zackkomo@utexas.edu</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:Je2rmnVRsHMv5FbqtTKa3wbbzr1mn2RPKFRr6nzHGc@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>If I do thing concurrently (same thread, same rx_streamer)
        would that solve the timing issue? For example:</p>
      <pre><code>stream_args.channels =3D { 0, 1};</code></pre>
      <pre><code>uhd::rx_streamer::sptr rx_stream =3D usrp_-&gt;get_rx_st=
ream(stream_args);</code></pre>
      <pre><code>=E2=80=A6</code></pre>
      <pre><code>size_t num_rx_samps =3D</code></pre>
      <pre><code>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
rx_stream-&gt;recv(buffs, samps_per_buff_, md, timeout, one_packet);</cod=
e></pre>
      <p>Where buffs is a collection of receive buffers.</p>
      <p>It would become a little awkward with different sampling rates,
        but would this potentially solve the timing issue?</p>
      <br>
    </blockquote>
    All the steams in a streamer must be at the same sample-rate from
    what I recall.<br>
    <br>
    One of the semantics in a streamer is that UHD will try to
    time-align the samples in the channels in a streamer, based on<br>
    =C2=A0 the time-stamps.<br>
    <br>
    <br>
  </body>
</html>

--------------ZVGMD380aYyMtV5fSkwLJIM1--

--===============6973634441984603448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6973634441984603448==--
