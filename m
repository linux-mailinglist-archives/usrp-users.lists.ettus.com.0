Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEE19B5027
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 18:10:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62D5B386288
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 13:10:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730221800; bh=KROiUa9dijByi/FX6rVORnfDx3a0DFJiwH3PNnkl7W0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=onBtgCwIBR2kIyhBTLY/4OaBnu+cxUvPXWqMy05M/MXbY3oekhXpf8JH4xyFgJM5i
	 hYmByeOoMb4eNm3WdCjuYP4lsAOB7IXyaiwWLKv3/tYSCYK+5XZ/tsVy/zvNpEcl5n
	 hsQiYm4BrlOBl/nOH4F6nGSYHCZM842UWjTbGFKRbJ12hA1jnsvTMjmS1XdmKctc3Q
	 ZzW2rGuBjiTundui+PTAgSCKUvQqxjb8OQffmM5eoED1ezEpye2xUcI4bOgeIhW6FM
	 YtcNN9/itJMBk/10fC2DODXNGNoXg6Tmgrrm0qQVMCciR9v/9HLOtJjS9rrXI+0mBo
	 SGNk2jaaJlD/g==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 0577E3812F8
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 13:09:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ipMBe7y6";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-460ad0440ddso41239231cf.3
        for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 10:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730221785; x=1730826585; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CmDhwv5p3WLK+uO+nNZD0sy+T/GQzIcvg9NJGbB7Mvg=;
        b=ipMBe7y6ZnCsW1FIBqs7YhZwUC45tIFop5qFuHcfAAcl4saK9QaBVDi1VdfvMmWYem
         FIuv3+1Eaf+v2PK4G6AuLKC8rQeDpgfwxGyWO/AfkdmIUQmaSG0mzt+FTDelCiLXM7vT
         TU55GGvFQjoWSGek+AdhPg6dKFjJE3EnSW2JjKiBgqxkZ3i/jDHQ6VapwsxMQfzoK+lr
         NdDmcvV84MZ7HZZWTL+jckyF2itlPUhxcim6kNZK1RCgyvcKRa/IIWbxVpI7HAi1v65j
         OJwukkpSdDfzL8gRskY/cO4oW1XAy5HJDtYq8BxvWfuHPVvix9SMBvDogzBkPcxAd/k0
         nm/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730221785; x=1730826585;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CmDhwv5p3WLK+uO+nNZD0sy+T/GQzIcvg9NJGbB7Mvg=;
        b=Z9J8h6rBrqR0IhXDrm7nNvuK74Ml08j7KN2BoQDOxZLTmVQB/hM6hi/EKs50BeEi2B
         2kJbq4bhDtVFVSxcEz+dA/DrB8tAO+2SfHHX9LpDSxJlVHN1XI0yTEDMp1N6hMgT+V3P
         KGq2gxVh8/X6tFI2Q4JDjEYnK3rWMLFs/CDGzPG70yTou8f+4wegLSRbmxBEwx19NGpC
         VzkO8g+/ukt/VimOgJaWht6djjSzDLNjm5j1HqdkiwTKhoN0sIMUx5FyDfxdbZXiHptY
         Y5YpgdkH6m24/NqtNOtiblYOtsjfR1SKqU5ydqHUQOnszdTvKwMvDXmF48lhGEhZnjAI
         D5Mg==
X-Gm-Message-State: AOJu0YymjbzftmM6QlA29fqxPbraImfco48iHyu6lGRiQusMPRaPaBwT
	cQ2pHPAHaEhgNmTb1ElMr6X3A/mm/fVxSZLcny6YGgTzvcENtpMIzOLyWQ==
