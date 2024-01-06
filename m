Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F4D826099
	for <lists+usrp-users@lfdr.de>; Sat,  6 Jan 2024 17:21:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E790B385104
	for <lists+usrp-users@lfdr.de>; Sat,  6 Jan 2024 11:21:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704558100; bh=JUcloJ1zf3xt11/e9FIwsat0KPdFi4R6lR9xtX8dMM4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Nslo/JhJoLyXKBJ5+KADycjtznh8LKDfYJjs1btuD+7iAjCNxJfwfaM4ohX86lGyU
	 sQ31IJxHgkbMDCLE+CM4Y458RHROU6I83FlaEuKN2n/XFdsbMRBTy2sXpqnH2inDVo
	 1NlfIVQ+IdRYVzycBV37cHt5fLsvY33I3cd7CE9tBVBc2ArSJxIq7LgMQ0b+AWdOw7
	 LR0U38dFM5lM9M24Bknmcc6/ZbZu/YVZpKCwjYnA0b35Ec0uJziaga3iKlOI3hHPFl
	 ww96/rtPIMMvX1jgYVpcPVlz+4mNwF5LTDinJZkz25gggMBUOHFZJp7KXwyvViJySX
	 THh9z/TjH83bA==
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6EDCD385075
	for <usrp-users@lists.ettus.com>; Sat,  6 Jan 2024 11:21:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VjOzigO0";
	dkim-atps=neutral
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3374c693f92so488695f8f.1
        for <usrp-users@lists.ettus.com>; Sat, 06 Jan 2024 08:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704558080; x=1705162880; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rEXbjmprXfgd2RZt+L3OaHu+9uRrXGqEkokd2HyCQ6E=;
        b=VjOzigO0YlJfS4hYLDUR4PDhgCGEOspo4ol1XtN2WaWQ772IUU+bH6VQ4bAAa5Dakl
         Xj6Vz8AvPL3RACnDEqgv9+9uQTOwOXv7ORX82NkTKh1tUHa9JzTkbW0vk5AEiBGYI0QX
         s9IY4oTHJQzG9t8hl6wY6uxoy9RMtKfMcasa7C2ioO6oZ5oIETHmJNkxCh3jYrIOMOLa
         n3aaBwVAS1fFrJpMyNRLr6/iogeIK92maXlum8iC8qvxxVQ7HfDt5ydtFJ9qCTgnnYtW
         d1wJwNeWqYehJlcITzFtKjTC5+E+cFI+ZflZFVEdow+AxyNru75+KsiUPuwcylJB0LnU
         CwEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704558080; x=1705162880;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rEXbjmprXfgd2RZt+L3OaHu+9uRrXGqEkokd2HyCQ6E=;
        b=sPa685mqrS+ksWCH5DFY2pggN0PpYPOgdi5huCncLtsgVTozkefMZ912StNxdFVoGV
         NhRJr6gujt1m8z6Z9sbplwcFAEKQeuon07bzEf/nANTDZ3he9yWsX6bndTIRJ2yoBiaq
         kr0HYcVJWmNtS0crspIqalWwbxXQH867sNQUzDR7s/xZOvfgfV3O4iFR5hZ3tIZWYSmy
         yidb7G01idNQwypKvfONuwxUiKUNTFEy17hhC9YR/7zj43ROJCWe8q6m8dMYvrTfxLQ9
         Z1yiIWJIFXO8I4yIODov41FH9sbdi3NIAbhhHvSH7HatWRkNWgbPJe61M6wBQw4qurfH
         w2Hw==
X-Gm-Message-State: AOJu0Yz7oAGWQoon0ACOaGAGnjfFD0tzKCy4v62T2lav1nkYaqqJ7Dsv
	MqJWlEjNccZSs8JlPj7GYb6e0689F6D91soBobGiE+pjBSFWcg==
