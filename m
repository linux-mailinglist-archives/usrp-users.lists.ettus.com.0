Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D248F6D3A60
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 23:13:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9EE73841D1
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 17:13:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680469984; bh=JiJ/sddr4I2Mc/eHRu4/lBW9PzePx60sG+ZYJLWsp7w=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=D7ofFt7KgW3x6Jjx+Yl4/ZoqytAQ7nWvbFTBXT/2HbHliH3l09YidyrYMDQd18Glz
	 9UehyVwUhGPt1M6yL4h6jAigaEZ0KOnbCVBdHqmSEfRTSUFlEWeaOcX8bh5t/xl4YE
	 K2HIrT6s/WBKaxRlVGy59sz7HAta2NOat/pbCRoT8qNiK+vZxaORRkzOnHXb2l3Hi8
	 d60Ui7YTgpw9Goy2mJTO/ogZEQKU5LNOrqqBtJDdT7XX02tr3qhVxLzB8/Fnxz8kRR
	 AbjH4d3lw4xToe4q7ht54qXc48G6KK2zRFyXlX943zjSArM4FUIZ4Ffi82FfFw6F9O
	 7fyIUJsgPOy0Q==
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 61BAB38403E
	for <usrp-users@lists.ettus.com>; Sun,  2 Apr 2023 17:12:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="N7gqPTzg";
	dkim-atps=neutral
Received: by mail-pf1-f179.google.com with SMTP id dw14so17821869pfb.6
        for <usrp-users@lists.ettus.com>; Sun, 02 Apr 2023 14:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google; t=1680469948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nz+wYcjAp6/tdz9nnwCYsfEqW+aGYvInCXJRXvmd3QQ=;
        b=N7gqPTzg9Tc1x18eEOMpbXbEpuL+5i2/UTdyd6fygTHMHXO3PH7JJxvvM1hCz+AgfH
         ay+NudsrBpk6JccCncydCP+Uxc/vbgL3BnyBk91Ne1yEwItuWI8LSoCB9NHBbcEUFAq/
         hsVZo8n7XOTuMGAbAqiQwLIj+dLFIz/Q8ShKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680469948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nz+wYcjAp6/tdz9nnwCYsfEqW+aGYvInCXJRXvmd3QQ=;
        b=fzmiZj1n5LM14bDKWSYgbrlzj8nThSLi3T8opzZkpNhIePjAHumnUGuh3LsqmAoYzH
         c6Hp6vcABiU9xDwl9jmkvouLAtFJt/ZdGFJ09r7wnE6JDt/8sA+5aBa+1Y5vn2ai8rrE
         u/rJOttbNigqA+6yfVzD6GHaUbJOsq1F60rS9RTxZkCRP6/mcqJ6yoNxDjjPTroamx0Y
         GhdWYTcsECX2aZoYGuJoFH4bjJ+WxcPmCOMwC4nUuFSwuN8GWZbBoffyzIhZhLAbVbcs
         7gkJ2cqGgtCrCpx8e/s3iFqbr9oi7P9fLS+HK3zzutC53UeYM2ql4Qn6UP2aAOKuX4aa
         YcsA==
X-Gm-Message-State: AAQBX9c9ASXL0MPPlEKyrf4MLPO46JYkwKgjJW9ksxbP5dj9h79WtDmq
	OA6wsCKu3N9tRtHpq89oDcyr//vKFXBmPc9h0zHdMXaVNIfgUujCXZETe2/D/hVNupTCDjATFd2
	RuoNXHwcINxMEmAqbEKeFNh7s+iV1RA==
X-Google-Smtp-Source: AKy350bWlJfXHpR04HjX1pASKHckpOo36H4ZyV7bOlB2D9phFmpJ4EMgvXMGrreWet3HTLOp9pECfIlZXCkp5KAWpSs=
X-Received: by 2002:a63:5747:0:b0:503:77cd:b7b4 with SMTP id
 h7-20020a635747000000b0050377cdb7b4mr9199472pgm.12.1680469948257; Sun, 02 Apr
 2023 14:12:28 -0700 (PDT)
MIME-Version: 1.0
References: <CA+QP_PnWu9XRxLE22CCervTjWKqs0fMJ7EFqnojX3zzyDZ1BHQ@mail.gmail.com>
 <650df62f-683c-925d-330d-be87fa636a33@gmail.com> <CA+QP_Pki5XvrwnR_Lzdv+_g4epw1fpeuciFox+3wg9RU7fCrdA@mail.gmail.com>
 <9030645b-863d-ca49-edfc-b8a9dd24fc07@gmail.com> <CA+QP_PkyAJUwjB4y=QRA0-=TzPVXjX4qF=OrtSE4w9G3j5765w@mail.gmail.com>
 <d9a1c7de-2abd-3cd2-89e8-6bae4c733db7@gmail.com>
