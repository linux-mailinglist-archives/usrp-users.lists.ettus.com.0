Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6F035EB69
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 05:24:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FA1138463C
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 23:24:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="ygToeEmp";
	dkim-atps=neutral
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	by mm2.emwd.com (Postfix) with ESMTPS id C06C53840A2
	for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 23:23:52 -0400 (EDT)
Received: by mail-ua1-f53.google.com with SMTP id a8so2886178uan.10
        for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 20:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dmWOpI+mHAWpChsmmIvqXYylajz3ghdr+ebAeANB5bQ=;
        b=ygToeEmpXNdUC+CCVWUaj/WMUACb62q72YHFaYGOSz49hbiFyuN0cBN/WAQ1B2NApk
         GlhpAN8BrNmhI+W8dSQ4dVH8L+x/SBV39BOI509c/6GowXDW3RMmvrqoJQWuP1hyzGyT
         QrQU3kTlIfkva4uZ/9BRXpWupxJMV9EBX6Cd9qaT5Ws14Mk/KfpOLo0bTnNbAqtImwc1
         58YELSIszeMfJftxER6vt7IlImka9m0vtWj9qmqpjhK5t+Hh/vFObCI4cAzSykXngVcU
         MNeKIdH1z14UZ7zkK1ekcUu9uKos7MEipa1KZBabAmMwmaWs7WZT/ovEv0b1fNG4uffC
         k0+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dmWOpI+mHAWpChsmmIvqXYylajz3ghdr+ebAeANB5bQ=;
        b=fkha6aF64Nmlzu1LBMrsTnlK/tsI3gQ5Tc/RL3nh/agDxEwba1fE5ci+9EQhu2+5vc
         Pvei/LVyTTQyDTR+vrGwCu9eam+Y+S57edSBM6HJwJ5KlDKCRYk/TquRvr0sFqVxyHg1
         C3xu3/B4jg3wsyPMfG/F5iyg25KajjzmcaN4aEq9Izd7z3OGirsA7yDCO3jHn5WX6BmP
         PVflb1Aqe7Fv2QtZwoOmfIagM8N2kUyEpuwU1IcrkqiTCXvoyJ9KWETZXUw8tkdvUqC6
         PxgZJcWrDGz82MdJ8K8L/fwaecMbw5yI+TP916jKTjuHgJMyFj7hM8E6Zy+BrHeqzL7c
         NNRA==
X-Gm-Message-State: AOAM530pNeCkJgGBozpceaa7MmYZtzfMoJyRDennCPtLVelLpMKk4CB/
	2RFCHjqQamg1k27s9vIJc5aL9xQVn6H0VaiDfPQ5kQ==
X-Google-Smtp-Source: ABdhPJyg7gKVb5sN5deI6Kgclk9EpMIpXzRuP84a2uC++NAFLKY4hblj859xl0J13gY5W/gJ5BPAi8G0R1CptJ3aNo8=
X-Received: by 2002:a9f:3f09:: with SMTP id h9mr25866804uaj.139.1618370632220;
 Tue, 13 Apr 2021 20:23:52 -0700 (PDT)
MIME-Version: 1.0
References: <CALNMZ8Uu4aAWWfPOEWXE3YRRYrsd-U5dGGUecY=sJQAXc9tD5g@mail.gmail.com>
 <87BD99F9-C3E1-4F43-91AD-C3F034526CA3@gmail.com>
In-Reply-To: <87BD99F9-C3E1-4F43-91AD-C3F034526CA3@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 14 Apr 2021 13:23:41 +1000
Message-ID: <CALNMZ8VKM7cjRnAARFEo+1bnmNq7pZPFZ22wPbQ_g7_xLdLMAg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: 3J346OYBDKDVL4DFD5UHGVZF4F4WIVWA
X-Message-ID-Hash: 3J346OYBDKDVL4DFD5UHGVZF4F4WIVWA
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Contradictory overflow messages when recording rx samples with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3J346OYBDKDVL4DFD5UHGVZF4F4WIVWA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3425039315876167226=="

--===============3425039315876167226==
Content-Type: multipart/alternative; boundary="000000000000a618e405bfe64673"

--000000000000a618e405bfe64673
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Fair enough.  To ensure that this problem is logged with the Ettus
engineering team, is there an official mailing list or email address that I
should report this bug to?

On Wed, Apr 14, 2021 at 12:02 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> That just sounds like a bug. The Python API is still considered
> experimental.
>
> Sent from my iPhone
>
> On Apr 13, 2021, at 9:22 PM, Brendan Horsfield <
> brendan.horsfield@vectalabs.com> wrote:
>
> =EF=BB=BF
> Hi Marcus,
>
> I have run some comparison tests between the C++ and Python versions of
> "benchmark_rate", using a high sampling rate in order to force some
> overruns.
>
> It appears that both versions are detecting & reporting overrun events
> correctly.  However, when it comes to the number of dropped samples, the
> Python version always returns zero for the number of dropped samples.
>
> Do you have any idea why this is the case?  Is the resolution of the time=
r
> less fine-grained in the Python implementation perhaps?
>
> Thanks,
> Brendan.
>
>
>
>
> On Tue, Apr 13, 2021 at 11:05 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>>
>>
>> Sent from my iPhone
>>
>> On Apr 13, 2021, at 3:05 AM, brendan.horsfield@vectalabs.com wrote:
>>
>> =EF=BB=BF
>>
>> Hi All,
>>
>> I am using a Python script to capture a short burst of rx samples from m=
y
>> B210. The script is based heavily on the Ettus example =E2=80=9Cbenchmar=
k_rate.py=E2=80=9D,
>> with a couple of additional tweaks I took from the Ettus GitHub repo (
>> https://github.com/EttusResearch/uhd/blob/master/host/python/uhd/usrp/mu=
lti_usrp.py
>> ).
>>
>> In my script I am calling my rx sampling function repeatedly using a
>> =E2=80=9Cfor" loop. Any errors that occur during sampling are stored in =
a
>> uhd.types.RXMetadata() object, just like in the original Ettus script.
>>
>> Here=E2=80=99s the strange part:
>>
>> While the script is running, the letter =E2=80=98O=E2=80=99 is printed o=
n the screen
>> about 50% of the time, which I believe is an overflow warning from the
>> Fastpath logger. However, the number of errors being detected by the
>> RXMetadata() object is almost zero. How can this be?
>>
>> Some questions:
>>
>>    -
>>
>>    How seriously should I take the Fastpath =E2=80=98O=E2=80=99 warning?=
 What does it