X-Google-Smtp-Source: AGHT+IHtgKIPyTieberjWRT3PMqCrS5wMfLBIrTb2FJXGaawaH/MKrwf7+neeOe9u7gQFTTacLEpyWFUuSFUEwDiLLE=
X-Received: by 2002:a5d:59a1:0:b0:337:39c7:48 with SMTP id p1-20020a5d59a1000000b0033739c70048mr769826wrr.1.1704558079247;
 Sat, 06 Jan 2024 08:21:19 -0800 (PST)
MIME-Version: 1.0
References: <CAEtk-vVSDd-Z1dCHnkK7waNz_sZA+H0kw1=KfUZma3v+tt0o_g@mail.gmail.com>
 <6f64b040-17c9-465c-bb59-b413078b0063@gmail.com> <CAEtk-vVu13KZvEJjWDoh81HQsU2F4-pdH1bhj6CX=XEb_8nZ2Q@mail.gmail.com>
 <CAEtk-vW-1roA6c5Oe_w_eFz6E1i3asA+dVA+FsJ5k91iRu727A@mail.gmail.com>
 <5cf86fa5-9035-435e-bf73-d44485795d12@ettus.com> <CAEtk-vV46+F989gjwQk+cYbTazefyzfqA2jcf9o+fRGuVckdwg@mail.gmail.com>
 <CAEtk-vUOLcJw6FQJ-FwywssByadWMtKZ9r8S1_ekiAZfMd1hCg@mail.gmail.com>
 <CAEXYVK7xYonGbTnoEBr+E7D=pyeS7DMo2-EDLYsuC2Jfpe7s4w@mail.gmail.com>
 <CAEtk-vUomTZvsdHHSw8oEN-HSjU4AYbU3hq0+UG=FJfSDwnAKQ@mail.gmail.com>
 <1aec86e6-941b-487b-a19f-5f77f7840b6f@gmail.com> <CAEtk-vUuaYgvTEXSqyqTJJOpL6NDcw9JnXZyQJrtoVzsC9vh1Q@mail.gmail.com>
 <CAEtk-vXSa9qdOSQONKFKHzud=HzC18SRydAbbDQGTfKT9NJEhw@mail.gmail.com>
In-Reply-To: <CAEtk-vXSa9qdOSQONKFKHzud=HzC18SRydAbbDQGTfKT9NJEhw@mail.gmail.com>
From: =?UTF-8?Q?Francisco_Gallardo_l=C3=B3pez?= <f.gallardo.lopez@gmail.com>
Date: Sat, 6 Jan 2024 17:21:08 +0100
Message-ID: <CAEtk-vWxOybi6bOOMFdRoHxVG6PyUw=rsDKNikerEk_pLPSgCg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ZMG7EG6NVDYCXRA5HIGS7CQ7V66WJSKV
X-Message-ID-Hash: ZMG7EG6NVDYCXRA5HIGS7CQ7V66WJSKV
X-MailFrom: f.gallardo.lopez@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Strange interference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZMG7EG6NVDYCXRA5HIGS7CQ7V66WJSKV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0995767280281325888=="

--===============0995767280281325888==
Content-Type: multipart/alternative; boundary="000000000000d00a31060e495af0"

--000000000000d00a31060e495af0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I just realized my last message was rejected because of the size of the
attachments. I am resending it with the picture in Google Drive.

Indeed, just for completeness:

The captures below were done with the case open, one with the GPSTXCO
connected and without it:

With it:

https://drive.google.com/file/d/173OqgJsi_7j0BYpE939FipxcMe8onXuI/view?usp=
=3Ddrivesdk



Without it:

https://drive.google.com/file/d/16vPzIC1fLphIlyw-_QG5Yc4pm0fgBC0H/view?usp=
=3Ddrivesdk


The difference is quite noticeable. And if on top of it, you close the
case, you have the perfect storm.

Thanks
Fran


On Fri, Jan 5, 2024, 11:53 Francisco Gallardo l=C3=B3pez <
f.gallardo.lopez@gmail.com> wrote:

> Indeed, just for completeness:
>
> The captures below were done with the case open, one with the
> GPSTXCO connected and without it:
>
> With it:
>
>
> Without it:
>
>
>
> The difference is quite noticeable. And if on top of it, you close the
> case, you have the perfect storm.
>
> Thanks
> Fran
>
> El jue, 4 ene 2024 a las 18:36, Francisco Gallardo l=C3=B3pez (<
> f.gallardo.lopez@gmail.com>) escribi=C3=B3:
>
>>
>> I was guessing that because grabbing the device out of the box makes the
>> interference weaker, I would say that even taking the GPS TCXO out also
>> helps, a bit.
>>
>> Did somebody try soldering some metallic shielding on the board? it seem=
s
>> like it is designed for that.
>>
>>
>> On Thu, Jan 4, 2024, 18:16 Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 04/01/2024 10:54, Francisco Gallardo l=C3=B3pez wrote:
>>>
>>> Hi Brian,
>>>
>>> Yes sir, precisely each 80 MHz... You found the root cause.
>>>
>>> Shit, that is a considerable inconvenience. I saw the spike gets
>>> stronger or weaker depending on whether the USRP box is opened. Actuall=
y,
>>> it is weaker when opened. I will check whether I can improvise some
>>> shielding directly in the board itself.
>>>
>>> Any suggestions here?
>>>
>>> This STRONGLY suggests that the mechanism is radiative coupling.  The
>>> box acts as a waveguide cavity at certain frequency
>>>   ranges.  Lining the box with carbon-foam RF absorber will help.
>>>
>>> This also explains why my observations show the spur as considerably
>>> weaker--I'm using an ad-hoc box from Hammond that
>>>   is quite a bit larger than the factory box.
>>>
>>>
>>>
>>> Thanks!
>>> Fran
>>>
>>>
>>> On Thu, Jan 4, 2024, 16:00 Brian Padalino <bpadalino@gmail.com> wrote:
>>>
>>>> On Thu, Jan 4, 2024 at 8:52=E2=80=AFAM Francisco Gallardo l=C3=B3pez <
>>>> f.gallardo.lopez@gmail.com> wrote:
>>>>
>>>>> As for the USB2, I just tried. It is still there (see attached (you
>>>>> can see the USB type in the terminal))
>>>>>
>>>>> [image: Screenshot from 2024-01-04 13-31-53.png]
>>>>>
>>>>
>>>> 1560 MHz is the 39th harmonic of the 40 MHz reference used in the
>>>> device.
>>>>
>>>> Check to see if you have interference spikes every 80 MHz or so.
>>>>
>>>> Brian
>>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000d00a31060e495af0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I just realized my last message was rejected because of t=
he size of the attachments. I am resending it with the picture in Google Dr=
ive.<div dir=3D"auto"><br></div><div dir=3D"auto">Indeed, just for complete=
ness:</div><div dir=3D"auto"><br></div><div dir=3D"auto">The captures below=
 were done with the case open, one with the GPSTXCO connected and without i=
t:</div><div dir=3D"auto"><br></div><div dir=3D"auto">With it:</div><div di=
r=3D"auto"><br></div><div dir=3D"auto"><a href=3D"https://drive.google.com/=
file/d/173OqgJsi_7j0BYpE939FipxcMe8onXuI/view?usp=3Ddrivesdk">https://drive=
.google.com/file/d/173OqgJsi_7j0BYpE939FipxcMe8onXuI/view?usp=3Ddrivesdk</a=
></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div style=3D"font-siz=
e:12.8px" dir=3D"auto"><br></div><div style=3D"font-size:12.8px" dir=3D"aut=
o"><br></div><div dir=3D"auto">Without it:</div><div dir=3D"auto"><br></div=
><div dir=3D"auto"><a href=3D"https://drive.google.com/file/d/16vPzIC1fLphI=
lyw-_QG5Yc4pm0fgBC0H/view?usp=3Ddrivesdk">https://drive.google.com/file/d/1=
6vPzIC1fLphIlyw-_QG5Yc4pm0fgBC0H/view?usp=3Ddrivesdk</a></div><br><div dir=
=3D"auto"><br></div><div dir=3D"auto">The difference is quite noticeable. A=
nd if on top of it, you close the case, you have the perfect storm.<br></di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks</div><div dir=3D"aut=
o">Fran</div></div><br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Jan 5, 2024, 11:53 Francisco Gallardo=
 l=C3=B3pez &lt;<a href=3D"mailto:f.gallardo.lopez@gmail.com">f.gallardo.lo=
