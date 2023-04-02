Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DBF6D3A50
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 22:46:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38C04381160
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 16:46:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680468399; bh=NtCp3XDKUwGwlindIwZiYqqpdBwHKsd3vzB38dim3Mo=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=R+gALyTTdAH3WOdBk9pDy2Ux2sJr4i/+LFumKyQY2f5HZwRnIXWG2UzcNszFHBf8A
	 6pHKDW17k8IMuLiBjbqxXXbPQZqYrvygnsCXJ3mA+Je47TMUVbfMu8oykMp3CKomyX
	 zIadxOGm3rfeHSllRTCGu19w0ydiNp5hMCAYZ35B/hK8t6P6hVh8JHF5E9p1kbtIL/
	 IpdkOl5lrkX/pvZofiWSyiw1hakytOA2YFxG65kGPizf6D1X/5BP9Fkn+D8E7m8DIt
	 b3uGOYMrL60M7VDdn1TC+FMPZBgtjU4+kW324HMoV3aG/vBf9ij1Aumvh8eDpUljOs
	 wHgMWYNSkq1aw==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FE2D380BC8
	for <usrp-users@lists.ettus.com>; Sun,  2 Apr 2023 16:46:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YwkZabdU";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id nc3so2626586qvb.1
        for <usrp-users@lists.ettus.com>; Sun, 02 Apr 2023 13:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680468364; x=1683060364;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iCNG/TSTcc86u53x/R3Le3oktD90VtOK3+0qFYU7JHA=;
        b=YwkZabdUkgVsWa1/LDxWVh9Mb9OFoCzOJha7CPo1NQWap9cGOVgunDv5FtYkgKIi4o
         /L/s/iww4vnKkzdNQdyGAFaX79hep46E4OKgt6p2OK0FhF+aCwQSG8ZiaqqvAZIh6iI8
         2W9hoFJtKWpZh9r0yROCvxkvmsc6GDThJx8iRhDb4+U8i1jtsnICCiGYoXqH+GwZ1E1B
         uoh8tuzvD83KbpKi5AEM4CQFXtw+GtgwJRdQcgN6TM0B73IDqpnsjMUhi9ZxxKTxAD+f
         EqS7OTEH7GnlBPke4cvnChhnGpJkqK6LNf24AwGHZmujf5NBTb9sWi5NHSQcE1ZxoJdj
         U46w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680468364; x=1683060364;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iCNG/TSTcc86u53x/R3Le3oktD90VtOK3+0qFYU7JHA=;
        b=44AsHrYMLN0WPR8WBlit1pG4qi55ZAe3nl7W0uXnjg3kFmOELlj/qyFMOZURoFZaAv
         TZYPqBTJkHeaOqnZKdjdExteIfyfN8kHKTKzuMbJS4ZukUVavT6Puc2+szatTQyy1o9E
         uuqcFqTaBYsEHiCUAuKU6yEUddM0sx3+39VzUICi+YwWV3SnApF5cbNttmVLRE3lp4oM
         245XFk6VvZQg6guBXvu3Ew31JlQzG/r5WgGNjAYBgaTJ1kQBC4sOrtb/KHxGjqEbj5f7
         xeH3sK+UxgPGks6NfJI86yE7ToB8fYN5SFzD37bRcl5ONwPknm4v3AkxGgcbGbED+SPD
         S62g==
X-Gm-Message-State: AAQBX9f9SwvelQJ1zM2qgNUmfN2E1YfTcON/9CaviyqD5IQ09nh0WidP
	/vTjxaIVG0ryLsAbfkBIJzGdhoF0cc8=
X-Google-Smtp-Source: AKy350ZLBqcUg5plwEazNs93xcAo7mPT8/xf1JrODYzXzlP+4C/l20Yt2+G/cue1dcx7WtjOzQg9Pg==
X-Received: by 2002:a05:6214:234a:b0:5e0:47aa:40a9 with SMTP id hu10-20020a056214234a00b005e047aa40a9mr22382165qvb.17.1680468364594;
        Sun, 02 Apr 2023 13:46:04 -0700 (PDT)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id k15-20020a0cc78f000000b005e147356c5dsm2158921qvj.125.2023.04.02.13.46.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Apr 2023 13:46:04 -0700 (PDT)
