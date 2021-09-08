Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB487403C67
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 17:19:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D4D03841AB
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 11:19:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KTw9vABR";
	dkim-atps=neutral
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A223384013
	for <usrp-users@lists.ettus.com>; Wed,  8 Sep 2021 11:18:52 -0400 (EDT)
Received: by mail-io1-f50.google.com with SMTP id y18so3764663ioc.1
        for <usrp-users@lists.ettus.com>; Wed, 08 Sep 2021 08:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=SqlwkBilPAfUM9OuW96JTo0xWrvYox3zA+PdVJpIkUw=;
        b=KTw9vABRVFejqwUdOEghEU4FW8yfuiErA5BzPRqWVuFzqY7hGxtFnpS9D3HmHLpAZP
         lEx1ZOqx2Ue7TilFLlF72mzhDjkBvQOsiRh4fKTT1kzyUUwCb5+Sf7o1ga1+apo5ZSo0
         vpAOS1K5DogxKKltCDwYp+YseIAUEF+Q16zZf+hbqg9Ip0nMRxILJTc6bzor8pgF/dLs
         NoAHfoKZNcG+0At9TCnoPx8FWygy+SN9FydNTQnvE+2mnKHWrfMEBmk9z9/iLxhna9KE
         /LZOdOY1IaVyhoubVjTvJrxWOZg8Ffq+ilGcuuc+Z99Je2cZq9E0ptTEvJvxQPIpjIA4
         RSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=SqlwkBilPAfUM9OuW96JTo0xWrvYox3zA+PdVJpIkUw=;
        b=P0LBP0B4WkpbYI7U7VC3ENJE+lRCD2sfKPKm1SjsyuFbVcbBu4swjdU2R9en2T15Ah
         AZURxCgVDBbCGJCD2z/SPRQaCC0ohiJHPM9L7CgYWUsGsu+I5VD3BJphOeiG5YhpMl6t
         kHC9y5hFgZU1oGufAKQgVWGVumzmtpdbkhSF60m3FzfiAfHW+bSkul3uED70LtV7QGb3
         0VOZP4wYTpNGM5Csc0bnJBOx9ZhZkJ8gjfa1htPFHDfJ48FLDlzHy0OeiKLYoFaG0GKP
         3lTZBBGv+6NLNE1iMpGrthgge7oSpEO8I6FKhJzk277mxz1iqdBAcIZHRdlxWsepc+tt
         zawA==
X-Gm-Message-State: AOAM5301olHEDWqdvfKOUzBUuU0Yga37RIl7vgYGFiob0OumtPC+YmiS
	KGKOZOcaR+DxuoiFt3cL1G17rPbbuY3GNw==
X-Google-Smtp-Source: ABdhPJwGq5Pjh2m1EEi8w7sRfgrRAt6O8W8hh1VxLy5ooFRGuiZn9TPnP5TKx5b1rwz5LMdCG0wAMA==
X-Received: by 2002:a05:6602:730:: with SMTP id g16mr332250iox.138.1631114331515;
        Wed, 08 Sep 2021 08:18:51 -0700 (PDT)
Received: from [192.168.2.242] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id g23sm1244509ioc.8.2021.09.08.08.18.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 08:18:51 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>, usrp-users@lists.ettus.com
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
 <78915145.1401871.1630855703615@mail.yahoo.com>
 <606552990.1786539.1630963952986@mail.yahoo.com>
 <147565774.1577833.1630969165270@mail.yahoo.com>
 <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com>
 <715684581.1865263.1631015683450@mail.yahoo.com>
 <c1edb69a-6d45-f2c1-73b3-c49ca4863c28@gmail.com>
 <665568616.1984947.1631044779652@mail.yahoo.com>
 <400fca7d-921f-7d2e-94dc-064542348c9f@gmail.com>
 <878683371.2099899.1631096816175@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <5cd20930-8037-cb0a-723f-5faa4503138a@gmail.com>
Date: Wed, 8 Sep 2021 11:18:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <878683371.2099899.1631096816175@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: OBGNYVYIEZVEYFECA6BMLAL3RFT2MRZA
X-Message-ID-Hash: OBGNYVYIEZVEYFECA6BMLAL3RFT2MRZA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OBGNYVYIEZVEYFECA6BMLAL3RFT2MRZA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2709206155892436704=="

This is a multi-part message in MIME format.
--===============2709206155892436704==
Content-Type: multipart/alternative;
 boundary="------------6F87DFBE8DAEC3F57460444B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6F87DFBE8DAEC3F57460444B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-08 6:26 a.m., zhou wrote:
> Hi Marcus,
> The LLL errors happened in host when it talks to N321.
> N321 is connected to the host through two 10GigE SFP cables directly;=20
> these is no other device in the middle. N321 has one extra RJ45 1GigE=20
> cable for management. This cable is connected to a switch; host is=20
> also connected to this switch.
>
> If N321 receives unsupported protocols on the management port (RJ45)=20
> and then generated Rx drop, it is reasonable. But on SFP ports, I=20
> don't know what protocol they receive apart from broadcast from host=20
> when running uhd_find_device and the configuration commands.
You could use "WireShark" on your host computer to see what is being=20
sent.=C2=A0 Ideally, yes, it would only involve UHD
 =C2=A0 protocols, and perhaps ARP packets, etc.

