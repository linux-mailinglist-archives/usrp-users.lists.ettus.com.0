Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 619F23BEBC7
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 18:08:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8EE93384F20
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 12:08:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HgpFfp1x";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 12552384E30
	for <USRP-users@lists.ettus.com>; Wed,  7 Jul 2021 12:07:34 -0400 (EDT)
Received: by mail-qk1-f180.google.com with SMTP id s4so2435549qkm.13
        for <USRP-users@lists.ettus.com>; Wed, 07 Jul 2021 09:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=H4s/mz7Lg5CSjo0k69bZEwr1bkePr9vGv6UqDiR7hq0=;
        b=HgpFfp1xCpMN+j3QzM58rEuq+RMxBvCvwzrTt+UiI/5EqJ1gb1UI+3rMg9efOICcr6
         XleKOSa8IVEfi5kA93rXB5NSso3+/zU8GexHUP6lfuXzoONvZTa3zUTtydwhPF964Ay3
         K0Ftzww8IpvbKHsYZ5S36uBPwkV+J5hN1y8ndC/tX3qiz7FXV1eObTIkLH6n0WxJ9In1
         qrdxEODIrmWYHvT27Ok5+KX+Wfrm28ngATqOrAqkzivYGJ8/LFE7H2ipTt6wdjKr7uhm
         Ixmf308l4lYq4AOeU0I5+7anYzcgg86yXZz00s8fBbcml3+wfdjmfGN+orml6uHP7Dpb
         NSRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=H4s/mz7Lg5CSjo0k69bZEwr1bkePr9vGv6UqDiR7hq0=;
        b=r+jwwC89o0zs5whm1blF7xbRzcQcihErWZEOXAziLEvsVpuO3btOWxep+T5/cXCUIH
         yP8xQ85fDNKKbXgq0FZUlv60V2i0Ljsxgz2YbRdbDNy3KL91gL/eCLpdNvo1NUQ3lqUa
         P7mDUqSUNP7rQp8ssGI+71kKqVHk87GVaQnqrX3ZlWJpFfVFm1xaNNK36EiyoP5qT4NJ
         eY39TmLHaZbONaf8DB/brpcuI2AugkymGfrIp2JMRSSF4tnOlKFiOSR20+/VmZeMstyO
         mKl+kNdIqfIv1iv5PXtzYplW0G4rtzRFtRCj3zAEOSsqBUPQXlMIr6VBdCzHiXeHdeTj
         aFLw==
X-Gm-Message-State: AOAM533MXQDhJwf/QvhHBe662ES41uwYiu73Q+n+3b3iPxlIDixhsiPu
	EafxzUywU9+/7y/jXrri9co=
X-Google-Smtp-Source: ABdhPJyP2sphGWldo6g5CK3eixPSrgBzmbbdgHNgdOewsSiEX9a519YSX9Wc3V9dsaGqmyhQv31F1w==
X-Received: by 2002:a05:620a:6c4:: with SMTP id 4mr26962741qky.57.1625674054444;
        Wed, 07 Jul 2021 09:07:34 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id 9sm3695050qkp.14.2021.07.07.09.07.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 09:07:33 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 7 Jul 2021 12:07:33 -0400
Message-Id: <29C99ED4-F97F-4617-8BD7-A70ED9BE42C0@gmail.com>
References: <a2299e99-2686-b30c-30aa-f3835c416dbd@cttc.es>
In-Reply-To: <a2299e99-2686-b30c-30aa-f3835c416dbd@cttc.es>
To: Armin Ghani <aghani@cttc.es>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 2IDEVNVBEIORHOKZ6CFWDJNHLIVXVYJQ
X-Message-ID-Hash: 2IDEVNVBEIORHOKZ6CFWDJNHLIVXVYJQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Reference Clock PLL failed to lock to external source, when trying to synch 3 USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2IDEVNVBEIORHOKZ6CFWDJNHLIVXVYJQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8468338257867077468=="


--===============8468338257867077468==
Content-Type: multipart/alternative; boundary=Apple-Mail-F4FF580F-C654-4386-8368-5E16F45FA43F
Content-Transfer-Encoding: 7bit


--Apple-Mail-F4FF580F-C654-4386-8368-5E16F45FA43F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I was thinking it would turn out to be exactly that. I=E2=80=99m glad it was=
 not more serious.=20

Sent from my iPhone