Message-ID: <d9a1c7de-2abd-3cd2-89e8-6bae4c733db7@gmail.com>
Date: Sun, 2 Apr 2023 16:46:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
References: <CA+QP_PnWu9XRxLE22CCervTjWKqs0fMJ7EFqnojX3zzyDZ1BHQ@mail.gmail.com>
 <650df62f-683c-925d-330d-be87fa636a33@gmail.com>
 <CA+QP_Pki5XvrwnR_Lzdv+_g4epw1fpeuciFox+3wg9RU7fCrdA@mail.gmail.com>
 <9030645b-863d-ca49-edfc-b8a9dd24fc07@gmail.com>
 <CA+QP_PkyAJUwjB4y=QRA0-=TzPVXjX4qF=OrtSE4w9G3j5765w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+QP_PkyAJUwjB4y=QRA0-=TzPVXjX4qF=OrtSE4w9G3j5765w@mail.gmail.com>
Message-ID-Hash: 7BTJYAFU6HVHCH6A5AKEK6GZF725USWF
X-Message-ID-Hash: 7BTJYAFU6HVHCH6A5AKEK6GZF725USWF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com, Karunya Choppara <kchoppar@mathworks.com>, Mike McLernon <mmclerno@mathworks.com>, Houman Zarrinkoub <hzarrink@mathworks.com>, Sathish Varala <sathishv@mathworks.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: HELP regarding USRP N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7BTJYAFU6HVHCH6A5AKEK6GZF725USWF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1607370076833992823=="

This is a multi-part message in MIME format.
--===============1607370076833992823==
Content-Type: multipart/alternative;
 boundary="------------0S0jLlLFvLJja5g1fqS0ssMd"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0S0jLlLFvLJja5g1fqS0ssMd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/04/2023 16:39, Arhum Ahmad wrote:
> Thank you very much. Can you share some links which instruct how I can=20
> do the same as per your suggestion? It will be very helpful.
>
> One more question: if I change the subnet (default for N-series=20
> 255.255.255.0), will it cause any problems?
The subnet *MASK* remains the same.

I'm not a Windows expert, so I can't help there.=C2=A0=C2=A0 Really, at t=
his=20
point, this isn't the right list.=C2=A0 Your question is drifting into
 =C2=A0 "how do I do network configuration management on my Windows box".=
=C2=A0=C2=A0=C2=A0=20
Your network interfaces need to be on
 =C2=A0 different subnets.=C2=A0 Your USRPs need to be configured accordi=
ngly.=C2=A0=C2=A0=C2=A0=C2=A0=20
Somebody on this list might be able to help, but I'm
 =C2=A0 not a Windows networking expert.=C2=A0=C2=A0 Even on Linux, it wo=
uld depend on=20
which of several different network management
 =C2=A0 systems were used by default on YOUR system.

As it happens, NI have a generic (not specific to USRP) tutorial on the=20
subject here:

https://www.ni.com/en-ca/support/documentation/supplemental/11/best-pract=
ices-for-using-multiple-network-interfaces--nics--with.html