In-Reply-To: <d9a1c7de-2abd-3cd2-89e8-6bae4c733db7@gmail.com>
Date: Mon, 3 Apr 2023 02:42:17 +0530
Message-ID: <CA+QP_P=1AFvKwufDBskC9Z1qb25bWnUwzH4XOQq7kUU6nJVe9Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: FVEJZRIYQDG47O7JAWQO72ZR7DNT7P43
X-Message-ID-Hash: FVEJZRIYQDG47O7JAWQO72ZR7DNT7P43
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com, Karunya Choppara <kchoppar@mathworks.com>, Mike McLernon <mmclerno@mathworks.com>, Houman Zarrinkoub <hzarrink@mathworks.com>, Sathish Varala <sathishv@mathworks.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: HELP regarding USRP N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FVEJZRIYQDG47O7JAWQO72ZR7DNT7P43/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============4950559620028883608=="

--===============4950559620028883608==
Content-Type: multipart/alternative; boundary="000000000000527ca105f860e6b6"

--000000000000527ca105f860e6b6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much.

On Mon, Apr 3, 2023 at 2:16=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmail=
.com>
wrote:

> On 02/04/2023 16:39, Arhum Ahmad wrote:
>
> Thank you very much. Can you share some links which instruct how I can do
> the same as per your suggestion? It will be very helpful.
>
> One more question: if I change the subnet (default for N-series
> 255.255.255.0), will it cause any problems?
>
> The subnet *MASK* remains the same.
>
> I'm not a Windows expert, so I can't help there.   Really, at this point,
> this isn't the right list.  Your question is drifting into
>   "how do I do network configuration management on my Windows box".
> Your network interfaces need to be on
>   different subnets.  Your USRPs need to be configured accordingly.
> Somebody on this list might be able to help, but I'm
>   not a Windows networking expert.   Even on Linux, it would depend on
> which of several different network management
>   systems were used by default on YOUR system.
>
> As it happens, NI have a generic (not specific to USRP) tutorial on the
> subject here:
>
>
> https://www.ni.com/en-ca/support/documentation/supplemental/11/best-pract=
ices-for-using-multiple-network-interfaces--nics--with.html
>
>
>
> On Mon, Apr 3, 2023 at 1:47=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
> wrote:
>
>> On 02/04/2023 16:04, Arhum Ahmad wrote:
>>
>> Thank you for the response.
>>
>> Sir, both of my ports are "Gigabit Ethernet," so I was hoping two N200
>> might respond on ping in the windows command window since I have changed
>> the IP of both N-200 to "192.168.10.1" and "192.168.10.2". Is there any
>> way to connect multiple N-series in windows with my setting or a way to
>> resolve the issue?
>>
>> If two USRP are recognized by PC, the rest is easy to use in MATLAB.
>>
>> Your network cards need to be on different IP subnets for this to work.
>> This is just standard IP networking stuff.
>>
>> With both devices on 192.168.10.X, the routing stack in your computer ha=
s
>> NO WAY of knowing how to route things, since
>>   your cards will both be on the same IP subnet.   I'd make the second
>> card on 192.168.20.X, and program your IP address  on
>>   the N200 appropriately.
>>
>>
>>
>>
>> On Mon, Apr 3, 2023 at 12:26=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
>> wrote:
>>
>>> On 02/04/2023 13:34, Arhum Ahmad wrote:
>>> > Respected sir,
>>> >
>>> > I am trying to connect multiple USRP N200 simultaneously to the same
>>> > system to use in MATLAB. However, It is not recognized by the system.
>>> > My PC has 2 ethernet ports (10 and 5 Gbit). N-200 connects via a
>>> > 10Gbit port but not by 5 Gbit. I have changed the IP of N-200, but it
>>> > doesn't work. I have tried to use a router to make a local LAN to
>>> > connect the PC to 2 N-200, but it did not work either. Is there any
>>> > specific way to connect multiple N-200 in the PC and use it in MATLAB
>>> > for simultaneous operation?It will be very helpful for my experiment.
>>> The N200 ONLY supports 1GBit connections.  It doesn't autoconfigure.  I=
t
>>> MUST use a standard 1GIGe connection.
>>>
>>> Each N200 will need to have a unique IP address.    Your network ports
>>> need to be configured accordingly.
>>>
>>> I'm doubting that your report of a successful connection to a *10Gbit*
>>> port
>>>    is actually correct.  It must be a *1GiGe* port.
>>>
>>> I can't help with MATLAB.  And indeed, there are only a handful of
>>> MATLAB users on the usrp-users mailing list.
>>>
>>>
>>>
>>>
>>
>> --
>> *Thanks and Regards*
>> *Arhum Ahmad*
>> Ph.D. Scholar, Electrical Engineering Department, IIT Ropar
>>
>> +91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
>> <2016eez0009@iitrpr.ac.in>
>> Lab No. 323, Communication Research Lab, J.C.Bose Building
>>
>> * CONFIDENTIALITY NOTICE: The contents of this email message and any
>> attachments are intended solely for the addressee(s) and may contain
>> confidential and/or privileged information and may be legally protected
>> from disclosure. If you are not the intended recipient of this message o=
r
>> their agent, or if this message has been addressed to you in error, plea=
se
>> immediately alert the sender by reply email and then delete this message
>> and any attachments. If you are not the intended recipient, you are here=
by
>> notified that any use, dissemination, copying, or storage of this messag=
e
>> or its attachments is strictly prohibited. *
>>
>>
>>
>
> --
> *Thanks and Regards*
> *Arhum Ahmad*
> Ph.D. Scholar, Electrical Engineering Department, IIT Ropar
>
> +91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
> <2016eez0009@iitrpr.ac.in>
> Lab No. 323, Communication Research Lab, J.C.Bose Building
>
> * CONFIDENTIALITY NOTICE: The contents of this email message and any
> attachments are intended solely for the addressee(s) and may contain
> confidential and/or privileged information and may be legally protected
> from disclosure. If you are not the intended recipient of this message or
> their agent, or if this message has been addressed to you in error, pleas=
e
> immediately alert the sender by reply email and then delete this message
> and any attachments. If you are not the intended recipient, you are hereb=
y
> notified that any use, dissemination, copying, or storage of this message
> or its attachments is strictly prohibited. *
>
>
>