> On Jul 7, 2021, at 11:58 AM, Armin Ghani <aghani@cttc.es> wrote:
>=20
> =EF=BB=BF
> I finally caught the bug, I mistakenly swapped the REF and TRG ports and o=
ne the USRPs couldnt lock to the reference.
>=20
> Thanks for your support.
>=20
>> On 7/7/21 17:22, Marcus D. Leech wrote:
>> On 07/07/2021 11:19 AM, Armin Ghani wrote:
>>> I checked the signals at the cable end which attached to the USRP input r=
eference.
>>>=20
>>> And all the cables are the same part number with same cable length. Is t=
here anything else to check?
>>>=20
>> Check each X310 individually to see if this affects only a single X310 re=
ference input or all of them.
>>=20
>> If all then there's a clock-quality issue.  Like I mentioned the REF OUT c=
apability on the X310 as never, as far as I recall,
>>   fully-developed.
>>=20
>>=20
>>> On 7/7/21 17:16, Marcus D. Leech wrote:
>>>> On 07/07/2021 11:14 AM, Armin Ghani wrote:
>>>>> I've just checked the reference source for all USRPs, both 10MHz and 1=
PPS are perfectly distributed on the octoclock output.
>>>>>=20
>>>>> 10MHz =3D> 3.5V p-p
>>>>>=20
>>>>> 1PPS =3D> 5V p-p
>>>>>=20
>>>> The next thing to check then is the cabling.
>>>>=20
>>>>=20
>>>>> Regards.
>>>>>=20
>>>>> On 7/7/21 16:43, Marcus D. Leech wrote:
>>>>>> On 07/07/2021 10:38 AM, Armin Ghani wrote:
>>>>>>> What do you mean by not implemented? Do you mean it is not assembled=
 on USRP hardware?
>>>>>>>=20
>>>>>> My recollection is that the "feature" was implemented originally, but=
 it was found to be a very poor reference clock, and I thought
