Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA4093F3CB
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 13:18:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A2D0385006
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 07:18:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722251930; bh=ZPcJNMwFJ/Maoqeg13OGu7eEL9hEx1LkwyJcF+3udJM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=lLYicJgpAC6i65m1DhX/L0Ru48AY/8xwHv2rgN7IyXufbAFGZd874zylX0w+rkYMH
	 XpPBu3EviAFwZeFdsLVzUueGHAWMffzK3YYNaDX0zx/716XKPGKGdiuk5X5+xHRJ7B
	 SpOSfjhC1/F+X+Y6YT679lZPTG78/hQKZ9vX0F1irRJAF+OWnLhOmaunMB3V7sv5Tf
	 IjPEtCxNPO2CMwdtGzm+DOYKxoXflQm9CQ417RHjquLq2lQcMDjGRYJMvdBYFzdLsl
	 GgFlr67fuJrWf5pPKz/y0UAc6JlYJQbKfRa+NkiJIJZsZ/czbSF8y7AnAZUe1aIqLU
	 4w+dLRf4vbPzw==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 0DC1B384D7C
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 07:18:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="XJbr1Rd+";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a728f74c23dso468312166b.1
        for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 04:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1722251907; x=1722856707; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4XY+i7pbVgXp6Kh8uvuiOMBOubtodTwuWXWdirKcw+g=;
        b=XJbr1Rd+TEd0lYeRgGzaDw/TcqEN5Sl2ckHdhl2vAxWt8emwa0iQnB9Scj7Q6zwVIU
         FvFwYliLkXGHByH6/rm30xLITy4O9M4SR4GA8oPX7Kpl7I8luZV4SAaOVFWBdbPuAVH+
         UlcXx2ZWR9BWyv1ZhpJth9jNA9CI+60OhNTDHFilUrGO/JA/8PyAtOHu/eqrksfQN1xu
         P8pCdQOn8QpUvht+IF3LuBuEaVWXTPZ+FHAlJ+sLAn1UAfz1y6eNDKHZHaR5vTi7ql/D
         Ux/H5GXz4uqRZBaej7jmaGtgM8IK6Nfs/vZl4v3X6HKQf+ujlb+gclHU1pJwZBkOrL21
         lZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722251907; x=1722856707;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4XY+i7pbVgXp6Kh8uvuiOMBOubtodTwuWXWdirKcw+g=;
        b=pNrJr7xkNxZMYc0TUaXvA+nER438FUI3/eVSiXLpGL9fhw5MRz8IYaZsZQvy08Ds8E
         BhQ+3T1h42UHTe/xvPEvJD6EuVxlN8I1Y9IEnCNnx/fjMtc8ajizCFOQ0G7vvC3wbXQ3
         rtA4ZFH3shEOUPx6KDfHYwG6u8xIl9rWUpq9cgD8zhh71zwZU50MClsBfcXVVzgdqBdj
         wnDKoULz6tGh1Cag5kjC7ylY6/0WDtYhicEXTtuuFhZJF+smxGalkDSGI2BSnEOzrFaw
         rBOILPW6Q0ZMBFRVAdr5tiSf//dxNMdT7TODxP6cUlm5njW19W41YSxt8xeAoQIeKgrV
         kkRg==
X-Gm-Message-State: AOJu0YxGZnswttQNDdTMJCXTZBAmpvGSip3vPp94cEjdhhu3MvpTHZSa
	GgO5f+BEVsMNACQHOl/ng9nVdL0bdbL0y+siSyetvYIW4tHKqpgenUMRkGobV7bL85FvKdH7WfJ
	mkVo=
X-Google-Smtp-Source: AGHT+IGWLCuJTe7aJNMtIeXDeNV/bH15fJCRn51aOO5CVnD6QRcA4AKi77cOwXkxpFOQOLK6+v8Nag==
X-Received: by 2002:a17:906:c14b:b0:a77:dbf0:d22 with SMTP id a640c23a62f3a-a7d401c4c07mr516762466b.65.1722251907239;
        Mon, 29 Jul 2024 04:18:27 -0700 (PDT)
