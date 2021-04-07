Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7C6356171
	for <lists+usrp-users@lfdr.de>; Wed,  7 Apr 2021 04:40:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BE88384192
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 22:40:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="AyWs4Ofa";
	dkim-atps=neutral
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	by mm2.emwd.com (Postfix) with ESMTPS id C8634383E70
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 22:39:32 -0400 (EDT)
Received: by mail-vk1-f170.google.com with SMTP id j15so3643063vkc.1
        for <usrp-users@lists.ettus.com>; Tue, 06 Apr 2021 19:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=84muGZ6HZG0SKH2UKTPvVFBYlR0YUL4lQGxdOMxrUWY=;
        b=AyWs4OfapHYmxMDQXqQPQtRCGDVktTM6cP5O+LDiEK51hP6r7F2vAYRWFXUY+DnM7C
         hXFyYOPOkR4+qIh0sY+MqoDKfRGdImrQTbDkIL0T+QN/xoBLn6QQ/175TZCJ4HLE/GY1
         m2S3SUCd/U7SJEZdMxqdqIkRAYkJVOVkEMsnWFg8U0soTwk42a2PBQfCXmY2YCvAWg7M
         iwUr0alyanFvb1R5TEurhBFSm4/2Yn4upzOlkZcmrJEq8CJA11uiQNdVPEoPCKkLbM2I
         mGbHn1mePzWUl36xJVf+hyDMLIyLKyS2LEAXcMxMTTcjhrWgn1PRQrTNJlQ9mcWy2PES
         TL1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=84muGZ6HZG0SKH2UKTPvVFBYlR0YUL4lQGxdOMxrUWY=;
        b=Ni1863z5WIYBNrPWh9+9X7J80aNRleyeE/wRrBGNnbrMN10Fy1GtZ244yGFnbQ0tr1
         1p7ByrMrerCzZG3XaG7blqBoJ0XFURT5ZpuPGqCdlg2j31srqLLD7OwQ8LV4jLEYp2s2
         pW6cD07Rfs3F/bT6ElJbwghiXYwOmGYuzmAgvXGJENdZDoN8of/YLRDscjCFhFKET8FN
         kSwS063mlFFbQLzLFY9YWg86xrDQBQkcFm9Pbufrd+mnI+7sCz0OtnN+XzPezAmeM4IR
         ImJ8dFKGBCuJWaINj1iEf1BFQ8lGwxWL2XsCE/4V1mHtas62+TvIWMTxUFv2SjvwaM4l
         T+8Q==
X-Gm-Message-State: AOAM530lQ9a82fMZaX2dWrTd3Q4QBzoFIofaA+aW3/oHsAwFQX7ruzYD
	Mnd2IY2NZGMz2GIcQtN1tPSM+vJ4R2TVxp5+uLk1XA==
X-Google-Smtp-Source: ABdhPJyfuTSISG/Pa8LRxa+KQBjhn83nogQYzg6B33Z6R/k1KsRrajcIsvuCtOJK56naCdHFBtygfh4tF97QBCKWuWI=
X-Received: by 2002:a1f:d382:: with SMTP id k124mr820966vkg.0.1617763172208;
 Tue, 06 Apr 2021 19:39:32 -0700 (PDT)
MIME-Version: 1.0
References: <88b0297dc16541e896eb4bac4878105c@boeing.com> <CALNMZ8X3u9wXQu-_u-Cz9x6vrwGw7R8Vnj4xfo89FOeRxfX3Sw@mail.gmail.com>
 <c1aea6c3-fec6-654b-0d44-14547ac126a6@comcast.net> <CALNMZ8V7-14DtbQSr_=u172ktfiaca24fsREXfpRBhYW=CzRGA@mail.gmail.com>
 <ea5e16f3-1455-f635-fea8-3538524a9c95@comcast.net>
In-Reply-To: <ea5e16f3-1455-f635-fea8-3538524a9c95@comcast.net>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 7 Apr 2021 12:39:21 +1000
Message-ID: <CALNMZ8WXUX-MiVZLv8p7G9qjRcHdjuUE-b1WRwV9wzY1kLwjiA@mail.gmail.com>
To: Ron Economos <w6rz@comcast.net>, usrp-users@lists.ettus.com
Message-ID-Hash: UM6JRGNNOHCBTIRTQXB6VXHE7PSQAJ27
X-Message-ID-Hash: UM6JRGNNOHCBTIRTQXB6VXHE7PSQAJ27
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UM6JRGNNOHCBTIRTQXB6VXHE7PSQAJ27/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1638166845013993068=="

--===============1638166845013993068==
Content-Type: multipart/alternative; boundary="00000000000035e1b605bf58d788"

--00000000000035e1b605bf58d788
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ron,

Success! I reinstalled UHD using your NEON optimization flags, and it went
without a hitch.

