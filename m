Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DEF3BEA86
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 17:17:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7788383CC0
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 11:17:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mgU9vuiM";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 3A296384DE6
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 11:16:30 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id 14so2328248qkh.0
        for <usrp-users@lists.ettus.com>; Wed, 07 Jul 2021 08:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=PObDxRETm1pDpsYk5nhdNVEuVgeJLqsy0zOIfvyitZI=;
        b=mgU9vuiMlAYmRdlwYimHzqa6Gd4KlEiWvOPuzw0u6xMeM8cn3yQc+st0OKmkw/e40N
         0i+VomjryZnQ0jyD+RWsyMJL5TokYvQo5uHYqTL/OKRL4b+kTrQd806LpSfGoBqZzHkK
         CfCDeVRZDUldSXGWbiX8G2o/mguTZkm3jydE+eonLdPpGwpZK+c0VSh3K3aZ7ZKrMZLt
         lYBNKbGuFFtvUbIhYc2G/5XJIOG0eC0pbyMf9qX/bLU9s1upXNbF6dfbF8DCKxyHJ+A6
         gkW8OnvnBWwzHmf1SaBTS/ysl3AXup+Mprv1BBeB9+NdU3Eb+/9l/Q80rTZ8GacvVi7P
         eCHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=PObDxRETm1pDpsYk5nhdNVEuVgeJLqsy0zOIfvyitZI=;
        b=Agcb4KpcqJEQl23Ue9TFKRPkhwO26kdY2dIUDbE0nlJjC2HRMZFYN3Yea3+lYJcyKD
         l30PZUx70+gW7aLGVNuUI5tTvL02Htyf0FqLwsBBSNgzYEtvpKLCXNfFM9xrXjfTFo8L
         1D10a/G3TR/7AOQnZ2gO9qI/Bsj4cUo9y6yvjjYg8N9sO8l02U9xavjiHybTFjv17PQ4
         oqBezdu/VziEdGhheXwK7vlrF2FVjd0R2G3SgBOV1thhuvAZSU2mJU9z6E0po6grlnNE
         g11Xgvq5dbOE8Ww89qFTO8yY1YmpyMFVV38v2enLfH6WClRskNwswTKRf2E7s07otZME
         OQig==
X-Gm-Message-State: AOAM530uj1PQOZPAh2YuVOMPh3RW390sNxRcLeAHgx5v9IPAry//qXx7
	Ir5KDKw0j0Yd8lcYjZl4QOJa8ar7/LRJYg==
X-Google-Smtp-Source: ABdhPJyCoA+RJGr2jB6a7ClvdTDGH4MDu5Zdjtj+a9OpV5zuYHnpFICOuU4gAbW7y54x4qoiGAZTnQ==
X-Received: by 2002:a05:620a:a90:: with SMTP id v16mr8895188qkg.150.1625670989478;
        Wed, 07 Jul 2021 08:16:29 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v5sm8606941qkh.39.2021.07.07.08.16.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 08:16:29 -0700 (PDT)
Message-ID: <60E5C54B.9070501@gmail.com>
Date: Wed, 07 Jul 2021 11:16:27 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Armin Ghani <aghani@cttc.es>
References: <2547566f-fdc2-8dfc-6ef0-198de1a1f578@cttc.es> <60E5BB23.7000305@gmail.com> <f135fa58-cfed-d47d-f174-56bbf4e0a693@cttc.es> <60E5BD7E.4050700@gmail.com> <388790a8-f51f-c045-0a7e-49fb88c18465@cttc.es>
In-Reply-To: <388790a8-f51f-c045-0a7e-49fb88c18465@cttc.es>
Message-ID-Hash: RLYPAYUJVYGPFQGR3SBZNDPSOQBZD74I
X-Message-ID-Hash: RLYPAYUJVYGPFQGR3SBZNDPSOQBZD74I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Reference Clock PLL failed to lock to external source, when trying to synch 3 USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RLYPAYUJVYGPFQGR3SBZNDPSOQBZD74I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4796950661279022263=="

This is a multi-part message in MIME format.
--===============4796950661279022263==
Content-Type: multipart/alternative;
 boundary="------------070803020701070006010809"

This is a multi-part message in MIME format.
--------------070803020701070006010809
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/07/2021 11:14 AM, Armin Ghani wrote:
>
> I've just checked the reference source for all USRPs, both 10MHz and=20
> 1PPS are perfectly distributed on the octoclock output.
>
> 10MHz =3D> 3.5V p-p
>
> 1PPS =3D> 5V p-p
>
The next thing to check then is the cabling.