--=20
*Thanks and Regards*
*Arhum Ahmad*
Ph.D. Scholar, Electrical Engineering Department, IIT Ropar

+91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
<2016eez0009@iitrpr.ac.in>
Lab No. 323, Communication Research Lab, J.C.Bose Building

--=20
**CONFIDENTIALITY NOTICE:=C2=A0The
 contents of this email message and any=20
attachments are intended solely=20
for the addressee(s) and may contain=20
confidential and/or privileged=20
information and may be legally protected=20
from disclosure. If you are not
 the intended recipient of this message or=20
their agent, or if this=20
message has been addressed to you in error, please=20
immediately alert the
 sender by reply email and then delete this message=20
and any attachments.
 If you are not the intended recipient, you are hereby=20
notified that any
 use, dissemination, copying, or storage of this message=20
or its=20
attachments is strictly prohibited.*























*

--000000000000527ca105f860e6b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you very much.<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 3, 2023 at 2:16=E2=80=
=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchv=
onbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 02/04/2023 16:39, Arhum Ahmad wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Thank you very much. Can you share some links which
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
    I&#39;m not a Windows expert, so I can&#39;t help there.=C2=A0=C2=A0 Re=
ally, at this
    point, this isn&#39;t the right list.=C2=A0 Your question is drifting i=
nto<br>
    =C2=A0 &quot;how do I do network configuration management on my Windows
    box&quot;.=C2=A0=C2=A0=C2=A0 Your network interfaces need to be on<br>
    =C2=A0 different subnets.=C2=A0 Your USRPs need to be configured
    accordingly.=C2=A0=C2=A0=C2=A0=C2=A0 Somebody on this list might be abl=
e to help, but
    I&#39;m<br>
    =C2=A0 not a Windows networking expert.=C2=A0=C2=A0 Even on Linux, it w=
ould depend
    on which of several different network management<br>
    =C2=A0 systems were used by default on YOUR system.<br>
    <br>
    As it happens, NI have a generic (not specific to USRP) tutorial on
    the subject here:<br>
    <br>
<a href=3D"https://www.ni.com/en-ca/support/documentation/supplemental/11/b=
est-practices-for-using-multiple-network-interfaces--nics--with.html" targe=
t=3D"_blank">https://www.ni.com/en-ca/support/documentation/supplemental/11=
/best-practices-for-using-multiple-network-interfaces--nics--with.html</a><=
br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 3, 2023 at 1:47=
=E2=80=AFAM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 02/04/2023 16:04, Arhum Ahmad wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thank you for the response.
                <div><br>
                </div>
                <div>Sir, both of my ports are &quot;<span style=3D"color:r=