>>>>>>   (maybe I'm wrong) that later FPGA releases ended up turning it off.=
 =20
>>>>>>=20
>>>>>> So the next thing to check is that 10MHz and 1PPS are actually making=
 it out of your octoclock (with a scope) when things are
>>>>>>   configured (assuming that the input is correct).
>>>>>>=20
>>>>>>=20
>>>>>>> Regards.
>>>>>>>=20
>>>>>>> On 7/7/21 16:33, Marcus D. Leech wrote:
>>>>>>>> On 07/07/2021 09:36 AM, Armin Ghani wrote:
>>>>>>>>> Dear USRP and GNURadio Community
>>>>>>>>>=20
>>>>>>>>> I have 3 USRP X310 with two SBX-120 daughterboards installed. each=
 of USRPs has two dedicated 10GB Interface with host server.
>>>>>>>>>=20
>>>>>>>>> I'm trying to build a synchronouse system which has 2 receiver and=
 one transmitter and Octoclock CDA-2990 is used to synch both clock and time=
 of all USRPs.
>>>>>>>>>=20
>>>>>>>>> Since the octoclock doesnt provide reference source, I used one of=
 the USRPs clock source external output as octoclock input rerefence and thr=
ee distributed output references (both 10MHz and PPS) are fed to the three U=
SRPs (including the USRP which provide reference source to the octoclock)
>>>>>>>>>=20
>>>>>>>>> Attached you can find the flowgraph in GNURadio to run a very simp=
le system in order to evaluate the results. You can find more details of how=
 UHD source and sink blocks are configured. In summary, for the UHD sink blo=
ck, clock and time references are set to internal and default respectively. A=
nd UHD source block are configured as multi-usrp config with clock and time s=
ources for both motherboards to the external.
>>>>>>>>>=20
>>>>>>>>> GNURadio v3.8.2.0 and UHD v3.15.0.0 are used.
>>>>>>>>>=20
>>>>>>>>> When I run the flowgraph, after UHD initialization for all USRPs, t=
he running system ends up with the folowing output in console:
>>>>>>>>>=20
>>>>>>>>> Executing: /usr/bin/python3 -u /home/.../Documents/gnuradio-tests/=
octoclock_test.py
>>>>>>>>>=20
>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.=
0.HEAD-0-gaea0e2de
>>>>>>>>> [INFO] [X300] X300 initialization sequence...
>>>>>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>>>>>> [WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a=
 send frame size of at least 4000 for best
>>>>>>>>> performance, but your configuration will only allow 1472.This may n=
egatively impact your maximum achievable sample rate.
>>>>>>>>> Check the MTU on the interface and/or the send_frame_size argument=
.
>>>>>>>>> [WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a=
 receive frame size of at least 8000 for best
>>>>>>>>> performance, but your configuration will only allow 1472.This may n=
egatively impact your maximum achievable sample rate.
>>>>>>>>> Check the MTU on the interface and/or the recv_frame_size argument=
.
>>>>>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>>>>>> [WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a=
 send frame size of at least 4000 for best
>>>>>>>>> performance, but your configuration will only allow 1472.This may n=
egatively impact your maximum achievable sample rate.
>>>>>>>>> Check the MTU on the interface and/or the send_frame_size argument=
.
>>>>>>>>> [WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a=
 receive frame size of at least 8000 for best
>>>>>>>>> performance, but your configuration will only allow 1472.This may n=
egatively impact your maximum achievable sample rate.
>>>>>>>>> Check the MTU on the interface and/or the recv_frame_size argument=
.
>>>>>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>>>>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00=
000000000)
>>>>>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
>>>>>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318 MB/s)
>>>>>>>>> [INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00=
000000000)https://www.radio-astronomy.org/
>>>>>>>>> [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)
>>>>>>>>> [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)
>>>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10000=
0000001)
>>>>>>>>> [INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD10000=
0000001)
>>>>>>>>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD10000=
0000001)
>>>>>>>>> [INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD10000=
0000001)
>>>>>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC00000000=
00000)
>>>>>>>>> [INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC00000000=
00000)
>>>>>>>>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC00000000=
00000)
>>>>>>>>> [INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC00000000=
00000)
>>>>>>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C00000000=
00000)
>>>>>>>>> [INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C00000000=
00000)
>>>>>>>>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C00000000=
00000)
>>>>>>>>> [INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C00000000=
00000)
>>>>>>>>> Traceback (most recent call last):
>>>>>>>>>   File "/home/.../Documents/gnuradio-tests/octoclock_test.py", lin=
e 334, in <module>
>>>>>>>>>     main()
>>>>>>>>>   File "/home/.../Documents/gnuradio-tests/octoclock_test.py", lin=
e 310, in main
>>>>>>>>>     tb =3D top_block_cls()
>>>>>>>>>   File "/home/.../Documents/gnuradio-tests/octoclock_test.py", lin=
e 91, in __init__
>>>>>>>>>     self.uhd_usrp_source_0.set_clock_source('external', 0)
>>>>>>>>>   File "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_swig=
.py", line 3793, in set_clock_source
>>>>>>>>>     return _uhd_swig.usrp_source_sptr_set_clock_source(self, sourc=
e, mboard)
>>>>>>>>> RuntimeError: RuntimeError: Reference Clock PLL failed to lock to e=
xternal source.
>>>>>>>>>=20
>>>>>>>>>=20
>>>>>>>>>=20
>>>>>>>>> --=20
>>>>>>>>> <egiigndgpbommcef.png>
>>>>>>>>> Armin Ghani
>>>>>>>>> Research Engineer | Communication Systems Division (CSD)
>>>>>>>>> aghani@cttc.es | +34 93 645 29 08 (2143)
>>>>>>>>> Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)
>>>>>>>>> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
>>>>>>>>> 08860 - Castelldefels (Barcelona, Spain)
>>>>>>>>> www.cttc.cat
>>>>>>>>>=20
>>>>>>>>>=20
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>> Check to make sure that the REF OUT on the X310 you're using as the=
 reference is actually producing a 10MHz clock.  My recollection
>>>>>>>>   is that the REF OUT on the X310 was never actually implemented.
>>>>>>>>=20
>>>>>>>>=20
>>>>>>>>=20
>>>>>>>>=20
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>> --=20
>>>>>>> <egiigndgpbommcef.png>
>>>>>>> Armin Ghani
>>>>>>> Research Engineer | Communication Systems Division (CSD)
>>>>>>> aghani@cttc.es | +34 93 645 29 08 (2143)
>>>>>>> Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)
>>>>>>> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
>>>>>>> 08860 - Castelldefels (Barcelona, Spain)
>>>>>>> www.cttc.cat
>>>>>>=20
>>>>> --=20
>>>>> <egiigndgpbommcef.png>
>>>>> Armin Ghani
>>>>> Research Engineer | Communication Systems Division (CSD)
>>>>> aghani@cttc.es | +34 93 645 29 08 (2143)
>>>>> Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)
>>>>> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
>>>>> 08860 - Castelldefels (Barcelona, Spain)
>>>>> www.cttc.cat
>>>>=20
>>> --=20
>>> <egiigndgpbommcef.png>
>>> Armin Ghani
>>> Research Engineer | Communication Systems Division (CSD)
>>> aghani@cttc.es | +34 93 645 29 08 (2143)
>>> Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)
>>> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
>>> 08860 - Castelldefels (Barcelona, Spain)
>>> www.cttc.cat
>>=20
> --=20
> <ibphginnmgjhhkcd.jpeg>
> Armin Ghani
> Research Engineer | Communication Systems Division (CSD)
> aghani@cttc.es | +34 93 645 29 08 (2143)
> Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)
> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
> 08860 - Castelldefels (Barcelona, Spain)
> www.cttc.cat