> Regards.
>
> On 7/7/21 16:43, Marcus D. Leech wrote:
>> On 07/07/2021 10:38 AM, Armin Ghani wrote:
>>>
>>> What do you mean by not implemented? Do you mean it is not assembled=20
>>> on USRP hardware?
>>>
>> My recollection is that the "feature" was implemented originally, but=20
>> it was found to be a very poor reference clock, and I thought
>>   (maybe I'm wrong) that later FPGA releases ended up turning it off.
>>
>> So the next thing to check is that 10MHz and 1PPS are actually making=20
>> it out of your octoclock (with a scope) when things are
>>   configured (assuming that the input is correct).
>>
>>
>>> Regards.
>>>
>>> On 7/7/21 16:33, Marcus D. Leech wrote:
>>>> On 07/07/2021 09:36 AM, Armin Ghani wrote:
>>>>>
>>>>> Dear USRP and GNURadio Community
>>>>>
>>>>> I have 3 USRP X310 with two SBX-120 daughterboards installed. each=20
>>>>> of USRPs has two dedicated 10GB Interface with host server.
>>>>>
>>>>> I'm trying to build a synchronouse system which has 2 receiver and=20
>>>>> one transmitter and Octoclock CDA-2990 is used to synch both clock=20
>>>>> and time of all USRPs.
>>>>>
>>>>> Since the octoclock doesnt provide reference source, I used one of=20
>>>>> the USRPs clock source external output as octoclock input=20
>>>>> rerefence and three distributed output references (both 10MHz and=20
>>>>> PPS) are fed to the three USRPs (including the USRP which provide=20
>>>>> reference source to the octoclock)
>>>>>
>>>>> Attached you can find the flowgraph in GNURadio to run a very=20
>>>>> simple system in order to evaluate the results. You can find more=20
>>>>> details of how UHD source and sink blocks are configured. In=20
>>>>> summary, for the UHD sink block, clock and time references are set=20
>>>>> to internal and default respectively. And UHD source block are=20
>>>>> configured as multi-usrp config with clock and time sources for=20
>>>>> both motherboards to the external.
>>>>>
>>>>> GNURadio v3.8.2.0 and UHD v3.15.0.0 are used.
>>>>>
>>>>> When I run the flowgraph, after UHD initialization for all USRPs,=20
>>>>> the running system ends up with the folowing output in console:
>>>>>
>>>>> Executing: /usr/bin/python3 -u=20
>>>>> /home/.../Documents/gnuradio-tests/octoclock_test.py
>>>>>
>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;=20
>>>>> UHD_3.15.0.HEAD-0-gaea0e2de
>>>>> [INFO] [X300] X300 initialization sequence...
>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>> [WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a=20
>>>>> send frame size of at least 4000 for best
>>>>> performance, but your configuration will only allow 1472.This may=20
>>>>> negatively impact your maximum achievable sample rate.
>>>>> Check the MTU on the interface and/or the send_frame_size argument.
>>>>> [WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a=20
>>>>> receive frame size of at least 8000 for best
>>>>> performance, but your configuration will only allow 1472.This may=20
>>>>> negatively impact your maximum achievable sample rate.
>>>>> Check the MTU on the interface and/or the recv_frame_size argument.
>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>> [WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a=20
>>>>> send frame size of at least 4000 for best
>>>>> performance, but your configuration will only allow 1472.This may=20
>>>>> negatively impact your maximum achievable sample rate.
>>>>> Check the MTU on the interface and/or the send_frame_size argument.
>>>>> [WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a=20
>>>>> receive frame size of at least 8000 for best
>>>>> performance, but your configuration will only allow 1472.This may=20
>>>>> negatively impact your maximum achievable sample rate.
>>>>> Check the MTU on the interface and/or the recv_frame_size argument.
>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:=20
>>>>> 0xF1F0D00000000000)
>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318 MB/s)
>>>>> [INFO] [1/DmaFIFO_0] Initializing block control (NOC ID:=20
>>>>> 0xF1F0D00000000000)https://www.radio-astronomy.org/
>>>>> [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)
>>>>> [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)
>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:=20
>>>>> 0x12AD100000000001)
>>>>> [INFO] [1/Radio_0] Initializing block control (NOC ID:=20
>>>>> 0x12AD100000000001)
>>>>> [INFO] [0/Radio_1] Initializing block control (NOC ID:=20
>>>>> 0x12AD100000000001)
>>>>> [INFO] [1/Radio_1] Initializing block control (NOC ID:=20
>>>>> 0x12AD100000000001)
>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID:=20
>>>>> 0xDDC0000000000000)
>>>>> [INFO] [1/DDC_0] Initializing block control (NOC ID:=20
>>>>> 0xDDC0000000000000)
>>>>> [INFO] [0/DDC_1] Initializing block control (NOC ID:=20
>>>>> 0xDDC0000000000000)
>>>>> [INFO] [1/DDC_1] Initializing block control (NOC ID:=20
>>>>> 0xDDC0000000000000)
>>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID:=20
>>>>> 0xD0C0000000000000)
>>>>> [INFO] [1/DUC_0] Initializing block control (NOC ID:=20
>>>>> 0xD0C0000000000000)
>>>>> [INFO] [0/DUC_1] Initializing block control (NOC ID:=20
>>>>> 0xD0C0000000000000)
>>>>> [INFO] [1/DUC_1] Initializing block control (NOC ID:=20
>>>>> 0xD0C0000000000000)
>>>>> Traceback (most recent call last):
>>>>>   File "/home/.../Documents/gnuradio-tests/octoclock_test.py",=20
>>>>> line 334, in <module>
>>>>>     main()
>>>>>   File "/home/.../Documents/gnuradio-tests/octoclock_test.py",=20
>>>>> line 310, in main
>>>>>     tb =3D top_block_cls()
>>>>>   File "/home/.../Documents/gnuradio-tests/octoclock_test.py",=20
>>>>> line 91, in __init__
>>>>>     self.uhd_usrp_source_0.set_clock_source('external', 0)
>>>>>   File=20
>>>>> "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py",=20
>>>>> line 3793, in set_clock_source
>>>>>     return _uhd_swig.usrp_source_sptr_set_clock_source(self,=20
>>>>> source, mboard)
>>>>>
>>>>> RuntimeError: RuntimeError: Reference Clock PLL failed to lock to=20
>>>>> external source.
>>>>>
>>>>>
>>>>> --=20
>>>>>
>>>>> Armin Ghani
>>>>>
>>>>> Research Engineer | Communication Systems Division (CSD)
>>>>>
>>>>> aghani@cttc.es <mailto:aghani@cttc.es>| +34 93 645 29 08 (2143)
>>>>>
>>>>> Centre Tecnol=F2gic de Telecomunicacions de Catalunya (CTTC)
>>>>>
>>>>> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
>>>>>
>>>>> 08860 - Castelldefels (Barcelona, Spain)
>>>>>
>>>>> www.cttc.cat
>>>>>
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list --usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>>>> Check to make sure that the REF OUT on the X310 you're using as the=20
>>>> reference is actually producing a 10MHz clock.  My recollection
>>>>   is that the REF OUT on the X310 was never actually implemented.
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list --usrp-users@lists.ettus.com
>>>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>>> --=20
>>>
>>> Armin Ghani
>>>
>>> Research Engineer | Communication Systems Division (CSD)
>>>
>>> aghani@cttc.es <mailto:aghani@cttc.es>| +34 93 645 29 08 (2143)
>>>
>>> Centre Tecnol=F2gic de Telecomunicacions de Catalunya (CTTC)
>>>
>>> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
>>>
>>> 08860 - Castelldefels (Barcelona, Spain)
>>>
>>> www.cttc.cat
>>>
>>
> --=20
>
> Armin Ghani
>
> Research Engineer | Communication Systems Division (CSD)
>
> aghani@cttc.es <mailto:aghani@cttc.es>| +34 93 645 29 08 (2143)
>
> Centre Tecnol=F2gic de Telecomunicacions de Catalunya (CTTC)
>
> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
>
> 08860 - Castelldefels (Barcelona, Spain)
>
> www.cttc.cat
>


