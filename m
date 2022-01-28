Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6C04A0426
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jan 2022 00:12:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20DBA385120
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 18:12:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YMKG8lgN";
	dkim-atps=neutral
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by mm2.emwd.com (Postfix) with ESMTPS id E88B0385107
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 18:11:23 -0500 (EST)
Received: by mail-lf1-f44.google.com with SMTP id y15so14675219lfa.9
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 15:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CHcLcvl+10DEJGB1E6/O+rvfcuwf8Vpbl/HMDLtjVQI=;
        b=YMKG8lgNoMGlpVKc4DxTNT99LyvI7iwynDblBFCLfim1Vs4jWTj9GZjaeadkcPWFOh
         YmJcxpIIOLpB9DAnVa/Fw5ZPr6IxDa2ZgU+7t1c2rYr7r/UltrpD33fDQ/pYYysr6uAC
         v7MCLAWqBIvVUrlx+0hiIqBSGxiBXc5nxfTb6/HT1NGmhOPGBbCkSZk4iLxEr7J8TuI5
         WQHT1S36j/slZj0u+84h+cwzm9G1Q+SROFPjDbOx+HWjMSfCxGQ8VTJUBc9O80inZ83U
         AOpWvE0ekhtOac+2nS4dHEFvP2KGX7DrGzCxMTDcnMV8VwYahDlB09s8zkHhlsBPO0gx
         5LGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CHcLcvl+10DEJGB1E6/O+rvfcuwf8Vpbl/HMDLtjVQI=;
        b=ADIMYQP7Pflh2myzJlPvgEl+GzT83PXQgTsEeUSbDDcRY4Y3eBiMVoXVjvcnxRYJes
         UJOJ2TCRzhExHIbacQtVdFHZkTWweKFNGvTZLGSn1avO6FJCmeDt1InlNvZNHZf6YA/7
         IPZYSjN6ychOypsNv+NaOJkWIN5ln0GQeCOK7txY3COzld99cbJHUY0qn6R7WHqNDjRw
         b3zWwaHy7CUJvoi7G5q5/gQwMpwCRXTr3guIFLk8M6s+/vrQ3FO4Ac1z/rqQrOMtL+0d
         41c7TJy+eWeR9XYtB4eEJzGOOKn/iBFwYhkMFRqagVOEwFc3bYCwqTwGqKJesifmSRi0
         5UVg==
X-Gm-Message-State: AOAM533ZcMDHgW17eh3IRXAGZnjEcCnGgmk7TdOdM8DyCxAQSk5tOFCL
	+36IXsLq/AofmmLrVeqHMEn9ZNyvkmxrt+p0yTs=
X-Google-Smtp-Source: ABdhPJyTQhdajnw3NCP2pyJaaO2ayiJxTUjG4Uhkz7Pc76EzZvDHnMQA9tDob9MqatyNwVH41ojNuuCSKWe+eDUzb/Q=
X-Received: by 2002:a05:6512:76:: with SMTP id i22mr7914291lfo.294.1643411482493;
 Fri, 28 Jan 2022 15:11:22 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSjMbfUXf+AmMKWTBP_m2S28iaAnhQdvfi++qPGXPctdg@mail.gmail.com>
 <5C259DE5-E60B-4750-BBBC-EFAF0CAE2E96@gmail.com> <4f3e2ba0-24d4-1a42-9705-6fc97e2c7260@gmail.com>
 <CACwKM9L7diK5CqHjzBpKWSf0E4P-YCTaQzrqHshKRHK-b10vmA@mail.gmail.com> <CAB__hTTCTkGz1LOeLjqzHeP-fxiu-reeJ=nZVyp0S4-V9mYHog@mail.gmail.com>
In-Reply-To: <CAB__hTTCTkGz1LOeLjqzHeP-fxiu-reeJ=nZVyp0S4-V9mYHog@mail.gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Fri, 28 Jan 2022 18:11:11 -0500
Message-ID: <CACwKM9+BF9dpR=RWs9HVeoz5o_Xwex2bgf-Abe0YiG-=pdpALQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: SD4NLA3HTGT5NQ3EWQ64QX2K2PQBWWYL
X-Message-ID-Hash: SD4NLA3HTGT5NQ3EWQ64QX2K2PQBWWYL
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SD4NLA3HTGT5NQ3EWQ64QX2K2PQBWWYL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7113834666075473453=="

--===============7113834666075473453==
Content-Type: multipart/alternative; boundary="000000000000a247d705d6ac8d64"

--000000000000a247d705d6ac8d64
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

yes, set to 1.0

On Fri, Jan 28, 2022 at 5:59 PM Rob Kossler <rkossler@nd.edu> wrote:

> Did Marcus' suggestion below about setting the start time fix the issue?
>
> On Fri, Jan 28, 2022 at 11:31 AM Paul Atreides <maud.dib1984@gmail.com>
> wrote:
>
>> single
>>
>> On Fri, Jan 28, 2022 at 11:18 AM Marcus D. Leech <patchvonbraun@gmail.co=
m>
>> wrote:
>>
>>> On 2022-01-28 10:38, Paul Atreides wrote:
>>>
>>> Rob, I=E2=80=99ve been able to extend the functionality of gr-uhd to in=
clude the
>>> enable switch for each LO distribution port. Thank you for the informat=
ion.
>>>
>>> I am now having synchronization issues with the transmit stream in the
>>> GNURadio. It appears as though the radio channels are not starting at t=
he
>>> same time. Are you aware of any commands that you=E2=80=99ve had to run=
 from
>>> external applications that ensure the start time for both transmitters =
is
>>> the same?
>>>
>>> <end transmission>
>>>
>>> WHen specifying a "start time" in the GRC UHD Sink block of anything >=
=3D
>>> 0.0, this code is inserted into the generated Python:
>>>
>>> self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(0.5))
>>>
>>> Are you using a single 10GiGe link, or using dual links?
>>>
>>>
>>>
>>>
>>>

--000000000000a247d705d6ac8d64
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">yes, set to 1.0<br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 28, 2022 at 5:59 PM Rob Kos=
sler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Did Marcus&#39; suggestion below about setting the start time fix the=
 issue?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Jan 28, 2022 at 11:31 AM Paul Atreides &lt;<a href=3D"mailto=
:maud.dib1984@gmail.com" target=3D"_blank">maud.dib1984@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">single<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, Jan 28, 2022 at 11:18 AM Marcus D. Leech &lt;<a =
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-01-28 10:38, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      Rob, I=E2=80=99ve been able to extend the functionality of gr-uhd to
      include the enable switch for each LO distribution port. Thank you
      for the information.
      <div><br>
      </div>
      <div>I am now having synchronization issues with the transmit
        stream in the GNURadio. It appears as though the radio channels
        are not starting at the same time. Are you aware of any commands
        that you=E2=80=99ve had to run from external applications that ensu=
re
        the start time for both transmitters is the same?</div>
      <div><br>
      </div>
      <div>&lt;<span>end
          transmission&gt;</span></div>
      <br>
    </blockquote>
    WHen specifying a &quot;start time&quot; in the GRC UHD Sink block of a=
nything
    &gt;=3D 0.0, this code is inserted into the generated Python:<br>
    <br>
    self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(0.5))<br>
    <br>
    Are you using a single 10GiGe link, or using dual links?<br>
    <br>
    <br>
    <br>
    <br>
  </div>

</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000a247d705d6ac8d64--

--===============7113834666075473453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7113834666075473453==--
