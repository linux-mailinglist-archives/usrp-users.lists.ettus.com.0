Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3587E438BAB
	for <lists+usrp-users@lfdr.de>; Sun, 24 Oct 2021 21:41:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0104D38455F
	for <lists+usrp-users@lfdr.de>; Sun, 24 Oct 2021 15:41:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ShV8oGDT";
	dkim-atps=neutral
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by mm2.emwd.com (Postfix) with ESMTPS id D60CF383DE9
	for <usrp-users@lists.ettus.com>; Sun, 24 Oct 2021 15:40:50 -0400 (EDT)
Received: by mail-io1-f50.google.com with SMTP id q6so8686934iod.7
        for <usrp-users@lists.ettus.com>; Sun, 24 Oct 2021 12:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zspzZfOMyK04QGcRpYh8/0W5cyC9T+Ybb1ZKpkZkFbY=;
        b=ShV8oGDTe2YQauqn2FHEhyzi0/QYgdARRlUqz85s85mK8u1LkFsxtXqLy7ayUUS+WW
         vfFVDHs1841LV9K6JFaxH0VISuAzc+uvkQlazpc06G59G7eERqjxWguVaR5dwc81AjpP
         32twu5vZ/b4rOtb7o+8kNAcw5P1OF9rD5FyVWeSPHFvPuFJWGRxZBmzemkrp5gPRIPsn
         AGHxyY1H6R2Afb4ThHrzCjNMUfsVCaodafsfjow2cD4P99WCdGDBvxiADuZ4++XU0ip2
         pZqxP+wX32ABkej+rKOJuiewc0Be6ILIdczZsEoR4yBdbkQSO0fy9IjG9oXXKcDPqBMr
         VoYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zspzZfOMyK04QGcRpYh8/0W5cyC9T+Ybb1ZKpkZkFbY=;
        b=a3MnyWuWEew4mmAQqrYJowNay1jP5ZJVjqY7DXxq6J8CqIqUVksbn7Vxcv/Jg79Q9l
         ZDBujucWj4J5VU1LuwW7it541Zp9PHGbI7m8CaFmtyqq15fWDJ+FrxZqO8IbaP46wZDI
         oIdUv+HN7EMisGF5YACm8+E+Uml7x8OcjgpMrP+oogZ7YZzyLTFvokIKbdw8zEfrZlQT
         szcSPdntCtLEGEmeEjmx+H3w5M7q3h1dvLtM8DH9+UR6i2mtM0qQbfGl9S/owqBHVYRo
         npllj1UGYXWyS7fIkB1zPQpivVq7kQkz9fKOCKwv068otvmm+qJGJ3BZRGruarsGknE5
         Cvzw==
X-Gm-Message-State: AOAM532xl8UZsYLgiRFuAqeqyz+32EgXOiO1MXTX3QfWNBLCUsMGoFVi
	cnm/fhZCFKoMpFl6DpecRRas866in+TdTGZx0CU=
X-Google-Smtp-Source: ABdhPJxBNIjQs/HZDH9wug4dCdZrASLvSKUnEk3UCnakwTnmkx/2qFUKfCKyT2fsl+4vfFODFDHbptmb7NLj22AAn9o=
X-Received: by 2002:a05:6602:168f:: with SMTP id s15mr8344939iow.178.1635104450078;
 Sun, 24 Oct 2021 12:40:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
 <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com>
 <6d3d9adb-fd20-e86e-fe12-9daf26315df7@gmail.com> <CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=r4UrO6EGpRQ@mail.gmail.com>
 <b806b59f-3454-01eb-00f6-db6aeea4a1c5@gmail.com> <CAPRRyxsi1Ay+z1VC8eAa49v=2Z8sB3rptrPD+3=bh-OZNAqmDw@mail.gmail.com>
 <9db5f18f-ec4b-fc6b-fb65-bcef88563bab@gmail.com>
In-Reply-To: <9db5f18f-ec4b-fc6b-fb65-bcef88563bab@gmail.com>
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Sun, 24 Oct 2021 19:40:39 +0300
Message-ID: <CAPRRyxttDqNtknAo=owrQk6S9-2wMkdv-iuNr7jDXxoe5P=oEA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: LC3KWB2WL723QVXB3PLUXMXNEYTQUYOO
X-Message-ID-Hash: LC3KWB2WL723QVXB3PLUXMXNEYTQUYOO
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio <discuss-gnuradio@gnu.org>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LC3KWB2WL723QVXB3PLUXMXNEYTQUYOO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5943821745748630807=="