--------------070803020701070006010809
Content-Type: multipart/related;
 boundary="------------090908040902030007030202"


--------------090908040902030007030202
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 07/07/2021 11:14 AM, Armin Ghani
      wrote:<br>
    </div>
    <blockquote cite=3D"mid:388790a8-f51f-c045-0a7e-49fb88c18465@cttc.es"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <p>I've just checked the reference source for all USRPs, both
        10MHz and 1PPS are perfectly distributed on the octoclock
        output.</p>
      <p>10MHz =3D&gt; 3.5V p-p</p>
      <p>1PPS =3D&gt; 5V p-p</p>
    </blockquote>
    The next thing to check then is the cabling.<br>
    <br>
    <br>
    <blockquote cite=3D"mid:388790a8-f51f-c045-0a7e-49fb88c18465@cttc.es"
      type=3D"cite">
      <p>Regards.<br>
      </p>
      <div class=3D"moz-cite-prefix">On 7/7/21 16:43, Marcus D. Leech
        wrote:<br>
      </div>
      <blockquote type=3D"cite" cite=3D"mid:60E5BD7E.4050700@gmail.com">
        <meta content=3D"text/html; charset=3Dwindows-1252"
          http-equiv=3D"Content-Type">
        <div class=3D"moz-cite-prefix">On 07/07/2021 10:38 AM, Armin Ghan=