I also got to the bottom of my other Python API problem =E2=80=94 it turns =
out I
forgot to run the Udev setup for USB. I can now connect to the B210 with my
Raspberry Pi via either the C++ or Python APIs, without needing to use
=E2=80=9Csudo=E2=80=9D for everything.

Brendan.

On Tue, Apr 6, 2021 at 10:53 PM Ron Economos <w6rz@comcast.net> wrote:

> Awesome. When you get everything sorted out and you're feeling
> adventurous, you can add NEON optimization. In the cmake step, replace:
>
> -DNEON_SIMD_ENABLE=3DOFF
>
> with:
>
> -DCMAKE_CXX_FLAGS:STRING=3D"-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dn=
eon
> -mtune=3Dcortex-a72" -DCMAKE_C_FLAGS:STRING=3D"-march=3Darmv7-a -mfloat-a=
bi=3Dhard
> -mfpu=3Dneon -mtune=3Dcortex-a72" -DCMAKE_ASM_FLAGS:STRING=3D"-march=3Dar=
mv7-a
> -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a72 -g"
>
> Ron
> On 4/6/21 05:15, Brendan Horsfield wrote:
>
> Thanks for the tip Ron!  It got me (almost) all the way home.
>
> I can now interface with the USRP via the C++ API, which I couldn't do
> previously.
>
> Unfortunately there's still a niggling problem with the Python API (a
> different one than before), but I will start a new thread to cover that
> issue.
>
> Cheers,
> Brendan.
>
>
> On Sun, Apr 4, 2021 at 11:53 AM Ron Economos <w6rz@comcast.net> wrote:
>
>> This is just a guess, but you could try:
>>
>> -DCMAKE_SHARED_LINKER_FLAGS=3D"-latomic"
>>
>> in addition.
>>
>> Ron
>> On 4/3/21 18:34, Brendan Horsfield wrote:
>>
>> Thanks Ken.  As you suggested, I added
>> -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" to the CMake call.
>>
>> The good news is that the UHD build & installation process completed
>> successfully.
>>
>> The bad news is that when I try to import the uhd module in Python3, I
>> get the following error:
>>
>> pi@raspberrypi:~ $ python3
>> Python 3.7.3 (default, Jan 22 2021, 20:04:44)
>> [GCC 8.3.0] on linux
>> Type "help", "copyright", "credits" or "license" for more information.
>> >>> import uhd
>> Traceback (most recent call last):
>>   File "<stdin>", line 1, in <module>
>>   File "/usr/local/lib/python3/dist-packages/uhd/__init__.py", line 10,
>> in <module>
>>     from . import types
>>   File "/usr/local/lib/python3/dist-packages/uhd/types.py", line 10, in
>> <module>
>>     from . import libpyuhd as lib
>> ImportError: /usr/local/lib/libuhd.so.4.0.0: undefined symbol:
>> __atomic_fetch_add_8
>> >>>
>>
>> Did you encounter this problem too?
>>
>> I guess the next step is to hack the "CMakeLists.txt" files as per the
>> link you sent me.  Just to clarify one point first:  If I modify the
>> CMakeLists.txt files, do I still need to include
>> -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" in the CMake call?
>>
>> Thanks,
>> Brendan.
>>
>>
>>
>> On Sat, Apr 3, 2021 at 10:29 PM Clark (US), Kenneth C <
>> kenneth.c.clark2@boeing.com> wrote:
>>
>>>
>>> I had the same problem build UHD on RPi4
>>>
>>> Answer here:
>>> https://gitlab.kitware.com/cmake/cmake/-/issues/21174
>>>
>>> Add to CMake call:
>>> -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic"
>>>
>>> Regards,
>>>
>>> Ken
>>>
>>>
>>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000035e1b605bf58d788
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Hi Ron,</p><p>Success!  I reinstalled UHD using your NE=
ON optimization flags, and it went without a hitch.</p><p>I also got to the=
 bottom of my other Python API problem =E2=80=94 it turns out I forgot to r=
un the Udev setup for USB.  I can now connect to the B210 with my Raspberry=
 Pi via either the C++ or Python APIs, without needing to use =E2=80=9Csudo=
=E2=80=9D for everything.</p><p>Brendan.</p></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 6, 2021 at 10:53 PM=
 Ron Economos &lt;<a href=3D"mailto:w6rz@comcast.net">w6rz@comcast.net</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>Awesome. When you get everything sorted out and you&#39;re feeling
      adventurous, you can add NEON optimization. In the cmake step,
      replace:</p>
    <p>-DNEON_SIMD_ENABLE=3DOFF</p>
    <p>with:</p>
    <p>-DCMAKE_CXX_FLAGS:STRING=3D&quot;-march=3Darmv7-a -mfloat-abi=3Dhard
      -mfpu=3Dneon -mtune=3Dcortex-a72&quot;
      -DCMAKE_C_FLAGS:STRING=3D&quot;-march=3Darmv7-a -mfloat-abi=3Dhard -m=