--===============5943821745748630807==
Content-Type: multipart/alternative; boundary="000000000000eaeb6a05cf1e6ba5"

--000000000000eaeb6a05cf1e6ba5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I read the manual. And I tried to do everything according to the
instructions and existing examples. The yaml source file also uses
x300_radio block


=D0=B2=D1=81, 24 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 18:17, Marcus D. L=
eech <patchvonbraun@gmail.com>:

> On 2021-10-23 5:58 p.m., Ivan Zahartchuk wrote:
>
> I want to create FPGA firmware for USRP E310 with window function but I g=
et the error I described above. My yaml file is also attached above. I need=
 to do windowing and FFT on the FPGA side. And understand why FFT returns z=
ero values even when it is configured to produce complex data.
>
> [image: image.png]
>
> =D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 17:55, Marcus D.=
 Leech <patchvonbraun@gmail.com>:
>
>> On 2021-10-22 6:05 a.m., Ivan Zahartchuk wrote:
>>
>> Yes I am setting fft for magnitudes. On the front side, I am doing a log=
. I perfectly understand where infinity comes from. I don=E2=80=99t underst=
and why the FFT returns 0. But how can I configure the Window?
>>
>>
>> What does uhd_usrp_probe show in the "RFNOC Blocks" section on this
>> device?
>>
>> I think the window RFNOC function in GNu Radio takes a list of the windo=
w
>> values as a parameter--you can populate that with any of the window.*
>> functions
>>   within Gnu Radio.
>>
>>
>> =D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 01:51, Marcus D=
. Leech <patchvonbraun@gmail.com>:
>>
>>> On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:
>>>
>>>
>>> Hello, I have a problem that when receiving samples from the USRP E310 =
board, after the FFT block at low gain, zero values are received. After tha=
t I log them and get infinity. I wanted to figure out what the problem is, =
but I have no idea, maybe the Window block will fix the situation. But when=
 building my yaml file, I get the error:
>>> [ERR] 2 Unresolved connection(s)
>>> [ERR]     (window0-out_0 -> fft0-in0)
>>> [ERR]     (fft0-out_0 -> ep1-in_0)
>>> [INF]         (('radio0', 'ctrl_port', 'master'),)
>>> [INF]         (('radio0', 'time_keeper', 'listener'),)
>>> [INF]         (('radio0', 'x300_radio', 'slave'),)
>>> [INF]         (('_device_', 'ctrlport_radio', 'slave'),)
>>> [INF]         (('_device_', 'time_keeper', 'broadcaster'),)
>>> [INF]         (('_device_', 'x300_radio', 'master'),)Please tell me wha=
t could be the problem and how can I add the Window block to my image?
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>> Do you have your FFT configured for log output?  Because the logarithm
>>> of zero is undefined.
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>> I noticed looking at your .yaml file that it references x300_radio
> blocks, and since this is an E310, that may not be appropriate?  I know
> that there have
>   historically been considerable differences between the X300 RFNOC radio
> blocks and those for E310.
>
>
>

--000000000000eaeb6a05cf1e6ba5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail=
-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" dir=3D"ltr" style=3D"font-=
family:inherit;unicode-bidi:isolate;font-size:28px;line-height:36px;backgro=
und-color:rgb(248,249,250);border:none;padding:2px 0.14em 2px 0px;overflow:=
hidden;width:270px;white-space:pre-wrap;color:rgb(32,33,36)"><span class=3D=
"gmail-Y2IQFc" lang=3D"en">I read the manual. And I tried to do everything =
according to the instructions and existing examples. The yaml source file a=
lso uses x300_radio block</span></pre></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=81, 24 =D0=BE=D0=BA=D1=82. =
2021 =D0=B3. =D0=B2 18:17, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com">patchvonbraun@gmail.com</a>&gt;:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-23 5:58 p.m., Ivan
      Zahartchuk wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div id=3D"gmail-m_-4105220474593761265gmail-tw-container" style=3D=
