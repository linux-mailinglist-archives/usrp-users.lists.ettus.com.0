Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF008B9A6C
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 14:07:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA3703852EC
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 08:07:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714651644; bh=csjmIyjYj4k2ZSsIypOz6UWbHJlrkx9bCoZ+T12j8Ao=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=aqnrLffrlwvOzJD0F83MsbvlEROEhZELo+un05BIxDAWRGLDCdK9fzhVTCOiGvjWB
	 QaT7CGgTqs5f5srTPDRiPEZh9rvo5oETXZO5wkc7kZ5jtOxptZCVgSh7Ntrpvvyg8J
	 RrwLeFwzSFCLITvv2q37M8N/KJHSpJh140a0Wq+lSoSOuXWmJarwYgWWQjho+UMoy8
	 qMAIma9UB7ndR/O81Y0081Krs1u0kAec0l3bgIGS2ftxDV3WokW0LnXveKSPALFOvW
	 au5H2L6rWJYsOWa+pp8uWiVJnQrCHmCrY0nIK66zTCeK7lwpkR+Rshh891j+djOKSP
	 KCIiDJa5F3SLw==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id CE1823852EC
	for <usrp-users@lists.ettus.com>; Thu,  2 May 2024 08:06:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Yxgz+a/g";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-792706dbdc6so48453685a.0
        for <usrp-users@lists.ettus.com>; Thu, 02 May 2024 05:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714651614; x=1715256414; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PERLLT4ZnTGBuxIRqTJrF67A4QMKqWynfU6s6bEjV4A=;
        b=Yxgz+a/grVlID/oUbJ40qxhDcUteBs+PxtSkHB1vpEPZrF3eMKeAIPLGmU39z+2vW4
         4ZDVMBfebeUL8J48JbH0i9KL2WqevcTNzaaPytTil9j1auSQnbYtJ0wlGpM0fzcI7y/1
         05/AU2MkDZybb7Hd6+oQee16K+DigzB0sjUd8UVumOsQLFFs2J/kJhPeQuE+xpZ6uLTV
         r70Yc9sOgVzUj55hNrEhQvB7GPjyMb2HXnOIQCxIA4Z24IclMuybMc3XbZn4crnJpXHh
         bA+y3IuVo1Ax7d/YPi1pudT8wtVqmNqKw/vwq4TLZFUOf1mYothGBLb+I5AwTBBZtbfU
         wUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714651614; x=1715256414;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PERLLT4ZnTGBuxIRqTJrF67A4QMKqWynfU6s6bEjV4A=;
        b=W6DYenoxKymxUtGiR77kYou4Va15DcWEB9O5GVEh4y09GyipefVuqD8kT29LDgVHsK
         7EosTF91U8Q653lLOCax4RwM/MLcp3BRRsQbx3tNl4LLYmQm8UuEXV18b7YKa3zf/wz1
         MdQjh6GuBY9+y0Fdl27feRcso/gMmHa3sY2vRl1D3RPsSgB761oRQtupq9Sa+jB22mtP
         6yItnA91eG0FJBTdCWcsdSGth7F2BMR0nqcNwGr5vyAKqLvCftcDySF042bU4hUDr1Gv
         laa/Lqk3svRqOpPB72vyyMFuabfeXTI7/YndzsTzd0zROWm3ga5IEBTlEJDxpvQsdSMo
         XBJw==
X-Gm-Message-State: AOJu0Yzr+5RoXx/UUkLmkvPaqRd7P+GY0D1wJj2CAxz8Vq0aiobac2Wx
	h/QCBAu/lruA3LfOx60i19VK4oKt2txyeiHdsVJGOOOeMtC6CL9BT6rdXA==
X-Google-Smtp-Source: AGHT+IHaOZZWxQYapIjOz/ECfNgEFjK45jQbbw26Mnu9cEm/a9OqgX+0yST7BW06Xkvzlp0nymJkvQ==
X-Received: by 2002:a05:622a:4a0e:b0:437:9c7e:ab1f with SMTP id fv14-20020a05622a4a0e00b004379c7eab1fmr5214548qtb.33.1714651613716;
        Thu, 02 May 2024 05:06:53 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id fe13-20020a05622a4d4d00b0043842dc662esm416146qtb.4.2024.05.02.05.06.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 May 2024 05:06:53 -0700 (PDT)