pez@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div d=
ir=3D"ltr">Indeed, just for completeness:<div><br></div><div>The captures b=
elow were done with the case open, one with the GPSTXCO=C2=A0connected and =
without it:</div><div><br></div><div>With it:</div><div><br></div><div><br>=
</div><div>Without it:</div><div><br></div><br><div><br></div><div>The diff=
erence is quite noticeable. And if on top of it, you close the case, you ha=
ve the perfect storm.<br></div><div><br></div><div>Thanks</div><div>Fran</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">El jue, 4 ene 2024 a las 18:36, Francisco Gallardo l=C3=B3pez (&lt;<a hr=
ef=3D"mailto:f.gallardo.lopez@gmail.com" target=3D"_blank" rel=3D"noreferre=
r">f.gallardo.lopez@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div><br><span styl=
e=3D"font-size:12.8px">I was guessing that because grabbing the device out =
of the box makes the interference weaker, I would=C2=A0say that even taking=
 the GPS TCXO out also helps, a bit.</span><div style=3D"font-size:12.8px" =
dir=3D"auto"><br></div><div style=3D"font-size:12.8px" dir=3D"auto">Did som=
ebody try soldering some metallic shielding on the board? it seems like it =
is designed for that.</div><br><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Jan 4, 2024, 18:16 Marcus D. Leech &lt;<a =
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank" rel=3D"noreferrer=
">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 04/01/2024 10:54, Francisco Gallardo
      l=C3=B3pez wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto">
        <div>Hi Brian,
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">Yes sir, precisely each 80 MHz... You found
            the root cause.</div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">Shit, that is a considerable inconvenience. I
            saw the spike gets stronger or weaker depending on whether
            the USRP box is opened. Actually, it is weaker when opened.
            I will check whether I can improvise some shielding directly
            in the board itself.=C2=A0</div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">Any suggestions here?</div>
        </div>
      </div>
    </blockquote>
    This STRONGLY suggests that the mechanism is radiative coupling.=C2=A0
    The box acts as a waveguide cavity at certain frequency<br>
    =C2=A0 ranges.=C2=A0 Lining the box with carbon-foam RF absorber will h=
elp.<br>
    <br>
    This also explains why my observations show the spur as considerably
    weaker--I&#39;m using an ad-hoc box from Hammond that<br>
    =C2=A0 is quite a bit larger than the factory box.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"auto">
        <div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">Thanks!</div>
          <div dir=3D"auto">Fran</div>
          <br>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 4, 2024, 16:0=
0
              Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">bpadalino@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">
                <div dir=3D"ltr">On Thu, Jan 4, 2024 at 8:52=E2=80=AFAM Fra=
ncisco
                  Gallardo l=C3=B3pez &lt;<a href=3D"mailto:f.gallardo.lope=
z@gmail.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">f.g=
allardo.lopez@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <div class=3D"gmail_quote">
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                    <div dir=3D"ltr">
                      <div>As for the USB2, I just tried. It is still
                        there (see attached (you can see the USB type in
                        the terminal))</div>
                      <div><br>
                      </div>
                      <div><img alt=3D"Screenshot from 2024-01-04 13-31-53.=
png" width=3D"578" height=3D"285"><br>
                      </div>
                    </div>
                  </blockquote>
                  <div><br>
                  </div>
                  <div>1560 MHz is the 39th harmonic of the 40 MHz
                    reference used in the device.</div>
                  <div><br>
                  </div>
                  <div>Check to see if you have interference spikes
                    every 80 MHz or so.</div>
                  <div><br>
                  </div>
                  <div>Brian</div>
                </div>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a=
>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a=
><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a><br>
</blockquote></div></div></div>
</blockquote></div>
</blockquote></div></div>

--000000000000d00a31060e495af0--

--===============0995767280281325888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0995767280281325888==--
