Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 261D38B91AF
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 00:40:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 063E73851A3
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 18:40:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714603250; bh=UbVNs8xo/1ruP7/h6Ys6ByjnaeE8YIC3cfY/ZOYH+Ng=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DW4oJAlOpGOGCxGIsRD2A/slS0yO8cpcxwyNO57uI/HqICzutxUtM1S8TMWVmU/3J
	 hlSJHe/IMeRygRWTJlb57s+Wx3XpWQTaoGh+6ZFPKl5Xt1SoFs1CMUg9clG9s9kAYf
	 siiNXnpsq2hUSzjKr6jlqCPk9JmV5XJ6P968xk6B39QVrVhpKAYbTq3E/Owpl804u+
	 IOOMC1Qx9ZLv3FUPdbNmuGfe0V7KkaIrFUV2ZUR/sIIMUbj74+H45R0weEaHlmE9M4
	 PAh+8142KkS1mmxIp5nCJ40UTbGQjjqv2RyWLUaI5PRGrKIndvVXOjyL5897vWKJ4S
	 am5o4OZnLyZXg==
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	by mm2.emwd.com (Postfix) with ESMTPS id AD551385544
	for <usrp-users@lists.ettus.com>; Wed,  1 May 2024 18:40:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Anhr5EPf";
	dkim-atps=neutral
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6ee1b203f30so2646920a34.0
        for <usrp-users@lists.ettus.com>; Wed, 01 May 2024 15:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714603215; x=1715208015; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZqFXMtP5W0QYOiheTlZWCW2B5KKgutkZB+6qyM8ERZU=;
        b=Anhr5EPfMmrjVZuL4eP/7TK19aeiFKkxgogmWnOGwUSUcwExHkD6G4Gv1jxfvuRkww
         hhaePsLsM8rLVUicXnSBP59qgLeimMhya8cwgKXrldwUU3GLJQJfLS/foFe3igGmTtIh
         v7uCQaoWWY8qqcbnyFnmSKz9BqoibtG4wbKI20CvJVOKNV8uqQnxYe/uorEbtqq1ct1o
         4vUw2+1GbEAEZEOKRQEeIu6Xb4d3J+zAM8uyKT8Xe/uDBxIuRkeJhmEPfJra0pdI5XO4
         vIrLqUOGXoBoFG7h4ODcdtdhyTbOgnc0OCHLZdli7gUFnxOsx7dY7q4kueOuGfnFes8P
         eyTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714603215; x=1715208015;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZqFXMtP5W0QYOiheTlZWCW2B5KKgutkZB+6qyM8ERZU=;
        b=KGwfqeDsvl6dYUF4Kyb5RGDbysFZAWjhyaWaQo46ylxo6JIgAS9RuxngdYIJlksFZT
         D//6ZB7SDIcj1AMj9dTH24MgZ4Cm3GDDaeEcZJh5+w/XPRbkDbQtafOAvBy4m85SWxG/
         Z5MxEq9td4tGhE8cjXu+KKmhbPyYXWxPp54+6IoyBAI8weu4InkrdTUA1IyhbClEkIJK
         r89JSkyQibwbkJdHeGM2hMgmHl1595Nw0WZUGB7vGNvUDSccsct9yADd6hLLXahohl7v
         tzUEoRD/EDNDH15W72vsuByx+YC9PeCNWIVOPGNWnKsHAEoCo+Y8TLuotin2pSFJ7oFA
         lMMg==
X-Forwarded-Encrypted: i=1; AJvYcCWigCJnDoFVpfu4B7KcTwDvolShB5AncMiRgacAYApS6MeDrp7pv2wzfKX9eFf4ZvhUf/vi1kGNC6zClF+/Y2j+f2mTPk6QFQ3OHQ==
X-Gm-Message-State: AOJu0YxQnAa6ESUX0Ecg8gYi/rlbPOELjCKzBq+9DOaPawTBIkFYi1RN
	LiezkFEO9Kx+8jpYL7Z26rwW1NVt2KQa2VMn2Uc7RuFFAANXTSWF
