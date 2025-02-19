Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7284A3BBAA
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 11:29:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6AF98385F55
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 05:29:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739960963; bh=m3uDERxRnvLXroQ4XZ9+PoLndjZrO4y91cQbfsj/JYg=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=stajgodxZekBpHYL9U2B6HT4RMuf52rn7u7g/jxfHi12uTxFJv0NpEtUpHbHXb2d4
	 6dqgaVUUIn6aEL3NTn1zh5q2dSYgToyn2RLJ6ijeNwV/RoHwcKPh1K/fxm3B7yr07N
	 A88QurG/tcbLjszGiVjseH7fUUAesr2b3hzMX+l05plbwYmDsX5VQLWZfmbpoVRZHh
	 C3N0ibH7Kf27RfFKw9wO3kG+gGrax/wKEGrRi6LtqehJz4X2WMZHIm5/A04QCJPVMn
	 KMChkZSexUQroqOPWxz3j9NklYie8nEHUWAIRTtAj3y55168R1iSoTU9WwpRmDcUkd
	 ALBf9ft/jRwDQ==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A182385F55
	for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2025 05:29:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="CfhzUUdE";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5dec817f453so11134701a12.2
        for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2025 02:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739960958; x=1740565758; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nit5hVzAoGldXLMmQv1UAwyb+qqf8KEk54p0hyr24IA=;
        b=CfhzUUdE0EDdT02M4avwewSlhA7n4mL2TnD9WTGswo9O9xpCk7qcYeHETx6eRc3lfn
         YvMTs2YsnfnqprxIwCs1caANrT92wdbKepOvxuE5kzWhCXv1l1nIHzocGQlU9Uy6BGLC
         U3uUFAh2hunKXhChvIvPu9/BkQyv6Dam+mNKr9iMO9E8dVC9U+jmyQSe04mZcv4Bei48
         As/ZPBDa5LwBA4BcahZqSb11DdnAtFU5Gj7MHIVX+H7M2L274OR/fr6mRIJgMGvAlCKz
         9lXNNnigK0VUADEFy6+wsL/YqZvVCBSuYIIFRpoUpZvEm7fzdTBojzPiNyU6ll2UBCtU
         Vzcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739960958; x=1740565758;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nit5hVzAoGldXLMmQv1UAwyb+qqf8KEk54p0hyr24IA=;
        b=kbWT4m2B4yFI8klqun2qVmT+BOpgCMLEOO943+Cwj9erkM4HGjygX4mXPp9JLh6nSt
         Fp3//pTuZDH5EoqEMRax6JcsKMKH55uyKJkFG7kabK5beMww6+OI7HU6rfJXM08q6/24
         M+NsrTwwFTIoDYjReEvXpNcIXSB3SedJRBWVvdJHt/ZXHcqpqU1aTjEht8GUi9aZBPw0
         cLvVi2iIYjWeQd2F5EBA1gLdjFpYMduHE0yfT6IasBCbrQ3eg7bdJSzqMPX572/Pas8b
         1S6QbK6dE9ktTjStfpT/kHHouB0y0O0R9ddq1ct8S4Txyxc1yrN5aOq9dSWKV+53M3Pl
         vXXA==
X-Gm-Message-State: AOJu0YzJEOviSd9K9UBOP9P2ZFha+Ljp4KX2R4Z/9XnzYPnw7uI2nIfT
	lE5Hr+YJoXdHQ5pklsZlkd49Db1kKve/xz9tCZ7G6dFkEwzS6Ktgt7i14bfb3AmKTcAEI0Yl9g9
	0QMw/OSGxo+qIoVxC2k5FdH5mikTX/kygnKGKrxBP0oX3+sWxsko=
X-Gm-Gg: ASbGncthFLRgnSfeY+8fUGopEwKqws5qQmTSAb/YnOaL02ajpeBQ571Wjeo0suLYBg0
	c0zfFKJ22qjo+mTZsfvadO5kN7pxYsje4vS6SI4TKB9pRluZr3uI2Mk+JxuuRiBRm5on8zp0BZw
	tb0fhL5hjNT5eXp0fgsehgoKkOpL8=
X-Google-Smtp-Source: AGHT+IGdP4nm87ECE/abFQkhJhUlnKi5macdzMzcj38n4rKsdyXnBfabuVotTC/5m9hpdq+9yuwn8NcY6zwF7PUD1iA=
X-Received: by 2002:a05:6402:35c2:b0:5e0:88f4:1bc1 with SMTP id
 4fb4d7f45d1cf-5e0894fdb79mr2566376a12.2.1739960957456; Wed, 19 Feb 2025
 02:29:17 -0800 (PST)