>
> On Mon, Apr 3, 2023 at 1:47=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 02/04/2023 16:04, Arhum Ahmad wrote:
>>     Thank you for the response.
>>
>>     Sir, both of my ports are "Gigabit Ethernet," so I was hoping two
>>     N200=C2=A0 might respond on ping in the windows=C2=A0command windo=
w=C2=A0since I
>>     have changed the IP of both N-200 to "192.168.10.1" and
>>     "192.168.10.2". Is there any way to connect multiple N-series in
>>     windows with my setting or a way to resolve the issue?
>>
>>     If two USRP are recognized by PC, the rest is easy to use in MATLA=
B.
>     Your network cards need to be on different IP subnets for this to
>     work.=C2=A0 This is just standard IP networking stuff.
>
>     With both devices on 192.168.10.X, the routing stack in your
>     computer has NO WAY of knowing how to route things, since
>     =C2=A0 your cards will both be on the same IP subnet.=C2=A0=C2=A0 I=
'd make the
>     second card on 192.168.20.X, and program your IP address=C2=A0 on
>     =C2=A0 the N200 appropriately.
>
>
>>
>>
>>     On Mon, Apr 3, 2023 at 12:26=E2=80=AFAM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 02/04/2023 13:34, Arhum Ahmad wrote:
>>         > Respected sir,
>>         >
>>         > I am trying to connect multiple USRP N200 simultaneously to
>>         the same
>>         > system to use in MATLAB. However, It is not recognized by
>>         the=C2=A0system.
>>         > My PC has 2 ethernet=C2=A0ports (10 and 5 Gbit). N-200 conne=
cts
>>         via a
>>         > 10Gbit port but not by 5 Gbit. I have changed the IP of
>>         N-200, but it
>>         > doesn't=C2=A0work. I have tried to use a router to make a lo=
cal
>>         LAN to
>>         > connect the PC to 2 N-200, but it did not work either. Is
>>         there any
>>         > specific way to connect multiple N-200 in the PC and use it
>>         in MATLAB
>>         > for simultaneous operation?It will be very helpful for my
>>         experiment.
>>         The N200 ONLY supports 1GBit connections.=C2=A0 It doesn't
>>         autoconfigure.=C2=A0 It
>>         MUST use a standard 1GIGe connection.
>>
>>         Each N200 will need to have a unique IP address. Your network
>>         ports
>>         need to be configured accordingly.
>>
>>         I'm doubting that your report of a successful connection to a
>>         *10Gbit* port
>>         =C2=A0=C2=A0 is actually correct.=C2=A0 It must be a *1GiGe* p=
ort.
>>
>>         I can't help with MATLAB.=C2=A0 And indeed, there are only a
>>         handful of
>>         MATLAB users on the usrp-users mailing list.
>>
>>
>>
>>
>>
>>     --=20
>>     *Thanks and Regards**
>>     *
>>     *Arhum Ahmad*
>>     Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT Ropar
>>
>>     +91- <tel:+91-7015802356>7974897279
>>     |=C2=A0arhum.19eez0005@iitrpr.ac.in <mailto:2016eez0009@iitrpr.ac.=
in>
>>
>>     Lab No. 323, Communication Research Lab, J.C.Bose Building
>>
>>
>>     *
>>     /CONFIDENTIALITY NOTICE:=C2=A0The contents of this email message a=
nd
>>     any attachments are intended solely for the addressee(s) and may
>>     contain confidential and/or privileged information and may be
>>     legally protected from disclosure. If you are not the intended
>>     recipient of this message or their agent, or if this message has
>>     been addressed to you in error, please immediately alert the
>>     sender by reply email and then delete this message and any
>>     attachments. If you are not the intended recipient, you are
>>     hereby notified that any use, dissemination, copying, or storage
>>     of this message or its attachments is strictly prohibited./
>>     *=20
>
>
>
> --=20
> *Thanks and Regards**
> *
> *Arhum Ahmad*
> Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT Ropar
>
> +91- <tel:+91-7015802356>7974897279 |=C2=A0arhum.19eez0005@iitrpr.ac.in=
=20
> <mailto:2016eez0009@iitrpr.ac.in>
>
> Lab No. 323, Communication Research Lab, J.C.Bose Building
>
>
> *
> /CONFIDENTIALITY NOTICE:=C2=A0The contents of this email message and an=
y=20
> attachments are intended solely for the addressee(s) and may contain=20
> confidential and/or privileged information and may be legally=20
> protected from disclosure. If you are not the intended recipient of=20
> this message or their agent, or if this message has been addressed to=20
> you in error, please immediately alert the sender by reply email and=20
> then delete this message and any attachments. If you are not the=20
> intended recipient, you are hereby notified that any use,=20
> dissemination, copying, or storage of this message or its attachments=20
> is strictly prohibited./
> *=20

