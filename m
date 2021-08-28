Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E69A3FA687
	for <lists+usrp-users@lfdr.de>; Sat, 28 Aug 2021 17:42:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64587383579
	for <lists+usrp-users@lfdr.de>; Sat, 28 Aug 2021 11:42:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gk5IUjFI";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 03254383EFD
	for <usrp-users@lists.ettus.com>; Sat, 28 Aug 2021 11:42:00 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id a66so10674197qkc.1
        for <usrp-users@lists.ettus.com>; Sat, 28 Aug 2021 08:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=FOxLs+NAUhe4NnDvfc3SoMeCAqgY7mXgML15ic2+2UI=;
        b=gk5IUjFIAMpoGvaA3xEFYYQpdXkYxL4E0ZDjWJVcvNtEv75UavCGnl/C2BSWomGZDQ
         r+cRxreGSuf9uGzS+Jm3TftGKVC5IWq7Q8fOoawTQFz1yb4vv3fX9+k16GQnIp8CHkK5
         Wm83ZWPyl1M84sGo0vc33cOD/IFQQc0Esk2UJ/u9bGCg8h30L5dTrh/x6dRLb5rV/xYN
         CYOmMDz1voNuY23BmpW/jspAtP/KkMwy6YLfNtmAAOn9J/E5TtJf9MqsSNr7kWGlR0gg
         MNboDO3KUNdYdxMiFlAHQs/+8ad+4SNafvg1D/5NDlUeoiPDpPjcKP3dvtZp+iMKnMN8
         dQRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=FOxLs+NAUhe4NnDvfc3SoMeCAqgY7mXgML15ic2+2UI=;
        b=UfdHEodw8UxVWPS47H9RRC3gw64M4wGO7BPMLDM4JC5Xo23MwrOa+Bneg2VOqXPCE3
         EovyyhJo0HJWkKoqUpNDdGPItj6a5o0oOtw9oeB9Mi7cZ6Zfj6aCnpXOImwVxT7YynqG
         4ZvVhcIgZDDIQnLVkM9TAl+BuaAg879SEVelx28em8njo31t6kz4Q4NYWEWibr5tXJqE
         26MI1x+IIFF/ZbEzvxU/KUJYOPK8i8KdCt40g2HuvIVhK4RHZka1JmBzDUSyrgqj3eDz
         cK1X0Kcl9X3ppkdsAZup9IHevSIodKxlSDfaAtvWdi8Th9/OzmouENbOf6iQIoFkVcaF
         UROg==
X-Gm-Message-State: AOAM532k6Ag2BkwzAbYhLY+oaLN/r+rWau3DIEKq+NkHDmrq/rm4CLLv
	l8gESndbG3stzJ86tBy9MDcDwLB8VpGvkw==
X-Google-Smtp-Source: ABdhPJywjpE7QE7ADbP6HIYFyB+vL4nG1LgrGdx/0V3qAGc/+4wXXGh70Jdu9E7lq23lr0m+wyeQPw==
X-Received: by 2002:a05:620a:15b5:: with SMTP id f21mr15037278qkk.300.1630165320142;
        Sat, 28 Aug 2021 08:42:00 -0700 (PDT)
Received: from [192.168.2.224] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id m25sm5411952qtp.90.2021.08.28.08.41.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 08:41:59 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAFPzw1kv2oBkopydhePAEJEBmHD-U6oSdnZRyNkrM4Wnr0CEvA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <3a0e63fb-e1f7-920a-7d74-fbc5967f2312@gmail.com>
Date: Sat, 28 Aug 2021 11:41:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAFPzw1kv2oBkopydhePAEJEBmHD-U6oSdnZRyNkrM4Wnr0CEvA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: I5EKY6W62QLIUMES7AZX2DS3X77ER2N3
X-Message-ID-Hash: I5EKY6W62QLIUMES7AZX2DS3X77ER2N3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I5EKY6W62QLIUMES7AZX2DS3X77ER2N3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4399395580098453863=="