gb(0,0,0);font-family:Roboto,sans-serif;font-size:14px">Gigabit
                    Ethernet,&quot; so I was hoping two N200=C2=A0 might re=
spond
                    on ping in the windows=C2=A0command window=C2=A0since I=
 have
                    changed the IP of both N-200 to &quot;</span><span styl=
e=3D"background-color:rgb(251,252,253);color:rgb(0,0,0);font-family:monospa=
ce,fixed;font-size:14.7px">192.168.10.1&quot;
                    and &quot;</span><span style=3D"background-color:rgb(25=
1,252,253);color:rgb(0,0,0);font-family:monospace,fixed;font-size:14.7px">1=
92.168.10.2&quot;.
                    Is there any way to connect multiple N-series in
                    windows with my setting or a way to resolve the
                    issue?</span>
                  <div><span style=3D"background-color:rgb(251,252,253);col=
or:rgb(0,0,0);font-family:monospace,fixed;font-size:14.7px"><br>
                    </span></div>
                  <div><span style=3D"color:rgb(0,0,0);font-family:monospac=
e,fixed;font-size:14.7px;background-color:rgb(251,252,253)">If
                      two USRP are recognized by PC, the rest is easy to
                      use in MATLAB</span><span style=3D"background-color:r=
gb(251,252,253);color:rgb(0,0,0);font-family:monospace,fixed;font-size:14.7=
px">.</span></div>
                </div>
              </div>
            </blockquote>
            Your network cards need to be on different IP subnets for
            this to work.=C2=A0 This is just standard IP networking stuff.<=
br>
            <br>
            With both devices on 192.168.10.X, the routing stack in your
            computer has NO WAY of knowing how to route things, since<br>
            =C2=A0 your cards will both be on the same IP subnet.=C2=A0=C2=
=A0 I&#39;d make
            the second card on 192.168.20.X, and program your IP
            address=C2=A0 on<br>
            =C2=A0 the N200 appropriately.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>
                  <div><span style=3D"background-color:rgb(251,252,253);col=
or:rgb(0,0,0);font-family:monospace,fixed;font-size:14.7px"><br>
                    </span></div>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 3, 2023 a=
t
                  12:26=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 02/04/=
2023
                  13:34, Arhum Ahmad wrote:<br>
                  &gt; Respected sir,<br>
                  &gt;<br>
                  &gt; I am trying to connect multiple USRP N200
                  simultaneously to the same <br>
                  &gt; system to use in MATLAB. However, It is not
                  recognized by the=C2=A0system. <br>
                  &gt; My PC has 2 ethernet=C2=A0ports (10 and 5 Gbit). N-2=
00
                  connects via a <br>
                  &gt; 10Gbit port but not by 5 Gbit. I have changed the
                  IP of N-200, but it <br>
                  &gt; doesn&#39;t=C2=A0work. I have tried to use a router =
to
                  make a local LAN to <br>
                  &gt; connect the PC to 2 N-200, but it did not work
                  either. Is there any <br>
                  &gt; specific way to connect multiple N-200 in the PC
                  and use it in MATLAB <br>
                  &gt; for simultaneous operation?It will be very
                  helpful for my experiment.<br>
                  The N200 ONLY supports 1GBit connections.=C2=A0 It doesn&=
#39;t
                  autoconfigure.=C2=A0 It <br>
                  MUST use a standard 1GIGe connection.<br>
                  <br>
                  Each N200 will need to have a unique IP address.=C2=A0=C2=
=A0=C2=A0
                  Your network ports <br>
                  need to be configured accordingly.<br>
                  <br>
                  I&#39;m doubting that your report of a successful
                  connection to a *10Gbit* port<br>
                  =C2=A0=C2=A0 is actually correct.=C2=A0 It must be a *1Gi=
Ge* port.<br>
                  <br>
                  I can&#39;t help with MATLAB.=C2=A0 And indeed, there are=
 only
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
                      <div style=3D"color:rgb(100,100,100);font-family:Aria=
l;font-size:12px;margin-bottom:5px;margin-top:0px"><b style=3D"color:rgb(53=
,28,117);font-family:Arial,Helvetica,sans-serif;font-size:small"><span>Than=
ks
                            and Regards</span></b><b><br>
                        </b></div>
                      <div style=3D"color:rgb(100,100,100);font-family:Aria=
l;font-size:12px;margin-bottom:5px;margin-top:0px"><b>Arhum
                          Ahmad</b><br>
                        Ph.D. Scholar,=C2=A0Electrical Engineering
                        Department, IIT Ropar</div>
                      <table style=3D"color:rgb(100,100,100);font-family:Ar=