--Apple-Mail-F4FF580F-C654-4386-8368-5E16F45FA43F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I was thinking it would turn out to be exac=
tly that. I=E2=80=99m glad it was not more serious.&nbsp;<br><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite=
">On Jul 7, 2021, at 11:58 AM, Armin Ghani &lt;aghani@cttc.es&gt; wrote:<br>=
<br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
 =20
 =20
    <p>I finally caught the bug, I mistakenly swapped the REF and TRG
      ports and one the USRPs couldnt lock to the reference.</p>
    <p>Thanks for your support.<br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/7/21 17:22, Marcus D. Leech wrote:<b=
r>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:60E5C6CF.6020301@gmail.com">
      <meta content=3D"text/html; charset=3Dwindows-1252" http-equiv=3D"Cont=
ent-Type">
      <div class=3D"moz-cite-prefix">On 07/07/2021 11:19 AM, Armin Ghani
        wrote:<br>
      </div>
      <blockquote cite=3D"mid:9d3b17e9-5cfe-62d5-8f81-9946134d6de9@cttc.es" t=
ype=3D"cite">
        <meta http-equiv=3D"Content-Type" content=3D"text/html;
          charset=3Dwindows-1252">
        <p>I checked the signals at the cable end which attached to the
          USRP input reference.</p>
        <p>And all the cables are the same part number with same cable
          length. Is there anything else to check?</p>
      </blockquote>
      Check each X310 individually to see if this affects only a single
      X310 reference input or all of them.<br>
      <br>
      If all then there's a clock-quality issue.&nbsp; Like I mentioned the
      REF OUT capability on the X310 as never, as far as I recall,<br>
      &nbsp; fully-developed.<br>
      <br>
      <br>
      <blockquote cite=3D"mid:9d3b17e9-5cfe-62d5-8f81-9946134d6de9@cttc.es" t=
ype=3D"cite">
        <div class=3D"moz-cite-prefix">On 7/7/21 17:16, Marcus D. Leech
          wrote:<br>
        </div>
        <blockquote type=3D"cite" cite=3D"mid:60E5C54B.9070501@gmail.com">
          <meta content=3D"text/html; charset=3Dwindows-1252" http-equiv=3D"=
Content-Type">
          <div class=3D"moz-cite-prefix">On 07/07/2021 11:14 AM, Armin
            Ghani wrote:<br>
          </div>
          <blockquote cite=3D"mid:388790a8-f51f-c045-0a7e-49fb88c18465@cttc.=
es" type=3D"cite">
            <meta http-equiv=3D"Content-Type" content=3D"text/html;
              charset=3Dwindows-1252">
            <p>I've just checked the reference source for all USRPs,
              both 10MHz and 1PPS are perfectly distributed on the
              octoclock output.</p>
            <p>10MHz =3D&gt; 3.5V p-p</p>
            <p>1PPS =3D&gt; 5V p-p</p>
          </blockquote>
          The next thing to check then is the cabling.<br>
          <br>
          <br>
          <blockquote cite=3D"mid:388790a8-f51f-c045-0a7e-49fb88c18465@cttc.=
es" type=3D"cite">
            <p>Regards.<br>
            </p>
            <div class=3D"moz-cite-prefix">On 7/7/21 16:43, Marcus D.
              Leech wrote:<br>
            </div>
            <blockquote type=3D"cite" cite=3D"mid:60E5BD7E.4050700@gmail.com=
">
              <meta content=3D"text/html; charset=3Dwindows-1252" http-equiv=
=3D"Content-Type">
              <div class=3D"moz-cite-prefix">On 07/07/2021 10:38 AM, Armin
                Ghani wrote:<br>
              </div>
              <blockquote cite=3D"mid:f135fa58-cfed-d47d-f174-56bbf4e0a693@c=