i
          wrote:<br>
        </div>
        <blockquote
          cite=3D"mid:f135fa58-cfed-d47d-f174-56bbf4e0a693@cttc.es"
          type=3D"cite">
          <meta http-equiv=3D"Content-Type" content=3D"text/html;
            charset=3Dwindows-1252">
          <p>What do you mean by not implemented? Do you mean it is not
            assembled on USRP hardware?</p>
        </blockquote>
        My recollection is that the "feature" was implemented
        originally, but it was found to be a very poor reference clock,
        and I thought<br>
        =A0 (maybe I'm wrong) that later FPGA releases ended up turning i=
t
        off.=A0 <br>
        <br>
        So the next thing to check is that 10MHz and 1PPS are actually
        making it out of your octoclock (with a scope) when things are<br=
>
        =A0 configured (assuming that the input is correct).<br>
        <br>
        <br>
        <blockquote
          cite=3D"mid:f135fa58-cfed-d47d-f174-56bbf4e0a693@cttc.es"
          type=3D"cite">
          <p>Regards.<br>
          </p>
          <div class=3D"moz-cite-prefix">On 7/7/21 16:33, Marcus D. Leech
            wrote:<br>
          </div>
          <blockquote type=3D"cite" cite=3D"mid:60E5BB23.7000305@gmail.co=
m">
            <meta content=3D"text/html; charset=3Dwindows-1252"
              http-equiv=3D"Content-Type">
            <div class=3D"moz-cite-prefix">On 07/07/2021 09:36 AM, Armin
              Ghani wrote:<br>
            </div>
            <blockquote
              cite=3D"mid:2547566f-fdc2-8dfc-6ef0-198de1a1f578@cttc.es"
              type=3D"cite">
              <meta http-equiv=3D"content-type" content=3D"text/html;
                charset=3Dwindows-1252">
              <p>Dear USRP and GNURadio Community</p>
              <p>I have 3 USRP X310 with two SBX-120 daughterboards
                installed. each of USRPs has two dedicated 10GB
                Interface with host server.</p>
              <p>I'm trying to build a synchronouse system which has 2
                receiver and one transmitter and Octoclock CDA-2990 is
                used to synch both clock and time of all USRPs.</p>
              <p>Since the octoclock doesnt provide reference source, I
                used one of the USRPs clock source external output as
                octoclock input rerefence and three distributed output
                references (both 10MHz and PPS) are fed to the three
                USRPs (including the USRP which provide reference source
                to the octoclock)</p>
              <p>Attached you can find the flowgraph in GNURadio to run
                a very simple system in order to evaluate the results.
                You can find more details of how UHD source and sink
                blocks are configured. In summary, for the UHD sink
                block, clock and time references are set to internal and
                default respectively. And UHD source block are
                configured as multi-usrp config with clock and time
                sources for both motherboards to the external.<br>
              </p>
              <p>GNURadio v3.8.2.0 and UHD v3.15.0.0 are used.</p>
              <p>When I run the flowgraph, after UHD initialization for
                all USRPs, the running system ends up with the folowing
                output in console:</p>
              Executing: /usr/bin/python3 -u
              /home/.../Documents/gnuradio-tests/octoclock_test.py<br>
              <br>
              [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
              UHD_3.15.0.HEAD-0-gaea0e2de<br>
              [INFO] [X300] X300 initialization sequence...<br>
              [INFO] [X300] Maximum frame size: 1472 bytes.<br>
              [WARNING] [X300] For the 192.168.30.2 connection, UHD
              recommends a send frame size of at least 4000 for best<br>
              performance, but your configuration will only allow
              1472.This may negatively impact your maximum achievable
              sample rate.<br>
              Check the MTU on the interface and/or the send_frame_size
              argument.<br>
              [WARNING] [X300] For the 192.168.30.2 connection, UHD
              recommends a receive frame size of at least 8000 for best<b=
r>
              performance, but your configuration will only allow
              1472.This may negatively impact your maximum achievable
              sample rate.<br>
              Check the MTU on the interface and/or the recv_frame_size
              argument.<br>
              [INFO] [X300] Maximum frame size: 1472 bytes.<br>
              [WARNING] [X300] For the 192.168.50.2 connection, UHD
              recommends a send frame size of at least 4000 for best<br>
              performance, but your configuration will only allow
              1472.This may negatively impact your maximum achievable
              sample rate.<br>
              Check the MTU on the interface and/or the send_frame_size
              argument.<br>
              [WARNING] [X300] For the 192.168.50.2 connection, UHD
              recommends a receive frame size of at least 8000 for best<b=
r>
              performance, but your configuration will only allow
              1472.This may negatively impact your maximum achievable
              sample rate.<br>
              Check the MTU on the interface and/or the recv_frame_size
              argument.<br>
              [INFO] [X300] Radio 1x clock: 200 MHz<br>
              [INFO] [X300] Radio 1x clock: 200 MHz<br>
              [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
              0xF1F0D00000000000)<br>
              [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)<br=
>
              [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318 MB/s)<br=
>
              [INFO] [1/DmaFIFO_0] Initializing block control (NOC ID:
              0xF1F0D00000000000)<a class=3D"moz-txt-link-freetext"
                href=3D"https://www.radio-astronomy.org/"
                moz-do-not-send=3D"true">https://www.radio-astronomy.org/=
</a><br>
              [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)<br=
>
              [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)<br=
>
              [INFO] [0/Radio_0] Initializing block control (NOC ID:
              0x12AD100000000001)<br>
              [INFO] [1/Radio_0] Initializing block control (NOC ID:
              0x12AD100000000001)<br>
              [INFO] [0/Radio_1] Initializing block control (NOC ID:
              0x12AD100000000001)<br>
              [INFO] [1/Radio_1] Initializing block control (NOC ID:
              0x12AD100000000001)<br>
              [INFO] [0/DDC_0] Initializing block control (NOC ID:
              0xDDC0000000000000)<br>
              [INFO] [1/DDC_0] Initializing block control (NOC ID:
              0xDDC0000000000000)<br>
              [INFO] [0/DDC_1] Initializing block control (NOC ID:
              0xDDC0000000000000)<br>
              [INFO] [1/DDC_1] Initializing block control (NOC ID:
              0xDDC0000000000000)<br>
              [INFO] [0/DUC_0] Initializing block control (NOC ID:
              0xD0C0000000000000)<br>
              [INFO] [1/DUC_0] Initializing block control (NOC ID:
              0xD0C0000000000000)<br>
              [INFO] [0/DUC_1] Initializing block control (NOC ID:
              0xD0C0000000000000)<br>
              [INFO] [1/DUC_1] Initializing block control (NOC ID:
              0xD0C0000000000000)<br>
              Traceback (most recent call last):<br>
              =A0 File
              "/home/.../Documents/gnuradio-tests/octoclock_test.py",
              line 334, in &lt;module&gt;<br>
              =A0=A0=A0 main()<br>
              =A0 File
              "/home/.../Documents/gnuradio-tests/octoclock_test.py",
              line 310, in main<br>
              =A0=A0=A0 tb =3D top_block_cls()<br>
              =A0 File
              "/home/.../Documents/gnuradio-tests/octoclock_test.py",
              line 91, in __init__<br>
              =A0=A0=A0 self.uhd_usrp_source_0.set_clock_source('external=
', 0)<br>
              =A0 File
              "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_swig=
.py",
              line 3793, in set_clock_source<br>
              =A0=A0=A0 return
              _uhd_swig.usrp_source_sptr_set_clock_source(self, source,
              mboard)<br>
              <p> RuntimeError: RuntimeError: Reference Clock PLL failed
                to lock to external source.</p>
              <p><br>
              </p>
              <div class=3D"moz-signature">-- <br>
                <meta http-equiv=3D"content-type" content=3D"text/html;
                  charset=3Dwindows-1252">
                <title></title>
                <p> </p>
                <p>
                  <meta name=3D"ProgId" content=3D"Word.Document">
                  <meta name=3D"Generator" content=3D"Microsoft Word 15">
                  <meta name=3D"Originator" content=3D"Microsoft Word 15"=
>
                  <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:3 0 0 0 1 0;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-469750017 -1073732485 9 0 511 0;}@font-face
	{font-family:"Arial Black";
	panose-1:2 11 10 4 2 1 2 2 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610612049 1073772795 0 0 159 0;}@font-face
	{font-family:Aharoni;
	mso-font-charset:177;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.MsoNo=
rmal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	mso-themecolor:hyperlink;
	text-decoration:underline;
	text-underline:single;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:#954F72;
	mso-themecolor:followedhyperlink;
	text-decoration:underline;
	text-underline:single;}.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}div.WordSection1
	{page:WordSection1;}</style> </p>
                <p class=3D"MsoNormal"
                  style=3D"margin-bottom:0in;line-height:normal"><img
                    src=3D"cid:part2.03050406.06000705@gmail.com" class=3D=
""
                    align=3D"left" height=3D"100" hspace=3D"12" width=3D"=
151"><span
                    style=3D"font-size:9.0pt;font-family:&quot;Arial
                    Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
                    Ghani</span></p>
                <p class=3D"MsoNormal"
                  style=3D"margin-bottom:0in;line-height:normal"><span
                    style=3D"font-size:9.0pt;font-family:&quot;Arial
                    Black&quot;,sans-serif;mso-bidi-font-family:
                    Aharoni">Research Engineer | Communication Systems
                    Division (CSD)</span></p>
                <p class=3D"MsoNormal"
                  style=3D"margin-bottom:0in;line-height:normal"><a
                    moz-do-not-send=3D"true" href=3D"mailto:aghani@cttc.e=
s"><span
                      style=3D"font-size:9.0pt;font-family:&quot;Arial
                      Black&quot;,sans-serif;
                      mso-bidi-font-family:Aharoni">aghani@cttc.es</span>=
</a><span
                    style=3D"font-size: 9.0pt;font-family:&quot;Arial
                    Black&quot;,sans-serif;mso-bidi-font-family:Aharoni">
                    | +34 93 645 29 08 (2143)</span></p>
                <p class=3D"MsoNormal"
                  style=3D"margin-bottom:0in;line-height:normal"><span
                    style=3D"font-size:9.0pt;font-family:&quot;Arial
                    Black&quot;,sans-serif;mso-bidi-font-family:
                    Aharoni">Centre Tecnol=F2gic de Telecomunicacions de
                    Catalunya (CTTC)</span></p>
                <p class=3D"MsoNormal"
                  style=3D"margin-bottom:0in;line-height:normal"><span
                    style=3D"font-size:9.0pt;font-family:&quot;Arial
                    Black&quot;,sans-serif;mso-bidi-font-family:
                    Aharoni">Av. Carl Friedrich Gauss, 7 - Edifici B4 -
                    PMT</span></p>
                <p class=3D"MsoNormal"
                  style=3D"margin-bottom:0in;line-height:normal"><span
                    style=3D"font-size:9.0pt;font-family:&quot;Arial
                    Black&quot;,sans-serif;mso-bidi-font-family:
                    Aharoni">08860 - Castelldefels (Barcelona, Spain)</sp=
an></p>
                <p class=3D"MsoNormal"
                  style=3D"margin-bottom:0in;line-height:normal"><a
                    moz-do-not-send=3D"true"><span
                      style=3D"font-size:9.0pt;font-family:&quot;Arial
                      Black&quot;,sans-serif;
                      mso-bidi-font-family:Aharoni;mso-ansi-language:ES"
                      lang=3D"ES">www.cttc.cat</span></a><span
                    style=3D"font-size:9.0pt;font-family:&quot;Arial
                    Black&quot;,sans-serif;mso-bidi-font-family:
                    Aharoni;mso-ansi-language:ES" lang=3D"ES"></span></p>
              </div>
              <br>
              <fieldset class=3D"mimeAttachmentHeader"></fieldset>
              <br>
              <pre wrap=3D"">____________________________________________=
___
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"true">usrp-users@li=
sts.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com" moz-do-not-send=3D"true">us=
rp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            Check to make sure that the REF OUT on the X310 you're using
            as the reference is actually producing a 10MHz clock.=A0 My
            recollection<br>
            =A0 is that the REF OUT on the X310 was never actually
            implemented.<br>
            <br>
            <br>
            <br>
            <fieldset class=3D"mimeAttachmentHeader"></fieldset>
            <pre class=3D"moz-quote-pre" wrap=3D"">______________________=
_________________________
USRP-users mailing list -- <a moz-do-not-send=3D"true" class=3D"moz-txt-l=
ink-abbreviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@li=
sts.ettus.com</a>
To unsubscribe send an email to <a moz-do-not-send=3D"true" class=3D"moz-=
txt-link-abbreviated" href=3D"mailto:usrp-users-leave@lists.ettus.com">us=
rp-users-leave@lists.ettus.com</a>
</pre>
          </blockquote>
          <div class=3D"moz-signature">-- <br>
            <meta http-equiv=3D"content-type" content=3D"text/html;
              charset=3Dwindows-1252">
            <title></title>
            <p> </p>
            <p>
              <meta name=3D"ProgId" content=3D"Word.Document">
              <meta name=3D"Generator" content=3D"Microsoft Word 15">
              <meta name=3D"Originator" content=3D"Microsoft Word 15">
              <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:3 0 0 0 1 0;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-469750017 -1073732485 9 0 511 0;}@font-face
	{font-family:"Arial Black";
	panose-1:2 11 10 4 2 1 2 2 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610612049 1073772795 0 0 159 0;}@font-face
	{font-family:Aharoni;
	mso-font-charset:177;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.MsoNo=
rmal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	mso-themecolor:hyperlink;
	text-decoration:underline;
	text-underline:single;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:#954F72;
	mso-themecolor:followedhyperlink;
	text-decoration:underline;
	text-underline:single;}.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}div.WordSection1
	{page:WordSection1;}</style> </p>
            <p class=3D"MsoNormal"
              style=3D"margin-bottom:0in;line-height:normal"><img
                src=3D"cid:part2.03050406.06000705@gmail.com" class=3D""
                align=3D"left" height=3D"100" hspace=3D"12" width=3D"151"=