ial;font-size:12px;width:470px;margin-top:5px" width=3D"470" cellspacing=3D=
"0" cellpadding=3D"0" border=3D"0">
                        <tbody>
                          <tr>
                            <td style=3D"color:rgb(141,141,141)">
                              <p style=3D"margin:0px"><span style=3D"displa=
y:inline-block"><a href=3D"tel:+91-7015802356" style=3D"color:rgb(141,141,1=
41);font-family:sans-serif" target=3D"_blank">+91-</a>7974897279</span>=C2=
=A0<span style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=
=A0arhum.19eez0005<span style=3D"display:inline-block"><a href=3D"mailto:20=
16eez0009@iitrpr.ac.in" style=3D"color:rgb(141,141,141);font-family:sans-se=
rif" target=3D"_blank">@iitrpr.ac.in</a></span></p>
                            </td>
                          </tr>
                          <tr>
                            <td style=3D"font-family:sans-serif;color:rgb(1=
41,141,141)"><span style=3D"display:inline-block">Lab No.
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
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div><span><span>=
<span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0The
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
                                                          prohibited.<span>=
</span></i></span></span></span></span></div>
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
      <span>-- </span><br>
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr">
              <div style=3D"color:rgb(100,100,100);font-family:Arial;font-s=
ize:12px;margin-bottom:5px;margin-top:0px"><b style=3D"color:rgb(53,28,117)=
;font-family:Arial,Helvetica,sans-serif;font-size:small"><span>Thanks and R=
egards</span></b><b><br>
                </b></div>
              <div style=3D"color:rgb(100,100,100);font-family:Arial;font-s=
ize:12px;margin-bottom:5px;margin-top:0px"><b>Arhum
                  Ahmad</b><br>
                Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT
                Ropar</div>
              <table style=3D"color:rgb(100,100,100);font-family:Arial;font=
-size:12px;width:470px;margin-top:5px" width=3D"470" cellspacing=3D"0" cell=
padding=3D"0" border=3D"0">
                <tbody>
                  <tr>
                    <td style=3D"color:rgb(141,141,141)">
                      <p style=3D"margin:0px"><span style=3D"display:inline=
-block"><a href=3D"tel:+91-7015802356" style=3D"color:rgb(141,141,141);font=
-family:sans-serif" target=3D"_blank">+91-</a>7974897279</span>=C2=A0<span =
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.19=
eez0005<span style=3D"display:inline-block"><a href=3D"mailto:2016eez0009@i=
itrpr.ac.in" style=3D"color:rgb(141,141,141);font-family:sans-serif" target=
=3D"_blank">@iitrpr.ac.in</a></span></p>
                    </td>
                  </tr>
                  <tr>
                    <td style=3D"font-family:sans-serif;color:rgb(141,141,1=
41)"><span style=3D"display:inline-block">Lab No. 323,
                        Communication Research Lab, J.C.Bose Building</span=
></td>
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
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div><span><span>=
<span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0The
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
                                                          prohibited.<span>=
</span></i></span></span></span></span></div>
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
  </div>

</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"color:rgb(100,100,100);f=
ont-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b style=
=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font-size:s=
mall"><span style=3D"font-family:&quot;times new roman&quot;,serif">Thanks =
and Regards</span></b><b><br></b></div><div style=3D"color:rgb(100,100,100)=
;font-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b>Arhu=
m Ahmad</b><br>Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT R=
opar</div><table width=3D"470" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;wid=
th:470px;margin-top:5px"><tbody><tr><td style=3D"color:rgb(141,141,141)"><p=
 style=3D"margin:0px"><span style=3D"display:inline-block"><a href=3D"tel:+=
91-7015802356" style=3D"color:rgb(141,141,141);font-family:sans-serif" targ=
et=3D"_blank">+91-</a>7974897279</span>=C2=A0<span style=3D"color:rgb(69,10=
2,142);display:inline-block">|</span>=C2=A0arhum.19eez0005<span style=3D"di=
splay:inline-block"><a href=3D"mailto:2016eez0009@iitrpr.ac.in" style=3D"co=
lor:rgb(141,141,141);font-family:sans-serif" target=3D"_blank">@iitrpr.ac.i=
n</a></span></p></td></tr><tr><td style=3D"font-family:sans-serif;color:rgb=
(141,141,141)"><span style=3D"display:inline-block">Lab No. 323, Communicat=
ion Research Lab, J.C.Bose Building</span></td></tr></tbody></table></div><=
/div></div></div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALI=
TY NOTICE:=C2=A0The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></=
span></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/span></span></span></font></b>
--000000000000527ca105f860e6b6--

--===============4950559620028883608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4950559620028883608==--