ttc.es" type=3D"cite">
                <meta http-equiv=3D"Content-Type" content=3D"text/html;
                  charset=3Dwindows-1252">
                <p>What do you mean by not implemented? Do you mean it
                  is not assembled on USRP hardware?</p>
              </blockquote>
              My recollection is that the "feature" was implemented
              originally, but it was found to be a very poor reference
              clock, and I thought<br>
              &nbsp; (maybe I'm wrong) that later FPGA releases ended up
              turning it off.&nbsp; <br>
              <br>
              So the next thing to check is that 10MHz and 1PPS are
              actually making it out of your octoclock (with a scope)
              when things are<br>
              &nbsp; configured (assuming that the input is correct).<br>
              <br>
              <br>
              <blockquote cite=3D"mid:f135fa58-cfed-d47d-f174-56bbf4e0a693@c=
ttc.es" type=3D"cite">
                <p>Regards.<br>
                </p>
                <div class=3D"moz-cite-prefix">On 7/7/21 16:33, Marcus D.
                  Leech wrote:<br>
                </div>
                <blockquote type=3D"cite" cite=3D"mid:60E5BB23.7000305@gmail=
.com">
                  <meta content=3D"text/html; charset=3Dwindows-1252" http-e=
quiv=3D"Content-Type">
                  <div class=3D"moz-cite-prefix">On 07/07/2021 09:36 AM,
                    Armin Ghani wrote:<br>
                  </div>
                  <blockquote cite=3D"mid:2547566f-fdc2-8dfc-6ef0-198de1a1f5=
78@cttc.es" type=3D"cite">
                    <meta http-equiv=3D"content-type" content=3D"text/html;
                      charset=3Dwindows-1252">
                    <p>Dear USRP and GNURadio Community</p>
                    <p>I have 3 USRP X310 with two SBX-120
                      daughterboards installed. each of USRPs has two
                      dedicated 10GB Interface with host server.</p>
                    <p>I'm trying to build a synchronouse system which
                      has 2 receiver and one transmitter and Octoclock
                      CDA-2990 is used to synch both clock and time of
                      all USRPs.</p>
                    <p>Since the octoclock doesnt provide reference
                      source, I used one of the USRPs clock source
                      external output as octoclock input rerefence and
                      three distributed output references (both 10MHz
                      and PPS) are fed to the three USRPs (including the
                      USRP which provide reference source to the
                      octoclock)</p>
                    <p>Attached you can find the flowgraph in GNURadio
                      to run a very simple system in order to evaluate
                      the results. You can find more details of how UHD
                      source and sink blocks are configured. In summary,
                      for the UHD sink block, clock and time references
                      are set to internal and default respectively. And
                      UHD source block are configured as multi-usrp
                      config with clock and time sources for both
                      motherboards to the external.<br>
                    </p>
                    <p>GNURadio v3.8.2.0 and UHD v3.15.0.0 are used.</p>
                    <p>When I run the flowgraph, after UHD
                      initialization for all USRPs, the running system
                      ends up with the folowing output in console:</p>
                    Executing: /usr/bin/python3 -u
                    /home/.../Documents/gnuradio-tests/octoclock_test.py<br>=

                    <br>
                    [INFO] [UHD] linux; GNU C++ version 9.3.0;
                    Boost_107100; UHD_3.15.0.HEAD-0-gaea0e2de<br>
                    [INFO] [X300] X300 initialization sequence...<br>
                    [INFO] [X300] Maximum frame size: 1472 bytes.<br>
                    [WARNING] [X300] For the 192.168.30.2 connection,
                    UHD recommends a send frame size of at least 4000
                    for best<br>
                    performance, but your configuration will only allow
                    1472.This may negatively impact your maximum
                    achievable sample rate.<br>
                    Check the MTU on the interface and/or the
                    send_frame_size argument.<br>
                    [WARNING] [X300] For the 192.168.30.2 connection,
                    UHD recommends a receive frame size of at least 8000
                    for best<br>
                    performance, but your configuration will only allow
                    1472.This may negatively impact your maximum
                    achievable sample rate.<br>
                    Check the MTU on the interface and/or the
                    recv_frame_size argument.<br>
                    [INFO] [X300] Maximum frame size: 1472 bytes.<br>
                    [WARNING] [X300] For the 192.168.50.2 connection,
                    UHD recommends a send frame size of at least 4000
                    for best<br>
                    performance, but your configuration will only allow
                    1472.This may negatively impact your maximum
                    achievable sample rate.<br>
                    Check the MTU on the interface and/or the
                    send_frame_size argument.<br>
                    [WARNING] [X300] For the 192.168.50.2 connection,
                    UHD recommends a receive frame size of at least 8000
                    for best<br>
                    performance, but your configuration will only allow
                    1472.This may negatively impact your maximum
                    achievable sample rate.<br>
                    Check the MTU on the interface and/or the
                    recv_frame_size argument.<br>
                    [INFO] [X300] Radio 1x clock: 200 MHz<br>
                    [INFO] [X300] Radio 1x clock: 200 MHz<br>
                    [INFO] [0/DmaFIFO_0] Initializing block control (NOC
                    ID: 0xF1F0D00000000000)<br>
                    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311
                    MB/s)<br>
                    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318
                    MB/s)<br>
                    [INFO] [1/DmaFIFO_0] Initializing block control (NOC
                    ID: 0xF1F0D00000000000)<a class=3D"moz-txt-link-freetext=