MIME-Version: 1.0
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
 <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com> <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
 <7fc34db8-89e4-4e72-beda-cbdd872e3f19@gmail.com> <CALNMZ8UYp42D=Tdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gmail.com>
In-Reply-To: <CALNMZ8UYp42D=Tdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 19 Feb 2025 11:29:06 +0100
X-Gm-Features: AWEUYZlsalhsSfpDEe7BF0pU4BYq8jmLMK_c5jqRs0sV73tAbmDq3K7npUWBv6k
Message-ID: <CAFOi1A5J=bS7Ng2i4RrJ7pge60QRspvudC_wu5b9LnDQPzwx1w@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: EPHOJZ6PMQIUI6LJPBH3I44JCBRHM7FY
X-Message-ID-Hash: EPHOJZ6PMQIUI6LJPBH3I44JCBRHM7FY
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EPHOJZ6PMQIUI6LJPBH3I44JCBRHM7FY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2260280008812853411=="

--===============2260280008812853411==
Content-Type: multipart/alternative; boundary="000000000000caf979062e7c3ae0"

--000000000000caf979062e7c3ae0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brendan,

80% is an excellent rule of thumb for both the analog and digital filters.
If you use "odd" decimations (e.g., you try and capture at 66 Msps), then
the digital filter response is worse, but if you capture at say 50 Msps (at
a 200 Msps sampling rate) then you have two nice half-band filters doing
the resampling. The filter taps for those half-bands are in the code, if
you want the raw numbers without running UHD then we can pick them out for
you.

Also thanks to everyone here with your suggestions!

--M

On Wed, Feb 19, 2025 at 1:13=E2=80=AFAM Brendan Horsfield <
brendan.horsfield@vectalabs.com> wrote:

> Thanks for the suggestion about the noise source -- that's what I would
> normally do.  Unfortunately I haven't actually purchased the hardware yet
> -- I was hoping to clarify this issue before raising a purchase order.
>
> Perhaps I should follow this up with one of the application engineers at
> NI?  They might have access to an X310+UBX-160 system that they can use t=
o
> answer my question directly.
>
> Thanks again for your help in this matter.
>
> Regards,
> Brendan.
>
>
> On Wed, 19 Feb 2025 at 09:55, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 18/02/2025 18:45, Brendan Horsfield wrote:
>>
>> Yes, I assumed that was the case.  However, it is not clear from the X30=
0
>> documentation how sharp those filters are.  Can you tell me how wide the
>> transition band is at the lower sample rates?
>>
>> To give you some context, I would like to use an X300 (or X310) with a
>> UBX-160 daughterboard to digitise the entire 2.4 GHz Wi-Fi band, which i=
s
>> 83.5 MHz wide.  Ideally I would like to use a sample rate of 100 Msps to
>> minimise the data rate between the USRP and the host PC.  However, befor=
e I
>> do this I need to be certain that the usable bandwidth at this sample ra=
te
>> will be greater than 83.5 MHz.  Is this information documented somewhere=
?
>>
>>
>> It somewhat depends on the decimation.  If the decimation has a factor o=
f
>> two or 4, the edge roll-off is fairly sharp.  Otherwise,
>>   there's a half-band filter in-place that causes a less-desirable
>> pass-band.
>>
>> But I don't know, precisely, what the transition band is in the "nicer"
>> filter shapes.
>>
>>
>> If you have an X310+UBX-160, you can always just use a noise source, and
>> measure it yourself to see if it's appropriate for
>>   your application.
>>
>>
>>
>>
>> On Tue, 18 Feb 2025 at 23:11, Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> There will always be some edge roll off. Decimation includes filtering
>>> and those filters cannot be infinitely steep.
>>> Sent from my iPhone
>>>
>>> > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield <
>>> brendan.horsfield@vectalabs.com> wrote:
>>> >
>>> > =EF=BB=BF
>>> > Hi All,
>>> >
>>> > I have a question about the usable bandwidth of the X300 USRP /
>>> UBX-160 daughterboard combo at sampling rates below 200 Msps:
>>> >
>>> > As I understand it, the UBX-160 receiver has an analog (hardware)
>>> filter before the ADC that limits the usable bandwidth to 160 MHz, whil=
e
>>> the ADC runs at 200 Msps.  Therefore the usable bandwidth is around 80%=
 of
