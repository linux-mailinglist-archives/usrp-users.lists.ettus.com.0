Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 191119423B5
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jul 2024 02:09:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 023FA38550F
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jul 2024 20:09:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722384568; bh=HUyAqrQavmDlsSPpQOfRjCrOGEhtt0ORFnhanvesO9s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EngmAAFIOdIJP6Qt9nlxKGPjIcpdOQoY2EUQ5rUEmCKf24OA656pVp4qJt2ll+45U
	 5ZUao19RQTNHrzlmsr8rJKWYqXmGqYsOIWCon/UeoELIRNfOSYRCQ2cOA/G15DISFg
	 swdL5iAKGRCmWoSN8lnSqdW9J2Iz47LAIKYAaazMk9VAie4TprO4NPWWs4jofBk55R
	 hHXviBg524KOiIOCmQ5lerxHLkYrR31iUxLppNdoSXE6ly3Wg4l57qpu95nzoBCXs8
	 zEUegjljWyma5bn19db8OcfO1Q6WxohvD8DGPVw/+5KaHgRXi5sl0QggUxbJjiDWWi
	 /xc3aOi9Qx/zw==
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E47B385147
	for <usrp-users@lists.ettus.com>; Tue, 30 Jul 2024 20:09:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kf/bnQq0";
	dkim-atps=neutral
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3db1956643bso3247402b6e.3
        for <usrp-users@lists.ettus.com>; Tue, 30 Jul 2024 17:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722384547; x=1722989347; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tp8ccw2e7Co3xY6gHUZ5+Qc8/vkr7kqz4ZH3iyiFUmg=;
        b=Kf/bnQq0CSNVHtXOdmpyj4yg7f4mjTD7WjZFphs/lb5sg4c1IpzT5Xe6rkpur7+5AW
         8ltTOmJqlwTa9aElaq+Wys8SbWn6SQAdVhdvbvotRv+pI7DW4RL5TicSTG9WgLe+nZz7
         hsBMgXuFTKjxjuLtM5hIGcdTKuSpjDTPNnzdVPbKQ3nqCrl0m+f/y5ZO2J6w+lNwVrj9
         mLIP1Ft+jZkXuvF7sE4DCHWp4HaTBra9YKQYl5Rcyj5NYYjQzA+bN/4QEuVgXK3Z/tHi
         QHqZUAvp+2MZkgyd5cdHpfLA2fUTOtoUW9BEhfdsTSWf/Wc9DMUdZ/n57wqWFBc90+Lq
         RW7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722384547; x=1722989347;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tp8ccw2e7Co3xY6gHUZ5+Qc8/vkr7kqz4ZH3iyiFUmg=;
        b=DVInaZsPrze3yXarg8jevwwNt1bkxDkriKQlkVJtyzvYYPt7F4rPdXvQr/grAhic57
         VipEu7033B3nYjTH2SIkeLWtVsUlmz+I19v5M7uTlsACiyUTBIv+r96oQkbwiAWIG29+
         81cyg5pl+1pdH5JWxT0fD8YDLWLtg+4DWoA8ko7B1nBucDdRtlyS6ENnICAiq8rEcAld
         zgfUG8Hb+aAHw1xdRUmbOGIMzzXsPLeaYdSIfoZIx/mf6JoXO0MqDGSKIN+AYaBmgzEH
         3RZNvfDPpdgm/Hx4XHmvN/qX+QeBTQHgy4/AK0Z8GBKdHoYCgMW1XzTlwwh9k5C5LtCa
         1/kQ==
X-Gm-Message-State: AOJu0YybdQA2wr/eIFAQEvMaNi4E4aeE4wfy3wIdetEh5QOdTfdMu7bH
	+BlAOmCJb/3b0oueBUdcy8Op5q0hXQqj3qIY5U7iOLUgl2Lf+iETOgGKIQ==
X-Google-Smtp-Source: AGHT+IGvMg/yzCF9Ry3LJAbG04gO9YnAlXquOBkzGlMMeXr/qv7JmNfOMVgBGhrfTlZuPsZXREaadg==
X-Received: by 2002:a05:6358:7245:b0:1a5:3627:feb9 with SMTP id e5c5f4694b2df-1ade0894084mr1398613555d.19.1722384547132;
        Tue, 30 Jul 2024 17:09:07 -0700 (PDT)