><span
                style=3D"font-size:9.0pt;font-family:&quot;Arial
                Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
                Ghani</span></p>
            <p class=3D"MsoNormal"
              style=3D"margin-bottom:0in;line-height:normal"><span
                style=3D"font-size:9.0pt;font-family:&quot;Arial
                Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Res=
earch

                Engineer | Communication Systems Division (CSD)</span></p=
>
            <p class=3D"MsoNormal"
              style=3D"margin-bottom:0in;line-height:normal"><a
                moz-do-not-send=3D"true" href=3D"mailto:aghani@cttc.es"><=
span
                  style=3D"font-size:9.0pt;font-family:&quot;Arial
                  Black&quot;,sans-serif; mso-bidi-font-family:Aharoni">a=
ghani@cttc.es</span></a><span
                style=3D"font-size: 9.0pt;font-family:&quot;Arial
                Black&quot;,sans-serif;mso-bidi-font-family:Aharoni"> |
                +34 93 645 29 08 (2143)</span></p>
            <p class=3D"MsoNormal"
              style=3D"margin-bottom:0in;line-height:normal"><span
                style=3D"font-size:9.0pt;font-family:&quot;Arial
                Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Cen=
tre

                Tecnol=F2gic de Telecomunicacions de Catalunya (CTTC)</sp=