" href=3D"https://www.radio-astronomy.org/" moz-do-not-send=3D"true">https:/=
/www.radio-astronomy.org/</a><br>
                    [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299
                    MB/s)<br>
                    [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299
                    MB/s)<br>
                    [INFO] [0/Radio_0] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
                    [INFO] [1/Radio_0] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
                    [INFO] [0/Radio_1] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
                    [INFO] [1/Radio_1] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
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
                    &nbsp; File
                    "/home/.../Documents/gnuradio-tests/octoclock_test.py",
                    line 334, in &lt;module&gt;<br>
                    &nbsp;&nbsp;&nbsp; main()<br>
                    &nbsp; File
                    "/home/.../Documents/gnuradio-tests/octoclock_test.py",
                    line 310, in main<br>
                    &nbsp;&nbsp;&nbsp; tb =3D top_block_cls()<br>
                    &nbsp; File
                    "/home/.../Documents/gnuradio-tests/octoclock_test.py",
                    line 91, in __init__<br>
                    &nbsp;&nbsp;&nbsp;
                    self.uhd_usrp_source_0.set_clock_source('external',
                    0)<br>
                    &nbsp; File
                    "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_s=
wig.py",
                    line 3793, in set_clock_source<br>
                    &nbsp;&nbsp;&nbsp; return
                    _uhd_swig.usrp_source_sptr_set_clock_source(self,
                    source, mboard)<br>
                    <p> RuntimeError: RuntimeError: Reference Clock PLL
                      failed to lock to external source.</p>
                    <p><br>
                    </p>
                    <div class=3D"moz-signature">-- <br>
                      <meta http-equiv=3D"content-type" content=3D"text/html=
; charset=3Dwindows-1252">
                      <title></title>
                      <p> </p>
                      <p>
                        <meta name=3D"ProgId" content=3D"Word.Document">
                        <meta name=3D"Generator" content=3D"Microsoft Word
                          15">
                        <meta name=3D"Originator" content=3D"Microsoft Word
                          15">
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
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.=
MsoNormal
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
                      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line=
-height:normal"><div>&lt;egiigndgpbommcef.png&gt;</div><span style=3D"font-s=
ize:9.0pt;font-family:&quot;Arial
                          Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
                          Ghani</span></p>
                      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line=
-height:normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                          Black&quot;,sans-serif;mso-bidi-font-family:
                          Aharoni">Research Engineer | Communication
                          Systems Division (CSD)</span></p>
                      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line=
-height:normal"><a moz-do-not-send=3D"true" href=3D"mailto:aghani@cttc.es"><=
span style=3D"font-size:9.0pt;font-family:&quot;Arial
                            Black&quot;,sans-serif;
                            mso-bidi-font-family:Aharoni">aghani@cttc.es</sp=
an></a><span style=3D"font-size:
                          9.0pt;font-family:&quot;Arial
Black&quot;,sans-serif;mso-bidi-font-family:Aharoni"> | +34 93 645 29 08
                          (2143)</span></p>
                      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line=
-height:normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                          Black&quot;,sans-serif;mso-bidi-font-family:
                          Aharoni">Centre Tecnol=C3=B2gic de
                          Telecomunicacions de Catalunya (CTTC)</span></p>
                      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line=
-height:normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                          Black&quot;,sans-serif;mso-bidi-font-family:
                          Aharoni">Av. Carl Friedrich Gauss, 7 - Edifici
                          B4 - PMT</span></p>
                      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line=
