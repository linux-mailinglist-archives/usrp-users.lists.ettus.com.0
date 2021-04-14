Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E52F35EA91
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 04:03:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BD10384385
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 22:03:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W4KHCNVr";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id F16DE384325
	for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 22:02:28 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id m16so13733484qtx.9
        for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 19:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=bAvjcMxzQRrRTesXi9XZfyBjleS8b4lDOQSmfnKtEOw=;
        b=W4KHCNVr3Eo8M+CgAj7ZS7hqhN2gjiyKBNJo8rrmfKu/bcBhMbBX3uiJP5GYTRLUQd
         6RKTtIWnNyO/s5DJ+IcZdJhcvFdPSN7sdBIN9YWzy7SvmdgDJsCV0N7U8oUvLYsNlkxz
         CIZ10l8ry+tX5Z6P1qr0NUyuIsoQEx2NnyFofI6w/oXNaVttkcPGv0YrZRxzzMCmy6OA
         uVgLOHxyfQC5GbetqBf6XTmxKvIHx63hCa7HYdFDkrxk4rWr5NgeeSQBbefkxleYo5RC
         XnrD8sW5nClDJ0tzN5a4F+zXZLzGWB3yOzejy6H+RseW//OA+opKIIBmbrGratYWN1XD
         XQEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=bAvjcMxzQRrRTesXi9XZfyBjleS8b4lDOQSmfnKtEOw=;
        b=UBGulsHc0jb6tNZsx+hdp39l6G1axyjhJODTBgB2MulhV1gL44jzYIT/KDzURveGYb
         a8P/pnfcVg92LxFb/AOYH8yrhi93INO+BfBo6GrDhUgm6UrFEUKqP5/54S1g5yjrBL3U
         UxIHbm/x4aG3qzUSrtkj9REkvxuCwhc4oYtJ4E4yVXdBZPWhMrLuG95h1R6DVVUnZ54b
         5syo8upfORujoccGjS77QvWb58t+J4aD0PAj5BSft4mbOw82NP1BUgjUcBVej5bzGrhI
         3AxFg+Im1WZEv772ix8htD0tctGPZJv70KreuBpzfXqmLF22OlQYVtgJXKfHV+BlMkCv
         j7OQ==
X-Gm-Message-State: AOAM532oOVRX14hcE7dQvSSaXshgiyMkrgwzSxVa15XOX1YthODNYjtD
	O/GppGx6sAOur4dpAaOSiLWm0L07TitmNA==
X-Google-Smtp-Source: ABdhPJyY/PymVZFbxqKtnXRvJhVlZgNMunfch64Y+6paACEK9MfL+NwYJiWtH+a+Yd9h9jCQR3oS7g==
X-Received: by 2002:ac8:109a:: with SMTP id a26mr32496627qtj.156.1618365748107;
        Tue, 13 Apr 2021 19:02:28 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id 71sm6046749qkm.40.2021.04.13.19.02.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 19:02:27 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 13 Apr 2021 22:02:26 -0400
Message-Id: <87BD99F9-C3E1-4F43-91AD-C3F034526CA3@gmail.com>
References: <CALNMZ8Uu4aAWWfPOEWXE3YRRYrsd-U5dGGUecY=sJQAXc9tD5g@mail.gmail.com>
In-Reply-To: <CALNMZ8Uu4aAWWfPOEWXE3YRRYrsd-U5dGGUecY=sJQAXc9tD5g@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: ATLWMDBD4XUKTMKIDDY7OBP6FXAYENZO
X-Message-ID-Hash: ATLWMDBD4XUKTMKIDDY7OBP6FXAYENZO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Contradictory overflow messages when recording rx samples with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ATLWMDBD4XUKTMKIDDY7OBP6FXAYENZO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2430958253826613947=="


--===============2430958253826613947==
Content-Type: multipart/alternative; boundary=Apple-Mail-A9DCD5D5-8D2D-4A37-A633-673A60AC17AB
Content-Transfer-Encoding: 7bit


--Apple-Mail-A9DCD5D5-8D2D-4A37-A633-673A60AC17AB
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

That just sounds like a bug. The Python API is still considered experimental=
.=20

Sent from my iPhone

> On Apr 13, 2021, at 9:22 PM, Brendan Horsfield <brendan.horsfield@vectalab=
s.com> wrote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> I have run some comparison tests between the C++ and Python versions of "b=
enchmark_rate", using a high sampling rate in order to force some overruns.
>=20
> It appears that both versions are detecting & reporting overrun events cor=
rectly.  However, when it comes to the number of dropped samples, the Python=
 version always returns zero for the number of dropped samples.
>=20
> Do you have any idea why this is the case?  Is the resolution of the timer=
 less fine-grained in the Python implementation perhaps?
>=20
> Thanks,
> Brendan.
>=20
>=20
>  =20
>=20
>> On Tue, Apr 13, 2021 at 11:05 PM Marcus D Leech <patchvonbraun@gmail.com>=
 wrote:
>>=20
>>=20
>> Sent from my iPhone
>>=20
>>>> On Apr 13, 2021, at 3:05 AM, brendan.horsfield@vectalabs.com wrote:
>>>>=20
>>> =EF=BB=BF
>>> Hi All,
>>>=20
>>> I am using a Python script to capture a short burst of rx samples from m=
y B210. The script is based heavily on the Ettus example =E2=80=9Cbenchmark_=
rate.py=E2=80=9D, with a couple of additional tweaks I took from the Ettus G=
itHub repo (https://github.com/EttusResearch/uhd/blob/master/host/python/uhd=
/usrp/multi_usrp.py).
>>>=20
>>> In my script I am calling my rx sampling function repeatedly using a =E2=
=80=9Cfor" loop. Any errors that occur during sampling are stored in a uhd.t=
ypes.RXMetadata() object, just like in the original Ettus script.
>>>=20
>>> Here=E2=80=99s the strange part:
>>>=20
>>> While the script is running, the letter =E2=80=98O=E2=80=99 is printed o=
n the screen about 50% of the time, which I believe is an overflow warning f=
rom the Fastpath logger. However, the number of errors being detected by the=
 RXMetadata() object is almost zero. How can this be?
>>>=20
>>> Some questions:
>>>=20
>>> How seriously should I take the Fastpath =E2=80=98O=E2=80=99 warning? Wh=
at does it actually mean? Does it mean that this burst of samples will be co=
rrupted/incomplete?
>>>=20
>> It absolutely means that samples were lost.=20
>>=20
>> The metadata should include time stamps that will allow you to compute ho=
w much was lost.=20
>>=20
>>> Why is the RXMetadata object not returning an error every single time th=
at the Fastpath logger does?
>>>=20
>> This I=E2=80=99m not certain of.=20
>>> Thanks,
>>>=20
>>> Brendan.
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-A9DCD5D5-8D2D-4A37-A633-673A60AC17AB
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">That just sounds like a bug. The Python API=
 is still considered experimental.&nbsp;<br><br><div dir=3D"ltr">Sent from m=
y iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 13, 2021=
, at 9:22 PM, Brendan Horsfield &lt;brendan.horsfield@vectalabs.com&gt; wrot=
e:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr">Hi Marcus,<div><br></div><div>I have run some comparison=
&nbsp;tests between the C++ and Python versions of "benchmark_rate", using a=
 high sampling rate in order to force some overruns.</div><div><br></div><di=
v>It appears that both versions are detecting &amp; reporting overrun events=
 correctly.&nbsp; However, when it comes to the number of dropped samples, t=
he Python version always returns zero for the number of dropped samples.</di=
v><div><br></div><div>Do you have&nbsp;any idea why this is the case?&nbsp; I=
s the resolution of the timer less fine-grained in the Python implementation=
 perhaps?</div><div><br></div><div>Thanks,</div><div>Brendan.</div><div><br>=
</div><div><br></div><div>&nbsp;&nbsp;</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 13, 2021 at 11:05 PM M=
arcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"auto"><br><br><div dir=3D"ltr">Sent from my iPhone</div><d=
iv dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 13, 2021, at 3:05 AM, <a=
 href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_blank">brendan.h=
orsfield@vectalabs.com</a> wrote:<br><br></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Hi All,</p><p>I am using a Python scr=
ipt to capture a short burst of rx samples from my B210.  The script is base=
d heavily on the Ettus example =E2=80=9Cbenchmark_rate.py=E2=80=9D, with a c=
ouple of additional tweaks I took from the Ettus GitHub repo (<a href=3D"htt=
ps://github.com/EttusResearch/uhd/blob/master/host/python/uhd/usrp/multi_usr=
p.py" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/hos=
t/python/uhd/usrp/multi_usrp.py</a>).</p><p>In my script I am calling my rx s=
ampling function repeatedly using a =E2=80=9Cfor" loop.  Any errors that occ=
ur during sampling are stored in a uhd.types.RXMetadata() object, just like i=
n the original Ettus script.   </p><p>Here=E2=80=99s the strange part:</p><p=
>While the script is running, the letter =E2=80=98O=E2=80=99 is printed on t=
he screen about 50% of the time, which I believe is an overflow warning from=
 the Fastpath logger.  However, the number of errors being detected by the R=
XMetadata() object is almost zero.  How can this be?</p><p>Some questions:</=
p><ul><li><p>How seriously should I take the Fastpath =E2=80=98O=E2=80=99 wa=
rning?  What does it actually mean?  Does it mean that this burst of samples=
 will be corrupted/incomplete?</p></li></ul></div></blockquote>It absolutely=
 means that samples were lost.&nbsp;<div><br></div><div>The metadata should i=
nclude time stamps that will allow you to compute how much was lost.&nbsp;</=
div><div><br></div><div><blockquote type=3D"cite"><div dir=3D"ltr"><ul><li><=
p>Why is the RXMetadata object not returning an error every single time that=
 the Fastpath logger does? </p></li></ul></div></blockquote>This I=E2=80=99m=
 not certain of.&nbsp;<br><blockquote type=3D"cite"><div dir=3D"ltr"><p>Than=
ks, </p><p>Brendan.</p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe send a=
n email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_bl=
ank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquote></div=
></div></blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-A9DCD5D5-8D2D-4A37-A633-673A60AC17AB--

--===============2430958253826613947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2430958253826613947==--
