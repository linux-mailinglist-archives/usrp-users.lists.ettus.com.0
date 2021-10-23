Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FAA4385A8
	for <lists+usrp-users@lfdr.de>; Sat, 23 Oct 2021 23:59:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E05738458B
	for <lists+usrp-users@lfdr.de>; Sat, 23 Oct 2021 17:59:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b+cpUUcM";
	dkim-atps=neutral
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A74B383F89
	for <usrp-users@lists.ettus.com>; Sat, 23 Oct 2021 17:58:51 -0400 (EDT)
Received: by mail-io1-f52.google.com with SMTP id q6so6162778iod.7
        for <usrp-users@lists.ettus.com>; Sat, 23 Oct 2021 14:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A2pOoTEb4/fzTKjR8NVOJBntGgz/iluYNN8ygmvVaPc=;
        b=b+cpUUcMHWM2ztE738jAvyu33RsEiTMJVvZ/zyFdiILxc+wmoNPVk8POmzVr+GmIp1
         kIgDUp+VzSQyYR2oSTyOQsNtTZ24V5suGnTdrybFoIPsQZZbdlncpOT8A6ZslMutrWbu
         2mcBQGXbtgtdvN9B8EfR6vpR8BDsSJ5Nhyh28z6ESbqTvwqsFmFge8eEKV7CGbKcNHbG
         O8/QU2AO3nCbaMJTmqCyCuqNxfohXSaroWJBru5sqJtdywzmHbvu7fsIojyQieYPeFrW
         2fkj+Xjl6W4XK3QyrTIhu/9gg21oJqr84zAEr53I2KSnmEzPJKBgPpjHXPG6Os7FrhLd
         +F0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A2pOoTEb4/fzTKjR8NVOJBntGgz/iluYNN8ygmvVaPc=;
        b=AC6K9llmZ2KZugnVtX0dLlVn/Q1KUrl/yLPlBBl3UrzmLSjsQqkGaN3ZRkqKoUiZHq
         7HPssB9c8l3s36F5ik1I49vH0ZuZCVlNUGofLZxKDIi69sVuiqTtHRMs0eHezuPjxNlP
         Lp3LdxiF+m3Elw50bWyIuo2m0slG3jDfx1EVBw8xiSGSk6RRZ/Rg7auw6bF6x6G5K8BS
         M3Xt5Cii/P/nhFttkq1bQlipLQijP2/0vO83FltQPYnFZPkaABRs7rtdDXPYGGr19eAh
         rU1Y0d45y/yfoctjy95pbUVzFBQptuvRHmCgWCfQsPGyxtvMTRo0VIDHoG24GEg9A1vk
         NGtA==
X-Gm-Message-State: AOAM532cRf1ciPjesfq957XLV5U3YFhBpDJPXsegxYhkXi8wwR6MUMkW
	/elVF6X+ucvrDF/lvW1AuF04bLYLOocl4M9CH1I=
X-Google-Smtp-Source: ABdhPJypTWU6wyrgKUeV5R6N8i1AGPF9FHCstd7SOY6de5Ov1eArddhFVKYPCcogo299VjPPD2HM3XYw32JRo1jZpuw=
X-Received: by 2002:a05:6638:45e:: with SMTP id r30mr5231424jap.133.1635026330607;
 Sat, 23 Oct 2021 14:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
 <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com>
 <6d3d9adb-fd20-e86e-fe12-9daf26315df7@gmail.com> <CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=r4UrO6EGpRQ@mail.gmail.com>
 <b806b59f-3454-01eb-00f6-db6aeea4a1c5@gmail.com>
In-Reply-To: <b806b59f-3454-01eb-00f6-db6aeea4a1c5@gmail.com>
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Sun, 24 Oct 2021 00:58:39 +0300
Message-ID: <CAPRRyxsi1Ay+z1VC8eAa49v=2Z8sB3rptrPD+3=bh-OZNAqmDw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 33RR23WS5FQN62SPB5GNDOMQBJ5TD6D2
X-Message-ID-Hash: 33RR23WS5FQN62SPB5GNDOMQBJ5TD6D2
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio <discuss-gnuradio@gnu.org>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/33RR23WS5FQN62SPB5GNDOMQBJ5TD6D2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0585042392665732482=="

--===============0585042392665732482==
Content-Type: multipart/alternative; boundary="000000000000a2648705cf0c3b47"

--000000000000a2648705cf0c3b47
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I want to create FPGA firmware for USRP E310 with window function but
I get the error I described above. My yaml file is also attached
above. I need to do windowing and FFT on the FPGA side. And understand
why FFT returns zero values even when it is configured to produce
complex data.

[image: image.png]

=D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 17:55, Marcus D. L=
eech <patchvonbraun@gmail.com>:

> On 2021-10-22 6:05 a.m., Ivan Zahartchuk wrote:
>
> Yes I am setting fft for magnitudes. On the front side, I am doing a log.=
 I perfectly understand where infinity comes from. I don=E2=80=99t understa=