an></p>
            <p class=3D"MsoNormal"
              style=3D"margin-bottom:0in;line-height:normal"><span
                style=3D"font-size:9.0pt;font-family:&quot;Arial
                Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Av.

                Carl Friedrich Gauss, 7 - Edifici B4 - PMT</span></p>
            <p class=3D"MsoNormal"
              style=3D"margin-bottom:0in;line-height:normal"><span
                style=3D"font-size:9.0pt;font-family:&quot;Arial
                Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">088=
60

                - Castelldefels (Barcelona, Spain)</span></p>
            <p class=3D"MsoNormal"
              style=3D"margin-bottom:0in;line-height:normal"><a
                moz-do-not-send=3D"true"><span
                  style=3D"font-size:9.0pt;font-family:&quot;Arial
                  Black&quot;,sans-serif;
                  mso-bidi-font-family:Aharoni;mso-ansi-language:ES"
                  lang=3D"ES">www.cttc.cat</span></a><span
                style=3D"font-size:9.0pt;font-family:&quot;Arial
                Black&quot;,sans-serif;mso-bidi-font-family:
                Aharoni;mso-ansi-language:ES" lang=3D"ES"></span></p>
          </div>
        </blockquote>
        <br>
      </blockquote>
      <div class=3D"moz-signature">-- <br>
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3Dwindows-1252">
        <title></title>
        <p> </p>
        <p>
          <meta name=3D"ProgId" content=3D"Word.Document">
          <meta name=3D"Generator" content=3D"Microsoft Word 15">
          <meta name=3D"Originator" content=3D"Microsoft Word 15">
          <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:3 0 0 0 1 0;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-469750017 -1073732485 9 0 511 0;}@font-face
	{font-family:"Arial Black";
	panose-1:2 11 10 4 2 1 2 2 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610612049 1073772795 0 0 159 0;}@font-face
	{font-family:Aharoni;
	mso-font-charset:177;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.MsoNo=
rmal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	mso-themecolor:hyperlink;
	text-decoration:underline;
	text-underline:single;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:#954F72;
	mso-themecolor:followedhyperlink;
	text-decoration:underline;
	text-underline:single;}.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}div.WordSection1
	{page:WordSection1;}</style> </p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><img
            src=3D"cid:part12.04090904.00030509@gmail.com" align=3D"left"
            height=3D"100" hspace=3D"12" width=3D"151"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
            Ghani</span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Researc=