This is a multi-part message in MIME format.
--===============4399395580098453863==
Content-Type: multipart/alternative;
 boundary="------------63479A1E2CE185923D938885"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------63479A1E2CE185923D938885
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-08-28 10:33 a.m., Anabel Almodovar wrote:
> Hello,
>
> After updating the complete system to the new version of UHD I am=20
> experiencing errors with the radio modules of the boards. I have two=20
> X310s equipped with two TwinRx each, so I get 8 reception channels.
> Previously it worked with Ubuntu 16.04 LTS, UHD 3.11 and I have=20
> updated the system to a version Ubuntu 20.04, UHD 4.1.0 and GNU Radio 3=
.9.
>
> When I run GNU Radio with the uhd_fft example I get the following error=
:
>
> *Generating: '/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py'*
>
> **
>
> *Executing: /usr/bin/python3 -u=20
> /home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py*
>
> **
>
> *[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;=20
> UHD_4.1.0.HEAD-0-gd21735d5*
>
> *[INFO] [X300] X300 initialization sequence...*
>
> *[INFO] [X300] Maximum frame size: 8000 bytes.*
>
> *[INFO] [X300] Maximum frame size: 8000 bytes.*
>
> *[INFO] [X300] Radio 1x clock: 200 MHz*
>
> *[INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 1) catch time transition a=
t pps edge*
>
> *[INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 2) set times next pps (syn=
chronously)*
>
> *Exception in thread Thread-1:*
>
> *Traceback (most recent call last):*
>
> *=C2=A0 File "/usr/lib/python3.8/threading.py", line 932, in _bootstrap=
_inner*
>
> *Exception in thread Thread-2:*
>
> *Traceback (most recent call last):*
>
> *=C2=A0 File "/usr/lib/python3.8/threading.py", line 932, in _bootstrap=
_inner*
>
> *=C2=A0=C2=A0=C2=A0 self.run()*
>
> *=C2=A0 File "/usr/lib/python3.8/threading.py", line 870, in run*
>
> *self._target(*self._args, **self._kwargs)*
>
> *=C2=A0 File "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py", line=
=20
> 427, in _current_freq_c_probe*
>
> *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.run()*
>
> *=C2=A0 File "/usr/lib/python3.8/threading.py", line 870, in run*
>
> *val =3D self.uhd_usrp_source_0.get_sensor("'lo_locked'")*
>
> *RuntimeError: self._target(*self._args, **self._kwargs)*
>
> *LookupError: Path not found in tree:=20
> /blocks/0/Radio#0/dboard/rx_frontends/0/sensors/'lo_locked'*
>
> *=C2=A0 File "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py", line=
=20
> 442, in _chan0_lo_locked_probe*
>
> *=C2=A0=C2=A0=C2=A0 val =3D self.uhd_usrp_source_0.get_sensor("'lo_lock=
ed'")*
>
> *RuntimeError: LookupError: Path not found in tree:=20
> /blocks/0/Radio#0/dboard/rx_frontends/0/sensors/'lo_locked'*
>
> *[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.*
>
> *[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.*
>
> *O[WARNING] [0/Radio#1] Cannot process RX-related async message to=20
> invalid chan 1*
>
> *[WARNING] [0/Radio#0] Cannot process RX-related async message to=20
> invalid chan 1*
>
> *ODgr::log :ERROR: usrp_source0 - In the last 10580 ms, 81 overflows=20
> occurred.*
>
> *DOO[WARNING] [0/Radio#1] Cannot process RX-related async message to=20
> invalid chan 1*
>
> *[WARNING] [0/Radio#0] Cannot process RX-related async message to=20
> invalid chan 1*
>
> *Dgr::log :ERROR: usrp_source0 - In the last 6071 ms, 3 overflows=20
> occurred.*
>
> *Dgr::log :ERROR: usrp_source0 - In the last 3055 ms, 2 overflows=20
> occurred.*
>
> *Traceback (most recent call last):*
>
> *=C2=A0 File "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py", line=
=20
> 130, in <lambda>*
>
> *=C2=A0=C2=A0=C2=A0 lambda:=20
> self.set_freq_c(eng_notation.str_to_num(str(self._freq_c_line_edit.text=
()))))*
>
> *=C2=A0 File "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py", line=
=20
> 553, in set_freq_c*
>
> *self.uhd_usrp_source_0.set_center_freq(float(self.freq_c), 4)*
>
> *RuntimeError: LookupError: KeyError: Invalid RX channel: 304*
>
> *OO[WARNING] [0/Radio#1] Cannot process RX-related async message to=20
> invalid chan 1*
>
> *[WARNING] [0/Radio#0] Cannot process RX-related async message to=20
> invalid chan 1*
>
> *gr::log :ERROR: usrp_source0 - In the last 9181 ms, 1 overflows=20
> occurred.*
>
> *gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:=20
> ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*
>
> *[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
>
> *[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
>
> *gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:=20
> ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*
>
> *[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
>
> *gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:=20
> ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*
>
> *[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
>
> *gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:=20
> ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*
>
> *gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:=20
> ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*
>
> *[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
>
> *[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
>
> *gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:*
> *ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*
>
> *[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
>
> *[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
>
> *[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
>
> *[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
>
> When executing the codes that I had for the old version with C++ I get=20
> a similar error for high sample=C2=A0rates. Also, with high bandwidths =
and=20
> sample rates, such as 25MHz, I get overflow regardless of the=20
> acquisition time.=C2=A0If I compare the messages that I got in the old=20
> version of UHD with what I currently get, I can see that before each=20
> radio module worked at 100MHz, while now they work at 200MHz.
>
> Before:
>
> *[WARNING] [X300 RADIO] Requesting invalid sampling rate from device:=20
> 200 MHz. Actual rate is: 100 MHz.*
>
> After:
>
> *[INFO] [X300] Radio 1x clock: 200 MHz*
>
>
> =C2=A0I don't know if this could be a possible cause of the problem and=
 if=20
> that is the case, I don't know how I can solve the problem since I=20
> tried to change the master clock to a lower one and it gave me an=20
> error when trying to change it.
>
> With low sample rates like 2MHz I can perform the acquisition without=20
> getting errors, although the number of samples received by the command=20
> "rx_stream-> recv (p, max_samps_per_buff, md, timeout)" is not=20
> constant in each iteration.
>
> Any suggestions?=C2=A0Thanks in advance.
>
The fact that it isn't "seeing" the lo_locked sensor is suspicious. Did=20
you update the FPGA firmware on the X310 when you upgraded to UHD 4.1?

Also, at lower sample rates, you'd fully expect that the recv() call=20
will return different numbers of samples.

The TwinRX needs to run with a 100MHz master-clock rate, as I recall.=C2=A0=
=20
So you have to let UHD configure the master clock to what's appropriate=20
for TwinRX.

Can you share with us the output of uhd_usrp_probe for your X310s?



--------------63479A1E2CE185923D938885
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-08-28 10:33 a.m., Anabel
      Almodovar wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFPzw1kv2oBkopydhePAEJEBmHD-U6oSdnZRyNkrM4Wnr0CEvA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hello,<br>
        <br>
        After updating the complete system to the new version of UHD I
        am experiencing errors with the radio modules of the boards. I
        have two X310s equipped with two TwinRx each, so I get 8
        reception channels.<br>
        Previously it worked with Ubuntu 16.04 LTS, UHD 3.11 and I have
        updated the system to a version Ubuntu 20.04, UHD 4.1.0 and GNU
        Radio 3.9.<br>
        <br>
        When I run GNU Radio with the uhd_fft example I get the
        following error:
        <div><br>
        </div>
        <div>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>Generating:
                '/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py'</b><=
/span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0</b></span><=
/p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>Executing:
                /usr/bin/python3 -u
                /home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py</b></s=
pan></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0</b></span><=
/p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[INFO] [UHD]
                linux; GNU C++ version 9.3.0; Boost_107100;
                UHD_4.1.0.HEAD-0-gd21735d5</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[INFO]
                [X300] X300 initialization sequence...</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[INFO]
                [X300] Maximum frame size: 8000 bytes.</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[INFO]
                [X300] Maximum frame size: 8000 bytes.</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[INFO]
                [X300] Radio 1x clock: 200 MHz</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[INFO]
                [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 1) catch time transi=
tion
                at pps edge</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[INFO]
                [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 2) set times next pp=
s
                (synchronously)</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>Exception in
                thread Thread-1:</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>Traceback
                (most recent call last):</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0 File
                "/usr/lib/python3.8/threading.py", line 932, in
                _bootstrap_inner</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>Exception in
                thread Thread-2:</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>Traceback
                (most recent call last):</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0 File
                "/usr/lib/python3.8/threading.py", line 932, in
                _bootstrap_inner</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0=C2=A0=C2=A0=
 self.run()</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0 File
                "/usr/lib/python3.8/threading.py", line 870, in run</b></=
span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0=C2=A0=C2=A0
                self._target(*self._args, **self._kwargs)</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0 File
                "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py",
                line 427, in _current_freq_c_probe</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 self.run()</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0 File
                "/usr/lib/python3.8/threading.py", line 870, in run</b></=
span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>val =3D
                self.uhd_usrp_source_0.get_sensor("'lo_locked'")</b></spa=
n></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>RuntimeError:=C2=A0=
=C2=A0=C2=A0=C2=A0
                self._target(*self._args, **self._kwargs)</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>LookupError:
                Path not found in tree:
/blocks/0/Radio#0/dboard/rx_frontends/0/sensors/'lo_locked'</b></span></p=
>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0 File
                "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py",
                line 442, in
                _chan0_lo_locked_probe</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0=C2=A0=C2=A0=
 val =3D
                self.uhd_usrp_source_0.get_sensor("'lo_locked'")</b></spa=
n></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>RuntimeError:
                LookupError: Path not found in tree:
/blocks/0/Radio#0/dboard/rx_frontends/0/sensors/'lo_locked'</b></span></p=
>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[WARNING]
                [0/Radio#0] Attempting to set tick rate to 0. Skipping.</=
b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[WARNING]
                [0/Radio#1] Attempting to set tick rate to 0. Skipping.</=
b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>O[WARNING]
                [0/Radio#1] Cannot process RX-related async message to
                invalid chan 1</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[WARNING]
                [0/Radio#0] Cannot process RX-related async message to
                invalid chan 1</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>ODgr::log
                :ERROR: usrp_source0 - In the last 10580 ms, 81
                overflows occurred.</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>DOO[WARNING]
                [0/Radio#1] Cannot process RX-related async message to
                invalid chan 1</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[WARNING]
                [0/Radio#0] Cannot process RX-related async message to
                invalid chan 1</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>Dgr::log
                :ERROR: usrp_source0 - In the last 6071 ms, 3 overflows
                occurred.</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>Dgr::log
                :ERROR: usrp_source0 - In the last 3055 ms, 2 overflows
                occurred.</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>Traceback
                (most recent call last):</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0 File
                "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py",
                line 130, in
                &lt;lambda&gt;</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0=C2=A0=C2=A0=
 lambda:
self.set_freq_c(eng_notation.str_to_num(str(self._freq_c_line_edit.text()=
))))</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0 File
                "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py",
                line 553, in set_freq_c</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>=C2=A0=C2=A0=C2=A0
self.uhd_usrp_source_0.set_center_freq(float(self.freq_c), 4)</b></span><=
/p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>RuntimeError:
                LookupError: KeyError: Invalid RX channel: 304</b></span>=
</p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>OO[WARNING]
                [0/Radio#1] Cannot process RX-related async message to
                invalid chan 1</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[WARNING]
                [0/Radio#0] Cannot process RX-related async message to
                invalid chan 1</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>gr::log
                :ERROR: usrp_source0 - In the last 9181 ms, 1 overflows
                occurred.</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>gr::log
                :WARN: usrp_source0 - USRP Source Block caught rx error:
                ERROR_CODE_ALIGNMENT
                (Multi-channel alignment failed)</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[ERROR]
                [STREAMER] The rx streamer failed to time-align packets.<=
/b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[ERROR]
                [STREAMER] The rx streamer failed to time-align packets.<=
/b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>gr::log
                :WARN: usrp_source0 - USRP Source Block caught rx error:
                ERROR_CODE_ALIGNMENT
                (Multi-channel alignment failed)</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[ERROR]
                [STREAMER] The rx streamer failed to time-align packets.<=
/b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>gr::log
                :WARN: usrp_source0 - USRP Source Block caught rx error:
                ERROR_CODE_ALIGNMENT
                (Multi-channel alignment failed)</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[ERROR]
                [STREAMER] The rx streamer failed to time-align packets.<=
/b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>gr::log
                :WARN: usrp_source0 - USRP Source Block caught rx error:
                ERROR_CODE_ALIGNMENT
                (Multi-channel alignment failed)</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>gr::log
                :WARN: usrp_source0 - USRP Source Block caught rx error:
                ERROR_CODE_ALIGNMENT
                (Multi-channel alignment failed)</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[ERROR]
                [STREAMER] The rx streamer failed to time-align packets.<=
/b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[ERROR]
                [STREAMER] The rx streamer failed to time-align packets.<=
/b></span></p>
          <span style=3D"font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif" lang=3D"EN-US"><b>gr::log
              :WARN: usrp_source0 - USRP Source Block caught rx error:</b=
></span></div>
        <div><span style=3D"font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif" lang=3D"EN-US"><span style=3D"font-size:12=
pt"><b>ERROR_CODE_ALIGNMENT
                (Multi-channel alignment
                failed)</b></span></span></div>
        <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
          0.0001pt;font-size:12pt;font-family:&quot;Liberation
          Serif&quot;,serif"><span lang=3D"EN-US"><b>[ERROR]
              [STREAMER] The rx streamer failed to time-align packets.</b=
></span></p>
        <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
          0.0001pt;font-size:12pt;font-family:&quot;Liberation
          Serif&quot;,serif"><span lang=3D"EN-US"><b>[ERROR]
              [STREAMER] The rx streamer failed to time-align packets.</b=
></span></p>
        <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
          0.0001pt;font-size:12pt;font-family:&quot;Liberation
          Serif&quot;,serif"><span lang=3D"EN-US"><b>[ERROR]
              [STREAMER] The rx streamer failed to time-align packets.</b=
></span></p>
        <div><span style=3D"font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif" lang=3D"EN-US"><span style=3D"font-size:12=
pt"><b>[ERROR]
                [STREAMER] The rx streamer failed to time-align packets.<=
/b></span>=C2=A0</span><br>
        </div>
        <div><br>
        </div>
        <div>When executing the codes that I had for the old version
          with C++ I get a similar error for high sample=C2=A0rates. Also=
,
          with high bandwidths and sample rates, such as 25MHz, I get
          overflow regardless of the acquisition time.=C2=A0If I compare =
the
          messages that I got in the old version of UHD with what I
          currently get, I can see that before each radio module worked
          at 100MHz, while now they work at 200MHz.</div>
        <div><br>
        </div>
        <div>Before:</div>
        <div>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[WARNING]
                [X300 RADIO] Requesting invalid sampling rate from
                device: 200 MHz. Actual rate is: 100 MHz.</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US">After:</span></p>
        </div>
        <div>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><b>[INFO]
                [X300] Radio 1x clock: 200 MHz</b></span></p>
          <p class=3D"gmail-Standard" style=3D"margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang=3D"EN-US"><br>
            </span></p>
        </div>
        <div>=C2=A0I don't know if this could be a possible cause of the
          problem and if that is the case, I don't know how I can solve
          the problem since I tried to change the master clock to a
          lower one and it gave me an error when trying to change it.<br>
        </div>
        <div><br>
        </div>
        <div>With low sample rates like 2MHz I can perform the
          acquisition without getting errors, although the number of
          samples received by the command "rx_stream-&gt; recv (p,
          max_samps_per_buff, md, timeout)" is not constant in each
          iteration.<br>
        </div>
        <div><br>
        </div>
        <div>Any suggestions?=C2=A0Thanks in advance.<br>
        </div>
        <br>
      </div>
    </blockquote>
    The fact that it isn't "seeing" the lo_locked sensor is suspicious.=C2=
=A0
    Did you update the FPGA firmware on the X310 when you upgraded to
    UHD 4.1?<br>
    <br>
    Also, at lower sample rates, you'd fully expect that the recv() call
    will return different numbers of samples.<br>
    <br>
    The TwinRX needs to run with a 100MHz master-clock rate, as I
    recall.=C2=A0 So you have to let UHD configure the master clock to wh=
at's
    appropriate for TwinRX.<br>
    <br>
    Can you share with us the output of uhd_usrp_probe for your X310s?<br=
>
    <br>
    <br>
  </body>
</html>

--------------63479A1E2CE185923D938885--

--===============4399395580098453863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4399395580098453863==--