-height:normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                          Black&quot;,sans-serif;mso-bidi-font-family:
                          Aharoni">08860 - Castelldefels (Barcelona,
                          Spain)</span></p>
                      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line=
-height:normal"><a moz-do-not-send=3D"true"><span style=3D"font-size:9.0pt;f=
ont-family:&quot;Arial
                            Black&quot;,sans-serif;
                            mso-bidi-font-family:Aharoni;mso-ansi-language:E=
S" lang=3D"ES">www.cttc.cat</span></a><span style=3D"font-size:9.0pt;font-fa=
mily:&quot;Arial
                          Black&quot;,sans-serif;mso-bidi-font-family:
                          Aharoni;mso-ansi-language:ES" lang=3D"ES"></span><=
/p>
                    </div>
                    <br>
                    <fieldset class=3D"mimeAttachmentHeader"></fieldset>
                    <br>
                    <pre wrap=3D"">_________________________________________=
______
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"mai=
lto:usrp-users@lists.ettus.com" moz-do-not-send=3D"true">usrp-users@lists.et=
tus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users-leave@lists.ettus.com" moz-do-not-send=3D"true">usrp-user=
s-leave@lists.ettus.com</a>
</pre>
                  </blockquote>
                  Check to make sure that the REF OUT on the X310 you're
                  using as the reference is actually producing a 10MHz
                  clock.&nbsp; My recollection<br>
                  &nbsp; is that the REF OUT on the X310 was never actually
                  implemented.<br>
                  <br>
                  <br>
                  <br>
                  <fieldset class=3D"mimeAttachmentHeader"></fieldset>
                  <pre class=3D"moz-quote-pre" wrap=3D"">___________________=
____________________________
USRP-users mailing list -- <a moz-do-not-send=3D"true" class=3D"moz-txt-link=
-abbreviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>
To unsubscribe send an email to <a moz-do-not-send=3D"true" class=3D"moz-txt=
-link-abbreviated" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-use=
rs-leave@lists.ettus.com</a>
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
                    <meta name=3D"Originator" content=3D"Microsoft Word 15">=

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
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.=
MsoNormal
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
                  <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-hei=
ght:normal"><div>&lt;egiigndgpbommcef.png&gt;</div><span style=3D"font-size:=
9.0pt;font-family:&quot;Arial
                      Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
                      Ghani</span></p>
                  <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-hei=
ght:normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                      Black&quot;,sans-serif;mso-bidi-font-family:
                      Aharoni">Research Engineer | Communication Systems
                      Division (CSD)</span></p>
                  <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-hei=
ght:normal"><a moz-do-not-send=3D"true" href=3D"mailto:aghani@cttc.es"><span=
 style=3D"font-size:9.0pt;font-family:&quot;Arial
                        Black&quot;,sans-serif;
                        mso-bidi-font-family:Aharoni">aghani@cttc.es</span><=
/a><span style=3D"font-size: 9.0pt;font-family:&quot;Arial
                      Black&quot;,sans-serif;mso-bidi-font-family:Aharoni">
                      | +34 93 645 29 08 (2143)</span></p>
                  <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-hei=
ght:normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                      Black&quot;,sans-serif;mso-bidi-font-family:
                      Aharoni">Centre Tecnol=C3=B2gic de Telecomunicacions d=
e
                      Catalunya (CTTC)</span></p>
                  <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-hei=
ght:normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                      Black&quot;,sans-serif;mso-bidi-font-family:
                      Aharoni">Av. Carl Friedrich Gauss, 7 - Edifici B4
                      - PMT</span></p>
                  <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-hei=
ght:normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                      Black&quot;,sans-serif;mso-bidi-font-family:
                      Aharoni">08860 - Castelldefels (Barcelona, Spain)</spa=
n></p>
                  <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-hei=
ght:normal"><a moz-do-not-send=3D"true"><span style=3D"font-size:9.0pt;font-=
family:&quot;Arial
                        Black&quot;,sans-serif;
                        mso-bidi-font-family:Aharoni;mso-ansi-language:ES" l=
ang=3D"ES">www.cttc.cat</span></a><span style=3D"font-size:9.0pt;font-family=
:&quot;Arial
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
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.=
MsoNormal
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
              <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:=
normal"><div>&lt;egiigndgpbommcef.png&gt;</div><span style=3D"font-size:9.0p=
t;font-family:&quot;Arial
                  Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
                  Ghani</span></p>
              <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:=
normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                  Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Rese=
arch
                  Engineer | Communication Systems Division (CSD)</span></p>=

              <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:=
normal"><a moz-do-not-send=3D"true" href=3D"mailto:aghani@cttc.es"><span sty=
le=3D"font-size:9.0pt;font-family:&quot;Arial
                    Black&quot;,sans-serif;
                    mso-bidi-font-family:Aharoni">aghani@cttc.es</span></a><=
span style=3D"font-size: 9.0pt;font-family:&quot;Arial
                  Black&quot;,sans-serif;mso-bidi-font-family:Aharoni">
                  | +34 93 645 29 08 (2143)</span></p>
              <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:=
normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                  Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Cent=
re
                  Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)</=
span></p>
              <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:=
normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                  Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Av.
                  Carl Friedrich Gauss, 7 - Edifici B4 - PMT</span></p>
              <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:=
normal"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
                  Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">0886=
0
                  - Castelldefels (Barcelona, Spain)</span></p>
              <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:=
normal"><a moz-do-not-send=3D"true"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Arial
                    Black&quot;,sans-serif;
                    mso-bidi-font-family:Aharoni;mso-ansi-language:ES" lang=3D=
"ES">www.cttc.cat</span></a><span style=3D"font-size:9.0pt;font-family:&quot=
;Arial
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
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.=
MsoNormal
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
          <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norm=
al"><div>&lt;egiigndgpbommcef.png&gt;</div><span style=3D"font-size:9.0pt;fo=
nt-family:&quot;Arial
              Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
              Ghani</span></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norm=
al"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
              Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Research=

              Engineer | Communication Systems Division (CSD)</span></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norm=
al"><a moz-do-not-send=3D"true" href=3D"mailto:aghani@cttc.es"><span style=3D=
"font-size:9.0pt;font-family:&quot;Arial
                Black&quot;,sans-serif; mso-bidi-font-family:Aharoni">aghani=
@cttc.es</span></a><span style=3D"font-size: 9.0pt;font-family:&quot;Arial
              Black&quot;,sans-serif;mso-bidi-font-family:Aharoni"> |
              +34 93 645 29 08 (2143)</span></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norm=
al"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
              Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Centre
              Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)</span=
></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norm=
al"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
              Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Av.
              Carl Friedrich Gauss, 7 - Edifici B4 - PMT</span></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norm=
al"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
              Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">08860
              - Castelldefels (Barcelona, Spain)</span></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norm=
al"><a moz-do-not-send=3D"true"><span style=3D"font-size:9.0pt;font-family:&=
quot;Arial
                Black&quot;,sans-serif;
                mso-bidi-font-family:Aharoni;mso-ansi-language:ES" lang=3D"E=
S">www.cttc.cat</span></a><span style=3D"font-size:9.0pt;font-family:&quot;A=
rial
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
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.=
MsoNormal
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
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal">=
<div>&lt;ibphginnmgjhhkcd.jpeg&gt;</div><span style=3D"font-size:9.0pt;font-=
family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
          Ghani</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal">=
<span style=3D"font-size:9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Research
          Engineer | Communication Systems Division (CSD)</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal">=
<a href=3D"mailto:aghani@cttc.es"><span style=3D"font-size:9.0pt;font-family=
:&quot;Arial
            Black&quot;,sans-serif; mso-bidi-font-family:Aharoni">aghani@ctt=
c.es</span></a><span style=3D"font-size: 9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family:Aharoni"> | +34 93
          645 29 08 (2143)</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal">=
<span style=3D"font-size:9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Centre
          Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)</span></p=
>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal">=
<span style=3D"font-size:9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Av. Carl
          Friedrich Gauss, 7 - Edifici B4 - PMT</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal">=
<span style=3D"font-size:9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">08860 -
          Castelldefels (Barcelona, Spain)</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal">=
<a><span style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;
            mso-bidi-font-family:Aharoni;mso-ansi-language:ES" lang=3D"ES">w=
ww.cttc.cat</span></a><span style=3D"font-size:9.0pt;font-family:&quot;Arial=

          Black&quot;,sans-serif;mso-bidi-font-family:
          Aharoni;mso-ansi-language:ES" lang=3D"ES"></span></p>
    </div>
 =20

</div></blockquote></body></html>=

--Apple-Mail-F4FF580F-C654-4386-8368-5E16F45FA43F--

--===============8468338257867077468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8468338257867077468==--