fpu=3Dneon
      -mtune=3Dcortex-a72&quot; -DCMAKE_ASM_FLAGS:STRING=3D&quot;-march=3Da=
rmv7-a
      -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a72 -g&quot;</p>
    <p>Ron<br>
    </p>
    <div>On 4/6/21 05:15, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Thanks for the tip Ron!=C2=A0 It got me (almost) all=
 the
        way home.=C2=A0=C2=A0
        <div><br>
        </div>
        <div>I can now interface with the USRP via the C++ API, which I
          couldn&#39;t do previously.</div>
        <div><br>
        </div>
        <div>Unfortunately there&#39;s still a niggling problem with the
          Python API (a different one than before), but I will start a
          new thread to cover that issue.</div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>Brendan.</div>
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 4, 2021 at 11:53
          AM Ron Economos &lt;<a href=3D"mailto:w6rz@comcast.net" target=3D=
"_blank">w6rz@comcast.net</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>This is just a guess, but you could try:</p>
            <p>-DCMAKE_SHARED_LINKER_FLAGS=3D&quot;-latomic&quot;</p>
            <p>in addition.</p>
            <p>Ron<br>
            </p>
            <div>On 4/3/21 18:34, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thanks Ken.=C2=A0 As you suggested, I added
                -DCMAKE_EXE_LINKER_FLAGS=3D&quot;-latomic&quot; to the CMak=
e call.=C2=A0=C2=A0
                <div><br>
                </div>
                <div>The good news is that the UHD build &amp;
                  installation process completed successfully.
                  <div>
                    <div><br>
                    </div>
                    <div>The bad news is that when I try to import the
                      uhd module in Python3, I get=C2=A0the following error=
:</div>
                    <div><br>
                    </div>
                    <div>pi@raspberrypi:~ $ python3<br>
                      Python 3.7.3 (default, Jan 22 2021, 20:04:44) <br>
                      [GCC 8.3.0] on linux<br>
                      Type &quot;help&quot;, &quot;copyright&quot;, &quot;c=
redits&quot; or &quot;license&quot;
                      for more information.<br>
                      &gt;&gt;&gt; import uhd<br>
                      Traceback (most recent call last):<br>
                      =C2=A0 File &quot;&lt;stdin&gt;&quot;, line 1, in &lt=
;module&gt;<br>
                      =C2=A0 File
                      &quot;/usr/local/lib/python3/dist-packages/uhd/__init=
__.py&quot;,
                      line 10, in &lt;module&gt;<br>
                      =C2=A0 =C2=A0 from . import types<br>
                      =C2=A0 File
                      &quot;/usr/local/lib/python3/dist-packages/uhd/types.=
py&quot;,
                      line 10, in &lt;module&gt;<br>
                      =C2=A0 =C2=A0 from . import libpyuhd as lib<br>
                      ImportError: /usr/local/lib/libuhd.so.4.0.0:
                      undefined symbol: __atomic_fetch_add_8<br>
                      &gt;&gt;&gt;=C2=A0<br>
                    </div>
                    <div><br>
                    </div>
                    <div>Did you encounter this problem too?</div>
                    <div><br>
                    </div>
                    <div>I guess the next step is to hack the
                      &quot;CMakeLists.txt&quot; files as per the link you =
sent
                      me.=C2=A0 Just to clarify one point first:=C2=A0 If I=
 modify
                      the CMakeLists.txt files, do I still need to
                      include -DCMAKE_EXE_LINKER_FLAGS=3D&quot;-latomic&quo=
t; in the
                      CMake call?</div>
                    <div><br>
                    </div>
                    <div>Thanks,</div>
                    <div>Brendan.</div>
                    <div>=C2=A0=C2=A0</div>
                    <div><br>
                    </div>
                  </div>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 3, 2021 a=
t
                  10:29 PM Clark (US), Kenneth C &lt;<a href=3D"mailto:kenn=
eth.c.clark2@boeing.com" target=3D"_blank">kenneth.c.clark2@boeing.com</a>&=
gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
                  I had the same problem build UHD on RPi4<br>
                  <br>
                  Answer here:<br>
                  <a href=3D"https://gitlab.kitware.com/cmake/cmake/-/issue=
s/21174" rel=3D"noreferrer" target=3D"_blank">https://gitlab.kitware.com/cm=
ake/cmake/-/issues/21174</a><br>
                  <br>
                  Add to CMake call:<br>
                  -DCMAKE_EXE_LINKER_FLAGS=3D&quot;-latomic&quot;<br>
                  <br>
                  Regards,<br>
                  <br>
                  Ken<br>
                  <br>
                  <br>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000035e1b605bf58d788--

--===============1638166845013993068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1638166845013993068==--