Message-ID: <2dc3efed-dfec-4dfb-8001-66c5b1594a5e@gmail.com>
Date: Thu, 2 May 2024 08:06:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com>
 <rg_135JfFMqvTtC5sE6K7yKUL6MJLKmhinWi5RjjNnYPSMfbYjt6Pt9bgzpDhSC-ttGO7BYYZj4YH3y3luA5uROyruafHIjJSIoxmoOfteE=@protonmail.com>
 <AcczyJwEYkF6JtBjb6tuJZMFv24ablefxF9EMeHtfEHyimk8q58jf1mXvDZKv1w-nXKTGZvmmflaV-qmJGZT1f7Ok3GgbAttgjjujkL24mk=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AcczyJwEYkF6JtBjb6tuJZMFv24ablefxF9EMeHtfEHyimk8q58jf1mXvDZKv1w-nXKTGZvmmflaV-qmJGZT1f7Ok3GgbAttgjjujkL24mk=@protonmail.com>
Message-ID-Hash: 2BDGUSCNR4ATFQMYMGO3WTGR3REKIX2I
X-Message-ID-Hash: 2BDGUSCNR4ATFQMYMGO3WTGR3REKIX2I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Quick question about tuning USRP B210 for sweep spectrum
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2BDGUSCNR4ATFQMYMGO3WTGR3REKIX2I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2450592836281892571=="

This is a multi-part message in MIME format.
--===============2450592836281892571==
Content-Type: multipart/alternative;
 boundary="------------jgky9lBU0Sm1DKTeKzVV8rsE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jgky9lBU0Sm1DKTeKzVV8rsE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/05/2024 07:38, Olo via USRP-users wrote:
> Goal is to find the limits. The HackRF for example can do 8GHz per=20
> second sweep. So lets consider that as example.
Assuming 20Mhz/tuning (I think HackRF supports a maximum of 20Mhz=20
bandwidth), that's 2.5msec/tuning.

The X310 with the TwinRX can support 80MHz of bandwidth, and the=20
synthesizer probably locks in under
 =C2=A0 2msec for 250MHz jump in frequency.


> On Wednesday, May 1st, 2024 at 20:42, Olo via USRP-users=20
> <usrp-users@lists.ettus.com> wrote:
>> Would it be possible, with the USRP X310 with TwinRX (or two TwinRX=20
>> units), to achieve the mentioned goal? If so, could you please=20
>> explain the approach to accomplish this? Thank you.
>>
>> On Tuesday, April 30th, 2024 at 9:20, Olo <olo1618@protonmail.com> wro=
te:
>>>
>>> Hi there,
>>>
>>> I'm USRP B210 for a project. I'm trying to make a sweep spectrum=20
>>> analyzer that scans frequencies quickly. Currently, I'm tuning=20
>>> frequencies like this (which is I think the main issue):
>>>
>>> tune_request =3D uhd.types.TuneRequest(self.steps[self.i], 1.0)
>>> result =3D self.usrp_device.set_rx_freq(tune_request, self.rx_info.ch=
)=20
>>> I'm programming it in PyQt, and I've created a stream like this:
>>> self.stream_cmd_start =3D=20
>>> uhd.types.StreamCMD(uhd.types.StreamMode.num_done).
>>> (Because I've noticed that for a continuous stream, it takes=20
>>> eternity to retune.)
>>> Do you have any tips on how to do this faster? Any advice or code=20
>>> examples would be really helpful.
>>>
>>> Thanks a lot,
>>>
>>> Olo.
>>>
>>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------jgky9lBU0Sm1DKTeKzVV8rsE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/05/2024 07:38, Olo via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AcczyJwEYkF6JtBjb6tuJZMFv24ablefxF9EMeHtfEHyimk8q58jf1mXvDZKv=
1w-nXKTGZvmmflaV-qmJGZT1f7Ok3GgbAttgjjujkL24mk=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">Goa=
l
        is to find the limits. The HackRF for example can do 8GHz per
        second sweep. So lets consider that as example.</div>
    </blockquote>
    Assuming 20Mhz/tuning (I think HackRF supports a maximum of 20Mhz
    bandwidth), that's 2.5msec/tuning.<br>
    <br>
    The X310 with the TwinRX can support 80MHz of bandwidth, and the
    synthesizer probably locks in under<br>
    =C2=A0 2msec for 250MHz jump in frequency.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:AcczyJwEYkF6JtBjb6tuJZMFv24ablefxF9EMeHtfEHyimk8q58jf1mXvDZKv=