h

            Engineer | Communication Systems Division (CSD)</span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><a
            moz-do-not-send=3D"true" href=3D"mailto:aghani@cttc.es"><span
              style=3D"font-size:9.0pt;font-family:&quot;Arial
              Black&quot;,sans-serif; mso-bidi-font-family:Aharoni">aghan=
i@cttc.es</span></a><span
            style=3D"font-size: 9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family:Aharoni"> | +34
            93 645 29 08 (2143)</span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Centre
            Tecnol=F2gic de Telecomunicacions de Catalunya (CTTC)</span><=
/p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Av.
            Carl Friedrich Gauss, 7 - Edifici B4 - PMT</span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">08860
            - Castelldefels (Barcelona, Spain)</span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><a
            moz-do-not-send=3D"true"><span
              style=3D"font-size:9.0pt;font-family:&quot;Arial
              Black&quot;,sans-serif;
              mso-bidi-font-family:Aharoni;mso-ansi-language:ES"
              lang=3D"ES">www.cttc.cat</span></a><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family:
            Aharoni;mso-ansi-language:ES" lang=3D"ES"></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090908040902030007030202
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part2.03050406.06000705@gmail.com>

/9j/4AAQSkZJRgABAQEAkACQAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAm
JSMgIyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMp
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAAR
CAC7ARoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAA
AgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkK
FhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWG
h4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl
5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREA
AgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYk
NOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE
hYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk
5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiiigAooooAKSlqjqeq2mkW5ub2ZY0HC
jqzH0A6k+woAu1l6r4i0vRsi+vY45O0YOW/If1rJb+3vEg+Uvo1gw4PWeQZ/8d6fXmrum+Dd
H0071tRNPnJlnO9ifXJp2S3AxpviPFMrDSNJ1C9wPvrEdufQ4BqJPGniR0DL4WmwemSR/Su5
VFQYRQo9AMU6nzLsB57N4/16BiJPDNwpHX5HI/MDFQW/xa/ekXemEL6Rvzn8RXpNU7zSrG/j
Md1aQyqf7yCnzR6oWpg6f8Q9CviFkna2kPaVcD866S3uoLyIS200csZ6NGwYH8RXHat8MdMu
wW0+R7OXsPvJ+RrirvQfEPg+4+0R+dHEn/Le3JKn6gf1quWMvhYXZ7YKK8z0L4osu2PW4ty9
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
--------------090908040902030007030202
Content-Type: image/jpeg
Content-Transfer-Encoding: base64
Content-ID: <part12.04090904.00030509@gmail.com>

