Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54207458935
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 07:08:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21255383ECE
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 01:08:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DePDEGeR";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id A08DA383E07
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 01:07:25 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id m192so12611141qke.2
        for <usrp-users@lists.ettus.com>; Sun, 21 Nov 2021 22:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Vgrj4KowqaJDw8hkIXPh071zJy7De0jHyrrKAMDHOCA=;
        b=DePDEGeRmLTq74AliwXd0xKiKvX64hTwiuSYTPDoRvV+7RUMpYhtsPWyEv9Vn0SS+a
         H1QYrUav00zWVhI2CihGdPfP0EIhSCYxyD5PQoZYAnz/K5vbL6aW6thIdhuDflmQQtdW
         0tVPcKRWauReZkg/snUfu4Sn8KvnYAUADQuYrlJywOZp47kFpGbFSbzdg4CZGJLZvoPj
         bl9+C/1Bn2UutFEA6NT44uH44H9+X5R7xhYBArnXesY0bGiVLvRFLlZJr6NKL20EI0zY
         0+fN2xcpjjZgrh+T002BjybbZ5nZ0cp8TnPfDFUjw64EYb4HbGa2hoTpwc7sEg+3R5il
         Tixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Vgrj4KowqaJDw8hkIXPh071zJy7De0jHyrrKAMDHOCA=;
        b=f2vI/OHvmiU/VdfCyQyq5dwalVOFYNOO3S6vshC+kdR+pMHHJSOLfu9lQlOFHYyREd
         FaaP6/CfcqtyEbDszOjtFLSnmr1u65lTyc4mnOy57V/Oehbvh6xnwmW5qn6slM5YG1Pi
         gNRIzc0tmcvmrX4w+rQKRf4pWx2YFWdkzYQXxFJ3z5Uc0Vk95lJzAQnZnEGnmVO1Z1P/
         NBNqQj9nGgmn1hBWEjSQSlLo+uGqSRNJZrEZP9ZpslU1fizLxrhE72y9vqmndATPvPpo
         MAF5VmTJAbcqsNyeSUhnQ8RAUhfKT1Rrd4PJ10Ly6ee1QwxQ5v62C4px/zYNjRqiqwXv
         g+LQ==
X-Gm-Message-State: AOAM5338yt7bJIQUqkaiOFQmY5fRWxTF2DBAa3o+FmYmbn7Md/SE4R4E
	f4AWp2B4PmQ7l3m0uXJ59hT92HGwHZg=
X-Google-Smtp-Source: ABdhPJy1/L47tT6W+4ucvRApFUMKUcaBTDvlIuTxDIrGIS3GOquAJ9xbyncu0Ips/cCFu8uSuCLcHw==
X-Received: by 2002:a05:620a:208c:: with SMTP id e12mr34645721qka.445.1637561244780;
        Sun, 21 Nov 2021 22:07:24 -0800 (PST)
Received: from [192.168.2.224] (bras-base-smflon1825w-grc-06-174-88-54-236.dsl.bell.ca. [174.88.54.236])
        by smtp.googlemail.com with ESMTPSA id o9sm4133585qtk.81.2021.11.21.22.07.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Nov 2021 22:07:24 -0800 (PST)
Message-ID: <81cb143c-ea65-a1c6-0ce8-30edbc2f2d8a@gmail.com>
Date: Mon, 22 Nov 2021 01:07:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAMMoi3t5ZhJG5w0zJ=28UTLua2sE9YTSqfMZHN3TLfsPHrHehg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAMMoi3t5ZhJG5w0zJ=28UTLua2sE9YTSqfMZHN3TLfsPHrHehg@mail.gmail.com>
Message-ID-Hash: V7XTHEYUP3VU4Z4SZ4CH34OT76TCBYAC
X-Message-ID-Hash: V7XTHEYUP3VU4Z4SZ4CH34OT76TCBYAC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 5 x N310 Network Setup
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V7XTHEYUP3VU4Z4SZ4CH34OT76TCBYAC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1998694625918659714=="

This is a multi-part message in MIME format.
--===============1998694625918659714==
Content-Type: multipart/alternative;
 boundary="------------lQzumfK8tmvK4ztrNURClz7p"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lQzumfK8tmvK4ztrNURClz7p
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-22 00:55, Richard Bell wrote:
> Hello,
>
> I am attempting to setup 5 USRP N310's to be controlled by a single=20
> host. You can assume the host has enough processing power to avoid=20
> being the bottleneck. My question here is only concerned with properly=20
> setting up the network so that 100 MHz of bandwidth capture is=20
> theoretically supported by each of the 5 N310's per channel.
>
> Would the following setup support the above:
> 1) Connect each of the 1G Ethernet management ports to a switch=C2=A0an=
d=20
> connect the switch to the host. Each radio should be assigned an IP=20
> address automatically by a DHCP server as I understand it.
> 2) Connect the SFP+ ports to a corresponding NIC SFP+ port on the host=20
> computer. With 5 N310's this will correspond to 10 total SFP+ ports=20
> required at the host, two per radio.
>
> Is this correct, or do I need to change something? Also, is there a=20
> way to reduce the required number of SFP+ ports required on the host=20
> by using a 100G switch in some way?
>
> Thank you for any assistance you can provide
>
> Richard
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I'm slightly confused by the wording. Do you intend to bring in a total=20
of 1Gsps or 500Gsps?

A single 10G SFP+ port should support about 200Msps.=C2=A0=C2=A0 Unless I=
 botched=20
the late-night math, you'd only need both SFP+ ports per N310 if you=20
were bringing in up to 400Msps.
--------------lQzumfK8tmvK4ztrNURClz7p
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-22 00:55, Richard Bell
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAMMoi3t5ZhJG5w0zJ=3D28UTLua2sE9YTSqfMZHN3TLfsPHrHehg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hello,
        <div><br>
        </div>
        <div>I am attempting to setup 5 USRP N310's to be controlled by
          a single host. You can assume the host has enough processing
          power to avoid being the bottleneck. My question here is only
          concerned with properly setting up the network so that 100 MHz
          of bandwidth capture is theoretically supported by each of the
          5 N310's per channel.</div>
        <div><br>
        </div>
        <div>Would the following setup support the above:</div>
        <div>1) Connect each of the 1G Ethernet management ports to a
          switch=C2=A0and connect the switch to the host. Each radio shou=
ld
          be assigned an IP address automatically by a DHCP server as I
          understand it.=C2=A0</div>
        <div>2) Connect the SFP+ ports to a corresponding NIC SFP+ port
          on the host computer. With 5 N310's this will correspond to 10
          total SFP+ ports required at the host, two per radio.</div>
        <div><br>
        </div>
        <div>Is this correct, or do I need to change something? Also, is
          there a way to reduce the required number of SFP+ ports
          required on the host by using a 100G switch in some way?</div>
        <div><br>
        </div>
        <div>Thank you for any assistance you can provide</div>
        <div><br>
          Richard</div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    I'm slightly confused by the wording. Do you intend to bring in a
    total of 1Gsps or 500Gsps?<br>
    <br>
    A single 10G SFP+ port should support about 200Msps.=C2=A0=C2=A0 Unle=
ss I
    botched the late-night math, you'd only need both SFP+ ports per
    N310 if you were bringing in up to 400Msps.<br>
  </body>
</html>
--------------lQzumfK8tmvK4ztrNURClz7p--

--===============1998694625918659714==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1998694625918659714==--
