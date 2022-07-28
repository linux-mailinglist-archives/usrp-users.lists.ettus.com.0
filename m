Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB4D5839B1
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 09:43:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E37C380CBB
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 03:43:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658994217; bh=LYXYcki2U1F8lxyZLJ6I57BbWep+Xbl2rQr3rEGW9ok=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Tk8f/TNyYxqUvTXx36Ci1jkw3sxljDa7OwhiBFPbDfThLthMPyJXEutmXfdBu4Xaw
	 /LcPyY84YJ4JcD8FqU7FLogMDPqaGe5kkGpWGpEAziNz+yVjjcehn0iCw0JIRHPTAk
	 xarG9AbJZqMUc8t1lSP1AUF1QEgt4r4jjXlex7uknmQVBwPOdRGMN5dRUwcVQV/kJR
	 JaI25KG1e90IBzOwVbHoUFIR9fapdrWSMD7KcuQbi23OO5weisDR6t8hk3H+9LtV6/
	 nNdRCvEZOq+XeXRFk6OIyIPdqVpg/xOxBwgYzflLCuUlZa+5fQtY9W0vZcTDL7D5It
	 t0dIwbNLOlc+w==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id C5255380C6F
	for <USRP-users@lists.ettus.com>; Thu, 28 Jul 2022 03:41:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sma-rty-com.20210112.gappssmtp.com header.i=@sma-rty-com.20210112.gappssmtp.com header.b="mPdmOCE4";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id i13so1087255edj.11
        for <USRP-users@lists.ettus.com>; Thu, 28 Jul 2022 00:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sma-rty-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=U8ots7Sd/IXeqZJYXMC/MasH0yqk1XDLFpwHN0P7fQM=;
        b=mPdmOCE4F7Rkj9VjkWzhk7P3Ipguqbz065KjlHpgyywBAdDJIhN5jU+nIUeXPHXw/i
         HksrbpvUbZ3vcEPkVTSSfcwho/3XTqgKdEgTrQEJmxvcVxxhcD8DiFmNlG7mIs33VHDT
         8HpWB+5LJXt0UCCd7Yy5m4yhnNhbjumTIaIxjV7xDkdQymXNho9La4aRdGe/l8abE7eG
         hH3dbG/+MwQBlN1ZvipiXVd1kydaXBoP6CIpkp/IQACqmyuENQAwX4OyvdZm8zCoYHtX
         WUZ5twUwUGUtqU01czrGXMrPN928CcmyVcWWJZVtX4nEGKZEbcbhMfsZTXlg11wx12j0
         4LnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=U8ots7Sd/IXeqZJYXMC/MasH0yqk1XDLFpwHN0P7fQM=;
        b=1k/qs41BZyRzNoGDYp+8YZ2XrZHuY4Ui21WSoDVayf9JnFIiFKEZdNhEA4lB+xa5ku
         J28vtQn5shZwynbwoJtUnpX5T0u82qEFfvMuprAUTi9O7tUEzJKr+xYZKlvgikO8xYUz
         1hGUcOYIKhk4+0Hzkfc2rImTilunuSeZ21wkl0K8+zDOW2bYToHMgv//9PeRowHXAdHn
         IHNKSJSYle2uuH/0wFFk6GLWycWCqF/61h/qup1kEawR0IHl2Fe/dDrzcMXOgF4ET0lG
         voWE0udeBYPHSwczfuQlkWFET7IKuBh9p0UMjeQ+55QblIFleVWTAA38rJTlmABvVaz4
         +HoQ==
X-Gm-Message-State: AJIora+Scm3KAg5bhJlJ5W6bmGSUWLVV0KvLMiRxvOMJmqa0Zu6e6aDy
	n9l612TLv9B82VnzU1YAOY3ZNx/h8FzNQw==
X-Google-Smtp-Source: AGRyM1tA/omYiNsRsFubkSbIDRbsO957Oh4o4LUw/mcHRWwGk5COe2hQEd/BR88LR9cPUy11fTqamA==
X-Received: by 2002:a05:6402:2804:b0:439:83c2:8be2 with SMTP id h4-20020a056402280400b0043983c28be2mr26254868ede.292.1658994078442;
        Thu, 28 Jul 2022 00:41:18 -0700 (PDT)