/9j/4AAQSkZJRgABAQEAkACQAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAm
JSMgIyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMp
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAAR
CAC7ARoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAA
AgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkK
FhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWG
h4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl
5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREA
AgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYk
NOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE
hYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk
5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiiigAooooAKSlqjqeq2mkW5ub2ZY0HC
jqzH0A6k+woAu1l6r4i0vRsi+vY45O0YOW/If1rJb+3vEg+Uvo1gw4PWeQZ/8d6fXmrum+Dd
H0071tRNPnJlnO9ifXJp2S3AxpviPFMrDSNJ1C9wPvrEdufQ4BqJPGniR0DL4WmwemSR/Su5
VFQYRQo9AMU6nzLsB57N4/16BiJPDNwpHX5HI/MDFQW/xa/ekXemEL6Rvzn8RXpNU7zSrG/j
Md1aQyqf7yCnzR6oWpg6f8Q9CviFkna2kPaVcD866S3uoLyIS200csZ6NGwYH8RXHat8MdMu
wW0+R7OXsPvJ+RrirvQfEPg+4+0R+dHEn/Le3JKn6gf1quWMvhYXZ7YKK8z0L4osu2PW4ty9
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
--------------090908040902030007030202--

--------------070803020701070006010809--

--===============4796950661279022263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4796950661279022263==--