X-Google-Smtp-Source: AGHT+IFNg/TZDNdmeMX9vgaFpdb5o7l/g5J7Q04HL/Oh9PePOn9aBg3TnRCSc3efWK8dlJST7vy4SQ==
X-Received: by 2002:a05:6214:4908:b0:6cb:e632:a059 with SMTP id 6a1803df08f44-6d1858636b9mr250105536d6.49.1730221784855;
        Tue, 29 Oct 2024 10:09:44 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d179a57d4csm43605396d6.132.2024.10.29.10.09.44
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 10:09:44 -0700 (PDT)
Message-ID: <296cb44b-103a-4442-8eba-1ca9ba64c992@gmail.com>
Date: Tue, 29 Oct 2024 13:09:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <EfceFaSLRFGqSGfKIJIoR3tT8vhVBER7s6VvawGn70@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <EfceFaSLRFGqSGfKIJIoR3tT8vhVBER7s6VvawGn70@lists.ettus.com>
Message-ID-Hash: RC62OTSIQF7XFDWZYVG7VSP6VZAE4RRN
X-Message-ID-Hash: RC62OTSIQF7XFDWZYVG7VSP6VZAE4RRN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph on USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RC62OTSIQF7XFDWZYVG7VSP6VZAE4RRN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1781219916910076994=="

This is a multi-part message in MIME format.
--===============1781219916910076994==
Content-Type: multipart/alternative;
 boundary="------------mKkYGKsUELIF1tZQ0zl9CV5G"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------mKkYGKsUELIF1tZQ0zl9CV5G
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/10/2024 12:53, pigatoimdeafrancesco@gmail.com wrote:
>
> Yes, both SFP+ ports are connected to the host.
>
> Host side, the ip addresses are:
>
>
> |enp3s0f0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 9000|
>
> |inet 192.168.20.1 netmask 255.255.255.0 broadcast 0.0.0.0|
>
> |ether 7c:c2:55:7b:35:7e txqueuelen 1000 (Ethernet)|
>
> |RX packets 4616 bytes 432264 (432.2 KB)|
>
> |RX errors 0 dropped 90 overruns 0 frame 0|
>
> |TX packets 2518 bytes 1371160 (1.3 MB)|
>
> |TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0|
>
>
> |enp3s0f1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 9000|
>
> |inet 192.168.10.1 netmask 255.255.255.0 broadcast 0.0.0.0|
>
> |ether 7c:c2:55:7b:35:7f txqueuelen 1000 (Ethernet)|
>
> |RX packets 1226 bytes 945608 (945.6 KB)|
>
> |RX errors 0 dropped 198 overruns 0 frame 0|
>
> |TX packets 15263 bytes 18973321 (18.9 MB)|
>
> |TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0|
>
>
> whereas N310 the interfaces are:
>
>
> |sfp0 Link encap:Ethernet HWaddr 00:80:2F:34:A1:BD|
>
> |inet addr:192.168.10.2 Bcast:192.168.10.255 Mask:255.255.255.0|
>
> |UP BROADCAST RUNNING MULTICAST MTU:9000 Metric:1|
>
> |RX packets:3403 errors:0 dropped:0 overruns:0 frame:0|
>
> |TX packets:1079 errors:0 dropped:0 overruns:0 carrier:0|
>
> |collisions:0 txqueuelen:1000|
>
> |RX bytes:869430 (849.0 KiB) TX bytes:62857 (61.3 KiB)|
>
> |sfp1 Link encap:Ethernet HWaddr 00:80:2F:34:A1:BE|
>
> |inet addr:192.168.20.2 Bcast:192.168.20.255 Mask:255.255.255.0|
>
> |UP BROADCAST RUNNING MULTICAST MTU:9000 Metric:1|
>
> |RX packets:3775 errors:0 dropped:0 overruns:0 frame:0|
>
> |TX packets:403 errors:0 dropped:0 overruns:0 carrier:0|
>
> |collisions:0 txqueuelen:1000|
>
> |RX bytes:338406 (330.4 KiB) TX bytes:603205 (589.0 KiB)|
>
> Both 192.168.20.2 and 192.168.10.2 can be pinged correctly.
>
>
> =E2=80=9Cudpv=E2=80=9C protocol was a typo of mine. The output of cmd |=
$sudo=20
> firewall-cmd --list-ports| is:
>
> |49152/udp|
>
>
In the past when this has happened, it was due to swapping the cables on=20
the two ports.=C2=A0=C2=A0=C2=A0 Check that.

If that doesn't work, trying temporarily disabling your firewall entirely=
.


