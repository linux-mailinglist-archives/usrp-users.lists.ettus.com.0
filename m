Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D6472EBE3
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 21:25:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD6EA384B05
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 15:25:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686684329; bh=/ut+M8o7j30FRpc2GLuCJni7cO33g1Hz17bm/ALhy4M=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eklJDkuQN6lK/ZzEVslSSHcbTxS4EqoRskGXfRmAWQEKlutPn4iJsHoAXTFH4PXBv
	 LCkdcAcKI+E+5dQQOoJI1vnvdwxuVXuM+WV1oC5/eL15qEgH+hQ1K1Cf4XooyOwzMy
	 jZ6oveOh7tjHIZHVW3UKNZ5EOGMVHuuUbLJYCF17gtgotK6/Q4e3qjB9qZ4eG8An5o
	 3MqPdbkm7FmvKM4CFsh0DkUVDMAoScOS+JyX9JoPKorb+/GrrbWQbixF1ecZcsM6L1
	 5Uu9Sps7aDFYnE5KPUFxw4Hbo5Sf6R7uLxyci9wRrIDwc7kdcdwxX/Yw0B+/SXslV4
	 uqCfa4l/XkDrg==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id F19B8384ABB
	for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 15:24:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VfcGdAII";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-75d4094f9baso120725885a.1
        for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 12:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686684272; x=1689276272;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3gwTvbcX+Z2utV3Qnc32hw24SdQtGiHqHJAai8QOW3g=;
        b=VfcGdAIIom+cQsEuE4Byq5zorZkFBewxKOug7M97CsgK1StjzyrXM8HePAiJpJBfrX
         vG/BTOAIaZgurIUSPbAJ8qca8Cg9ZzDZPwu2WpP6fc5eO5Wffaufa7MMi61deGbv5nn/
         sJs6gyNTcxx8cP3ibbXfxeXIq8caMuvjy14YuGC7gLC/mVZ3uXgmunUoElsKabJx50St
         DJLvBk7cLRp0XsGQZBP4u9TWZQvSpeKrMPZSBBZy5x27PjMxD85z80mVLNH0IUBzec6M
         TbFlo88bxxdrqFxmy7cul5Cl4Ayb0SXn+rm1F11Rc86eAuRMhEZrAyzUflONGDi6nrRa
         s01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686684272; x=1689276272;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3gwTvbcX+Z2utV3Qnc32hw24SdQtGiHqHJAai8QOW3g=;
        b=GPpfdYFTCZkDpRDvYH9uRcJfylEg98DCHSrXV+3pNLf5VUfPTrhKccUKehKwQ5MGGe
         JGV0egEUsAdEigyOjDbrUqIL7KzKjjxD56KSoUW21FaxwCsZhNk5LvpL7ekVeswIx3jY
         dLVn7pYaAgr5wcli6pzO9eUbiNVzbvT08pzhtFb40/3yn7F3EtEUbHZ2kPQ1qmnVc1ud
         V1QD9/GrQBVOuFuj5ybZd5mMXJFjE7jC2ZC58kyI6Ae1lxCGfA+P2TxbRSd1LJJvsgrF
         fzfENGhAjSz9q2R3bvF7KqRG8aRm+0iUl97FvJiRmIljLc3tbDjhUkzUpZ6s4E/V2Q0n
         T/tw==
X-Gm-Message-State: AC+VfDwVJEux+5RaiGkUl8EByEvlVyN1trk63BxwI7oIdDy3G3KLD3gv
	DNLMkrSg8ZvpIwMFSaMG7hXcQfevcEhQhA==
X-Google-Smtp-Source: ACHHUZ5VbtzCYLWu/CBnX32aRtYVYkU/BbxuB0P9WPRvt1p3AKHRTWYILptf4iC/KUDUmBS8e+AdxA==
X-Received: by 2002:a05:620a:2a16:b0:75e:b9e1:876d with SMTP id o22-20020a05620a2a1600b0075eb9e1876dmr16340731qkp.75.1686684272287;
        Tue, 13 Jun 2023 12:24:32 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id k4-20020a05620a142400b0075ceca53e84sm3821189qkj.15.2023.06.13.12.24.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 12:24:32 -0700 (PDT)
Message-ID: <64bd7132-71d1-a93d-a252-ef43b790fc9d@gmail.com>
Date: Tue, 13 Jun 2023 15:24:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>, Michael Toussaint <mtoussaint@chaosinc.com>
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
 <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com>
 <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
 <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com>
 <CAB__hTSa6Gx54yshpFFGEdzmLoO48YTsAR8M0fTdkjqRkM2D3Q@mail.gmail.com>
 <CAMhTvwvk-15EvqX3T8ze-+FuLOU4jYxNtkK_K7AYa7OJkAwOAg@mail.gmail.com>
 <CAB__hTRW5aPaRYhuC6sZm3G1hJkpip-qPghwKc02XKwghxzb9g@mail.gmail.com>
 <CAMhTvwv0n=cYmx=CaW4qyVsnSkpaVmF39Ee2E4rL8Ay0Yb-h8g@mail.gmail.com>
 <CAB__hTRC45inNTcHWFo6dvqOTDersMMyi1z=yz-zSY_=s-iCUg@mail.gmail.com>
 <CAMhTvwtOr4=S68thYh_z9knGtRu1yn0gQdMkzfPs8XBCA03s+w@mail.gmail.com>
 <6149614c-e040-74d7-c794-d718094de6bc@gmail.com>
 <CAMhTvwu6hYdwEtsW3+z4zJgrDe2mex6YFZHBBjJFRUWOnJ8LZg@mail.gmail.com>
 <CAB__hTRJfxrj_SpN4Hn66Q=tE+-cpmfRxCSrxEiO+zD=g3C76A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTRJfxrj_SpN4Hn66Q=tE+-cpmfRxCSrxEiO+zD=g3C76A@mail.gmail.com>