nd why the FFT returns 0. But how can I configure the Window?
>
>
> What does uhd_usrp_probe show in the "RFNOC Blocks" section on this devic=
e?
>
> I think the window RFNOC function in GNu Radio takes a list of the window
> values as a parameter--you can populate that with any of the window.*
> functions
>   within Gnu Radio.
>
>
> =D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 01:51, Marcus D.=
 Leech <patchvonbraun@gmail.com>:
>
>> On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:
>>
>>
>> Hello, I have a problem that when receiving samples from the USRP E310 b=
oard, after the FFT block at low gain, zero values are received. After that=
 I log them and get infinity. I wanted to figure out what the problem is, b=
ut I have no idea, maybe the Window block will fix the situation. But when =
building my yaml file, I get the error:
>> [ERR] 2 Unresolved connection(s)
>> [ERR]     (window0-out_0 -> fft0-in0)
>> [ERR]     (fft0-out_0 -> ep1-in_0)
>> [INF]         (('radio0', 'ctrl_port', 'master'),)
>> [INF]         (('radio0', 'time_keeper', 'listener'),)
>> [INF]         (('radio0', 'x300_radio', 'slave'),)
>> [INF]         (('_device_', 'ctrlport_radio', 'slave'),)
>> [INF]         (('_device_', 'time_keeper', 'broadcaster'),)
>> [INF]         (('_device_', 'x300_radio', 'master'),)Please tell me what=
 could be the problem and how can I add the Window block to my image?
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> Do you have your FFT configured for log output?  Because the logarithm o=
f
>> zero is undefined.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000a2648705cf0c3b47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D"gmail-tw-container" class=3D"gmail-" style=3D"w=
idth:652px;color:rgb(32,33,36);font-family:arial,sans-serif;font-size:mediu=
m"><span style=3D"display:block"><div><div><div class=3D"gmail-tw-src-ltr" =
id=3D"gmail-tw-ob" style=3D"display:flex;min-height:140px"><div class=3D"gm=
ail-oSioSc" style=3D"width:0px;display:flex"><div id=3D"gmail-tw-target" st=
yle=3D"font-size:0px;margin:0px;text-align:initial;background-color:rgb(248=
,249,250);border-radius:8px;min-width:0px;width:0px;display:flex"><div id=
=3D"gmail-kAz1tf" class=3D"gmail-g9WsWb" style=3D"margin:0px;text-align:ini=
tial;padding:10px 16px 48px"><div class=3D"gmail-tw-ta-container gmail-F0az=
Hf gmail-tw-nfl" id=3D"gmail-tw-target-text-container" tabindex=3D"0" style=
=3D"overflow:hidden;outline:0px"><pre class=3D"gmail-tw-data-text gmail-tw-=
text-large gmail-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" dir=3D"ltr=
" style=3D"font-family:inherit;unicode-bidi:isolate;font-size:28px;line-hei=
ght:36px;background-color:transparent;border:none;padding:2px 0.14em 2px 0p=
x;overflow:hidden;width:270px;white-space:pre-wrap"><span class=3D"gmail-Y2=
IQFc" lang=3D"en">I want to create FPGA firmware for USRP E310 with window =
function but I get the error I described above. My yaml file is also attach=
ed above. I need to do windowing and FFT on the FPGA side. And understand w=
hy FFT returns zero values even when it is configured to produce complex da=
ta.</span></pre></div><div class=3D"gmail-tw-target-rmn gmail-tw-ta-contain=
er gmail-F0azHf gmail-tw-nfl" id=3D"gmail-tw-target-rmn-container" style=3D=
"overflow:hidden;outline:0px"><pre class=3D"gmail-tw-data-placeholder gmail=
-tw-text-small gmail-tw-ta" id=3D"gmail-tw-target-rmn" dir=3D"ltr" style=3D=
"unicode-bidi:isolate;background-color:transparent;border:none;padding:0px =
0.14em 0px 0px;margin-top:0px;margin-bottom:0px;font-family:inherit;overflo=
w:hidden;width:270px;white-space:pre-wrap;font-size:16px;line-height:24px;c=
olor:black"><span class=3D"gmail-Y2IQFc"></span></pre></div><div class=3D"g=
mail-iYB33c" style=3D"display:flex;width:302px;height:48px"><div class=3D"g=
mail-dlJLJe" style=3D"display:flex;margin:10px 11px 0px auto"><div style=3D=
"visibility: hidden;"><span class=3D"gmail-povykd" role=3D"button" tabindex=
=3D"0" style=3D"outline:0px;display:inline-block"><div class=3D"gmail-U9URN=
b" style=3D"opacity:0.74;font-size:12px;font-style:italic;min-width:26px;pa=
dding:11px"><span class=3D"gmail-XrZwB" aria-label=3D"=D0=97=D0=BD=D0=B0=D1=
=87=D0=BE=D0=BA &quot;=D0=9F=D1=80=D0=BE=D0=B2=D0=B5=D1=80=D0=B5=D0=BD=D0=
=BE =D1=81=D0=BE=D0=BE=D0=B1=D1=89=D0=B5=D1=81=D1=82=D0=B2=D0=BE=D0=BC&quot=
;" role=3D"img" style=3D"display:inline-block;height:26px;padding-left:5px;=
vertical-align:middle"><img src=3D"cid:ii_kv4cem720" alt=3D"image.png" widt=
h=3D"16" height=3D"16"></span><span class=3D"gmail-nlMhfd" style=3D"display=
:inline-block;height:26px;line-height:26px;word-break:break-all"></span></d=
iv></span></div></div><div class=3D"gmail-tw-menu" id=3D"gmail-tw-tmenu" st=
yle=3D"display:inline-block;line-height:normal;white-space:nowrap"><span cl=
ass=3D"gmail-tw-menu-btn" id=3D"gmail-tw-cpy-btn" title=3D"=D0=9A=D0=BE=D0=
=BF=D0=B8=D1=80=D0=BE=D0=B2=D0=B0=D1=82=D1=8C" aria-label=3D"=D0=9A=D0=BE=
=D0=BF=D0=B8=D1=80=D0=BE=D0=B2=D0=B0=D1=82=D1=8C =D1=82=D0=B5=D0=BA=D1=81=
=D1=82" role=3D"button" tabindex=3D"0" style=3D"display:inline-block;height=
:48px;color:rgb(112,117,122);overflow:hidden;width:48px;outline:0px"><span =
class=3D"gmail-tw-menu-btn-image gmail-z1asCe gmail-wm4nBd" style=3D"displa=
y:inline-block;height:24px;line-height:24px;width:24px;border:1px solid tra=
nsparent;padding:10px"></span></span><span class=3D"gmail-fQjaD" aria-hidde=
n=3D"true" style=3D"display:inline-block"><span class=3D"gmail-povykd" styl=
e=3D"display:inline-block"></span></span><span class=3D"gmail-tw-menu-btn g=
mail-za3ale" id=3D"gmail-tw-spkr-button" aria-label=3D"=D0=A1=D0=BB=D1=83=
=D1=88=D0=B0=D1=82=D1=8C =D0=BF=D0=B5=D1=80=D0=B5=D0=B2=D0=BE=D0=B4" role=
=3D"button" tabindex=3D"0" style=3D"display:inline-block;height:48px;color:=
rgb(112,117,122);overflow:hidden;width:48px;outline:0px"><span class=3D"gma=
il-tw-menu-btn-image gmail-z1asCe gmail-JKu1je" title=3D"=D0=A1=D0=BB=D1=83=
=D1=88=D0=B0=D1=82=D1=8C =D0=BF=D0=B5=D1=80=D0=B5=D0=B2=D0=BE=D0=B4" style=
=3D"display:inline-block;height:24px;line-height:24px;width:24px;border:1px=
 solid transparent;padding:12px 10px 8px"></span></span></div></div><span i=