--------------0S0jLlLFvLJja5g1fqS0ssMd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/04/2023 16:39, Arhum Ahmad wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_PkyAJUwjB4y=3DQRA0-=3DTzPVXjX4qF=3DOrtSE4w9G3j5765w@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thank you very much. Can you share some links whic=
h
        instruct how I can do the same as per your suggestion? It will
        be very helpful.
        <div><br>
        </div>
        <div>One more question: if I change the subnet (default for
          N-series 255.255.255.0), will it cause any problems?</div>
      </div>
    </blockquote>
    The subnet *MASK* remains the same.<br>
    <br>
    I'm not a Windows expert, so I can't help there.=C2=A0=C2=A0 Really, =
at this
    point, this isn't the right list.=C2=A0 Your question is drifting int=
o<br>
    =C2=A0 "how do I do network configuration management on my Windows
    box".=C2=A0=C2=A0=C2=A0 Your network interfaces need to be on<br>
    =C2=A0 different subnets.=C2=A0 Your USRPs need to be configured
    accordingly.=C2=A0=C2=A0=C2=A0=C2=A0 Somebody on this list might be a=
ble to help, but
    I'm<br>
    =C2=A0 not a Windows networking expert.=C2=A0=C2=A0 Even on Linux, it=
 would depend
    on which of several different network management<br>
    =C2=A0 systems were used by default on YOUR system.<br>
    <br>
    As it happens, NI have a generic (not specific to USRP) tutorial on
    the subject here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.ni.com/en-ca/suppo=
rt/documentation/supplemental/11/best-practices-for-using-multiple-networ=
k-interfaces--nics--with.html">https://www.ni.com/en-ca/support/documenta=
tion/supplemental/11/best-practices-for-using-multiple-network-interfaces=
--nics--with.html</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_PkyAJUwjB4y=3DQRA0-=3DTzPVXjX4qF=3DOrtSE4w9G3j5765w@mai=
l.gmail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 3, 2023 at 1:47=
=E2=80=AFAM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 02/04/2023 16:04, Arhum Ahmad wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thank you for the response.
                <div><br>
                </div>
                <div>Sir, both of my ports are "<span
                    style=3D"color:rgb(0,0,0);font-family:Roboto,sans-ser=
if;font-size:14px">Gigabit
                    Ethernet," so I was hoping two N200=C2=A0 might respo=
nd
                    on ping in the windows=C2=A0command window=C2=A0since=
 I have
                    changed the IP of both N-200 to "</span><span
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:m=
onospace,fixed;font-size:14.7px">192.168.10.1"
                    and "</span><span
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:m=
onospace,fixed;font-size:14.7px">192.168.10.2".
                    Is there any way to connect multiple N-series in
                    windows with my setting or a way to resolve the
                    issue?</span>
                  <div><span
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:m=
onospace,fixed;font-size:14.7px"><br>
                    </span></div>
                  <div><span
style=3D"color:rgb(0,0,0);font-family:monospace,fixed;font-size:14.7px;ba=
ckground-color:rgb(251,252,253)">If
                      two USRP are recognized by PC, the rest is easy to
                      use in MATLAB</span><span
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:m=
onospace,fixed;font-size:14.7px">.</span></div>
                </div>
              </div>
            </blockquote>
            Your network cards need to be on different IP subnets for
            this to work.=C2=A0 This is just standard IP networking stuff=
.<br>
            <br>
            With both devices on 192.168.10.X, the routing stack in your
            computer has NO WAY of knowing how to route things, since<br>
            =C2=A0 your cards will both be on the same IP subnet.=C2=A0=C2=
=A0 I'd make
            the second card on 192.168.20.X, and program your IP
            address=C2=A0 on<br>
            =C2=A0 the N200 appropriately.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>
                  <div><span
