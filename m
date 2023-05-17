Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2996707696
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 01:50:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B7803848FF
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 19:50:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684367438; bh=fNoyPFRim34WUCt23MJsiFvBoSLuQWNhQnq2nWg3gjE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VdJ+MhiVqEU6OjfQZyUYARYUF8ol6KDAQ9qMUkQua2ys81rStiH4bGl2iFake6j7b
	 dkuCfSAYOvW7vRMJvshasFHtitcaTlp2ggUrbDqio6sg6lXE7TdiodBVB0oKqA1k2h
	 CtI+temd4Dtdy+z7+y8Ljs134+rYPICCHH4wDEtZqW/vMcH8R3fEQSjQM/nYgUhPGO
	 uYIwg1GsG7zj6KDq6efaJ0aVhC0GfnZ/5fZlzkq7YIotecJOzJmnaeT19vo34W+TaH
	 9531UOGymwejWVLM6hnO/mPfibBl9W4mVoCzQxGORs4WmXsoi9h/k0qaxYucoVc3uj
	 4Ww2kYLPtHQKw==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id B3DD538485B
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 19:49:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qyeYekO0";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-3f443080ef7so7847971cf.1
        for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 16:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684367374; x=1686959374;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2dk6YL2UCqaNaKOR1v7SrcP4iBKVsN8t53j1e0bhjko=;
        b=qyeYekO0N4mZISvlFv1YVoUiG06Ov5NbKw9KGbWJgnARATbD6qs4QYCDA2at6k4rjb
         ul2qqGypVb8v55wgthaL+6TctyMVGRswojuCUAufcc9LeZsarfpE4jd8NjiT3vnLqoNy
         gzwXtiJU+zIJoNRZeQsSvOhcnYynlRD2MlIvH8/jLcYEgBP9+WsHXuFYiiW5Xfq3oWpH
         +5rKXkM3m1BJevhCAeCVC3RWbVdPN+y4crgj5ZybdmUOn0e3xdKRVSwDNDgQWIqGzChD
         mFd8Ziz7utzeUM+0gNScT0hM0DC8+lpUw/ZoxJRgd2cIyKLoxygxCvJ6ICYnOg0C8ZVh
         oQ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684367374; x=1686959374;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2dk6YL2UCqaNaKOR1v7SrcP4iBKVsN8t53j1e0bhjko=;
        b=O3G7DJV8XU8bvYvgTxxMLPBAG9ueFXmer+hqapelsFNxe8kLjZ9zYY/+6EpdkvdKCG
         6Y7uIMw/+NWAPZdF+C4llhBh4HflXeb5FzOCxil1VteKXNRomneHspEKn2hzlp61NtLC
         QjE+Xy5z++6xsktniLVHZGUA+65pR1dcJq7qTcCH0U4PiLMNpJFxrCDLagnO41mEqotA
         siai5cA1BTX3LX1V7sadQ9E+xE1MfIMY6ja/sD7pyVbGFdrL7Rcg/p1wY/3G/J7JDuMZ
         8p10gPDmHTgu7UNQkCv5LfQR56mOIc7iLMpunhVpfjl/XV4T2oi68pq03WFitQfu9/Vy
         wS8w==
X-Gm-Message-State: AC+VfDy9jZLuw4zfdSQ9pZxJdu6/BwmbhwZF/Dm/Jr4o+llmYkCrFOse
	hv5uWegmSUpaAHGTBgufvqs2/0J+bms=
X-Google-Smtp-Source: ACHHUZ6r85GvZHnAKZXSYVuCLv+Y+BppAYOj91u13GknNbSAvo41tTkfcfA0CUwfL/vgIqteC7TB+A==
X-Received: by 2002:a05:622a:1a22:b0:3f4:f27d:10cf with SMTP id f34-20020a05622a1a2200b003f4f27d10cfmr2821846qtb.7.1684367373636;
        Wed, 17 May 2023 16:49:33 -0700 (PDT)
Received: from [192.168.2.150] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id x18-20020ac85392000000b003f3c9754e1dsm60168qtp.17.2023.05.17.16.49.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 16:49:33 -0700 (PDT)
Message-ID: <bfb8072d-774e-3e34-b604-bb9f7c6a0de6@gmail.com>
Date: Wed, 17 May 2023 19:49:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA@lists.ettus.com>
Message-ID-Hash: YPUPHSYHDRN5JLCRRKF3PIHDD2GCYMJ4
X-Message-ID-Hash: YPUPHSYHDRN5JLCRRKF3PIHDD2GCYMJ4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YPUPHSYHDRN5JLCRRKF3PIHDD2GCYMJ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8355729645725222284=="

This is a multi-part message in MIME format.
--===============8355729645725222284==
Content-Type: multipart/alternative;
 boundary="------------0IxX9a6jxDUMNQd8SQ29WtXR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0IxX9a6jxDUMNQd8SQ29WtXR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/05/2023 18:01, cjohnson@serranosystems.com wrote:
>
> Hi Marcus^2,
>
> Thanks for taking a look at this.
>
> Yes, I am using 10G interface, but you will notice my streaming=20
> request was only at 200Mbps (via command =E2=80=94rate=3D200e6).
>
>     |eno1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 1500 inet
>     192.168.0.67 netmask 255.255.255.0 broadcast 192.168.0.255 inet6
>     fe80::3eec:efff:fec2:4346 prefixlen 64 scopeid 0x20<link> ether
>     3c:ec:ef:c2:43:46 txqueuelen 1000 (Ethernet) RX packets 16068286
>     bytes 7458604025 (7.4 GB) RX errors 0 dropped 113 overruns 0 frame
>     0 TX packets 11987991 bytes 3951547409 (3.9 GB) TX errors 0
>     dropped 0 overruns 0 carrier 0 collisions 0 eno2:
>     flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 9000 inet
>     192.168.30.1 netmask 255.255.255.0 broadcast 192.168.30.255 inet6
>     fe80::3eec:efff:fec2:4347 prefixlen 64 scopeid 0x20<link> ether
>     3c:ec:ef:c2:43:47 txqueuelen 1000 (Ethernet) RX packets 5544521276
>     bytes 44302674870930 (44.3 TB) RX errors 0 dropped 0 overruns 0
>     frame 0 TX packets 61549463 bytes 5108838143 (5.1 GB) TX errors 0
>     dropped 0 overruns 0 carrier 0 collisions 0 eno2:0:
>     flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 9000 inet
>     192.168.30.30 netmask 255.255.255.0 broadcast 192.168.30.255 ether
>     3c:ec:ef:c2:43:47 txqueuelen 1000 (Ethernet)|
>
>
> You can add eno2:0 through this command =E2=80=9Csudo ifconfig eno2:0=20
> 192.168.30.30 netmask 255.255.255.0 up=E2=80=9D, but keep in mind if yo=
u=20
> reboot you will lose it. tcpdump is promiscuous, so it would see any=20
> traffic on 192.168.30.X network.
>
> Point taken on rfnoc, but take a look at source is in=20
> /uhlib/usrp/cores/xport_adapter_ctrl.hpp as you look for the other=20
> error message =E2=80=9CDevice was unable to look up Ethernet (MAC)=E2=80=
=A6=E2=80=9D. You will=20
> also notice the check for for an =E2=80=9Carp=E2=80=9D with a retry cou=
nt of 3.
>
> Thanks,
>
> =E2=80=94Cy
>
>
I wonder (thinking out loud here) if the organization of the ARP table=20
in the X310 (2974 radio bit) is such that having two
 =C2=A0 different IP addys that resolve to the same MAC confuses it?=C2=A0=
 It=20
shouldn't, because "proxy ARP" is a well-established
 =C2=A0 mechanism for routers.

I know the IP stack on the FPGA is "rudimentary" and would likely NOT be=20
compliant with the famous "Host Requirements"
 =C2=A0 document in any way, shape, or form.


--------------0IxX9a6jxDUMNQd8SQ29WtXR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/05/2023 18:01,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus^2,</p>
      <p>Thanks for taking a look at this.</p>
      <p>Yes, I am using 10G interface, but you will notice my streaming
        request was only at 200Mbps (via command =E2=80=94rate=3D200e6).<=
/p>
      <blockquote>
        <pre><code>eno1: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&g=
t;  mtu 1500
        inet 192.168.0.67  netmask 255.255.255.0  broadcast 192.168.0.255
        inet6 fe80::3eec:efff:fec2:4346  prefixlen 64  scopeid 0x20&lt;li=
nk&gt;
        ether 3c:ec:ef:c2:43:46  txqueuelen 1000  (Ethernet)
        RX packets 16068286  bytes 7458604025 (7.4 GB)
        RX errors 0  dropped 113  overruns 0  frame 0
        TX packets 11987991  bytes 3951547409 (3.9 GB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eno2: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 9000
        inet 192.168.30.1  netmask 255.255.255.0  broadcast 192.168.30.25=
5
        inet6 fe80::3eec:efff:fec2:4347  prefixlen 64  scopeid 0x20&lt;li=
nk&gt;
        ether 3c:ec:ef:c2:43:47  txqueuelen 1000  (Ethernet)
        RX packets 5544521276  bytes 44302674870930 (44.3 TB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 61549463  bytes 5108838143 (5.1 GB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eno2:0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 9000
        inet 192.168.30.30  netmask 255.255.255.0  broadcast 192.168.30.2=
55
        ether 3c:ec:ef:c2:43:47  txqueuelen 1000  (Ethernet)</code></pre>
      </blockquote>
      <p><br>
      </p>
      <p>You can add eno2:0 through this command =E2=80=9Csudo ifconfig e=
no2:0
        192.168.30.30 netmask 255.255.255.0 up=E2=80=9D, but keep in mind=
 if you
        reboot you will lose it. tcpdump is promiscuous, so it would see
        any traffic on 192.168.30.X network. </p>
      <p>Point taken on rfnoc, but take a look at source is in
        /uhlib/usrp/cores/xport_adapter_ctrl.hpp as you look for the
        other error message =E2=80=9CDevice was unable to look up Etherne=
t
        (MAC)=E2=80=A6=E2=80=9D. You will also notice the check for for a=
n =E2=80=9Carp=E2=80=9D with a
        retry count of 3.</p>
      <p>Thanks,</p>
      <p>=E2=80=94Cy</p>
      <br>
    </blockquote>
    I wonder (thinking out loud here) if the organization of the ARP
    table in the X310 (2974 radio bit) is such that having two<br>
    =C2=A0 different IP addys that resolve to the same MAC confuses it?=C2=
=A0 It
    shouldn't, because "proxy ARP" is a well-established<br>
    =C2=A0 mechanism for routers.<br>
    <br>
    I know the IP stack on the FPGA is "rudimentary" and would likely
    NOT be compliant with the famous "Host Requirements"<br>
    =C2=A0 document in any way, shape, or form.<br>
    <br>
    <br>
  </body>
</html>

--------------0IxX9a6jxDUMNQd8SQ29WtXR--

--===============8355729645725222284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8355729645725222284==--