--------------mKkYGKsUELIF1tZQ0zl9CV5G
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/10/2024 12:53,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:pigatoimdeafra=
ncesco@gmail.com">pigatoimdeafrancesco@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:EfceFaSLRFGqSGfKIJIoR3tT8vhVBER7s6VvawGn70@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Yes, both SFP+ ports are connected to the host. </p>
      <p>Host side, the ip addresses are:</p>
      <p><br>
      </p>
      <p><code>enp3s0f0:
          flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; mtu 9000</co=
de></p>
      <p><code> inet 192.168.20.1 netmask 255.255.255.0 broadcast
          0.0.0.0</code></p>
      <p><code> ether 7c:c2:55:7b:35:7e txqueuelen 1000 (Ethernet)</code>=
</p>
      <p><code> RX packets 4616 bytes 432264 (432.2 KB)</code></p>
      <p><code> RX errors 0 dropped 90 overruns 0 frame 0</code></p>
      <p><code> TX packets 2518 bytes 1371160 (1.3 MB)</code></p>
      <p><code> TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0</=
code></p>
      <p><br>
      </p>
      <p><code>enp3s0f1:
          flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; mtu 9000</co=
de></p>
      <p><code> inet 192.168.10.1 netmask 255.255.255.0 broadcast
          0.0.0.0</code></p>
      <p><code> ether 7c:c2:55:7b:35:7f txqueuelen 1000 (Ethernet)</code>=
</p>
      <p><code> RX packets 1226 bytes 945608 (945.6 KB)</code></p>
      <p><code> RX errors 0 dropped 198 overruns 0 frame 0</code></p>
      <p><code> TX packets 15263 bytes 18973321 (18.9 MB)</code></p>
      <p><code> TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0</=
code></p>
      <p><br>
      </p>
      <p>whereas N310 the interfaces are: </p>
      <p><br>
      </p>
      <p><code>sfp0 Link encap:Ethernet HWaddr 00:80:2F:34:A1:BD</code></=
p>
      <p><code> inet addr:192.168.10.2 Bcast:192.168.10.255
          Mask:255.255.255.0</code></p>
      <p><code> UP BROADCAST RUNNING MULTICAST MTU:9000 Metric:1</code></=
p>
      <p><code> RX packets:3403 errors:0 dropped:0 overruns:0 frame:0</co=
de></p>
      <p><code> TX packets:1079 errors:0 dropped:0 overruns:0 carrier:0</=
code></p>
      <p><code> collisions:0 txqueuelen:1000</code></p>
      <p><code> RX bytes:869430 (849.0 KiB) TX bytes:62857 (61.3 KiB)</co=
de></p>
      <p><code>sfp1 Link encap:Ethernet HWaddr 00:80:2F:34:A1:BE</code></=
p>
      <p><code> inet addr:192.168.20.2 Bcast:192.168.20.255
          Mask:255.255.255.0</code></p>
      <p><code> UP BROADCAST RUNNING MULTICAST MTU:9000 Metric:1</code></=
p>
      <p><code> RX packets:3775 errors:0 dropped:0 overruns:0 frame:0</co=
de></p>
      <p><code> TX packets:403 errors:0 dropped:0 overruns:0 carrier:0</c=
ode></p>
      <p><code> collisions:0 txqueuelen:1000</code></p>
      <p><code> RX bytes:338406 (330.4 KiB) TX bytes:603205 (589.0 KiB)</=
code></p>
      <p>Both 192.168.20.2 and 192.168.10.2 can be pinged correctly.</p>
      <p><br>
      </p>
      <p>=E2=80=9Cudpv=E2=80=9C protocol was a typo of mine. The output o=
f cmd <code>$sudo
          firewall-cmd --list-ports</code> is:</p>
      <p><code>49152/udp</code></p>
      <br>
    </blockquote>
    In the past when this has happened, it was due to swapping the
    cables on the two ports.=C2=A0=C2=A0=C2=A0 Check that.<br>
    <br>
    If that doesn't work, trying temporarily disabling your firewall
    entirely.<br>
    <br>
    <br>
  </body>
</html>

--------------mKkYGKsUELIF1tZQ0zl9CV5G--

--===============1781219916910076994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1781219916910076994==--