style=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:m=
onospace,fixed;font-size:14.7px"><br>
                    </span></div>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 3, 2023=
 at
                  12:26=E2=80=AFAM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">On 02/04/2023
                  13:34, Arhum Ahmad wrote:<br>
                  &gt; Respected sir,<br>
                  &gt;<br>
                  &gt; I am trying to connect multiple USRP N200
                  simultaneously to the same <br>
                  &gt; system to use in MATLAB. However, It is not
                  recognized by the=C2=A0system. <br>
                  &gt; My PC has 2 ethernet=C2=A0ports (10 and 5 Gbit). N=
-200
                  connects via a <br>
                  &gt; 10Gbit port but not by 5 Gbit. I have changed the
                  IP of N-200, but it <br>
                  &gt; doesn't=C2=A0work. I have tried to use a router to
                  make a local LAN to <br>
                  &gt; connect the PC to 2 N-200, but it did not work
                  either. Is there any <br>
                  &gt; specific way to connect multiple N-200 in the PC
                  and use it in MATLAB <br>
                  &gt; for simultaneous operation?It will be very
                  helpful for my experiment.<br>
                  The N200 ONLY supports 1GBit connections.=C2=A0 It does=
n't
                  autoconfigure.=C2=A0 It <br>
                  MUST use a standard 1GIGe connection.<br>
                  <br>
                  Each N200 will need to have a unique IP address.=C2=A0=C2=
=A0=C2=A0
                  Your network ports <br>
                  need to be configured accordingly.<br>
                  <br>
                  I'm doubting that your report of a successful
                  connection to a *10Gbit* port<br>
                  =C2=A0=C2=A0 is actually correct.=C2=A0 It must be a *1=
GiGe* port.<br>
                  <br>
                  I can't help with MATLAB.=C2=A0 And indeed, there are o=
nly
                  a handful of <br>
                  MATLAB users on the usrp-users mailing list.<br>
                  <br>
                  <br>
                  <br>
                </blockquote>
              </div>
              <br clear=3D"all">
              <div><br>
              </div>
              <span>-- </span><br>
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div>
                    <div dir=3D"ltr">
                      <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b
style=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font=
-size:small"><span>Thanks
                            and Regards</span></b><b><br>
                        </b></div>
                      <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b>Arhum
                          Ahmad</b><br>
                        Ph.D. Scholar,=C2=A0Electrical Engineering
                        Department, IIT Ropar</div>
                      <table
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;width:47=
0px;margin-top:5px"
                        width=3D"470" cellspacing=3D"0" cellpadding=3D"0"
                        border=3D"0">
                        <tbody>
                          <tr>
                            <td style=3D"color:rgb(141,141,141)">
                              <p style=3D"margin:0px"><span
                                  style=3D"display:inline-block"><a
                                    href=3D"tel:+91-7015802356"
                                    style=3D"color:rgb(141,141,141);font-=
family:sans-serif"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true">+91-</a>7974=
897279</span>=C2=A0<span
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.=
19eez0005<span
                                  style=3D"display:inline-block"><a
                                    href=3D"mailto:2016eez0009@iitrpr.ac.=
in"
style=3D"color:rgb(141,141,141);font-family:sans-serif" target=3D"_blank"
                                    moz-do-not-send=3D"true">@iitrpr.ac.i=
n</a></span></p>
                            </td>
                          </tr>
                          <tr>
                            <td
                              style=3D"font-family:sans-serif;color:rgb(1=
