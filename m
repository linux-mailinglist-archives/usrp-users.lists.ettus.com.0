Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DD42BB0E8
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 17:49:17 +0100 (CET)
Received: from [::1] (port=48706 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kg9aq-0006QU-VZ; Fri, 20 Nov 2020 11:49:04 -0500
Received: from mail-oi1-f172.google.com ([209.85.167.172]:44946)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kg9an-0006GJ-81
 for USRP-users@lists.ettus.com; Fri, 20 Nov 2020 11:49:01 -0500
Received: by mail-oi1-f172.google.com with SMTP id t16so11060304oie.11
 for <USRP-users@lists.ettus.com>; Fri, 20 Nov 2020 08:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9RIuHKPkMUL8gF3c3algHKobWoN/+DIj50VPtfyyV6Q=;
 b=CFa/uH7sal8c07hvT1jLTHSpai85xak4juuWvvxRYBjjfivFSpLPyYE4bVTt7R5auy
 /iVss47eE5greUdIQkRty23WggCyvPzzD4RaDg6yVd94Xf1cZooRKgUe7Fu4zud1Oi+8
 cJiH0v4BaG6UvR2/9gdQTzPW3oBV/HhfyAkWScCBDxAQPJ1xNMIyMYsTp+k5qWTEGqGJ
 zvQ1YhxHmeSPtgV5+H6fGDmO3lui45vwlDNj4dGI1b7gI4weNc+mVO8NQ5qGDwEp9ydW
 TMj4kuQLZjknE5Gyt7SBr8LGMqOuQZuqxA82fTANw5Kav2jfhbnW+AZl0/2uQlIaV3Du
 yDqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9RIuHKPkMUL8gF3c3algHKobWoN/+DIj50VPtfyyV6Q=;
 b=FncsAwqmIh3cE/Zgu5a5rEemeaNl6oiMEQ00LwrpREt+MaKgsO7qpo19pyostLj9Ri
 a6aUwbd1ZN1NXefl9RTujWuaIg+hQET+0M8JcQgixDu2DqeWfdIL540BYUYZflpPsxVQ
 sUoTg2xAKqAuEES6KM3FUjOfrGQ7BJdh6VHgs/+1rN5UkKDsb7B9v1IMPnjRGA7KeDzI
 v2tCghi3QwXJr8DUrCRa1D3vrvTcn8ewOAduFE+iePDVgz7lhtRBDFNfS39e6LupltW4
 7g/kDp66gmFbPBOMdq2Gp9buq+KWZfi82dz5aYTTWcfCO0sQk7Oy2IyIrnC7ViMbDTHn
 v/SA==
X-Gm-Message-State: AOAM532uTYUi9nbVFghzPuHr7457okqmU1T+xwpGJ4prZZYer4se9Xp8
 Rds07J9RG7jc5Oe+dzSo50S6OHg+F4q54KSGqUMYMw==
X-Google-Smtp-Source: ABdhPJwxg+dpcPx37IrakR+i+tejYjuXIZ9PdtpU2xkrcavLp/1XFuu7IFIk0sKlTaKHqRfRVHJVDJICv8f2YArkNps=
X-Received: by 2002:aca:5c82:: with SMTP id q124mr7031514oib.33.1605890900407; 
 Fri, 20 Nov 2020 08:48:20 -0800 (PST)
MIME-Version: 1.0
References: <CAM+cdhLHCCLtDbjih2U+fPidDXtuQjf0syty6YwuSeszQLNx+w@mail.gmail.com>
 <52524682-BA34-4392-9CCD-D7930C577AA8@gmail.com>
 <CAM+cdhKDOrpZ-Ghyv=NZgNSKaa1OTKNB+Xwd=G7aY4zyAMpu+w@mail.gmail.com>
 <CAM+cdh+w+TyyAxVhwc1ZV5fwYz0oXh418a=6vcLgLp6wdxsgUQ@mail.gmail.com>
 <5FB6F2A4.1070603@gmail.com>
 <CAM+cdh+R8FC9-bkWCx-NV2f3KY+o1HuCxxLZeeXMiL5Ph48hnQ@mail.gmail.com>
In-Reply-To: <CAM+cdh+R8FC9-bkWCx-NV2f3KY+o1HuCxxLZeeXMiL5Ph48hnQ@mail.gmail.com>
Date: Fri, 20 Nov 2020 10:48:09 -0600
Message-ID: <CAB__hTQF0Qo4HeXTS+k5tZ7G+yOrk+dniSeaWgmSc6_3LxptmQ@mail.gmail.com>
To: Christopher.Flood@colorado.edu
Subject: Re: [USRP-users] Ettus N310 LO IN RX Synchronization
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0934283054686604938=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0934283054686604938==
Content-Type: multipart/alternative; boundary="000000000000ab0baa05b48c9c6a"

--000000000000ab0baa05b48c9c6a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Christopher,
If I understood you correctly, you are trying to use an N310 Tx port as the
LO for the N310 Rx ports?  A previous post from several years ago says this
won't work. Perhaps something has changed but not sure. Anyway, the
following was from Michael West a few years ago:

   - The TX LO must be supplied to both daughterboards during the AD9371
   initial calibrations.  The RX LO is only required for the channels to be
   used to make sure the AD9371 initial calibrations for the RX are done
   correctly.  And yes, the external LO must all be set to 5 GHz during the
   initialization (call to multi_usrp::make()).
   - The granularity for setting LO source is currently system wide on the
   N310, so using a transmit channel from dboard B won't work.  At some poi=
nt,
   hopefully we will change the granularity so the LO source can be set
   independently for TX and RX on each daughterboard.  We are still working
   out some issues with re-running the AD9371 calibrations taking a
   considerable amount of time, so we currently avoid doing it.  Once we ha=
ve
   those issues fixed, we can probably do more dynamic switching between LO
   sources and add better granularity.
   - For now, I recommend using an external LO source and splitting into
   the TX and RX.  Yes, it requires double the power and is not ideal, but =
the
   only other option I see in the short term is to hack the UHD code to har=
d
   code the LO source for each TX and RX.  If you want to hack the UHD code=
,
   let me know and I will see if I can find the appropriate code to hack up=
.

Rob

On Thu, Nov 19, 2020 at 6:06 PM Christopher Flood via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Marcus,
>
> As always, I appreciate your detailed response. I was tossing that
> question out there just to make sure my interpretation of how the externa=
l
> LO RX input worked was correct. One of the recent tests we ran was
> comparing signals across daughterboards. We noticed that the residuals
> between signals on the same daughterboard were significantly less noisy
> than residuals between signals across daughterboards. We had guessed that
> was due to the difference in local oscillators used in the RX chain. I wa=
s
> hoping to provide the same reference signal to both external LO RX ports =
in
> order to synchronize both daughterboards, but the frequency we're working
> at is below the spec you mentioned.
>
> We've had a bit of discussion about using the external 10MHz input in the
> past and I believe the conclusion we came to was that the error I was
> seeing was characteristic of the expected error in the DDC / DUC.  Perhap=
s
> working at the lower end of the frequency specification of the N310 is
> starting to catch up to me....
>
>
>
> On Thu, Nov 19, 2020 at 3:33 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 11/19/2020 04:03 PM, Christopher Flood wrote:
>>
>> Just for my own edification, what is the exact role of the signal that i=
s
>> put into the LO IN RX port? And why does it need to be exactly twice the
>> desired receive frequency? Wouldn't there be additional resolution for a=
ny
>> frequency greater than twice the desired receive frequency?
>>
>> That signal substitutes for the LO signal generated internally by the
>> AD9371 RFFE chip.
>>
>> It has to be at 2X the desired input frequency because the phase-splitte=
r
>> in that chip uses a "2XLO" architecture, which requires the signal
>>   to be at twice the desired LO frequency.
>>
>> Further this functionality is only available for tuned frequencies
>> between 300MHz and 4GHz, (600Mhz to 8GHz LO input).   This is because
>>   for frequencies below 300MHz, the device uses an up-conversion scheme.
>>
>> If you're not certain WHAT the external LO *does*, perhaps you don't nee=
d
>> it in your application?
>>
>> Normally for phase-coherent applications, the highest-quality (lowest
>> mutual phase noise) coherence is obtained when each mixer receives
>>   exactly the same LO signal, which is why an external LO input is
>> provided in the N310.  The "second-best" implementation is to have
>>   all the synthesizers share a common reference clock, which is the
>> scenario when you aren't using the external LO input.
>>
>> Now, somewhat orthogonal this is is "where does the device get its
>> reference from?"  If you're building a multi-device system where
>>   some form of phase-coherence is desired, then they all have to share
>> their reference clock--which is where the external 10MHz
>>   clock comes in.
>>
>>
>>
>>
>> On Thu, Nov 19, 2020 at 1:11 PM Christopher Flood <
>> Christopher.Flood@colorado.edu> wrote:
>>
>>> Yes, the signal should be at +3dBm, the Vrms is ~300mV into a 50 ohm
>>> load. The frequency of the signal is also twice the frequency of the si=
gnal
>>> I'm trying to gather data on. However, due to the way the documentation=
 is
>>> phrased, I wasn't sure if 20MHz is too low of a frequency for the LO RX=
 IN.
>>>
>>> I have not tried the init_cals=3Dbasic argument. I can give that a shot
>>> and report back.
>>>
>>> -Chris
>>>
>>> On Thu, Nov 19, 2020, 12:32 PM Marcus D Leech <patchvonbraun@gmail.com>
>>> wrote:
>>>
>>>> Are you inputting an LO signal at twice the desired frequency and at
>>>> +3dBm?
>>>>
>>>> Have you tried adding init_cals=3DBASIC to your device ages?
>>>>
>>>> Sent from my iPhone
>>>>
>>>> > On Nov 19, 2020, at 2:26 PM, Christopher Flood via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>> >
>>>> > =EF=BB=BF
>>>> > Hi all,
>>>> >
>>>> > I've seen some discussion about this on the email lists, but I'm
>>>> still having a bit of trouble. I'm trying to use the LO IN RX ports on=
 the
>>>> front of the N310 to synchronize the oscillators on the two daughterbo=
ards.
>>>> I was thinking I could generate a signal on one of the TX/RX ports of =
the
>>>> SDR and feed that into the LO IN RX ports at the appropriate frequency=
 and
>>>> power. However, when I test this setup in GNU Radio Companion I don't =
get
>>>> any meaningful data, so I must be doing something wrong.
>>>> >
>>>> > The input signal that I want to sample is a 10MHz signal that is
>>>> going into an RX2 port on the front end of the SDR. When I set the dev=
ice
>>>> argument "rx_lo_source=3Dinternal" and run it, the data I get looks ex=
actly
>>>> how I would expect. When I change the device argument to
>>>> "rx_lo_source=3Dexternal" and run it, I don't get anything that makes =
sense.
>>>> >
>>>> > Am I using the LO IN RX ports correctly? The documentation doesn't
>>>> say much besides power and frequency ranges.
>>>> >
>>>> > Any help or advice would be much appreciated.
>>>> >
>>>> > -Chris
>>>> > _______________________________________________
>>>> > USRP-users mailing list
>>>> > USRP-users@lists.ettus.com
>>>> >
>>>> http://secure-web.cisco.com/1rpFFtn1JZDE_g214Q-YS6vXmf7iX-GrSqz5_gIRlz=
T74BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFMF-Lzacu4VXZpGTxpMgLHyxfkdQ2pzOtNNtecm_gM=
TYICiRaahesVZWF5a2dj7cjYzaLEjuC4PUBV2IKiJN9B3Z0EGCGPr6nbTyCm-I7dJfEsfYsSIFd=
FFSQP6iWj2NrE4xYBVKyPCxJT34HfnXS_KoENsd6WDKRct0TsItd4_dk4xBZEWrwNqes0pfV_RJ=
zJFNSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ7xvd9EiKc-aK5WHC2syeWL5YAO5QNCrMxT9JJ-i3=
tvC2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3jbvK3xggz-HHgjahAsx6zRH86NZDIoSe5_4tc6c0U=
eE03mYMgALuwY1kwoZr7b8-EjaFkvZRoF8mCGzGXTKfyvJuFHID1yA/http%3A%2F%2Flists.e=
ttus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com
>>>>
>>>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ab0baa05b48c9c6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Christopher,<div>If I understood you correctly, you are=
 trying to use an N310 Tx port as the LO for the N310 Rx ports?=C2=A0 A pre=
vious post from several years ago says this won&#39;t work. Perhaps somethi=
ng has changed but not sure. Anyway, the following was from Michael West a =
few years ago:</div><div><ul><li>The TX LO must be supplied to both daughte=
rboards during the AD9371 initial calibrations.=C2=A0 The RX LO is only req=
uired for the channels to be used to make sure the AD9371 initial calibrati=
ons for the RX are done correctly.=C2=A0 And yes, the external LO must all =
be set to 5 GHz during the initialization (call to multi_usrp::make()).</li=
><li>The granularity for setting LO source is currently system wide on the =
N310, so using a transmit channel from dboard B won&#39;t work.=C2=A0 At so=
me point, hopefully we will change the granularity so the LO source can be =
set independently for TX and RX on each daughterboard.=C2=A0 We are still w=
orking out some issues with re-running the AD9371 calibrations taking a con=
siderable amount of time, so we currently avoid doing it.=C2=A0 Once we hav=
e those issues fixed, we can probably do more dynamic switching between LO =
sources and add better granularity.</li><li>For now, I recommend using an e=
xternal LO source and splitting into the TX and RX.=C2=A0 Yes, it requires =
double the power and is not ideal, but the only other option I see in the s=
hort term is to hack the UHD code to hard code the LO source for each TX an=
d RX.=C2=A0 If you want to hack the UHD code, let me know and I will see if=
 I can find the appropriate code to hack up.</li></ul><div>Rob</div></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, Nov 19, 2020 at 6:06 PM Christopher Flood via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Marcus,<div><br></div><div>As always, I appreciate=
 your detailed response. I was tossing that question out there just to make=
 sure my interpretation of how the external LO RX input worked was correct.=
 One of the recent tests we ran was comparing signals across daughterboards=
. We noticed that the residuals between signals on the same daughterboard w=
ere significantly less noisy than residuals between signals across daughter=
boards. We had guessed that was due to the difference in local oscillators =
used in the RX chain. I was hoping to provide the same reference signal to =
both external LO RX ports in order to synchronize both daughterboards, but =
the frequency we&#39;re working at is below the spec you mentioned.=C2=A0</=
div><div><br></div><div>We&#39;ve had a bit of discussion about using the e=
xternal 10MHz input in the past and I believe the conclusion we came to was=
 that the error I was seeing was characteristic of the expected error in th=
e DDC / DUC.=C2=A0 Perhaps working at the lower end of the frequency specif=
ication of the N310 is starting to catch up to me....=C2=A0</div><div><br><=
/div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Nov 19, 2020 at 3:33 PM Marcus D. Leech &lt;<a =
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 11/19/2020 04:03 PM, Christopher
      Flood wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Just for my own edification, what is the exact role
        of the signal that is put into the LO IN RX port? And why does
        it need to be exactly twice the desired receive frequency?
        Wouldn&#39;t there be additional resolution for any frequency
        greater than twice the desired receive frequency?</div>
    </blockquote>
    That signal substitutes for the LO signal generated internally by
    the AD9371 RFFE chip.<br>
    <br>
    It has to be at 2X the desired input frequency because the
    phase-splitter in that chip uses a &quot;2XLO&quot; architecture, which
    requires the signal <br>
    =C2=A0 to be at twice the desired LO frequency.<br>
    <br>
    Further this functionality is only available for tuned frequencies
    between 300MHz and 4GHz, (600Mhz to 8GHz LO input).=C2=A0=C2=A0 This is
    because<br>
    =C2=A0 for frequencies below 300MHz, the device uses an up-conversion
    scheme.<br>
    <br>
    If you&#39;re not certain WHAT the external LO *does*, perhaps you don&=
#39;t
    need it in your application?<br>
    <br>
    Normally for phase-coherent applications, the highest-quality
    (lowest mutual phase noise) coherence is obtained when each mixer
    receives<br>
    =C2=A0 exactly the same LO signal, which is why an external LO input is
    provided in the N310.=C2=A0 The &quot;second-best&quot; implementation =
is to have<br>
    =C2=A0 all the synthesizers share a common reference clock, which is th=
e
    scenario when you aren&#39;t using the external LO input.<br>
    <br>
    Now, somewhat orthogonal this is is &quot;where does the device get its
    reference from?&quot;=C2=A0 If you&#39;re building a multi-device syste=
m where<br>
    =C2=A0 some form of phase-coherence is desired, then they all have to
    share their reference clock--which is where the external 10MHz<br>
    =C2=A0 clock comes in.<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 19, 2020 at 1:11
          PM Christopher Flood &lt;<a href=3D"mailto:Christopher.Flood@colo=
rado.edu" target=3D"_blank">Christopher.Flood@colorado.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">
            <div>Yes, the signal should be at +3dBm, the Vrms is ~300mV
              into a 50 ohm load. The frequency of the signal is also
              twice the frequency of the signal I&#39;m trying to gather
              data on. However, due to the way the documentation is
              phrased, I wasn&#39;t sure if 20MHz is too low of a frequency
              for the LO RX IN.=C2=A0</div>
            <div dir=3D"auto"><br>
            </div>
            <div dir=3D"auto">I have not tried the init_cals=3Dbasic
              argument. I can give that a shot and report back.=C2=A0</div>
            <div dir=3D"auto"><br>
            </div>
            <div dir=3D"auto">-Chris=C2=A0<br>
              <br>
              <div class=3D"gmail_quote" dir=3D"auto">
                <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 19, 2020,
                  12:32 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Are you i=
nputting
                  an LO signal at twice the desired frequency and at
                  +3dBm?<br>
                  <br>
                  Have you tried adding init_cals=3DBASIC to your device
                  ages?<br>
                  <br>
                  Sent from my iPhone<br>
                  <br>
                  &gt; On Nov 19, 2020, at 2:26 PM, Christopher Flood
                  via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>=
&gt;
                  wrote:<br>
                  &gt; <br>
                  &gt; =EF=BB=BF<br>
                  &gt; Hi all,<br>
                  &gt; <br>
                  &gt; I&#39;ve seen some discussion about this on the emai=
l
                  lists, but I&#39;m still having a bit of trouble. I&#39;m
                  trying to use the LO IN RX ports on the front of the
                  N310 to synchronize the oscillators on the two
                  daughterboards. I was thinking I could generate a
                  signal on one of the TX/RX ports of the SDR and feed
                  that into the LO IN RX ports at the appropriate
                  frequency and power. However, when I test this setup
                  in GNU Radio Companion I don&#39;t get any meaningful
                  data, so I must be doing something wrong. <br>
                  &gt; <br>
                  &gt; The input signal that I want to sample is a 10MHz
                  signal that is going into an RX2 port on the front end
                  of the SDR. When I set the device argument
                  &quot;rx_lo_source=3Dinternal&quot; and run it, the data =
I get
                  looks exactly how I would expect. When I change the
                  device argument to &quot;rx_lo_source=3Dexternal&quot; an=
d run it,
                  I don&#39;t get anything that makes sense. <br>
                  &gt; <br>
                  &gt; Am I using the LO IN RX ports correctly? The
                  documentation doesn&#39;t say much besides power and
                  frequency ranges. <br>
                  &gt; <br>
                  &gt; Any help or advice would be much appreciated.<br>
                  &gt; <br>
                  &gt; -Chris<br>
                  &gt; _______________________________________________<br>
                  &gt; USRP-users mailing list<br>
                  &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D=
"noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
                  &gt; <a href=3D"http://secure-web.cisco.com/1rpFFtn1JZDE_=
g214Q-YS6vXmf7iX-GrSqz5_gIRlzT74BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFMF-Lzacu4VXZ=
pGTxpMgLHyxfkdQ2pzOtNNtecm_gMTYICiRaahesVZWF5a2dj7cjYzaLEjuC4PUBV2IKiJN9B3Z=
0EGCGPr6nbTyCm-I7dJfEsfYsSIFdFFSQP6iWj2NrE4xYBVKyPCxJT34HfnXS_KoENsd6WDKRct=
0TsItd4_dk4xBZEWrwNqes0pfV_RJzJFNSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ7xvd9EiKc-a=
K5WHC2syeWL5YAO5QNCrMxT9JJ-i3tvC2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3jbvK3xggz-HH=
gjahAsx6zRH86NZDIoSe5_4tc6c0UeE03mYMgALuwY1kwoZr7b8-EjaFkvZRoF8mCGzGXTKfyvJ=
uFHID1yA/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lis=
ts.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">http://secure=
-web.cisco.com/1rpFFtn1JZDE_g214Q-YS6vXmf7iX-GrSqz5_gIRlzT74BRG0LQVcDxlbCKO=
BLjxI7GcMNxycsBFMF-Lzacu4VXZpGTxpMgLHyxfkdQ2pzOtNNtecm_gMTYICiRaahesVZWF5a2=
dj7cjYzaLEjuC4PUBV2IKiJN9B3Z0EGCGPr6nbTyCm-I7dJfEsfYsSIFdFFSQP6iWj2NrE4xYBV=
KyPCxJT34HfnXS_KoENsd6WDKRct0TsItd4_dk4xBZEWrwNqes0pfV_RJzJFNSWC1tJjpFk1UVK=
8ySaM22YoapPkrKhJ7xvd9EiKc-aK5WHC2syeWL5YAO5QNCrMxT9JJ-i3tvC2sZAlgAyNSx78qV=
7M09bkZ1k2hn5qi3jbvK3xggz-HHgjahAsx6zRH86NZDIoSe5_4tc6c0UeE03mYMgALuwY1kwoZ=
r7b8-EjaFkvZRoF8mCGzGXTKfyvJuFHID1yA/http%3A%2F%2Flists.ettus.com%2Fmailman=
%2Flistinfo%2Fusrp-users_lists.ettus.com</a><br>
                  <br>
                </blockquote>
              </div>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ab0baa05b48c9c6a--


--===============0934283054686604938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0934283054686604938==--