Received: from ?IPV6:2001:16b8:cc66:7b00:10fc:1619:bea3:90d1? ([2001:16b8:cc66:7b00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acad9046fsm501640066b.147.2024.07.29.04.18.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jul 2024 04:18:26 -0700 (PDT)
Message-ID: <9531c847-a40c-45ed-b81c-61701f8a3565@ettus.com>
Date: Mon, 29 Jul 2024 13:18:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <yLeNdlzPdwHTKBQklZ249pFxxrMMvSPY7c8cahqyIc@lists.ettus.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <yLeNdlzPdwHTKBQklZ249pFxxrMMvSPY7c8cahqyIc@lists.ettus.com>
Message-ID-Hash: LSXPPMGPRNEGG3ZGGCYRKSFXKKAFK4FI
X-Message-ID-Hash: LSXPPMGPRNEGG3ZGGCYRKSFXKKAFK4FI
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reaching high signal bandwidth with X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LSXPPMGPRNEGG3ZGGCYRKSFXKKAFK4FI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3564879694111939038=="

This is a multi-part message in MIME format.
--===============3564879694111939038==
Content-Type: multipart/alternative;
 boundary="------------XcH0305nG5k7WmgOpsra026O"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------XcH0305nG5k7WmgOpsra026O
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Sebastian!

I'm not saying GNU Radio isn't at fault here, but do note that it usually=
 does scale=20
relatively well; but yeah, 200 MS/s is not very little. Also note that Al=
i didn't go into=20
what he actually did to produce that signal =E2=80=93 a file source, for =
example, would commonly=20
*not* be able to keep up with demand, simply due to storage typically bei=
ng rather slow.=20
And as you describe, the issue seems to be the suboptimal (for this use c=
ase) default=20
configuration of the USRP sink block in GNU Radio, or did I misunderstand=
 that?

Best,
Marcus

On 29.07.24 12:37, sebastian.schroeder@hhi.fraunhofer.de wrote:
>
> Hello!
>
> I tried everything with the recommended settings and I also only got 61=
.44 MS/s with GNU=20
> Radio and the X410. It looks like the limiting factor here is GNU Radio=
. I think it=20
> might be because of the scheduler and the one thread per block policy o=
f GR.
>
> The first thing you should do is check whether the UHD Benchmark is wor=
king for you=20
> without any underflows.
>
> For example, you can try this:
>
> |$ sudo ./benchmark_rate|
> |--args "type=3Dx4xx,addr=3D192.168.10.2,mgmt_addr=3D<IPaddr>,master_cl=
ock_rate=3D250e6,use_dpdk=3D1"|
> |--priority "high"|
> |--multi_streamer|
> |--duration 60|
> |--channels --rx_rate 250e6|
> |--rx_subdev "B:1"|
> |--tx_rate 250e6|
> |--tx_subdev "A:0" |
>
>
> A straightforward experiment that can be conducted in GNU Radio is to s=
et a Signal=20
> Source or File Source in front of a Null Sink and evaluate its throughp=
ut with the Probe=20
> Rate Block.
>
> |[Source] --> [Probe Rate] --> (log) [Message Debug] \ \--> [Null Sink]=
 |
>
> The configuration should yield throughput of at least 250 MS/s, dependi=
ng on the host=20
> workstation in use. (I even achieved 618 MS/s.) Then, the null sink was=
 replaced with=20
> the USRP sink (use the same args as above), and the benchmark was repea=
ted with=20
> different decimations of the bandwidth. No more underflows were observe=
d at the=20
> previously mentioned 61.44 MS/s.
>
> The optimal approach may vary depending on the specific application. In=
 some cases, it=20
> may be beneficial to pre-generate the waveform in GNU Radio and transmi=
t it using a=20
> UHD-only application.
>
> Best regards,
> Sebastian Schr=C3=B6der
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------XcH0305nG5k7WmgOpsra026O
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Sebastian!<br>
    </p>
    <p>I'm not saying GNU Radio isn't at fault here, but do note that it
      usually does scale relatively well; but yeah, 200 MS/s is not very
      little. Also note that Ali didn't go into what he actually did to
      produce that signal =E2=80=93 a file source, for example, would com=
monly
      *not* be able to keep up with demand, simply due to storage
      typically being rather slow. And as you describe, the issue seems
      to be the suboptimal (for this use case) default configuration of
      the USRP sink block in GNU Radio, or did I misunderstand that?</p>
    <p>Best,<br>
      Marcus<br>
    </p>
    <div class=3D"moz-cite-prefix">On 29.07.24 12:37,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:sebastian.schr=
oeder@hhi.fraunhofer.de">sebastian.schroeder@hhi.fraunhofer.de</a> wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:yLeNdlzPdwHTKBQklZ249pFxxrMMvSPY7c8cahqyIc@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello!</p>
      <p>I tried everything with the recommended settings and I also
        only got 61.44 MS/s with GNU Radio and the X410. It looks like
        the limiting factor here is GNU Radio. I think it might be
        because of the scheduler and the one thread per block policy of
        GR. </p>
      <p>The first thing you should do is check whether the UHD
        Benchmark is working for you without any underflows. </p>
      <p>For example, you can try this:</p>
      <pre><code>$ sudo ./benchmark_rate</code></pre>
      <pre><code>--args "type=3Dx4xx,addr=3D192.168.10.2,mgmt_addr=3D&lt;=
IPaddr&gt;,master_clock_rate=3D250e6,use_dpdk=3D1"</code></pre>
      <pre><code>--priority "high"</code></pre>
      <pre><code>--multi_streamer</code></pre>
      <pre><code>--duration 60</code></pre>
      <pre><code>--channels --rx_rate 250e6</code></pre>
      <pre><code>--rx_subdev "B:1"</code></pre>
      <pre><code>--tx_rate 250e6</code></pre>
      <pre><code>--tx_subdev "A:0"  </code></pre>
      <p><br>
      </p>
      <p>A straightforward experiment that can be conducted in GNU Radio
        is to set a Signal Source or File Source in front of a Null Sink
        and evaluate its throughput with the Probe Rate Block. </p>
      <pre><code>
[Source] --&gt; [Probe Rate] --&gt; (log) [Message Debug]
         \
	  \--&gt; [Null Sink]


</code></pre>
      <p>The configuration should yield throughput of at least 250 MS/s,
        depending on the host workstation in use. (I even achieved 618
        MS/s.) Then, the null sink was replaced with the USRP sink (use
        the same args as above), and the benchmark was repeated with
        different decimations of the bandwidth. No more underflows were
        observed at the previously mentioned 61.44 MS/s. </p>
      <p>The optimal approach may vary depending on the specific
        application. In some cases, it may be beneficial to pre-generate
        the waveform in GNU Radio and transmit it using a UHD-only
        application.</p>
      <p>Best regards,<br>
        Sebastian Schr=C3=B6der</p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------XcH0305nG5k7WmgOpsra026O--

--===============3564879694111939038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3564879694111939038==--