Received: from [192.168.2.170] (bas1-toronto12-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6bb3f9407c3sm68525186d6.71.2024.07.30.17.09.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jul 2024 17:09:06 -0700 (PDT)
Message-ID: <b7d81dc9-094a-4b81-9e17-ba2da594da63@gmail.com>
Date: Tue, 30 Jul 2024 20:09:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN0P110MB1014E4C8D14B7A660355775A84B1A@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN0P110MB1014E4C8D14B7A660355775A84B1A@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: PPGP3WWARG3JDZRDTCPMYOXOIWEIDGQ6
X-Message-ID-Hash: PPGP3WWARG3JDZRDTCPMYOXOIWEIDGQ6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440: UDP network buffer not utilized?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PPGP3WWARG3JDZRDTCPMYOXOIWEIDGQ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7252571419267713644=="

This is a multi-part message in MIME format.
--===============7252571419267713644==
Content-Type: multipart/alternative;
 boundary="------------8OXQizbD9JA2SjhMN9MwPYDZ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8OXQizbD9JA2SjhMN9MwPYDZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/07/2024 20:00, Panuski, Patrick via USRP-users wrote:
>
> Hi USRP users,
>
> I=E2=80=99m doing a timed transmission and I=E2=80=99m tracking how man=
y samples are=20
> buffered before the transmission starts. I do this by calling send()=20
> with tx_metadata timestamps in the future and accumulating the return=20
> value from send() until it starts returning 0. Send() returns 0 until=20
> the start time occurs, after which the send() call starts returning a=20
> non-zero number again indicating samples are successfully being sent=20
> from the host. Based on this accumulated number, the total number of=20
> buffered samples is only 63,488 (=3D248 kB of data) despite having the=20
> linux kernel network buffer sizes (net.core.wmem_max and wmem_default=20
> settings) set to 50 MB. Is this expected? How can I increase the=20
> number of buffered samples between the host and device? Latency is not=20
> a concern. Should I be adjusting the samples per buffer or using=20
> timeout=3D0 here?
>
> Background:
>
> I=E2=80=99m using an X440 and my end goal is to get at least 4 channels=
=20
> coherently transmitting (i.e. stable phase relationship for an entire=20
> burst/session) at 50 MSps or greater on each channel for runs on the=20
> order of minutes. The problem I=E2=80=99m running into is that during=20
> transmission at these sample rates, it is very likely that one of the=20
> channels underflows, and even if it=E2=80=99s just a single underflow, =
it=20
> breaks the phase relationship with the other channels for the rest of=20
> the run since I=E2=80=99m using multithreaded streamers in a custom C++=
=20
> program. The real core of my problem is trying to figure out why I=E2=80=
=99m=20
> underflowing at all. My hardware setup seems more than capable (see=20
> below); CPU usage per active core stays below 50% or so, the network=20
> traffic doesn=E2=80=99t and shouldn=E2=80=99t come anywhere close to th=
e 4x 10GbE=20
> capacity, and the file reads from SSD are staying far ahead of the=20
> sender. Based on my testing, I=E2=80=99m virtually certain that a large=
-ish=20
> buffer between my UHD application and the X440 would solve all=20
> underflow issues, but it seems right now the buffer is only 248 kB, or=20
> about 1 ms @ 50 MSps. I have occasionally gotten a full transmission=20
> to complete without a single underflow. The onset of the underflow=20
> seems to randomly happen, which is another indicator that a larger=20
> buffer will help smooth these inconsistencies.
>
> Setup info:
>
>   * UHD 4.6 on host and device, FPGA is running a customized image
>     (X4_400 stock image but with the RAM replay block replaced with
>     DDC/DUC)
>   * Host Hardware =E2=80=93 AMD threadripper, cores set to performance,=
 Intel
>     E810-CQDA2 NIC configured to split 1x 100GbE port into 4x logical
>     10GbE ports
>   * Host Software =E2=80=93 Ubuntu 20.04, running a C++ program that sp=
awns 2
>     threads for each transmit channel; 1 =E2=80=9Cproducer=E2=80=9D for=
 reading a file
>     into a series of very large buffers in memory, and the other
>     =E2=80=9Cconsumer=E2=80=9D for moving a pointer to the correct poin=
t in those
>     buffers and calling send(). The producer threads start early and I
>     have proven that they never fall behind the consumers. I=E2=80=99ve
>     increased the net.core.wmem_max and wmem_default values to 50 MB,
>     enabled tx pause frames on the NIC, maxed out the tx/rx
>     descriptors on the NIC, =C2=A0and followed all the other tuning tip=
s
>     and tricks. I am not running DPDK as I didn=E2=80=99t think it woul=
d be
>     necessary at these sample rates, although I could be wrong about
>     that.
>
> Any help here would be much appreciated, thanks!
>
> Patrick
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You can look at /proc/net/udp=C2=A0 when you have things running to check=
=20
queue sizes, etc.

Keep in mind that simply changing /etc/sysctl.conf will not do=20
*anything* until the next reboot.




--------------8OXQizbD9JA2SjhMN9MwPYDZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/07/2024 20:00, Panuski, Patrick
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN0P110MB1014E4C8D14B7A660355775A84B1A@BN0P110MB1014.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}p.MsoListParagraph, li.MsoListParagrap=
h, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0in;}ul
	{margin-bottom:0in;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi USRP users,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I=E2=80=99m doing a timed transmission and=
 I=E2=80=99m
          tracking how many samples are buffered before the transmission
          starts. I do this by calling send() with tx_metadata
          timestamps in the future and accumulating the return value
          from send() until it starts returning 0. Send() returns 0
          until the start time occurs, after which the send() call
          starts returning a non-zero number again indicating samples
          are successfully being sent from the host. Based on this
          accumulated number, the total number of buffered samples is
          only 63,488 (=3D248 kB of data) despite having the linux kernel
          network buffer sizes (net.core.wmem_max and wmem_default
          settings) set to 50 MB. Is this expected? How can I increase
          the number of buffered samples between the host and device?
          Latency is not a concern. Should I be adjusting the samples
          per buffer or using timeout=3D0 here?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Background:<o:p></o:p></p>
        <p class=3D"MsoNormal">I=E2=80=99m using an X440 and my end goal =
is to get
          at least 4 channels coherently transmitting (i.e. stable phase
          relationship for an entire burst/session) at 50 MSps or
          greater on each channel for runs on the order of minutes. The
          problem I=E2=80=99m running into is that during transmission at=
 these
          sample rates, it is very likely that one of the channels
          underflows, and even if it=E2=80=99s just a single underflow, i=
t
          breaks the phase relationship with the other channels for the
          rest of the run since I=E2=80=99m using multithreaded streamers=
 in a
          custom C++ program. The real core of my problem is trying to
          figure out why I=E2=80=99m underflowing at all. My hardware set=
up
          seems more than capable (see below); CPU usage per active core
          stays below 50% or so, the network traffic doesn=E2=80=99t and
          shouldn=E2=80=99t come anywhere close to the 4x 10GbE capacity,=
 and
          the file reads from SSD are staying far ahead of the sender.
          Based on my testing, I=E2=80=99m virtually certain that a large=
-ish
          buffer between my UHD application and the X440 would solve all
          underflow issues, but it seems right now the buffer is only
          248 kB, or about 1 ms @ 50 MSps. I have occasionally gotten a
          full transmission to complete without a single underflow. The
          onset of the underflow seems to randomly happen, which is
          another indicator that a larger buffer will help smooth these
          inconsistencies.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Setup info:<o:p></o:p></p>
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0in;mso-list:l0 level1 lfo1">UHD 4.6 on
            host and device, FPGA is running a customized image (X4_400
            stock image but with the RAM replay block replaced with
            DDC/DUC)<o:p></o:p></li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0in;mso-list:l0 level1 lfo1">Host
            Hardware =E2=80=93 AMD threadripper, cores set to performance=
, Intel
            E810-CQDA2 NIC configured to split 1x 100GbE port into 4x
            logical 10GbE ports<o:p></o:p></li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0in;mso-list:l0 level1 lfo1">Host
            Software =E2=80=93 Ubuntu 20.04, running a C++ program that s=
pawns 2
            threads for each transmit channel; 1 =E2=80=9Cproducer=E2=80=9D=
 for reading
            a file into a series of very large buffers in memory, and
            the other =E2=80=9Cconsumer=E2=80=9D for moving a pointer to =
the correct
            point in those buffers and calling send(). The producer
            threads start early and I have proven that they never fall
            behind the consumers. I=E2=80=99ve increased the net.core.wme=
m_max
            and wmem_default values to 50 MB, enabled tx pause frames on
            the NIC, maxed out the tx/rx descriptors on the NIC, =C2=A0an=
d
            followed all the other tuning tips and tricks. I am not
            running DPDK as I didn=E2=80=99t think it would be necessary =
at
            these sample rates, although I could be wrong about that. <o:=
p></o:p></li>
        </ul>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Any help here would be much appreciated,
          thanks!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Patrick<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
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
    You can look at /proc/net/udp=C2=A0 when you have things running to c=
heck
    queue sizes, etc.<br>
    <br>
    Keep in mind that simply changing /etc/sysctl.conf will not do
    *anything* until the next reboot.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------8OXQizbD9JA2SjhMN9MwPYDZ--

--===============7252571419267713644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7252571419267713644==--