1w-nXKTGZvmmflaV-qmJGZT1f7Ok3GgbAttgjjujkL24mk=3D@protonmail.com">
      <div class=3D"protonmail_quote"> On Wednesday, May 1st, 2024 at
        20:42, Olo via USRP-users <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;=
</a>
        wrote:<br>
        <blockquote class=3D"protonmail_quote" type=3D"cite">
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
><span>Would
              it be possible, with the USRP X310 with TwinRX (or two
              TwinRX units), to achieve the mentioned goal? If so, could
              you please explain the approach to accomplish this? Thank
              you.</span><br>
          </div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
><br>
          </div>
          <div class=3D"protonmail_quote"> On Tuesday, April 30th, 2024 a=
t
            9:20, Olo <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:o=
lo1618@protonmail.com">&lt;olo1618@protonmail.com&gt;</a> wrote:<br>
            <blockquote type=3D"cite" class=3D"protonmail_quote">
              <div style=3D"">
                <p
style=3D"border: 0px solid rgb(227, 227, 227); box-sizing: border-box; ma=
rgin: 1.25em 0px;"><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Hi
                    there,</span></p>
                <p
style=3D"border: 0px solid rgb(227, 227, 227); box-sizing: border-box; ma=
rgin: 1.25em 0px;"><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">I'm
                    USRP B210 for a project. I'm trying to make a sweep
                    spectrum analyzer that scans frequencies quickly.
                    Currently, I'm tuning frequencies like this (which
                    is I think the main issue):</span></p>
                <div style=3D"">
                  <pre style=3D""><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">tune_request </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">=3D </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">uhd.types.</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">TuneRequest</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">(</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.steps</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">[</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.i</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">]</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">, </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">1.0</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">)</span>
<span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">result </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">=3D </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.usrp_device.</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">set_rx_freq</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">(</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">tune_request</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">, </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.rx_info.ch</span><span
                  style=3D"line-height: normal;"><font
                  face=3D"Arial, sans-serif">)

</font><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">I'm programming it in PyQt, and I've crea=
ted a stream like this: </span></span></pre>
                  <pre style=3D""><span style=3D"line-height: normal;"><s=
pan
style=3D"border-style: solid; border-color: rgb(227, 227, 227); border-im=
age: initial; box-sizing: border-box; font-family: Arial, sans-serif; fon=
t-size: 14px; font-weight: 400;">self.stream_cmd_start =3D uhd.types.Stre=
amCMD(uhd.types.StreamMode.num_done)</span><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">. </span></span></pre>
                  <pre style=3D""><span style=3D"line-height: normal;"><s=
pan
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">(Because <span>I've noticed that for a co=
ntinuous stream, it takes eternity to retune.)</span></span></span></pre>
                  <pre style=3D""><span style=3D"line-height: normal;"><s=
pan
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">Do you have any tips on how to do this fa=
ster? Any advice or code examples would be really helpful.</span>
</span></pre>
                </div>
                <span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; line-height: normal; font-weight: 400;">
                  <div style=3D""><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; line-height: normal; font-weight: 400;"><br>
                    </span></div>
                  Thanks a lot,<br>
                </span><br>
                Olo.</div>
              <div
                style=3D"font-family: Arial, sans-serif; font-size: 14px;=
"><br>
              </div>
              <div class=3D"protonmail_signature_block"
                style=3D"font-family: Arial, sans-serif; font-size: 14px;=
">
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
        <br>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------jgky9lBU0Sm1DKTeKzVV8rsE--

--===============2450592836281892571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2450592836281892571==--