>>    actually mean? Does it mean that this burst of samples will be
>>    corrupted/incomplete?
>>
>> It absolutely means that samples were lost.
>>
>> The metadata should include time stamps that will allow you to compute
>> how much was lost.
>>
>>
>>    -
>>
>>    Why is the RXMetadata object not returning an error every single time
>>    that the Fastpath logger does?
>>
>> This I=E2=80=99m not certain of.
>>
>> Thanks,
>>
>> Brendan.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>

--000000000000a618e405bfe64673
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Fair enough.=C2=A0 To ensure that this problem is logged w=
ith=C2=A0the Ettus engineering team, is there an official mailing list or e=
mail address that I should report this bug to?=C2=A0</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 14, 2021 at=
 12:02 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">pat=
chvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"auto">That just sounds like a bug. The Pyth=
on API is still considered experimental.=C2=A0<br><br><div dir=3D"ltr">Sent=
 from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr =
13, 2021, at 9:22 PM, Brendan Horsfield &lt;<a href=3D"mailto:brendan.horsf=
ield@vectalabs.com" target=3D"_blank">brendan.horsfield@vectalabs.com</a>&g=
t; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"l=
tr">=EF=BB=BF<div dir=3D"ltr">Hi Marcus,<div><br></div><div>I have run some=
 comparison=C2=A0tests between the C++ and Python versions of &quot;benchma=
rk_rate&quot;, using a high sampling rate in order to force some overruns.<=
/div><div><br></div><div>It appears that both versions are detecting &amp; =
reporting overrun events correctly.=C2=A0 However, when it comes to the num=
ber of dropped samples, the Python version always returns zero for the numb=
er of dropped samples.</div><div><br></div><div>Do you have=C2=A0any idea w=
hy this is the case?=C2=A0 Is the resolution of the timer less fine-grained=
 in the Python implementation perhaps?</div><div><br></div><div>Thanks,</di=
v><div>Brendan.</div><div><br></div><div><br></div><div>=C2=A0=C2=A0</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Apr 13, 2021 at 11:05 PM Marcus D Leech &lt;<a href=3D"mailto:patchv=
onbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"aut=
o"><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><=
blockquote type=3D"cite">On Apr 13, 2021, at 3:05 AM, <a href=3D"mailto:bre=
ndan.horsfield@vectalabs.com" target=3D"_blank">brendan.horsfield@vectalabs=
.com</a> wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div di=
r=3D"ltr">=EF=BB=BF<p>Hi All,</p><p>I am using a Python script to capture a=
 short burst of rx samples from my B210.  The script is based heavily on th=
e Ettus example =E2=80=9Cbenchmark_rate.py=E2=80=9D, with a couple of addit=
ional tweaks I took from the Ettus GitHub repo (<a href=3D"https://github.c=
om/EttusResearch/uhd/blob/master/host/python/uhd/usrp/multi_usrp.py" target=
=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/host/python/uh=
d/usrp/multi_usrp.py</a>).</p><p>In my script I am calling my rx sampling f=
unction repeatedly using a =E2=80=9Cfor&quot; loop.  Any errors that occur =
during sampling are stored in a uhd.types.RXMetadata() object, just like in=
 the original Ettus script.   </p><p>Here=E2=80=99s the strange part:</p><p=
>While the script is running, the letter =E2=80=98O=E2=80=99 is printed on =
the screen about 50% of the time, which I believe is an overflow warning fr=
om the Fastpath logger.  However, the number of errors being detected by th=
e RXMetadata() object is almost zero.  How can this be?</p><p>Some question=
s:</p><ul><li><p>How seriously should I take the Fastpath =E2=80=98O=E2=80=
=99 warning?  What does it actually mean?  Does it mean that this burst of =
samples will be corrupted/incomplete?</p></li></ul></div></blockquote>It ab=
solutely means that samples were lost.=C2=A0<div><br></div><div>The metadat=
a should include time stamps that will allow you to compute how much was lo=
st.=C2=A0</div><div><br></div><div><blockquote type=3D"cite"><div dir=3D"lt=
r"><ul><li><p>Why is the RXMetadata object not returning an error every sin=
gle time that the Fastpath logger does? </p></li></ul></div></blockquote>Th=
is I=E2=80=99m not certain of.=C2=A0<br><blockquote type=3D"cite"><div dir=
=3D"ltr"><p>Thanks, </p><p>Brendan.</p>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>
</div></blockquote></div></blockquote></div>

--000000000000a618e405bfe64673--

--===============3425039315876167226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3425039315876167226==--