Received: from [192.168.1.21] ([151.30.128.219])
        by smtp.gmail.com with ESMTPSA id f17-20020a17090660d100b006ff0b457cdasm103518ejk.53.2022.07.28.00.41.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 00:41:17 -0700 (PDT)
Message-ID: <bb1dc55a-8d36-a844-51fe-f6696abb8fbc@sma-rty.com>
Date: Thu, 28 Jul 2022 09:41:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
 <CAB__hTR2t4CRv_MrEH5ioTBoSC=77F4AhAuPDwyLaBc3vouStw@mail.gmail.com>
 <b95a1d8f-608f-ff79-1e44-3a79b2f6f889@gmail.com>
 <c7d470b2-ff35-b44a-995d-c4e82a8096ad@sma-rty.com>
 <3f2322e2-899c-d9c9-ac96-0d3653663e46@gmail.com>
 <259b855b-6950-9108-3a4c-59235a5f2592@sma-rty.com>
 <734245c0-1eb9-9209-c796-c916f7dd2b40@gmail.com>
From: Federico Civerchia <federico.civerchia@sma-rty.com>
In-Reply-To: <734245c0-1eb9-9209-c796-c916f7dd2b40@gmail.com>
Message-ID-Hash: KZ75IW2GK64DNXI7VOOHHBXCDLKOVL2Q
X-Message-ID-Hash: KZ75IW2GK64DNXI7VOOHHBXCDLKOVL2Q
X-MailFrom: federico.civerchia@sma-rty.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KZ75IW2GK64DNXI7VOOHHBXCDLKOVL2Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8852110859115387413=="

This is a multi-part message in MIME format.
--===============8852110859115387413==
Content-Type: multipart/alternative;
 boundary="------------9WvtW500ebq4ug4rmCBAA36Z"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9WvtW500ebq4ug4rmCBAA36Z
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Yes, I have tried with a single connection and also with different FPGA=20
images (HG and XG).

At the moment, the first setup considers one N310 connected to the Dell=20
PowerEdge server and the other N310 connected to the Dell Precision=20
3650. Thus, for both setups, one USRP per host.

For both hosts:

  * Virtualization support and Intel C-states disabled
  * CPU governor in performance state (all cores run at maximum clock)
  * Maximum send buffer size and maximum receive buffer size at 33554432
  * Ring buffers at max capacity of each NIC (2047 for Broadcom BCM57414
    and 4096 for Intel X520-DA2)

Regarding the addresses:

  * Setup 1 (Dell PowerEdge + N310)
      o Dell PowerEdge interface 0: 192.168.10.1/24, 9000MTU or 8000MTU
      o Dell PowerEdge interface 1: 192.168.20.1/24, 9000MTU or 8000MTU
      o N310 sfp0: 192.168.10.2/24, 9000MTU or 8000MTU
      o N310 sfp1: 192.168.20.2/24, 9000MTU or 8000MTU
      o Management interface: 192.168.1.46
  * Setup 2 (Dell Precision 3650 + N310)
      o Dell PowerEdge interface 0: 192.168.10.1/24, 9000MTU or 8000MTU
      o Dell PowerEdge interface 1: 192.168.20.1/24, 9000MTU or 8000MTU
      o N310 sfp0: 192.168.10.2/24, 9000MTU or 8000MTU
      o N310 sfp1: 192.168.20.2/24, 9000MTU or 8000MTU
      o Management interface: 192.168.1.49

An update about the errors: if I run the UHD benchmark app, most of the=20
time it returns "SSSSSSSSSSSSSSSSSSSSSSS" and "[D00:00:06.440490918]=20
Detected Rx sequence error.".
However, it may happen that the benchmark app does not start at all (at=20
least for one interface), returning the following error:

[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.=20
EnvironmentError: IOError: Timed out getting recv buff for management=20
transaction

Thank you.

Federico

On 27/07/22 20:00, Marcus D. Leech wrote:
> On 2022-07-27 12:22, Federico Civerchia wrote:
>>
>> Yes, errors with UHD benchmarks, ping packet loss and iperf3 packet=20
>> loss on both setups.
>>
>> The patch cables are new and 3mt long (always bought from FS)
>>
>> Federico
>>
> Is this two different N310 on two different computers, or a single=20
> N310 on two computers?
>
> Have you tried with just a *single* 10GiGe connection?=C2=A0 What are t=
he=20
> setups of your 10GIGe NIC cards in terms of ip address settings, etc?
>
>
>> On 27/07/22 18:18, Marcus D. Leech wrote:
>>> On 2022-07-27 12:15, Federico Civerchia wrote:
>>>>
>>>> Hi Rob, Marcus,
>>>>
>>>> thank you for your answers.
>>>>
>>>> Yes, I have packet loss with ping and also with iperf3 (considering=20
>>>> udp) at low rates (500Mb, 1Gb).
>>>> From the host side I can also see continuous disconnection and=20
>>>> re-connection of the link. For the Intel X520-DA2 NIC, I have=20
>>>> bought Intel SFP+ (E10GSFPSR) but this does not resolve the issue.
>>>> I would like to clarify my setup, maybe it can help to find out=20
>>>> what is going wrong:
>>>>
>>>>   * First setup:
>>>>       o Dell PowerEdge R550 (2xXeon Gold) equipped with dual port
>>>>         Broadcom BCM57414 NetXtreme-E 10Gb/25Gb.
>>>>       o USRP Ettus N310
>>>>       o 4x SFP+ FS transceiver at 850nm (SR)
>>>>       o 2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables
>>>>   * Second setup:
>>>>       o Dell Precision tower 3650 (Intel core i9) equipped with
>>>>         dual port Intel X520-DA2 10Gb
>>>>       o USRP Ettus N310
>>>>       o 2x SFP+ FS transceiver at 850nm (SR)
>>>>       o 2x Intel E10GSFPSR
>>>>       o 2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables
>>>>
>>>> For the USRP, I considered UHD 4.2.0, 4.0.0 and 3.15.0. All of them=20
>>>> highlight an unstable connection (packet loss and flapping)
>>>>
>>>> Do you have other hints?
>>>>
>>>> Thank you
>>>>
>>>> Federico
>>>>
>>>>
>>> Same thing is happening on both setups?=C2=A0=C2=A0 How long are your=
 patch=20
>>> cables?
>>>
>>>
>
--------------9WvtW500ebq4ug4rmCBAA36Z
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Yes, I have tried with a single connection and also with
      different FPGA images (HG and XG). <br>
    </p>
    <p>At the moment, the first setup considers one N310 connected to
      the Dell PowerEdge server and the other N310 connected to the Dell
      Precision 3650. Thus, for both setups, one USRP per host. <br>
    </p>
    <p>For both hosts:</p>
    <ul>
      <li>Virtualization support and Intel C-states disabled</li>
      <li>CPU governor in performance state (all cores run at maximum
        clock)</li>
      <li>Maximum send buffer size and maximum receive buffer size at
        33554432</li>
      <li>Ring buffers at max capacity of each NIC (2047 for Broadcom
        BCM57414 and 4096 for Intel X520-DA2)</li>
    </ul>
    <p>Regarding the addresses:</p>
    <ul>
      <li>Setup 1 (Dell PowerEdge + N310)</li>
      <ul>
        <li>Dell PowerEdge interface 0: 192.168.10.1/24, 9000MTU or
          8000MTU<br>
        </li>
        <li>Dell PowerEdge interface 1: 192.168.20.1/24, 9000MTU or
          8000MTU</li>
        <li>N310 sfp0: 192.168.10.2/24, 9000MTU or 8000MTU</li>
        <li>N310 sfp1: 192.168.20.2/24, 9000MTU or 8000MTU</li>
        <li>Management interface: 192.168.1.46<br>
        </li>
      </ul>
      <li>Setup 2 (Dell Precision 3650 + N310)</li>
      <ul>
        <li>Dell PowerEdge interface 0: 192.168.10.1/24, 9000MTU or
          8000MTU<br>
        </li>
        <li>Dell PowerEdge interface 1: 192.168.20.1/24, 9000MTU or
          8000MTU</li>
        <li>N310 sfp0: 192.168.10.2/24, 9000MTU or 8000MTU</li>
        <li>N310 sfp1: 192.168.20.2/24, 9000MTU or 8000MTU</li>
        <li>Management interface: 192.168.1.49</li>
      </ul>
    </ul>
    <p>An update about the errors: if I run the UHD benchmark app, most
      of the time it returns "SSSSSSSSSSSSSSSSSSSSSSS" and
      "[D00:00:06.440490918] Detected Rx sequence error.".<br>
      However, it may happen that the benchmark app does not start at
      all (at least for one interface), returning the following error:<br=
>
    </p>
    <p>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
      EnvironmentError: IOError: Timed out getting recv buff for
      management transaction</p>
    <p>Thank you.</p>
    <p>Federico<br>
    </p>
    <div class=3D"moz-cite-prefix">On 27/07/22 20:00, Marcus D. Leech
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:734245c0-1eb9-9209-c796-c916f7dd2b40@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 2022-07-27 12:22, Federico
        Civerchia wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:259b855b-6950-9108-3a4c-59235a5f2592@sma-rty.com">
        <meta http-equiv=3D"Content-Type" content=3D"text/html;
          charset=3DUTF-8">
        <p>Yes, errors with UHD benchmarks, ping packet loss and iperf3
          packet loss on both setups.<br>
        </p>
        <p>The patch cables are new and 3mt long (always bought from FS)<=
/p>
        <p>Federico<br>
        </p>
      </blockquote>
      Is this two different N310 on two different computers, or a single
      N310 on two computers?<br>
      <br>
      Have you tried with just a *single* 10GiGe connection?=C2=A0 What a=
re
      the setups of your 10GIGe NIC cards in terms of ip address
      settings, etc?<br>
      <br>
      <br>
      <blockquote type=3D"cite"
        cite=3D"mid:259b855b-6950-9108-3a4c-59235a5f2592@sma-rty.com">
        <p> </p>
        <div class=3D"moz-cite-prefix">On 27/07/22 18:18, Marcus D. Leech
          wrote:<br>
        </div>
        <blockquote type=3D"cite"
          cite=3D"mid:3f2322e2-899c-d9c9-ac96-0d3653663e46@gmail.com">
          <meta http-equiv=3D"Content-Type" content=3D"text/html;
            charset=3DUTF-8">
          <div class=3D"moz-cite-prefix">On 2022-07-27 12:15, Federico
            Civerchia wrote:<br>
          </div>
          <blockquote type=3D"cite"
            cite=3D"mid:c7d470b2-ff35-b44a-995d-c4e82a8096ad@sma-rty.com"=
>
            <meta http-equiv=3D"Content-Type" content=3D"text/html;
              charset=3DUTF-8">
            <p>Hi Rob, Marcus,<br>
            </p>
            <p>thank you for your answers.</p>
            <p>Yes, I have packet loss with ping and also with iperf3
              (considering udp) at low rates (500Mb, 1Gb).<br>
              From the host side I can also see continuous disconnection
              and re-connection of the link. For the Intel X520-DA2 NIC,
              I have bought Intel SFP+ (E10GSFPSR) but this does not
              resolve the issue.<br>
              I would like to clarify my setup, maybe it can help to
              find out what is going wrong:</p>
            <ul>
              <li>First setup:</li>
              <ul>
                <li>Dell PowerEdge R550 (2xXeon Gold) equipped with dual
                  port Broadcom BCM57414 NetXtreme-E 10Gb/25Gb. <br>
                </li>
                <li>USRP Ettus N310 <br>
                </li>
                <li>4x SFP+ FS transceiver at 850nm (SR)</li>
                <li>2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch
                  cables</li>
              </ul>
              <li> Second setup:</li>
              <ul>
                <li>Dell Precision tower 3650 (Intel core i9) equipped
                  with dual port Intel X520-DA2 10Gb</li>
                <li>USRP Ettus N310</li>
                <li>2x SFP+ FS transceiver at 850nm (SR)</li>
                <li>2x Intel E10GSFPSR</li>
                <li>2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch
                  cables</li>
              </ul>
            </ul>
            <p>For the USRP, I considered UHD 4.2.0, 4.0.0 and 3.15.0.
              All of them highlight an unstable connection (packet loss
              and flapping)</p>
            <p>Do you have other hints?</p>
            <p>Thank you</p>
            <p>Federico<br>
            </p>
            <br>
          </blockquote>
          Same thing is happening on both setups?=C2=A0=C2=A0 How long ar=
e your
          patch cables?<br>
          <br>
          <br>
        </blockquote>
      </blockquote>
      <br>
    </blockquote>
  </body>
</html>

--------------9WvtW500ebq4ug4rmCBAA36Z--

--===============8852110859115387413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8852110859115387413==--