"width:652px;color:rgb(32,33,36);font-family:arial,sans-serif;font-size:med=
ium"><span style=3D"display:block">
            <div>
              <div>
                <div id=3D"gmail-m_-4105220474593761265gmail-tw-ob" style=
=3D"display:flex;min-height:140px">
                  <div style=3D"width:0px;display:flex">
                    <div id=3D"gmail-m_-4105220474593761265gmail-tw-target"=
 style=3D"font-size:0px;margin:0px;text-align:initial;background-color:rgb(=
248,249,250);border-radius:8px;min-width:0px;width:0px;display:flex">
                      <div id=3D"gmail-m_-4105220474593761265gmail-kAz1tf" =
style=3D"margin:0px;text-align:initial;padding:10px 16px 48px">
                        <div id=3D"gmail-m_-4105220474593761265gmail-tw-tar=
get-text-container" style=3D"overflow:hidden;outline:0px">
                          <pre id=3D"gmail-m_-4105220474593761265gmail-tw-t=
arget-text" dir=3D"ltr" style=3D"font-family:inherit;unicode-bidi:isolate;f=
ont-size:28px;line-height:36px;background-color:transparent;border:none;pad=
ding:2px 0.14em 2px 0px;overflow:hidden;width:270px;white-space:pre-wrap"><=
span lang=3D"en">I want to create FPGA firmware for USRP E310 with window f=
unction but I get the error I described above. My yaml file is also attache=
d above. I need to do windowing and FFT on the FPGA side. And understand wh=
y FFT returns zero values even when it is configured to produce complex dat=
a.</span></pre>
                        </div>
                        <div id=3D"gmail-m_-4105220474593761265gmail-tw-tar=
get-rmn-container" style=3D"overflow:hidden;outline:0px">
                          <pre id=3D"gmail-m_-4105220474593761265gmail-tw-t=
arget-rmn" dir=3D"ltr" style=3D"unicode-bidi:isolate;background-color:trans=
parent;border:none;padding:0px 0.14em 0px 0px;margin-top:0px;margin-bottom:=
0px;font-family:inherit;overflow:hidden;width:270px;white-space:pre-wrap;fo=
nt-size:16px;line-height:24px;color:black"><span></span></pre>
                        </div>
                        <div style=3D"display:flex;width:302px;height:48px"=
>
                          <div style=3D"display:flex;margin:10px 11px 0px a=
uto">
                            <div><span role=3D"button" style=3D"outline:0px=
;display:inline-block">
                                <div style=3D"opacity:0.74;font-size:12px;f=
ont-style:italic;min-width:26px;padding:11px"><span aria-label=3D"=D0=97=D0=
=BD=D0=B0=D1=87=D0=BE=D0=BA &quot;=D0=9F=D1=80=D0=BE=D0=B2=D0=B5=D1=80=D0=
=B5=D0=BD=D0=BE
                                    =D1=81=D0=BE=D0=BE=D0=B1=D1=89=D0=B5=D1=
=81=D1=82=D0=B2=D0=BE=D0=BC&quot;" role=3D"img" style=3D"display:inline-blo=
ck;height:26px;padding-left:5px;vertical-align:middle"><img alt=3D"image.pn=
g" width=3D"16" height=3D"16"></span><span style=3D"display:inline-block;he=
ight:26px;line-height:26px;word-break:break-all"></span></div>
                              </span></div>
                          </div>
                          <div id=3D"gmail-m_-4105220474593761265gmail-tw-t=
menu" style=3D"display:inline-block;line-height:normal;white-space:nowrap">=
<span id=3D"gmail-m_-4105220474593761265gmail-tw-cpy-btn" title=3D"=D0=9A=
=D0=BE=D0=BF=D0=B8=D1=80=D0=BE=D0=B2=D0=B0=D1=82=D1=8C" aria-label=3D"=D0=
=9A=D0=BE=D0=BF=D0=B8=D1=80=D0=BE=D0=B2=D0=B0=D1=82=D1=8C =D1=82=D0=B5=D0=
=BA=D1=81=D1=82" role=3D"button" style=3D"display:inline-block;height:48px;=
color:rgb(112,117,122);overflow:hidden;width:48px;outline:0px"><span style=
=3D"display:inline-block;height:24px;line-height:24px;width:24px;border:1px=
 solid transparent;padding:10px"></span></span><span aria-hidden=3D"true" s=