>
> Does UHD use IRQ or polling method to retrieve data from NIC?
IRQ vs polling configuration is the domain of your OS Kernel and its=20
hardware drivers.=C2=A0 UHD is not involved at all other
 =C2=A0 than "just another application".=C2=A0=C2=A0 You can use "ethtool=
" to query and=20
set these parameters--if your hardware supports them
 =C2=A0 there are a *large* number of parameters that can be controlled b=
y=20
ethtool, so I suggest looking at online documentation
 =C2=A0 for it.

>
> For the ULLL error in host, I doubt on two things:
> - tx buffer size: because of the high sampling rate, the tx buffer=20
> needs to be bigger to tolerate fluctuation and interruption during=20
> processing. What command can be used to check tx buffer size?
The "sysctl" commands that you spoke of in earlier e-mails set the=20
amount of memory used by the kernel drivers for
 =C2=A0 network buffering.

sysctl net.core.rmem_max
sysctl net.core.wmem_max

Will both print out the current settings

> - cpu core allocation, NIC binding. There are 8 cores in host; I use=20
> separate cores for Tx and Rx. In my program, there are four threads=20
> which use 3 cores, but in htop, I can see 8 threads in my process. Are=20
> the extra threads created by UHD?
>
>
There are some threading notes here:

https://files.ettus.com/manual/page_general.html#general_threading

I don't believe that UHD creates any threads of its own.=C2=A0 It is=20
conventional for the *application* to create an RX thread, a TX thread,=20
and a control thread.

For high-bandwidth networking (high sample rates) some customers have=20
had success using DPDK on their system, if
 =C2=A0 the 10G network cards they use support DPDK:

https://files.ettus.com/manual/page_dpdk.html




--------------6F87DFBE8DAEC3F57460444B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-08 6:26 a.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:878683371.2099899.1631096816175@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp366bf986yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false">The LLL errors happened in
          host when it talks to N321.</div>
        <div dir=3D"ltr" data-setdir=3D"false">N321 is connected to the h=
ost
          through two 10GigE SFP cables directly; these is no other
          device in the middle. N321 has one extra RJ45 1GigE cable for
          management. This cable is connected to a switch; host is also
          connected to this switch.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">If N321 receives unsupport=
ed
          protocols on the management port (RJ45) and then generated Rx
          drop, it is reasonable. But on SFP ports, I don't know what
          protocol they receive apart from broadcast from host when
          running uhd_find_device and the configuration commands.</div>
      </div>
    </blockquote>
    You could use "WireShark" on your host computer to see what is being
    sent.=C2=A0 Ideally, yes, it would only involve UHD<br>
    =C2=A0 protocols, and perhaps ARP packets, etc.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:878683371.2099899.1631096816175@mail.yahoo.com">
      <div class=3D"ydp366bf986yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Does UHD use IRQ or pollin=
g
          method to retrieve data from NIC?</div>
      </div>
    </blockquote>
    IRQ vs polling configuration is the domain of your OS Kernel and its
    hardware drivers.=C2=A0 UHD is not involved at all other<br>
    =C2=A0 than "just another application".=C2=A0=C2=A0 You can use "etht=
ool" to query
    and set these parameters--if your hardware supports them<br>
    =C2=A0 there are a *large* number of parameters that can be controlle=
d by
    ethtool, so I suggest looking at online documentation<br>
    =C2=A0 for it.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:878683371.2099899.1631096816175@mail.yahoo.com">
      <div class=3D"ydp366bf986yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">For the ULLL error in host=
, I
          doubt on two things:</div>
        <div dir=3D"ltr" data-setdir=3D"false">- tx buffer size: because =
of
          the high sampling rate, the tx buffer needs to be bigger to
          tolerate fluctuation and interruption during processing. What
          command can be used to check tx buffer size?</div>
      </div>
    </blockquote>
    The "sysctl" commands that you spoke of in earlier e-mails set the
    amount of memory used by the kernel drivers for<br>
    =C2=A0 network buffering.<br>
    <br>
    sysctl net.core.rmem_max<br>
    sysctl net.core.wmem_max<br>
    <br>
    Will both print out the current settings<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:878683371.2099899.1631096816175@mail.yahoo.com">
      <div class=3D"ydp366bf986yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">- cpu core allocation, NIC
          binding. There are 8 cores in host; I use separate cores for
          Tx and Rx. In my program, there are four threads which use 3
          cores, but in htop, I can see 8 threads in my process. Are the
          extra threads created by UHD?=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <br>
      </div>
    </blockquote>
    There are some threading notes here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_general.html#general_threading">https://files.ettus.com/manual/=
page_general.html#general_threading</a><br>
    <br>
    I don't believe that UHD creates any threads of its own.=C2=A0 It is
    conventional for the *application* to create an RX thread, a TX
    thread, and a control thread.<br>
    <br>
    For high-bandwidth networking (high sample rates) some customers
    have had success using DPDK on their system, if<br>
    =C2=A0 the 10G network cards they use support DPDK:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_dpdk.html">https://files.ettus.com/manual/page_dpdk.html</a><br=
>
    <br>
    <br>
    <br>
  </body>
</html>

--------------6F87DFBE8DAEC3F57460444B--

--===============2709206155892436704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2709206155892436704==--
