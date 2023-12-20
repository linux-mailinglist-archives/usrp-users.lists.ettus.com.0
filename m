Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BBC81A9D2
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 23:53:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CAB64385120
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 17:53:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703112814; bh=eNXUZAdkPcFelV22IBRYxlj7dtndOHn5EV6L+/+rMTM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=T83PNdfbaofJ6VyKi+uKf5dxrQAY24vwniyNBpZO1+cDQvhz9+iEYJWwpqrTJiuV9
	 ck1H1rwttJy6egSXz3yvRyoumNephnkYtM6kqgEl/4mYyENI2kQCgFvKYeI4FBe1is
	 j75XkUwLKozybPH1gojBtr1vmCFOVIIjdrSmT2FzNN4wk/luxrVlS5ReCfzpSStwZn
	 kaO0nIqkZMqdxbybzoaS43zwyRghkuT8zXIllKbciEB/gQTehr1nstK79KEDmRpK5i
	 HsJhlE0jwoRTGaB8YaCBAFzuEcaf64YFxtXyMyRqeIMJhXTCzcq8JJ6CQVbQdVH+E5
	 Rc+/Frdiwu5iA==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 1CB2F385042
	for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 17:53:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UBfqkHIP";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7810827e54eso7256385a.2
        for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 14:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703112780; x=1703717580; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FizHRBf/3BjLernLSPi0XqG6wO0NyK6L5ujwCNRH5z4=;
        b=UBfqkHIPMigAjtv/k7ReNmIWA2EWXVQW6r3A88XZRtYIAYyvJQkYKruu8QoDK+BEE0
         yyZkYeOGqpV4DB0pQ2/Xoig8qxSpuTA6FT+TN42DiCVEoy5rB+x2zpGyZUWU6xwmF2cJ
         w0lH6/ZlD7yHGeIVvLIWhnh8JQUW6HNNM8VnckkXLqH0ylp/7FyKYsmzJ1+izhVPdYto
         VRYaJDDY9n9xI5UV3Pxe84DpnYHiCCyZLvohLggB9SKHogADu8uS/o4FEQTk80fifeJ8
         sCD4oyWtSLPwK63907TgTeVraF6a9H6VReAYvKVahh7NByoFUQToXZPuzIh7RHILtJWx
         FCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703112780; x=1703717580;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FizHRBf/3BjLernLSPi0XqG6wO0NyK6L5ujwCNRH5z4=;
        b=rNeHyMdYh8MYSDyad29JfwfcKczdYPWtkxuepDyFgsqyAPOQ4Q0KPWnzjk4bhTT/Kf
         vA+K9BMpexrdllBM6GRB2zUpPxWYBhMJi1GRMCDGThO4AiNR8wbZih34GAzKAqOlGuU2
         LNOOPCnWVaMpu0QO8XlYbV8E5wDlO5ODzHokDJBFJSYI1z/wAGoDrbTLFHLN89mk6lpE
         vLWFucnM/0UkcGRmDe99yULGXD3JPXyG4SXzjbkSizgdaMkt1dfs0ZlI3UNpZqyfsfso
         qFO+O97BWKLDnWInvI9yNcgdO2MkRSkkbihFAAMqr9otzcSWOjPut8v2fPVHjNXRKvyz
         ITsg==
X-Gm-Message-State: AOJu0YyzSTdb1IbFlaOqiNPrIJ8WkQ2gQRJAE0wpeNtlJNOJJKj2ehpu
	nx/ibOhawU0sFE1Gh+GzGUqsv/FnSjk=
X-Google-Smtp-Source: AGHT+IHh3tEozk8uaIuwi83yy+JnHadIaS9Eipn4Yzern9gzxNbB/Xcz5HQeK8NbMHFFWXLr0JQNbw==
X-Received: by 2002:a05:6214:1bcd:b0:67f:14b9:a168 with SMTP id m13-20020a0562141bcd00b0067f14b9a168mr18046526qvc.78.1703112780336;
        Wed, 20 Dec 2023 14:53:00 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id hf8-20020a0562140e8800b0067f51698bacsm213441qvb.119.2023.12.20.14.52.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Dec 2023 14:52:59 -0800 (PST)
Message-ID: <d327a00d-1e90-498e-a025-ecfe6d22dd92@gmail.com>
Date: Wed, 20 Dec 2023 17:52:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <GZtHSo6B6bho7W2gOT6OiO4v6BrV1D4j2eAumGHvpA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <GZtHSo6B6bho7W2gOT6OiO4v6BrV1D4j2eAumGHvpA@lists.ettus.com>
Message-ID-Hash: KGVTNQ5RRBO5IMHQ3ECS5AGDJHGIZAFD
X-Message-ID-Hash: KGVTNQ5RRBO5IMHQ3ECS5AGDJHGIZAFD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KGVTNQ5RRBO5IMHQ3ECS5AGDJHGIZAFD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4674985074946770353=="

This is a multi-part message in MIME format.
--===============4674985074946770353==
Content-Type: multipart/alternative;
 boundary="------------xvv0IBeeVCACCYigS2YtE9Bx"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xvv0IBeeVCACCYigS2YtE9Bx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20/12/2023 17:49, jmaloyan@umass.edu wrote:
>
> In the past when I collected data from the x410 without DPDK, it would=20
> work just fine to use solely 1 network port.
>
> I tried using the management address now, but I still get errors, but=20
> it is slightly different. Notably there is not a =E2=80=9Cno chdr_conne=
ction=20
> available=E2=80=9D error.
>
>
> |./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_rate=20
> 491.52e6 --tx_channels 0 --args=20
> "addr=3D192.168.10.2,mgmt_addr=3D192.168.1.254,use_dpdk=3D1"|
>
> |[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;=20
> UHD_4.5.0.main-2-ga7657c80|
>
> |[WARNING] [PREFS] Loaded config from /root/.uhd. This location is=20
> considered deprecated, consider moving your config file to=20
> /root/.config instead.|
>
> |EAL: Detected 32 lcore(s)|
>
> |EAL: Detected 1 NUMA nodes|
>
> |EAL: Multi-process socket /var/run/dpdk/rte/mp_socket|
>
> |EAL: Selected IOVA mode 'PA'|
>
> |EAL: No available hugepages reported in hugepages-1048576kB|
>
> |EAL: Probing VFIO support...|
>
> |EAL: VFIO support initialized|
>
> |EAL: PCI device 0000:06:00.0 on NUMA socket -1|
>
> |EAL: probe driver: 15b3:1017 net_mlx5|
>
> |EAL: PCI device 0000:06:00.1 on NUMA socket -1|
>
> |EAL: probe driver: 15b3:1017 net_mlx5|
>
> |[ERROR] [DPDK] Could not find route to destination address 192.168.10.=
2|
>
> |[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could=20
> not find route to destination address 192.168.10.2|
>
> |[00:00:00.000209] Creating the usrp device with:=20
> addr=3D192.168.10.2,mgmt_addr=3D192.168.1.254,use_dpdk=3D1...|
>
> |[ERROR] [DPDK] Could not find route to destination address 192.168.10.=
2|
>
> |[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could=20
> not find route to destination address 192.168.10.2|
>
> |Error: LookupError: KeyError: No devices found for ----->|
>
> |Device Address:|
>
> |addr: 192.168.10.2|
>
> |mgmt_addr: 192.168.1.254|
>
> |use_dpdk: 1|
>
>
If you specify type=3Dx4xx,product=3Dx410=C2=A0 does this change things? =
What=20
about if you side-step DPDK just for testing?=C2=A0 Does
 =C2=A0 that work?


--------------xvv0IBeeVCACCYigS2YtE9Bx
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20/12/2023 17:49, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:GZtHSo6B6bho7W2gOT6OiO4v6BrV1D4j2eAumGHvpA@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>In the past when I collected data from the x410 without DPDK,
        it would work just fine to use solely 1 network port.</p>
      <p>I tried using the management address now, but I still get
        errors, but it is slightly different. Notably there is not a =E2=80=
=9Cno
        chdr_connection available=E2=80=9D error.</p>
      <p><br>
      </p>
      <p><code>./benchmark_rate --rx_rate 491.52e6 --rx_channels 0
          --tx_rate 491.52e6 --tx_channels 0 --args
          "addr=3D192.168.10.2,mgmt_addr=3D192.168.1.254,use_dpdk=3D1"</c=
ode></p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          DPDK_19.11; UHD_4.5.0.main-2-ga7657c80</code></p>
      <p><code>[WARNING] [PREFS] Loaded config from /root/.uhd. This
          location is considered deprecated, consider moving your config
          file to /root/.config instead.</code></p>
      <p><code>EAL: Detected 32 lcore(s)</code></p>
      <p><code>EAL: Detected 1 NUMA nodes</code></p>
      <p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</cod=
e></p>
      <p><code>EAL: Selected IOVA mode 'PA'</code></p>
      <p><code>EAL: No available hugepages reported in
          hugepages-1048576kB</code></p>
      <p><code>EAL: Probing VFIO support...</code></p>
      <p><code>EAL: VFIO support initialized</code></p>
      <p><code>EAL: PCI device 0000:06:00.0 on NUMA socket -1</code></p>
      <p><code>EAL: probe driver: 15b3:1017 net_mlx5</code></p>
      <p><code>EAL: PCI device 0000:06:00.1 on NUMA socket -1</code></p>
      <p><code>EAL: probe driver: 15b3:1017 net_mlx5</code></p>
      <p><code>[ERROR] [DPDK] Could not find route to destination
          address 192.168.10.2</code></p>
      <p><code>[ERROR] [X300] X300 Network discovery error RuntimeError:
          DPDK: Could not find route to destination address 192.168.10.2<=
/code></p>
      <p><code>[00:00:00.000209] Creating the usrp device with:
          addr=3D192.168.10.2,mgmt_addr=3D192.168.1.254,use_dpdk=3D1...</=
code></p>
      <p><code>[ERROR] [DPDK] Could not find route to destination
          address 192.168.10.2</code></p>
      <p><code>[ERROR] [X300] X300 Network discovery error RuntimeError:
          DPDK: Could not find route to destination address 192.168.10.2<=
/code></p>
      <p><code>Error: LookupError: KeyError: No devices found for
          -----&gt;</code></p>
      <p><code>Device Address:</code></p>
      <p><code> addr: 192.168.10.2</code></p>
      <p><code> mgmt_addr: 192.168.1.254</code></p>
      <p><code> use_dpdk: 1</code></p>
      <br>
    </blockquote>
    If you specify type=3Dx4xx,product=3Dx410=C2=A0 does this change thin=
gs?=C2=A0=C2=A0
    What about if you side-step DPDK just for testing?=C2=A0 Does<br>
    =C2=A0 that work?<br>
    <br>
    <br>
  </body>
</html>

--------------xvv0IBeeVCACCYigS2YtE9Bx--

--===============4674985074946770353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4674985074946770353==--