tyle=3D"display:inline-block"><span style=3D"display:inline-block"></span><=
/span><span id=3D"gmail-m_-4105220474593761265gmail-tw-spkr-button" aria-la=
bel=3D"=D0=A1=D0=BB=D1=83=D1=88=D0=B0=D1=82=D1=8C =D0=BF=D0=B5=D1=80=D0=B5=
=D0=B2=D0=BE=D0=B4" role=3D"button" style=3D"display:inline-block;height:48=
px;color:rgb(112,117,122);overflow:hidden;width:48px;outline:0px"><span tit=
le=3D"=D0=A1=D0=BB=D1=83=D1=88=D0=B0=D1=82=D1=8C =D0=BF=D0=B5=D1=80=D0=B5=
=D0=B2=D0=BE=D0=B4" style=3D"display:inline-block;height:24px;line-height:2=
4px;width:24px;border:1px solid transparent;padding:12px 10px 8px"></span><=
/span></div>
                        </div>
                        <span id=3D"gmail-m_-4105220474593761265gmail-tw-in=
fo-bubble"></span></div>
                    </div>
                  </div>
                </div>
                <div><span style=3D"display:block"></span></div>
              </div>
            </div>
          </span></div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D1=82, 22 =D0=BE=D0=BA=
=D1=82. 2021 =D0=B3. =D0=B2 17:55,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-10-22 6:05 a.m., Ivan Zahartchuk wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <pre id=3D"gmail-m_-4105220474593761265gmail-m_-64038567104=
37878954gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span l=
ang=3D"en">Yes I am setting fft for magnitudes. On the front side, I am doi=
ng a log. I perfectly understand where infinity comes from. I don=E2=80=99t=
 understand why the FFT returns 0. But how can I configure the Window?</spa=
n></pre>
              </div>
              <br>
            </blockquote>
            What does uhd_usrp_probe show in the &quot;RFNOC Blocks&quot; s=
ection
            on this device?<br>
            <br>
            I think the window RFNOC function in GNu Radio takes a list
            of the window values as a parameter--you can populate that
            with any of the window.* functions<br>
            =C2=A0 within Gnu Radio.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D1=82, 22 =D0=
=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2
                  01:51, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:<br=
>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div class=3D"gmail_quote">
                          <div dir=3D"ltr" class=3D"gmail_attr"><br>
                          </div>
                          <div dir=3D"ltr">
                            <pre id=3D"gmail-m_-4105220474593761265gmail-m_=
-6403856710437878954gmail-m_7164106155543386629m_2664631585752873320gmail-t=
w-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Hell=
o, I have a problem that when receiving samples from the USRP E310 board, a=
fter the FFT block at low gain, zero values are received. After that I log =
them and get infinity. I wanted to figure out what the problem is, but I ha=
ve no idea, maybe the Window block will fix the situation. But when buildin=
g my yaml file, I get the error:
[ERR] 2 Unresolved connection(s)
[ERR] =C2=A0 =C2=A0 (window0-out_0 -&gt; fft0-in0)
[ERR] =C2=A0 =C2=A0 (fft0-out_0 -&gt; ep1-in_0)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;ctrl_port&#39;, =
&#39;master&#39;),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;time_keeper&#39;=
, &#39;listener&#39;),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;x300_radio&#39;,=
 &#39;slave&#39;),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;ctrlport_radio=
&#39;, &#39;slave&#39;),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;time_keeper&#3=
9;, &#39;broadcaster&#39;),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;x300_radio&#39=
;, &#39;master&#39;),)
<span lang=3D"en">Please tell me what could be the problem and how can I ad=
d the Window block to my image?

</span></span></pre>
                          </div>
                        </div>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
                    </blockquote>
                    Do you have your FFT configured for log output?=C2=A0
                    Because the logarithm of zero is undefined.<br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    I noticed looking at your .yaml file that it references x300_radio
    blocks, and since this is an E310, that may not be appropriate?=C2=A0 I
    know that there have<br>
    =C2=A0 historically been considerable differences between the X300 RFNO=
C
    radio blocks and those for E310.<br>
    <br>
    <br>
  </div>

</blockquote></div>

--000000000000eaeb6a05cf1e6ba5--

--===============5943821745748630807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5943821745748630807==--