d=3D"gmail-tw-info-bubble"></span></div></div></div></div><div id=3D"gmail-=
tw-images"></div><div class=3D"gmail-dURPtb" style=3D"clear:both;overflow:h=
idden;line-height:16px"></div><div><span style=3D"display:block"><div></div=
></span></div></div></div></span></div><div class=3D"gmail-KFFQ0c gmail-xKf=
9F" style=3D"margin-top:16px;display:flex;margin-bottom:0px;width:652px;col=
or:rgb(32,33,36);font-family:arial,sans-serif;font-size:medium"></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=
=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 17:55, Marcus D. Leec=
h &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a=
>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-22 6:05 a.m., Ivan
      Zahartchuk wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <pre id=3D"gmail-m_-6403856710437878954gmail-tw-target-text" style=
=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Yes I am setting fft for=
 magnitudes. On the front side, I am doing a log. I perfectly understand wh=
ere infinity comes from. I don=E2=80=99t understand why the FFT returns 0. =
But how can I configure the Window?</span></pre>
      </div>
      <br>
    </blockquote>
    What does uhd_usrp_probe show in the &quot;RFNOC Blocks&quot; section o=
n this
    device?<br>
    <br>
    I think the window RFNOC function in GNu Radio takes a list of the
    window values as a parameter--you can populate that with any of the
    window.* functions<br>
    =C2=A0 within Gnu Radio.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D1=82, 22 =D0=BE=D0=BA=
=D1=82. 2021 =D0=B3. =D0=B2 01:51,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr"><br>
                  </div>
                  <div dir=3D"ltr">
                    <pre id=3D"gmail-m_-6403856710437878954gmail-m_71641061=
55543386629m_2664631585752873320gmail-tw-target-text" style=3D"text-align:l=
eft" dir=3D"ltr"><span lang=3D"en">Hello, I have a problem that when receiv=
ing samples from the USRP E310 board, after the FFT block at low gain, zero=
 values are received. After that I log them and get infinity. I wanted to f=
igure out what the problem is, but I have no idea, maybe the Window block w=
ill fix the situation. But when building my yaml file, I get the error:
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
            Do you have your FFT configured for log output?=C2=A0 Because t=
he
            logarithm of zero is undefined.<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000a2648705cf0c3b47--

--===============0585042392665732482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0585042392665732482==--