X-Google-Smtp-Source: AGHT+IGisbA/Q6e5NYUrhi7O9snfP5TbE+tJUxl2KVOnveJH9/en3l+1+gPXQyXR9HnjFgps1FMbZQ==
X-Received: by 2002:a9d:7685:0:b0:6ee:102d:bd05 with SMTP id j5-20020a9d7685000000b006ee102dbd05mr4082549otl.19.1714603214730;
        Wed, 01 May 2024 15:40:14 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id du33-20020a05620a47e100b0078d68b23254sm12651697qkb.107.2024.05.01.15.40.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 15:40:13 -0700 (PDT)
Message-ID: <f9a32cb3-21db-4b5a-b36d-8f9aaf3d8104@gmail.com>
Date: Wed, 1 May 2024 18:40:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com>
 <e39abf8d-6490-481e-bbbc-b89593e88d2f@gmail.com>
 <336160565.3149887.1714566315941@mail.yahoo.com>
 <8fb7d502-818c-41e8-a5d7-455fa7778e38@gmail.com>
 <236821295.3178397.1714572681617@mail.yahoo.com>
 <d1a9560c-99c6-423b-ba10-26f08ee1b82e@gmail.com>
 <1458949585.3180965.1714575608497@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1458949585.3180965.1714575608497@mail.yahoo.com>
Message-ID-Hash: KCGEYSLEME3EUBMRT4BWH3H3GQQBPGXD
X-Message-ID-Hash: KCGEYSLEME3EUBMRT4BWH3H3GQQBPGXD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KCGEYSLEME3EUBMRT4BWH3H3GQQBPGXD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1568509237162640496=="

This is a multi-part message in MIME format.
--===============1568509237162640496==
Content-Type: multipart/alternative;
 boundary="------------ysKh47YT0XS60Ti4q1g0DKeP"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ysKh47YT0XS60Ti4q1g0DKeP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/05/2024 11:00, zhou wrote:
>
>
> On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 01/05/2024 10:11, zhou via USRP-users wrote:
> Hi Marcus,
>
> Thanks for your response.
>
> "Are you setting up clocking identically for both USRPs?=C2=A0=C2=A0 Th=
at is=20
> setting the reference clock to "external" and the 1PPS source to=20
> "external" on both devices?=C2=A0=C2=A0 Are you using a single multi_us=
rp object=20
> for all RX channels?"
>
> Yes, I use multi_usrp=20
> multi_usrp::make('addr0=3D192.168.12.2,second_addr0=3D192.168.13.2,addr=
1=3D192.168.14.2,second_addr1=3D192.168.15.2,master_clock_rate=3D184.32e6=
')
>
> "external" set for both ref and pps:
> usrp->set_clock_source("external")
> usrp->set_time_source("external")
> I think this should automatically set both devices.
>
> "What type of daughtercards are in your X310?"
> UBX
>
> Kind regards.
OK, so what happens if you measure the phase-coherence just between=20
channels on the same USRP?

In the startup messages, UHD should put out some commentary about=20
setting the reference clock, and
 =C2=A0 whether it's locked -- do you see a "locked" message?


>
> And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?
>
> It is OctoClock GPSDO, and Internal is used.
>
>
>>
>>
>> On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D. Leech=20
>> <patchvonbraun@gmail.com> <mailto:patchvonbraun@gmail.com> wrote:
>>
>>
>> On 01/05/2024 08:25, zhou via USRP-users wrote:
>> Hi All,
>>
>> I am trying to use 4Rx and 4Tx antennas from two X310 USRPs. I hope=20
>> the received signals have stable phase relationship but they don't=20
>> seem to be. I am wondering why and how to fix it.
>>
>> I measured the phase using the connection as below:
>> Inline image
>> cos(t)+i*sin(t) signal is split into and received on four Rx=20
>> antennas. Two X310s are connected to the same OctoClock for 10MHz Ref=20
>> and PPS. Tx and Rx commands are all timed. The measurement results=20
>> are as below:
>>
>>
>> The Tx signal is continuous during test. I measured phase every=20
>> second for 20 sec. In the 2nd USRP, the phases are stable on both=20
>> antennas while it is not in the 1st. If I change the Tx signal to the=20
>> 1st USRP, then the results swap - phases become stable in the 1st=20
>> USRP and unstable in the 2nd.
>>
>> My first though was that there might be small CFO between USRPs even=20
>> though both are connected to the OctoClock, but CFO should have=20
>> caused linear change. Here, the phase offset is not linear and kind=20
>> of random within 20 second measurement.
>>
>> What can be the reason? Any suggestion will be appreciated.
>>
>> Kind regards,
>> H.
>> Are you setting up clocking identically for both USRPs?=C2=A0=C2=A0 Th=
at is=20
>> setting the reference clock to "external" and the 1PPS source to=20
>> "external" on both devices?=C2=A0=C2=A0 Are you using a single multi_u=
srp=20
>> object for all RX channels?
>>
>> What type of daughtercards are in your X310?
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com=20
>> <mailto:usrp-users@lists.ettus.com>
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
>> <mailto:usrp-users-leave@lists.ettus.com>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-use=
rs@lists.ettus.com>
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mail=
to:usrp-users-leave@lists.ettus.com>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------ysKh47YT0XS60Ti4q1g0DKeP
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/05/2024 11:00, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1458949585.3180965.1714575608497@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp8ec9f7f8yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydpc994c9a6yahoo_quoted_5461441577"
        class=3D"ydpc994c9a6yahoo_quoted">
        <div
style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-=
size:13px;color:#26282a;">
          <div> On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydpc994c9a6yiv4349751442">
              <div>
                <div class=3D"ydpc994c9a6yiv4349751442moz-cite-prefix">On
                  01/05/2024 10:11, zhou via USRP-users wrote:<br
                    clear=3D"none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;"
class=3D"ydpc994c9a6yiv4349751442ydpb1f78624yahoo-style-wrap">
                  <div dir=3D"ltr">Hi Marcus,</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Thanks for your response.</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">
                    <div><span
style=3D"color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Ari=
al, sans-serif;">"Are
                        you setting up clocking identically for both
                        USRPs?=C2=A0=C2=A0 That is setting the reference =
clock to
                        "external" and the 1PPS source to "external" on
                        both devices?=C2=A0=C2=A0 Are you using a single
                        multi_usrp object for all RX channels?"</span></d=
iv>
                    <div><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Yes, I use multi_usrp
                      multi_usrp::make(<span>'addr0=3D192.168.12.2,second=
_addr0=3D192.168.13.2,addr1=3D192.168.14.2,second_addr1=3D192.168.15.2,ma=
ster_clock_rate=3D184.32e6'</span>)<br
style=3D"color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Ari=
al, sans-serif;"
                        clear=3D"none">
                      =C2=A0<br clear=3D"none">
                      <span><span
style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;">"external"
                          set for both ref and pps:</span></span></div>
                    <div dir=3D"ltr"><span>usrp-&gt;set_clock_source("ext=
ernal")</span></div>
                    <div dir=3D"ltr"><span>usrp-&gt;set_time_source(<span=
><span
style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;">"external")</span></span></span><br
                        clear=3D"none">
                      I think this should automatically set both
                      devices.<br clear=3D"none">
                      <br
style=3D"color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Ari=
al, sans-serif;"
                        clear=3D"none">
                      <span
style=3D"color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Ari=
al, sans-serif;">"What
                        type of daughtercards are in your X310?"</span><b=
r
style=3D"color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Ari=
al, sans-serif;"
                        clear=3D"none">
                    </div>
                    UBX</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Kind regards.</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    OK, so what happens if you measure the phase-coherence just between
    channels on the same USRP?<br>
    <br>
    In the startup messages, UHD should put out some commentary about
    setting the reference clock, and<br>
    =C2=A0 whether it's locked -- do you see a "locked" message?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1458949585.3180965.1714575608497@mail.yahoo.com">
      <div id=3D"ydpc994c9a6yahoo_quoted_5461441577"
        class=3D"ydpc994c9a6yahoo_quoted">
        <div
style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-=
size:13px;color:#26282a;">
          <div>
            <div id=3D"ydpc994c9a6yiv4349751442">
              <div>
                <div
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;"
class=3D"ydpc994c9a6yiv4349751442ydpb1f78624yahoo-style-wrap">
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                </div>
                And, to clarify, this is an Octoclock-G, and not a plain
                Octoclock ?
                <div id=3D"ydpc994c9a6yiv4349751442yqtfd85029"
                  class=3D"ydpc994c9a6yiv4349751442yqt3149981368"
                  dir=3D"ltr" data-setdir=3D"false"><br>
                </div>
                <div id=3D"ydpc994c9a6yiv4349751442yqtfd85029"
                  class=3D"ydpc994c9a6yiv4349751442yqt3149981368"
                  dir=3D"ltr" data-setdir=3D"false">It is OctoClock GPSDO=
,
                  and Internal is used.=C2=A0<br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <div
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;"
class=3D"ydpc994c9a6yiv4349751442ydpb1f78624yahoo-style-wrap">
                      <div><br clear=3D"none">
                      </div>
                      <div><br clear=3D"none">
                      </div>
                    </div>
                    <div
id=3D"ydpc994c9a6yiv4349751442ydp5189b7afyahoo_quoted_4632613607"
class=3D"ydpc994c9a6yiv4349751442ydp5189b7afyahoo_quoted">
                      <div
style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-=
size:13px;color:#26282a;">
                        <div> On Wednesday, 1 May 2024 at 14:19:44 BST,
                          Marcus D. Leech <a shape=3D"rect"
                            href=3D"mailto:patchvonbraun@gmail.com"
class=3D"ydpc994c9a6yiv4349751442moz-txt-link-rfc2396E" rel=3D"nofollow"
                            target=3D"_blank" moz-do-not-send=3D"true">&l=
t;patchvonbraun@gmail.com&gt;</a>
                          wrote: </div>
                        <div><br clear=3D"none">
                        </div>
                        <div><br clear=3D"none">
                        </div>
                        <div>
                          <div
id=3D"ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590">
                            <div
id=3D"ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590yqt92825"
class=3D"ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590yqt7336830375">
                              <div>
                                <div
class=3D"ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590moz-cite-prefix"=
>On
                                  01/05/2024 08:25, zhou via USRP-users
                                  wrote:<br clear=3D"none">
                                </div>
                                <blockquote type=3D"cite"> </blockquote>
                              </div>
                              <div>
                                <div
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;"
class=3D"ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590ydpc723dc89yahoo=
-style-wrap">
                                  <div dir=3D"ltr">Hi All,</div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">I am trying to use 4Rx
                                    and 4Tx antennas from two X310
                                    USRPs. I hope the received signals
                                    have stable phase relationship but
                                    they don't seem to be. I am
                                    wondering why and how to fix it.</div=
>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">I measured the phase
                                    using the connection as below:</div>
                                  <div dir=3D"ltr"><img
                                      title=3D"Inline image"
                                      alt=3D"Inline image"
                                      style=3D"max-width:800px;"
class=3D"ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590yahoo-inline-ima=
ge"
data-inlineimagemanipulating=3D"true" moz-do-not-send=3D"true"><br
                                      clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">cos(t)+i*sin(t) signal
                                    is split into and received on four
                                    Rx antennas.=C2=A0<span><span
style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;">Two
                                        X310s are connected to the same
                                        OctoClock for 10MHz Ref and PPS.
                                        Tx and Rx commands are all
                                        timed. The measurement results
                                        are as below:</span></span></div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                    <span></span>The Tx signal is
                                    continuous during test. I measured
                                    phase every second for 20 sec. In
                                    the 2nd USRP, the phases are stable
                                    on both antennas while it is not in
                                    the 1st. If I change the Tx signal
                                    to the 1st USRP, then the results
                                    swap - phases become stable in the
                                    1st USRP and unstable in the 2nd.</di=
v>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">My first though was
                                    that there might be small CFO
                                    between USRPs even though both are
                                    connected to the OctoClock, but CFO
                                    should have caused linear change.
                                    Here, the phase offset is not linear
                                    and kind of random within 20 second
                                    measurement.</div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">What can be the reason=
?
                                    Any suggestion will be appreciated.<b=
r
                                      clear=3D"none">
                                    <span></span><br clear=3D"none">
                                    <span></span>Kind regards,</div>
                                  <div dir=3D"ltr">H.</div>
                                </div>
                                Are you setting up clocking identically
                                for both USRPs?=C2=A0=C2=A0 That is setti=
ng the
                                reference clock to "external" and the
                                1PPS source to "external" on both
                                devices?=C2=A0=C2=A0 Are you using a sing=
le
                                multi_usrp object for all RX channels?<br
                                  clear=3D"none">
                                <br clear=3D"none">
                                What type of daughtercards are in your
                                X310?<br clear=3D"none">
                                <br clear=3D"none">
                                <br clear=3D"none">
                              </div>
                            </div>
                          </div>
                          <div
id=3D"ydpc994c9a6yiv4349751442ydp5189b7afyqt89423"
class=3D"ydpc994c9a6yiv4349751442ydp5189b7afyqt7336830375">______________=
_________________________________<br
                              clear=3D"none">
                            USRP-users mailing list -- <a shape=3D"rect"
                              href=3D"mailto:usrp-users@lists.ettus.com"
class=3D"ydpc994c9a6yiv4349751442moz-txt-link-freetext moz-txt-link-freet=
ext"
                              rel=3D"nofollow" target=3D"_blank"
                              moz-do-not-send=3D"true">usrp-users@lists.e=
ttus.com</a><br
                              clear=3D"none">
                            To unsubscribe send an email to <a
                              shape=3D"rect"
href=3D"mailto:usrp-users-leave@lists.ettus.com"
class=3D"ydpc994c9a6yiv4349751442moz-txt-link-freetext moz-txt-link-freet=
ext"
                              rel=3D"nofollow" target=3D"_blank"
                              moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br
                              clear=3D"none">
                          </div>
                        </div>
                      </div>
                    </div>
                    <br clear=3D"none">
                    <fieldset
class=3D"ydpc994c9a6yiv4349751442moz-mime-attachment-header"></fieldset>
                    <pre class=3D"ydpc994c9a6yiv4349751442moz-quote-pre">=
_______________________________________________
USRP-users mailing list -- <a shape=3D"rect"
                    href=3D"mailto:usrp-users@lists.ettus.com"
class=3D"ydpc994c9a6yiv4349751442moz-txt-link-abbreviated moz-txt-link-fr=
eetext"
                    rel=3D"nofollow" target=3D"_blank"
                    moz-do-not-send=3D"true">usrp-users@lists.ettus.com</=
a>
To unsubscribe send an email to <a shape=3D"rect"
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
class=3D"ydpc994c9a6yiv4349751442moz-txt-link-abbreviated moz-txt-link-fr=
eetext"
                    rel=3D"nofollow" target=3D"_blank"
                    moz-do-not-send=3D"true">usrp-users-leave@lists.ettus=
.com</a>
</pre>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydpc994c9a6yqt3149981368"
              id=3D"ydpc994c9a6yqtfd03165">______________________________=
_________________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollo=
w"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"tru=
e"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------ysKh47YT0XS60Ti4q1g0DKeP--

--===============1568509237162640496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1568509237162640496==--