41,141,141)"><span
                                style=3D"display:inline-block">Lab No.
                                323, Communication Research Lab,
                                J.C.Bose Building</span></td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <br>
              <b><font size=3D"1"><span><span><span>
                        <div>
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div>
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">
                                                    <div dir=3D"ltr">
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div><span><spa=
n><span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0Th=
e
                                                          contents of
                                                          this email
                                                          message and
                                                          any
                                                          attachments
                                                          are intended
                                                          solely for the
                                                          addressee(s)
                                                          and may
                                                          contain
                                                          confidential
                                                          and/or
                                                          privileged
                                                          information
                                                          and may be
                                                          legally
                                                          protected from
                                                          disclosure. If
                                                          you are not
                                                          the intended
                                                          recipient of
                                                          this message
                                                          or their
                                                          agent, or if
                                                          this message
                                                          has been
                                                          addressed to
                                                          you in error,
                                                          please
                                                          immediately
                                                          alert the
                                                          sender by
                                                          reply email
                                                          and then
                                                          delete this
                                                          message and
                                                          any
                                                          attachments.
                                                          If you are not
                                                          the intended
                                                          recipient, you
                                                          are hereby
                                                          notified that
                                                          any use,
                                                          dissemination,
                                                          copying, or
                                                          storage of
                                                          this message
                                                          or its
                                                          attachments is
                                                          strictly
                                                          prohibited.<spa=
n></span></i></span></span></span></span></div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </span></span></span></font></b> </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr">
              <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b
style=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font=
-size:small"><span
                    style=3D"font-family:&quot;times new
                    roman&quot;,serif">Thanks and Regards</span></b><b><b=
r>
                </b></div>
              <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b>Arhum
                  Ahmad</b><br>
                Ph.D. Scholar,=C2=A0Electrical Engineering Department, II=
T
                Ropar</div>
              <table
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;width:47=
0px;margin-top:5px"
                width=3D"470" cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                <tbody>
                  <tr>
                    <td style=3D"color:rgb(141,141,141)">
                      <p style=3D"margin:0px"><span
                          style=3D"display:inline-block"><a
                            href=3D"tel:+91-7015802356"
                            style=3D"color:rgb(141,141,141);font-family:s=
ans-serif"
                            target=3D"_blank" moz-do-not-send=3D"true">+9=
1-</a>7974897279</span>=C2=A0<span
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.=
19eez0005<span
                          style=3D"display:inline-block"><a
                            href=3D"mailto:2016eez0009@iitrpr.ac.in"
                            style=3D"color:rgb(141,141,141);font-family:s=
ans-serif"
                            target=3D"_blank" moz-do-not-send=3D"true">@i=
itrpr.ac.in</a></span></p>
                    </td>
                  </tr>
                  <tr>
                    <td
                      style=3D"font-family:sans-serif;color:rgb(141,141,1=
41)"><span
                        style=3D"display:inline-block">Lab No. 323,
                        Communication Research Lab, J.C.Bose Building</sp=
an></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <br>
      <b><font size=3D"1"><span><span><span>
                <div>
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div>
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div dir=3D"ltr">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">
                                                    <div dir=3D"ltr">
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div><span><spa=
n><span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0Th=
e
                                                          contents of
                                                          this email
                                                          message and
                                                          any
                                                          attachments
                                                          are intended
                                                          solely for the
                                                          addressee(s)
                                                          and may
                                                          contain
                                                          confidential
                                                          and/or
                                                          privileged
                                                          information
                                                          and may be
                                                          legally
                                                          protected from
                                                          disclosure. If
                                                          you are not
                                                          the intended
                                                          recipient of
                                                          this message
                                                          or their
                                                          agent, or if
                                                          this message
                                                          has been
                                                          addressed to
                                                          you in error,
                                                          please
                                                          immediately
                                                          alert the
                                                          sender by
                                                          reply email
                                                          and then
                                                          delete this
                                                          message and
                                                          any
                                                          attachments.
                                                          If you are not
                                                          the intended
                                                          recipient, you
                                                          are hereby
                                                          notified that
                                                          any use,
                                                          dissemination,
                                                          copying, or
                                                          storage of
                                                          this message
                                                          or its
                                                          attachments is
                                                          strictly
                                                          prohibited.<spa=
n></span></i></span></span></span></span></div>
                                                          </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </span></span></span></font></b>
    </blockquote>
    <br>
  </body>
</html>

--------------0S0jLlLFvLJja5g1fqS0ssMd--

--===============1607370076833992823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1607370076833992823==--