Message-ID-Hash: QN2MYBRB6VVF2ZGJVVJLAJVXH4YNEANM
X-Message-ID-Hash: QN2MYBRB6VVF2ZGJVVJLAJVXH4YNEANM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QN2MYBRB6VVF2ZGJVVJLAJVXH4YNEANM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3261728439052837529=="

This is a multi-part message in MIME format.
--===============3261728439052837529==
Content-Type: multipart/alternative;
 boundary="------------0r08dsV5COBzthv7k7lsvASW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0r08dsV5COBzthv7k7lsvASW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/06/2023 15:17, Rob Kossler wrote:
> Hi Michael,
>
>
>         LZ631368043US
>
> One calibration procedure could be that you simply add a digital phase=20
> offset to your 2nd Tx channel until your oscilloscope traces line up=20
> to your satisfaction.=C2=A0 It would be nice if the default FPGA image=20
> included a simple Rx & Tx complex scalar for this exact purpose=20
> (inside the DDC & DUC), but that does not exist (yet).=C2=A0 If you are=
=20
> using gnuradio, it should be easy to insert a complex scalar=20
> multiplication that would allow you to adjust the samples streaming to=20
> just one channel.=C2=A0 In any case, if the signal on the oscilloscope=20
> lines up well over your desired bandwidth, then you can declare=20
> "mission accomplished".=C2=A0 On the other hand, if your signal lines u=
p at=20
> one end of your frequency bandwidth but then diverges at the other=20
> end, it likely means a delay mismatch that you could potentially=20
> "calibrate" by adding an appropriate length of cable to one path (in=20
> cable, 1 ns delay is about 8 inches).
> Rob
>
I'll note that in any actual, deployed, multi-antenna phase-coherent=20
system, calibrating the *radio* phase is only part of the
 =C2=A0 battle.=C2=A0 If there's any significant (where "significant" is =
in terms=20
of wavelength) cable-length between the radio and the antennas,
 =C2=A0 there will be that part to compensate, and the longer the cable, =
the=20
more it is subject to differential heating, and thus
 =C2=A0 differential phase delays.

[Old man anecdote time]

Way back in the 1970s, a radio astronomy observatory in British Columbia=20
was setting up their synthesis array for observations
 =C2=A0 at 327MHz and 1420MHz.=C2=A0=C2=A0 They had to come up with an ex=
otic system=20
for measuring the phase delays of the cables in
 =C2=A0 "near real time" to apply compensating phase offsets where the=20
downconversions happened at the antennas (7 of them).
 =C2=A0 One cable in full Sun, the other in a shadow (at least for part o=
f=20
its length), and you get differential phase offsets.=C2=A0 Since the
 =C2=A0 array spanned 1km, cable issues HAD to be dealt with.=C2=A0 Even =
though=20
the IF going down those cables was at 30MHz or so...


--------------0r08dsV5COBzthv7k7lsvASW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/06/2023 15:17, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTRJfxrj_SpN4Hn66Q=3DtE+-cpmfRxCSrxEiO+zD=3Dg3C76A@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Michael,
        <h4 class=3D"a-spacing-medium">LZ631368043US </h4>
        <div>One calibration procedure could be that you simply add a
          digital phase offset to your 2nd Tx channel until your
          oscilloscope traces line up to your satisfaction.=C2=A0 It woul=
d be
          nice if the default FPGA image included a simple Rx &amp; Tx
          complex scalar for this exact purpose (inside the DDC &amp;
          DUC), but that does not exist (yet).=C2=A0 If you are using
          gnuradio, it should be easy to insert a complex scalar
          multiplication that would allow you to adjust the samples
          streaming to just one channel.=C2=A0 In any case, if the signal=
 on
          the oscilloscope lines up well over your desired bandwidth,
          then you can declare "mission accomplished".=C2=A0 On the other
          hand, if your signal lines up at one end of your frequency
          bandwidth but then diverges at the other end, it likely means
          a delay mismatch that you could potentially "calibrate" by
          adding an appropriate length of cable to one path (in cable, 1
          ns delay is about 8 inches).</div>
        <div>Rob</div>
      </div>
      <br>
    </blockquote>
    I'll note that in any actual, deployed, multi-antenna phase-coherent
    system, calibrating the *radio* phase is only part of the<br>
    =C2=A0 battle.=C2=A0 If there's any significant (where "significant" =
is in
    terms of wavelength) cable-length between the radio and the
    antennas,<br>
    =C2=A0 there will be that part to compensate, and the longer the cabl=
e,
    the more it is subject to differential heating, and thus<br>
    =C2=A0 differential phase delays.<br>
    <br>
    [Old man anecdote time]<br>
    <br>
    Way back in the 1970s, a radio astronomy observatory in British
    Columbia was setting up their synthesis array for observations<br>
    =C2=A0 at 327MHz and 1420MHz.=C2=A0=C2=A0 They had to come up with an=
 exotic system
    for measuring the phase delays of the cables in<br>
    =C2=A0 "near real time" to apply compensating phase offsets where the
    downconversions happened at the antennas (7 of them).<br>
    =C2=A0 One cable in full Sun, the other in a shadow (at least for par=
t of
    its length), and you get differential phase offsets.=C2=A0 Since the<=
br>
    =C2=A0 array spanned 1km, cable issues HAD to be dealt with.=C2=A0 Ev=
en though
    the IF going down those cables was at 30MHz or so...<br>
    <br>
    <br>
  </body>
</html>

--------------0r08dsV5COBzthv7k7lsvASW--

--===============3261728439052837529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3261728439052837529==--