>>> the sample rate.
>>> >
>>> > My question is:  What is the usable bandwidth at lower sampling
>>> rates?  Does the 80% factor always apply?
>>> >
>>> > For example, if I set the decimation factor to 4, so that my sampling
>>> rate is 50 Msps, does this mean that the usable bandwidth will be 40 MH=
z?
>>> >
>>> > Thanks & Regards,
>>> > Brendan.
>>> >
>>> > _______________________________________________
>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000caf979062e7c3ae0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Brendan,</div><div><br></div><div>80% is an excell=
ent rule of thumb for both the analog and digital filters. If you use &quot=
;odd&quot; decimations (e.g., you try and capture at 66 Msps), then the dig=
ital filter response is worse, but if you capture at say 50 Msps (at a 200 =
Msps sampling rate) then you have two nice half-band filters doing the resa=
mpling. The filter taps for those half-bands are in the code, if you want t=
he raw numbers without running UHD then we can pick them out for you.</div>=
<div><br></div><div>Also thanks to everyone here with your suggestions!<br>=
</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmai=
l_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 19, 20=
25 at 1:13=E2=80=AFAM Brendan Horsfield &lt;<a href=3D"mailto:brendan.horsf=
ield@vectalabs.com">brendan.horsfield@vectalabs.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks =
for the suggestion about the noise source -- that&#39;s what I would normal=
ly=C2=A0do.=C2=A0 Unfortunately I haven&#39;t actually purchased the hardwa=
re yet -- I was hoping to clarify this issue before raising a purchase orde=
r.<div><br></div><div>Perhaps I should follow this up with one of the appli=
cation engineers at NI?=C2=A0 They might have access to an X310+UBX-160 sys=
tem that they can use to answer my question directly.</div><div><br></div><=
div>Thanks again for your help in this matter.</div><div><br></div><div>Reg=
ards,</div><div>Brendan.</div><div>=C2=A0 =C2=A0</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 =
at 09:55, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 18/02/2025 18:45, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Yes, I assumed that was the case.=C2=A0 However, it =
is
        not clear from the X300 documentation how sharp those filters
        are.=C2=A0 Can you tell me how wide the transition band is at the
        lower sample rates?
        <div><br>
        </div>
        <div>To give you some context, I would like to use an X300 (or
          X310) with a UBX-160 daughterboard to digitise the entire 2.4
          GHz Wi-Fi band, which is 83.5 MHz wide.=C2=A0 Ideally I would lik=
e
          to use a sample rate of 100 Msps to minimise the data rate
          between the USRP and the host PC.=C2=A0 However, before I do this=
 I
          need to be certain that the usable bandwidth at this sample
          rate will be greater than 83.5 MHz.=C2=A0 Is this information
          documented somewhere?=C2=A0=C2=A0</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    It somewhat depends on the decimation.=C2=A0 If the decimation has a
    factor of two or 4, the edge roll-off is fairly sharp.=C2=A0 Otherwise,=
<br>
    =C2=A0 there&#39;s a half-band filter in-place that causes a less-desir=
able
    pass-band.<br>
    <br>
    But I don&#39;t know, precisely, what the transition band is in the
    &quot;nicer&quot; filter shapes.<br>
    <br>
    <br>
    If you have an X310+UBX-160, you can always just use a noise source,
    and measure it yourself to see if it&#39;s appropriate for<br>
    =C2=A0 your application.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>=C2=A0</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 18 Feb 2025 at 23:11,
          Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" tar=
get=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">There
          will always be some edge roll off. Decimation includes
          filtering and those filters cannot be infinitely steep. <br>
          Sent from my iPhone<br>
          <br>
          &gt; On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield &lt;<=
a href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_blank">brendan=
.horsfield@vectalabs.com</a>&gt;
          wrote:<br>
          &gt; <br>
          &gt; =EF=BB=BF<br>
          &gt; Hi All,<br>
          &gt; <br>
          &gt; I have a question about the usable bandwidth of the X300
          USRP / UBX-160 daughterboard combo at sampling rates below 200
          Msps:<br>
          &gt; <br>
          &gt; As I understand it, the UBX-160 receiver has an analog
          (hardware) filter before the ADC that limits the usable
          bandwidth to 160 MHz, while the ADC runs at 200 Msps.=C2=A0
          Therefore the usable bandwidth is around 80% of the sample
          rate.<br>
          &gt; <br>
          &gt; My question is:=C2=A0 What is the usable bandwidth at lower
          sampling rates?=C2=A0 Does the 80% factor always apply?=C2=A0 <br=
>
          &gt; <br>
          &gt; For example, if I set the decimation factor to 4, so that
          my sampling rate is 50 Msps, does this mean that the usable
          bandwidth will be 40 MHz?<br>
          &gt; <br>
          &gt; Thanks &amp; Regards,<br>
          &gt; Brendan.<br>
          &gt; <br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users=
-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com<=
/a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000caf979062e7c3ae0--

--===============2260280008812853411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2260280008812853411==--
